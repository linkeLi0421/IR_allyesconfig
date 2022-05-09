; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fec_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fec_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fec_stat = type { [32 x i8], i16 }
%struct.fec_devinfo = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.fec_enet_private = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.mutex, i32, i32, [3 x ptr], [3 x ptr], i32, i32, ptr, i32, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, [3 x i32], i8, i32, i32, i32, i32, %struct.napi_struct, i32, %struct.work_struct, ptr, %struct.ptp_clock_info, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.fec_stop_mode_gpr, i32, i32, i32, i32, i32, i32, i32, %struct.ethtool_eee, i32, i32, i32, i32, i32, i32, i32, [0 x i64] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.fec_stop_mode_gpr = type { ptr, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bufdesc_prop = type { i32, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.fec_enet_priv_tx_q = type { %struct.bufdesc_prop, [512 x ptr], [512 x ptr], i16, i16, ptr, ptr, i32 }
%struct.fec_platform_data = type { i32, [6 x i8], ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bufdesc = type { i16, i16, i32 }
%struct.fec_enet_priv_rx_q = type { %struct.bufdesc_prop, [512 x ptr] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.bufdesc_ex = type { %struct.bufdesc, i32, i32, i32, i32, [4 x i16] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.60 = type { i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.vlan_ethhdr = type { %union.anon.155, i16, i16, i16 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { [6 x i8], [6 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__param_str_macaddr = internal constant [12 x i8] c"fec.macaddr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_macaddr = internal constant %struct.kparam_array { i32 6, i32 1, ptr null, ptr @param_ops_byte, ptr @macaddr }, align 4
@__param_macaddr = internal constant %struct.kernel_param { ptr @__param_str_macaddr, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_macaddr } }, section "__param", align 4
@__UNIQUE_ID_macaddrtype511 = internal constant [35 x i8] c"fec.parmtype=macaddr:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_macaddr512 = internal constant [42 x i8] c"fec.parm=macaddr:FEC Ethernet MAC address\00", section ".modinfo", align 1
@__initcall__kmod_fec__520_4196_fec_driver_init6 = internal global ptr @fec_driver_init, section ".initcall6.init", align 4
@fec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fec_probe, ptr @fec_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @fec_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_pm_ops, ptr null, ptr null }, ptr @fec_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fec_driver_exit = internal global ptr @fec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file521 = internal constant [44 x i8] c"fec.file=drivers/net/ethernet/freescale/fec\00", section ".modinfo", align 1
@__UNIQUE_ID_license522 = internal constant [16 x i8] c"fec.license=GPL\00", section ".modinfo", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@macaddr = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fec\00", [28 x i8] zeroinitializer }, align 32
@fec_dt_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 96) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mvf600-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 120) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 168) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 192) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @fec_devtype, i64 216) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@fec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fec_suspend, ptr @fec_resume, ptr @fec_suspend, ptr @fec_resume, ptr @fec_suspend, ptr @fec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_runtime_suspend, ptr @fec_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fec_devtype = internal global { [11 x %struct.platform_device_id], [88 x i8] } { [11 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"fec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"imx25-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx25_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx27-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx27_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx28-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx28_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx6q-fec\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx6q_info to i32) }, %struct.platform_device_id { [20 x i8] c"mvf600-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_mvf600_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx6sx-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx6x_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx6ul-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx6ul_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx8mq-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx8mq_info to i32) }, %struct.platform_device_id { [20 x i8] c"imx8qm-fec\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fec_imx8qm_info to i32) }, %struct.platform_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@fec_probe.dev_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,imx6q\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6dl\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fsl,err006687-workaround-present\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,magic-packet\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@fec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 3832, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"broken fixed-link specification\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fec_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/freescale/fec_main.c\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fec_probe._entry_ptr = internal global ptr @fec_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_out\00", [23 x i8] zeroinitializer }, align 32
@fec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fep->ptp_clk_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet_clk_ref\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enet_2x_txclk\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@fec_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.8, i32 3912, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable phy regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@fec_probe._entry_ptr.21 = internal global ptr @fec_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"int%d\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registered PHC device %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fec_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&fep->tx_timeout_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,num-tx-queues\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,num-rx-queues\00", [46 x i8] zeroinitializer }, align 32
@fec_enet_get_queue_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.8, i32 3681, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid num_tx(=%d), fall back to 1\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fec_enet_get_queue_num\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fec_enet_get_queue_num._entry_ptr = internal global ptr @fec_enet_get_queue_num._entry, section ".printk_index", align 4
@fec_enet_get_queue_num._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.8, i32 3688, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid num_rx(=%d), fall back to 1\0A\00", [59 x i8] zeroinitializer }, align 32
@fec_enet_get_queue_num._entry_ptr.33 = internal global ptr @fec_enet_get_queue_num._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,stop-mode\00", [18 x i8] zeroinitializer }, align 32
@fec_enet_init_stop_mode.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.8, ptr @.str.36, i8 3, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fec_enet_init_stop_mode\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no stop mode property\0A\00", [41 x i8] zeroinitializer }, align 32
@fec_enet_init_stop_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.8, i32 3739, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not find gpr regmap\0A\00", [37 x i8] zeroinitializer }, align 32
@fec_enet_init_stop_mode._entry_ptr = internal global ptr @fec_enet_init_stop_mode._entry, section ".printk_index", align 4
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@fec_enet_parse_rgmii_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.8, i32 2063, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"The only allowed RGMII TX delay values are: 0ps, 2000ps\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fec_enet_parse_rgmii_delay\00", [37 x i8] zeroinitializer }, align 32
@fec_enet_parse_rgmii_delay._entry_ptr = internal global ptr @fec_enet_parse_rgmii_delay._entry, section ".printk_index", align 4
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@fec_enet_parse_rgmii_delay._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.8, i32 2073, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"The only allowed RGMII RX delay values are: 0ps, 2000ps\00", [40 x i8] zeroinitializer }, align 32
@fec_enet_parse_rgmii_delay._entry_ptr.44 = internal global ptr @fec_enet_parse_rgmii_delay._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy-reset-duration\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy-reset-gpios\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy-reset-post-delay\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy-reset-active-high\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy-reset\00", [22 x i8] zeroinitializer }, align 32
@fec_reset_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.8, i32 3631, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get phy-reset-gpios: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fec_reset_phy\00", [18 x i8] zeroinitializer }, align 32
@fec_reset_phy._entry_ptr = internal global ptr @fec_reset_phy._entry, section ".printk_index", align 4
@fec_enet_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.8, i32 3496, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No suitable DMA available\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fec_enet_init\00", [18 x i8] zeroinitializer }, align 32
@fec_enet_init._entry_ptr = internal global ptr @fec_enet_init._entry, section ".printk_index", align 4
@offset_des_active_rxq = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 16, i16 480, i16 488], [26 x i8] zeroinitializer }, align 32
@offset_des_active_txq = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 20, i16 484, i16 492], [26 x i8] zeroinitializer }, align 32
@fec_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @fec_enet_open, ptr @fec_enet_close, ptr @fec_enet_start_xmit, ptr null, ptr @fec_enet_select_queue, ptr null, ptr @set_multicast_list, ptr @fec_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @fec_enet_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@fec_enet_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @fec_enet_get_drvinfo, ptr @fec_enet_get_regs_len, ptr @fec_enet_get_regs, ptr @fec_enet_get_wol, ptr @fec_enet_set_wol, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @fec_enet_get_coalesce, ptr @fec_enet_set_coalesce, ptr null, ptr null, ptr null, ptr @fec_enet_get_pauseparam, ptr @fec_enet_set_pauseparam, ptr @net_selftest, ptr @fec_enet_get_strings, ptr null, ptr @fec_enet_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @fec_enet_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fec_enet_get_ts_info, ptr null, ptr null, ptr @fec_enet_get_eee, ptr @fec_enet_set_eee, ptr @fec_enet_get_tunable, ptr @fec_enet_set_tunable, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fec_get_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.8, i32 1777, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid MAC address: %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fec_get_mac\00", [20 x i8] zeroinitializer }, align 32
@fec_get_mac._entry_ptr = internal global ptr @fec_get_mac._entry, section ".printk_index", align 4
@fec_get_mac._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.8, i32 1780, ptr @.str.58, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using random MAC address: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fec_get_mac._entry_ptr.59 = internal global ptr @fec_get_mac._entry.56, section ".printk_index", align 4
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Rx DMA memory map failed\0A\00", [38 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to connect to phy\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no PHY, assuming direct connection to switch\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fixed-0\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Graceful transmit stop did not complete!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NOT enough BD for TSO!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tx DMA memory map failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NOT enough BD for SG!\0A\00", [41 x i8] zeroinitializer }, align 32
@fec_enet_vlan_pri_to_queue = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 0, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2], [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TX ring dump\0A\00", [18 x i8] zeroinitializer }, align 32
@fec_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.8, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016Nr     SC     addr       len  SKB\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fec_dump\00", [23 x i8] zeroinitializer }, align 32
@fec_dump._entry_ptr = internal global ptr @fec_dump._entry, section ".printk_index", align 4
@fec_dump._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.8, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%3u %c%c 0x%04x 0x%08x %4u %p\0A\00", [63 x i8] zeroinitializer }, align 32
@fec_dump._entry_ptr.77 = internal global ptr @fec_dump._entry.75, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fec_enet_register_offset = internal constant { [103 x i32], [100 x i8] } { [103 x i32] [i32 4, i32 8, i32 16, i32 20, i32 36, i32 64, i32 68, i32 100, i32 132, i32 196, i32 228, i32 232, i32 236, i32 240, i32 244, i32 248, i32 256, i32 260, i32 264, i32 280, i32 284, i32 288, i32 292, i32 324, i32 332, i32 336, i32 352, i32 356, i32 360, i32 364, i32 368, i32 372, i32 384, i32 388, i32 392, i32 400, i32 404, i32 408, i32 412, i32 452, i32 456, i32 460, i32 472, i32 476, i32 480, i32 484, i32 488, i32 492, i32 496, i32 512, i32 516, i32 520, i32 524, i32 528, i32 532, i32 536, i32 540, i32 544, i32 548, i32 552, i32 556, i32 560, i32 564, i32 568, i32 572, i32 576, i32 580, i32 584, i32 588, i32 592, i32 596, i32 600, i32 604, i32 608, i32 612, i32 616, i32 620, i32 624, i32 628, i32 644, i32 648, i32 652, i32 656, i32 660, i32 664, i32 668, i32 672, i32 676, i32 680, i32 684, i32 688, i32 692, i32 696, i32 700, i32 704, i32 708, i32 712, i32 716, i32 720, i32 724, i32 728, i32 732, i32 736], [100 x i8] zeroinitializer }, align 32
@fec_enet_set_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.8, i32 2699, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Rx coalesced frames exceed hardware limitation\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fec_enet_set_coalesce\00", [42 x i8] zeroinitializer }, align 32
@fec_enet_set_coalesce._entry_ptr = internal global ptr @fec_enet_set_coalesce._entry, section ".printk_index", align 4
@fec_enet_set_coalesce._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.8, i32 2704, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Tx coalesced frame exceed hardware limitation\0A\00", [49 x i8] zeroinitializer }, align 32
@fec_enet_set_coalesce._entry_ptr.82 = internal global ptr @fec_enet_set_coalesce._entry.80, section ".printk_index", align 4
@fec_enet_set_coalesce._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.8, i32 2710, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Rx coalesced usec exceed hardware limitation\0A\00", [50 x i8] zeroinitializer }, align 32
@fec_enet_set_coalesce._entry_ptr.85 = internal global ptr @fec_enet_set_coalesce._entry.83, section ".printk_index", align 4
@fec_enet_set_coalesce._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.8, i32 2716, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Tx coalesced usec exceed hardware limitation\0A\00", [50 x i8] zeroinitializer }, align 32
@fec_enet_set_coalesce._entry_ptr.88 = internal global ptr @fec_enet_set_coalesce._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hardware only support enable/disable both tx and rx\00", [44 x i8] zeroinitializer }, align 32
@fec_stats = internal constant { [53 x %struct.fec_stat], [470 x i8] } { [53 x %struct.fec_stat] [%struct.fec_stat { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 512 }, %struct.fec_stat { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 516 }, %struct.fec_stat { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 520 }, %struct.fec_stat { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 524 }, %struct.fec_stat { [32 x i8] c"tx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 528 }, %struct.fec_stat { [32 x i8] c"tx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 532 }, %struct.fec_stat { [32 x i8] c"tx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 536 }, %struct.fec_stat { [32 x i8] c"tx_fragment\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 540 }, %struct.fec_stat { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 544 }, %struct.fec_stat { [32 x i8] c"tx_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 548 }, %struct.fec_stat { [32 x i8] c"tx_64byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 552 }, %struct.fec_stat { [32 x i8] c"tx_65to127byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 556 }, %struct.fec_stat { [32 x i8] c"tx_128to255byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 560 }, %struct.fec_stat { [32 x i8] c"tx_256to511byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 564 }, %struct.fec_stat { [32 x i8] c"tx_512to1023byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 568 }, %struct.fec_stat { [32 x i8] c"tx_1024to2047byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 572 }, %struct.fec_stat { [32 x i8] c"tx_GTE2048byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 576 }, %struct.fec_stat { [32 x i8] c"tx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 580 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 584 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_frame_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 588 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_1col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 592 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_mcol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 596 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_def\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 600 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_lcol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 604 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_excol\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 608 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_macerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 612 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_cserr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 616 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_sqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 620 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_fdxfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 624 }, %struct.fec_stat { [32 x i8] c"IEEE_tx_octets_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 628 }, %struct.fec_stat { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 644 }, %struct.fec_stat { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 648 }, %struct.fec_stat { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 652 }, %struct.fec_stat { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 656 }, %struct.fec_stat { [32 x i8] c"rx_undersize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 660 }, %struct.fec_stat { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 664 }, %struct.fec_stat { [32 x i8] c"rx_fragment\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 668 }, %struct.fec_stat { [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 672 }, %struct.fec_stat { [32 x i8] c"rx_64byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 680 }, %struct.fec_stat { [32 x i8] c"rx_65to127byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 684 }, %struct.fec_stat { [32 x i8] c"rx_128to255byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 688 }, %struct.fec_stat { [32 x i8] c"rx_256to511byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 692 }, %struct.fec_stat { [32 x i8] c"rx_512to1023byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 696 }, %struct.fec_stat { [32 x i8] c"rx_1024to2047byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 700 }, %struct.fec_stat { [32 x i8] c"rx_GTE2048byte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 704 }, %struct.fec_stat { [32 x i8] c"rx_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 708 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 712 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_frame_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 716 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 720 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_align\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 724 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_macerr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 728 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_fdxfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 732 }, %struct.fec_stat { [32 x i8] c"IEEE_rx_octets_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 736 }], [470 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcv is not +last\0A\00", [46 x i8] zeroinitializer }, align 32
@fec_enet_mii_init.fec0_mii_bus = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mii_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"suppress-preamble\00", [46 x i8] zeroinitializer }, align 32
@fec_enet_mii_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.8, i32 2209, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fec clock (%lu) too fast to get right mii speed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fec_enet_mii_init\00", [46 x i8] zeroinitializer }, align 32
@fec_enet_mii_init._entry_ptr = internal global ptr @fec_enet_mii_init._entry, section ".printk_index", align 4
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fec_enet_mii_bus\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MDIO address write timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MDIO read timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MDIO write timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@fec_imx25_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 98308 }, [28 x i8] zeroinitializer }, align 32
@fec_imx27_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 98304 }, [28 x i8] zeroinitializer }, align 32
@fec_imx28_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 464899 }, [28 x i8] zeroinitializer }, align 32
@fec_imx6q_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 135417 }, [28 x i8] zeroinitializer }, align 32
@fec_mvf600_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 4097 }, [28 x i8] zeroinitializer }, align 32
@fec_imx6x_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 669561 }, [28 x i8] zeroinitializer }, align 32
@fec_imx6ul_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 145017 }, [28 x i8] zeroinitializer }, align 32
@fec_imx8mq_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 5912441 }, [28 x i8] zeroinitializer }, align 32
@fec_imx8qm_info = internal constant { %struct.fec_devinfo, [28 x i8] } { %struct.fec_devinfo { i32 2766713 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2000]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2000]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"fec_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 4184, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant [8 x i8] c"macaddr\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 222, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 4186, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"fec_dt_ids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 208, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"fec_pm_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 4179, i32 32 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"fec_devtype\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 158, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"dev_id\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3763, i32 13 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3815, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3816, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3817, i32 33 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3820, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3827, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3831, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3854, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3860, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3869, i32 47 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3874, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3877, i32 42 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3884, i32 48 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3890, i32 42 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3907, i32 57 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3911, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3942, i32 40 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3980, i32 21 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3983, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3675, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3677, i32 27 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3680, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3687, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3726, i32 32 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3733, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3739, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2061, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2063, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2071, i32 32 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2073, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3609, i32 33 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3614, i32 36 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3620, i32 33 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3625, i32 42 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3629, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3631, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3496, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [22 x i8] c"offset_des_active_rxq\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3460, i32 29 }
@___asan_gen_.303 = private unnamed_addr constant [22 x i8] c"offset_des_active_txq\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3464, i32 29 }
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"fec_netdev_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 3444, i32 36 }
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"fec_enet_ethtool_ops\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2901, i32 33 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1777, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1779, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1423, i32 21 }
@___asan_gen_.337 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 326, i32 6 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2097, i32 21 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2112, i32 22 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2113, i32 25 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2118, i32 5 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2124, i32 20 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1215, i32 21 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 756, i32 21 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 720, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 519, i32 21 }
@___asan_gen_.366 = private unnamed_addr constant [27 x i8] c"fec_enet_vlan_pri_to_queue\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 79, i32 18 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 370, i32 20 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 371, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 377, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [25 x i8] c"fec_enet_register_offset\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2320, i32 12 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2699, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2704, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2710, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2716, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2448, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant [10 x i8] c"fec_stats\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2481, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1514, i32 23 }
@___asan_gen_.426 = private unnamed_addr constant [13 x i8] c"fec0_mii_bus\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2152, i32 25 }
@___asan_gen_.429 = private unnamed_addr constant [8 x i8] c"mii_cnt\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 312, i32 12 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2188, i32 49 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2190, i32 30 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2192, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2207, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2256, i32 23 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 2259, i32 46 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1887, i32 28 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1908, i32 27 }
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 1964, i32 27 }
@___asan_gen_.465 = private unnamed_addr constant [15 x i8] c"fec_imx25_info\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 94, i32 33 }
@___asan_gen_.468 = private unnamed_addr constant [15 x i8] c"fec_imx27_info\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 99, i32 33 }
@___asan_gen_.471 = private unnamed_addr constant [15 x i8] c"fec_imx28_info\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 103, i32 33 }
@___asan_gen_.474 = private unnamed_addr constant [15 x i8] c"fec_imx6q_info\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 110, i32 33 }
@___asan_gen_.477 = private unnamed_addr constant [16 x i8] c"fec_mvf600_info\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 117, i32 33 }
@___asan_gen_.480 = private unnamed_addr constant [15 x i8] c"fec_imx6x_info\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 121, i32 33 }
@___asan_gen_.483 = private unnamed_addr constant [16 x i8] c"fec_imx6ul_info\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 130, i32 33 }
@___asan_gen_.486 = private unnamed_addr constant [16 x i8] c"fec_imx8mq_info\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 138, i32 33 }
@___asan_gen_.489 = private unnamed_addr constant [16 x i8] c"fec_imx8qm_info\00", align 1
@___asan_gen_.490 = private constant [45 x i8] c"../drivers/net/ethernet/freescale/fec_main.c\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.490, i32 148, i32 33 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_file521, ptr @__UNIQUE_ID_license522, ptr @__UNIQUE_ID_macaddr512, ptr @__UNIQUE_ID_macaddrtype511, ptr @__exitcall_fec_driver_exit, ptr @__initcall__kmod_fec__520_4196_fec_driver_init6, ptr @__param_macaddr, ptr @fec_driver_exit, ptr @fec_dump._entry, ptr @fec_dump._entry.75, ptr @fec_dump._entry_ptr, ptr @fec_dump._entry_ptr.77, ptr @fec_enet_get_queue_num._entry, ptr @fec_enet_get_queue_num._entry.31, ptr @fec_enet_get_queue_num._entry_ptr, ptr @fec_enet_get_queue_num._entry_ptr.33, ptr @fec_enet_init._entry, ptr @fec_enet_init._entry_ptr, ptr @fec_enet_init_stop_mode._entry, ptr @fec_enet_init_stop_mode._entry_ptr, ptr @fec_enet_mii_init._entry, ptr @fec_enet_mii_init._entry_ptr, ptr @fec_enet_parse_rgmii_delay._entry, ptr @fec_enet_parse_rgmii_delay._entry.42, ptr @fec_enet_parse_rgmii_delay._entry_ptr, ptr @fec_enet_parse_rgmii_delay._entry_ptr.44, ptr @fec_enet_set_coalesce._entry, ptr @fec_enet_set_coalesce._entry.80, ptr @fec_enet_set_coalesce._entry.83, ptr @fec_enet_set_coalesce._entry.86, ptr @fec_enet_set_coalesce._entry_ptr, ptr @fec_enet_set_coalesce._entry_ptr.82, ptr @fec_enet_set_coalesce._entry_ptr.85, ptr @fec_enet_set_coalesce._entry_ptr.88, ptr @fec_get_mac._entry, ptr @fec_get_mac._entry.56, ptr @fec_get_mac._entry_ptr, ptr @fec_get_mac._entry_ptr.59, ptr @fec_probe._entry, ptr @fec_probe._entry.19, ptr @fec_probe._entry_ptr, ptr @fec_probe._entry_ptr.21, ptr @fec_reset_phy._entry, ptr @fec_reset_phy._entry_ptr, ptr @fec_driver, ptr @macaddr, ptr @.str, ptr @fec_dt_ids, ptr @fec_pm_ops, ptr @fec_devtype, ptr @fec_probe.dev_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @fec_probe.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @fec_probe.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @offset_des_active_rxq, ptr @offset_des_active_txq, ptr @fec_netdev_ops, ptr @fec_enet_ethtool_ops, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @fec_enet_vlan_pri_to_queue, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @fec_enet_register_offset, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @fec_stats, ptr @.str.90, ptr @fec_enet_mii_init.fec0_mii_bus, ptr @mii_cnt, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @fec_imx25_info, ptr @fec_imx27_info, ptr @fec_imx28_info, ptr @fec_imx6q_info, ptr @fec_mvf600_info, ptr @fec_imx6x_info, ptr @fec_imx6ul_info, ptr @fec_imx8mq_info, ptr @fec_imx8qm_info], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macaddr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_dt_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_devtype to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_probe.dev_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_get_queue_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_get_queue_num._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_init_stop_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_parse_rgmii_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_parse_rgmii_delay._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_reset_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_des_active_rxq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_des_active_txq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_get_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_get_mac._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_vlan_pri_to_queue to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_dump._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_register_offset to i32), i32 412, i32 512, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_set_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_set_coalesce._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_set_coalesce._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_set_coalesce._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_stats to i32), i32 1802, i32 2272, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_mii_init.fec0_mii_bus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_enet_mii_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx25_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx27_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx28_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx6q_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_mvf600_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx6x_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx6ul_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx8mq_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_imx8qm_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fec_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @fec_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rgmii_tx_delay.i = alloca i32, align 4
  %rgmii_rx_delay.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %interface = alloca i32, align 4
  %num_tx_qs = alloca i32, align 4
  %num_rx_qs = alloca i32, align 4
  %irq_name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interface) #15
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %interface, align 4, !annotation !265
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_tx_qs) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_rx_qs) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %irq_name) #15
  %3 = ptrtoint ptr %irq_name to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %irq_name, align 8
  %4 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_rx_qs, align 4
  %5 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_tx_qs, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.fec_enet_get_queue_num.exit_crit_edge, label %lor.lhs.false.i

entry.fec_enet_get_queue_num.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_get_queue_num.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call.i = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %2) #15
  br i1 %call.i, label %if.end.i, label %lor.lhs.false.i.fec_enet_get_queue_num.exit_crit_edge

lor.lhs.false.i.fec_enet_get_queue_num.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_get_queue_num.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.26, ptr noundef nonnull %num_tx_qs, i32 noundef 1, i32 noundef 0) #15
  %call.i.i35.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %num_rx_qs, i32 noundef 1, i32 noundef 0) #15
  %6 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_qs, align 4
  %8 = add i32 %7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %8)
  %9 = icmp ult i32 %8, -3
  br i1 %9, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %7) #18
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_rx_qs, align 4
  %12 = add i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %12)
  %13 = icmp ult i32 %12, -3
  br i1 %13, label %do.end14.i, label %if.end7.i.fec_enet_get_queue_num.exit_crit_edge

if.end7.i.fec_enet_get_queue_num.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_get_queue_num.exit

do.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %11) #18
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end14.i, %do.end.i
  %num_rx.sink.i = phi ptr [ %num_rx_qs, %do.end14.i ], [ %num_tx_qs, %do.end.i ]
  %14 = ptrtoint ptr %num_rx.sink.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_rx.sink.i, align 4
  br label %fec_enet_get_queue_num.exit

fec_enet_get_queue_num.exit:                      ; preds = %cleanup.sink.split.i, %if.end7.i.fec_enet_get_queue_num.exit_crit_edge, %lor.lhs.false.i.fec_enet_get_queue_num.exit_crit_edge, %entry.fec_enet_get_queue_num.exit_crit_edge
  %15 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx_qs, align 4
  %17 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rx_qs, align 4
  %call = call ptr @alloc_etherdev_mqs(i32 noundef 1392, i32 noundef %16, i32 noundef %18) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %fec_enet_get_queue_num.exit.cleanup_crit_edge, label %if.end

fec_enet_get_queue_num.exit.cleanup_crit_edge:    ; preds = %fec_enet_get_queue_num.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %fec_enet_get_queue_num.exit
  %dev2 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %call5 = call ptr @of_match_device(ptr noundef nonnull @fec_dt_ids, ptr noundef %dev) #15
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %22 = ptrtoint ptr %id_entry to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %id_entry, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %id_entry9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %23 = ptrtoint ptr %id_entry9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %id_entry9, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %27 = inttoptr i32 %26 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %quirks12 = getelementptr i8, ptr %call, i32 2540
  %30 = ptrtoint ptr %quirks12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %quirks12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %netdev = getelementptr i8, ptr %call, i32 2308
  %31 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %netdev, align 4
  %32 = ptrtoint ptr %num_rx_qs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_rx_qs, align 4
  %num_rx_queues = getelementptr i8, ptr %call, i32 2436
  %34 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %num_rx_queues, align 4
  %35 = ptrtoint ptr %num_tx_qs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_tx_qs, align 4
  %num_tx_queues = getelementptr i8, ptr %call, i32 2432
  %37 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %num_tx_queues, align 8
  %quirks14 = getelementptr i8, ptr %call, i32 2540
  %38 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quirks14, align 4
  %and = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %pause_flag = getelementptr i8, ptr %call, i32 2528
  %40 = ptrtoint ptr %pause_flag to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pause_flag, align 8
  %or = or i32 %41, 1
  store i32 %or, ptr %pause_flag, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %call19 = call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #15
  %call20 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #15
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call20, ptr %add.ptr.i, align 8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %call20 to i32
  br label %failed_ioremap

if.end26:                                         ; preds = %if.end17
  %pdev27 = getelementptr i8, ptr %call, i32 2472
  %44 = ptrtoint ptr %pdev27 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %pdev, ptr %pdev27, align 8
  %45 = load i32, ptr @fec_probe.dev_id, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr @fec_probe.dev_id, align 4
  %dev_id = getelementptr i8, ptr %call, i32 2476
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dev_id, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call28 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end26.land.lhs.true_crit_edge

if.end26.land.lhs.true_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end26
  %call30 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end26.land.lhs.true_crit_edge
  %call.i436 = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef null) #15
  %tobool.i.not = icmp eq ptr %call.i436, null
  br i1 %tobool.i.not, label %if.then33, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %quirks14, align 4
  %or35 = or i32 %49, 16384
  store i32 %or35, ptr %quirks14, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %land.lhs.true.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge
  %call37 = call ptr @of_get_property(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef null) #15
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %wol_flag = getelementptr i8, ptr %call, i32 2532
  %50 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wol_flag, align 4
  %or40 = or i32 %51, 1
  store i32 %or40, ptr %wol_flag, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %call42 = call fastcc i32 @fec_enet_init_stop_mode(ptr noundef %add.ptr.i, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.failed_phy_crit_edge

if.end41.failed_phy_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_phy

if.end45:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #15
  %52 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i437 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i437)
  %tobool.not.i438 = icmp eq i32 %call.i437, 0
  br i1 %tobool.not.i438, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  br label %land.lhs.true48

of_parse_phandle.exit:                            ; preds = %if.end45
  %53 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  %tobool47.not = icmp eq ptr %54, null
  br i1 %tobool47.not, label %of_parse_phandle.exit.land.lhs.true48_crit_edge, label %of_parse_phandle.exit.if.end56_crit_edge

of_parse_phandle.exit.if.end56_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

of_parse_phandle.exit.land.lhs.true48_crit_edge:  ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true48

land.lhs.true48:                                  ; preds = %of_parse_phandle.exit.land.lhs.true48_crit_edge, %of_parse_phandle.exit.thread
  %call49 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %2) #15
  br i1 %call49, label %if.then50, label %land.lhs.true48.if.end56_crit_edge

land.lhs.true48.if.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then50:                                        ; preds = %land.lhs.true48
  %call51 = call i32 @of_phy_register_fixed_link(ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %do.end, label %if.end54

do.end:                                           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #18
  br label %failed_phy

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %call55 = call ptr @of_node_get(ptr noundef %2) #15
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %land.lhs.true48.if.end56_crit_edge, %of_parse_phandle.exit.if.end56_crit_edge
  %phy_node.0 = phi ptr [ %54, %of_parse_phandle.exit.if.end56_crit_edge ], [ %call55, %if.end54 ], [ null, %land.lhs.true48.if.end56_crit_edge ]
  %phy_node57 = getelementptr i8, ptr %call, i32 2492
  %55 = ptrtoint ptr %phy_node57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %phy_node.0, ptr %phy_node57, align 4
  %56 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node, align 8
  %call60 = call i32 @of_get_phy_mode(ptr noundef %57, ptr noundef nonnull %interface) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else69, label %if.then62

if.then62:                                        ; preds = %if.end56
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %58 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %platform_data.i, align 8
  %tobool65.not = icmp eq ptr %59, null
  br i1 %tobool65.not, label %if.then62.if.end71_crit_edge, label %if.then66

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  br label %if.end71

if.else69:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %interface, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then66, %if.then62.if.end71_crit_edge
  %.sink = phi i32 [ %61, %if.then66 ], [ %63, %if.else69 ], [ 2, %if.then62.if.end71_crit_edge ]
  %phy_interface = getelementptr i8, ptr %call, i32 2488
  %64 = ptrtoint ptr %phy_interface to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink, ptr %phy_interface, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rgmii_tx_delay.i) #15
  %65 = ptrtoint ptr %rgmii_tx_delay.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %rgmii_tx_delay.i, align 4, !annotation !265
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rgmii_rx_delay.i) #15
  %66 = ptrtoint ptr %rgmii_rx_delay.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %rgmii_rx_delay.i, align 4, !annotation !265
  %call.i.i.i440 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.38, ptr noundef nonnull %rgmii_tx_delay.i, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i440)
  %tobool.not.i441 = icmp sgt i32 %call.i.i.i440, -1
  br i1 %tobool.not.i441, label %if.then.i, label %if.end71.if.end6.i_crit_edge

if.end71.if.end6.i_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end71
  %67 = ptrtoint ptr %rgmii_tx_delay.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rgmii_tx_delay.i, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %if.then.i.fec_enet_parse_rgmii_delay.exit_crit_edge [
    i32 2000, label %if.then4.i
    i32 0, label %if.then.i.if.end6.i_crit_edge
  ]

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i.fec_enet_parse_rgmii_delay.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_parse_rgmii_delay.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %rgmii_txc_dly.i = getelementptr i8, ptr %call, i32 2496
  %70 = ptrtoint ptr %rgmii_txc_dly.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %rgmii_txc_dly.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i.if.end6.i_crit_edge, %if.end71.if.end6.i_crit_edge
  %call.i.i31.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.41, ptr noundef nonnull %rgmii_rx_delay.i, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i31.i)
  %tobool8.not.i = icmp sgt i32 %call.i.i31.i, -1
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.if.end75_crit_edge

if.end6.i.if.end75_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then9.i:                                       ; preds = %if.end6.i
  %71 = ptrtoint ptr %rgmii_rx_delay.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rgmii_rx_delay.i, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %72, label %if.then9.i.fec_enet_parse_rgmii_delay.exit_crit_edge [
    i32 2000, label %if.then21.i
    i32 0, label %if.then9.i.if.end75_crit_edge
  ]

if.then9.i.if.end75_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then9.i.fec_enet_parse_rgmii_delay.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_parse_rgmii_delay.exit

if.then21.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  %rgmii_rxc_dly.i = getelementptr i8, ptr %call, i32 2497
  %74 = ptrtoint ptr %rgmii_rxc_dly.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %rgmii_rxc_dly.i, align 1
  br label %if.end75

fec_enet_parse_rgmii_delay.exit:                  ; preds = %if.then9.i.fec_enet_parse_rgmii_delay.exit_crit_edge, %if.then.i.fec_enet_parse_rgmii_delay.exit_crit_edge
  %.str.39.sink = phi ptr [ @.str.39, %if.then.i.fec_enet_parse_rgmii_delay.exit_crit_edge ], [ @.str.43, %if.then9.i.fec_enet_parse_rgmii_delay.exit_crit_edge ]
  %75 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev27, align 8
  %dev.i442 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i442, ptr noundef nonnull %.str.39.sink) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rgmii_rx_delay.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rgmii_tx_delay.i) #15
  br label %failed_rgmii_delay

if.end75:                                         ; preds = %if.then21.i, %if.then9.i.if.end75_crit_edge, %if.end6.i.if.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rgmii_rx_delay.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rgmii_tx_delay.i) #15
  %call77 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #15
  %clk_ipg = getelementptr i8, ptr %call, i32 2312
  %77 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call77, ptr %clk_ipg, align 8
  %cmp.i445 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i445, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %call77 to i32
  br label %failed_rgmii_delay

if.end83:                                         ; preds = %if.end75
  %call85 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #15
  %clk_ahb = getelementptr i8, ptr %call, i32 2316
  %79 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call85, ptr %clk_ahb, align 4
  %cmp.i446 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i446, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %call85 to i32
  br label %failed_rgmii_delay

if.end91:                                         ; preds = %if.end83
  %call93 = call i32 @clk_get_rate(ptr noundef %call85) #15
  %itr_clk_rate = getelementptr i8, ptr %call, i32 3196
  %81 = ptrtoint ptr %itr_clk_rate to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call93, ptr %itr_clk_rate, align 4
  %call95 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #15
  %clk_enet_out = getelementptr i8, ptr %call, i32 2324
  %cmp.i447 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i447, ptr null, ptr %call95
  %82 = ptrtoint ptr %clk_enet_out to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %spec.store.select, ptr %clk_enet_out, align 4
  %ptp_clk_on = getelementptr i8, ptr %call, i32 2336
  %83 = ptrtoint ptr %ptp_clk_on to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %ptp_clk_on, align 8
  %ptp_clk_mutex = getelementptr i8, ptr %call, i32 2340
  call void @__mutex_init(ptr noundef %ptp_clk_mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @fec_probe.__key) #15
  %call105 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #15
  %clk_ref = getelementptr i8, ptr %call, i32 2320
  %cmp.i448 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  %spec.store.select468 = select i1 %cmp.i448, ptr null, ptr %call105
  %84 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %spec.store.select468, ptr %clk_ref, align 8
  %call112 = call i32 @clk_get_rate(ptr noundef %spec.store.select468) #15
  %clk_ref_rate = getelementptr i8, ptr %call, i32 3240
  %85 = ptrtoint ptr %clk_ref_rate to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call112, ptr %clk_ref_rate, align 8
  %rgmii_txc_dly = getelementptr i8, ptr %call, i32 2496
  %86 = ptrtoint ptr %rgmii_txc_dly to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %rgmii_txc_dly, align 8, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool113.not = icmp eq i8 %87, 0
  br i1 %tobool113.not, label %lor.lhs.false114, label %if.end91.if.then116_crit_edge

if.end91.if.then116_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then116

lor.lhs.false114:                                 ; preds = %if.end91
  %rgmii_rxc_dly = getelementptr i8, ptr %call, i32 2497
  %88 = ptrtoint ptr %rgmii_rxc_dly to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rgmii_rxc_dly, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool115.not = icmp eq i8 %89, 0
  br i1 %tobool115.not, label %lor.lhs.false114.if.end124_crit_edge, label %lor.lhs.false114.if.then116_crit_edge

lor.lhs.false114.if.then116_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then116

lor.lhs.false114.if.end124_crit_edge:             ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124

if.then116:                                       ; preds = %lor.lhs.false114.if.then116_crit_edge, %if.end91.if.then116_crit_edge
  %call118 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #15
  %clk_2x_txclk = getelementptr i8, ptr %call, i32 2332
  %cmp.i449 = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  %spec.store.select467 = select i1 %cmp.i449, ptr null, ptr %call118
  %90 = ptrtoint ptr %clk_2x_txclk to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %spec.store.select467, ptr %clk_2x_txclk, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then116, %lor.lhs.false114.if.end124_crit_edge
  %91 = ptrtoint ptr %quirks14 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %quirks14, align 4
  %bufdesc_ex = getelementptr i8, ptr %call, i32 2524
  %93 = trunc i32 %92 to i8
  %94 = lshr i8 %93, 4
  %95 = and i8 %94, 1
  %96 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %bufdesc_ex, align 4
  %call129 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  %clk_ptp = getelementptr i8, ptr %call, i32 2328
  %97 = ptrtoint ptr %clk_ptp to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call129, ptr %clk_ptp, align 8
  %cmp.i450 = icmp ugt ptr %call129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i450, label %if.then132, label %if.end124.if.end135_crit_edge

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end135

if.then132:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %clk_ptp to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %clk_ptp, align 8
  %99 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %bufdesc_ex, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end124.if.end135_crit_edge
  %call136 = call fastcc i32 @fec_enet_clk_enable(ptr noundef nonnull %call, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.failed_rgmii_delay_crit_edge

if.end135.failed_rgmii_delay_crit_edge:           ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_rgmii_delay

if.end139:                                        ; preds = %if.end135
  %100 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk_ipg, align 8
  %call141 = call fastcc i32 @clk_prepare_enable(ptr noundef %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end139.failed_clk_ipg_crit_edge

if.end139.failed_clk_ipg_crit_edge:               ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_ipg

if.end144:                                        ; preds = %if.end139
  %102 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk_ahb, align 4
  %call146 = call fastcc i32 @clk_prepare_enable(ptr noundef %103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end144.failed_clk_ahb_crit_edge

if.end144.failed_clk_ahb_crit_edge:               ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_ahb

if.end149:                                        ; preds = %if.end144
  %call151 = call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.18) #15
  %reg_phy = getelementptr i8, ptr %call, i32 3160
  %104 = ptrtoint ptr %reg_phy to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call151, ptr %reg_phy, align 8
  %cmp.i451 = icmp ugt ptr %call151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i451, label %if.else164, label %if.then154

if.then154:                                       ; preds = %if.end149
  %call156 = call i32 @regulator_enable(ptr noundef %call151) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then154.if.end171_crit_edge, label %do.end161

if.then154.if.end171_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end171

do.end161:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call156) #18
  br label %failed_regulator

if.else164:                                       ; preds = %if.end149
  %cmp167 = icmp eq ptr %call151, inttoptr (i32 -517 to ptr)
  br i1 %cmp167, label %if.else164.failed_regulator_crit_edge, label %if.end169

if.else164.failed_regulator_crit_edge:            ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_regulator

if.end169:                                        ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #17
  %105 = ptrtoint ptr %reg_phy to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %reg_phy, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.end169, %if.then154.if.end171_crit_edge
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 100) #15
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #15
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i452 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #15
  %106 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #15, !srcloc !267
  %call.i453 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #15
  call void @pm_runtime_enable(ptr noundef %dev) #15
  %call178 = call fastcc i32 @fec_reset_phy(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %if.end171.failed_reset_crit_edge

if.end171.failed_reset_crit_edge:                 ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_reset

if.end181:                                        ; preds = %if.end171
  %call.i454 = call i32 @platform_irq_count(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i454)
  %cmp.i455 = icmp sgt i32 %call.i454, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i454)
  %cmp1.i = icmp eq i32 %call.i454, 2
  %107 = call i32 @llvm.smax.i32(i32 %call.i454, i32 1) #15
  %spec.select.i = select i1 %cmp1.i, i32 1, i32 %107
  %irq_cnt.0.i = select i1 %cmp.i455, i32 3, i32 %spec.select.i
  %108 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bufdesc_ex, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool184.not = icmp eq i8 %109, 0
  br i1 %tobool184.not, label %if.end181.if.end186_crit_edge, label %if.then185

if.end181.if.end186_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end186

if.then185:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #17
  call void @fec_ptp_init(ptr noundef %pdev, i32 noundef %irq_cnt.0.i) #15
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %if.end181.if.end186_crit_edge
  %call187 = call fastcc i32 @fec_enet_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end186.for.body_crit_edge, label %if.end186.failed_init_crit_edge

if.end186.failed_init_crit_edge:                  ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_init

if.end186.for.body_crit_edge:                     ; preds = %if.end186
  br label %for.body

for.body:                                         ; preds = %if.end206.for.body_crit_edge, %if.end186.for.body_crit_edge
  %i.0469 = phi i32 [ %inc208, %if.end206.for.body_crit_edge ], [ 0, %if.end186.for.body_crit_edge ]
  %call192 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %irq_name, i32 noundef 8, ptr noundef nonnull @.str.22, i32 noundef %i.0469)
  %call194 = call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull %irq_name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %if.end198, label %for.body.if.end201_crit_edge

for.body.if.end201_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.end198:                                        ; preds = %for.body
  %call197 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0469) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp199 = icmp slt i32 %call197, 0
  br i1 %cmp199, label %if.end198.failed_init_crit_edge, label %if.end198.if.end201_crit_edge

if.end198.if.end201_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end201

if.end198.failed_init_crit_edge:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_init

if.end201:                                        ; preds = %if.end198.if.end201_crit_edge, %for.body.if.end201_crit_edge
  %irq.0466 = phi i32 [ %call197, %if.end198.if.end201_crit_edge ], [ %call194, %for.body.if.end201_crit_edge ]
  %110 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev, align 8
  %call.i456 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq.0466, ptr noundef nonnull @fec_enet_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %111, ptr noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i456)
  %tobool204.not = icmp eq i32 %call.i456, 0
  br i1 %tobool204.not, label %if.end206, label %if.end201.failed_init_crit_edge

if.end201.failed_init_crit_edge:                  ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_init

if.end206:                                        ; preds = %if.end201
  %arrayidx = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 27, i32 %i.0469
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %irq.0466, ptr %arrayidx, align 4
  %inc208 = add nuw nsw i32 %i.0469, 1
  %exitcond.not = icmp eq i32 %inc208, %irq_cnt.0.i
  br i1 %exitcond.not, label %for.end, label %if.end206.for.body_crit_edge

if.end206.for.body_crit_edge:                     ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end206
  %113 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver_data.i.i, align 4
  %quirks.i = getelementptr i8, ptr %114, i32 2540
  %115 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %116, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i457 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i457, i32 2512, i32 2520
  %irq2.i = getelementptr i8, ptr %114, i32 %..i
  %117 = ptrtoint ptr %irq2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.sink.i = load i32, ptr %irq2.i, align 8
  %118 = getelementptr i8, ptr %114, i32 2536
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink.i, ptr %118, align 8
  %call209 = call fastcc i32 @fec_enet_mii_init(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end212, label %for.end.failed_init_crit_edge

for.end.failed_init_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_init

if.end212:                                        ; preds = %for.end
  call void @netif_carrier_off(ptr noundef nonnull %call) #15
  %call213 = call fastcc i32 @fec_enet_clk_enable(ptr noundef nonnull %call, i1 noundef zeroext false)
  %call215 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #15
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %120 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1966, ptr %max_mtu, align 4
  %call216 = call i32 @register_netdev(ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end219, label %failed_register

if.end219:                                        ; preds = %if.end212
  %wol_flag221 = getelementptr i8, ptr %call, i32 2532
  %121 = ptrtoint ptr %wol_flag221 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %wol_flag221, align 4
  %and222 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223 = icmp ne i32 %and222, 0
  %call224 = call i32 @device_init_wakeup(ptr noundef %dev2, i1 noundef zeroext %tobool223) #15
  %123 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bufdesc_ex, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool226.not = icmp eq i8 %124, 0
  br i1 %tobool226.not, label %if.end219.if.end231_crit_edge, label %land.lhs.true227

if.end219.if.end231_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end231

land.lhs.true227:                                 ; preds = %if.end219
  %ptp_clock = getelementptr i8, ptr %call, i32 2816
  %125 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ptp_clock, align 8
  %tobool228.not = icmp eq ptr %126, null
  br i1 %tobool228.not, label %land.lhs.true227.if.end231_crit_edge, label %if.then229

land.lhs.true227.if.end231_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end231

if.then229:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #17
  %127 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.23, i32 noundef %128) #18
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %land.lhs.true227.if.end231_crit_edge, %if.end219.if.end231_crit_edge
  %rx_copybreak = getelementptr i8, ptr %call, i32 3244
  %129 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 256, ptr %rx_copybreak, align 4
  %tx_timeout_work = getelementptr i8, ptr %call, i32 2772
  call void @__init_work(ptr noundef %tx_timeout_work, i32 noundef 0) #15
  %130 = ptrtoint ptr %tx_timeout_work to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -64, ptr %tx_timeout_work, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2788
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @fec_probe.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry237 = getelementptr i8, ptr %call, i32 2776
  %131 = ptrtoint ptr %entry237 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %entry237, ptr %entry237, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2780
  %132 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %entry237, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2784
  %133 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @fec_enet_timeout_work, ptr %func, align 4
  %call.i458 = call i64 @ktime_get_mono_fast_ns() #15
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %134 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store volatile i64 %call.i458, ptr %last_busy.i, align 8
  %call.i459 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #15
  br label %cleanup

failed_register:                                  ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @fec_enet_mii_remove(ptr noundef %add.ptr.i)
  br label %failed_init

failed_init:                                      ; preds = %failed_register, %for.end.failed_init_crit_edge, %if.end201.failed_init_crit_edge, %if.end198.failed_init_crit_edge, %if.end186.failed_init_crit_edge
  %ret.0 = phi i32 [ %call187, %if.end186.failed_init_crit_edge ], [ %call209, %for.end.failed_init_crit_edge ], [ %call216, %failed_register ], [ %call197, %if.end198.failed_init_crit_edge ], [ %call.i456, %if.end201.failed_init_crit_edge ]
  call void @fec_ptp_stop(ptr noundef %pdev) #15
  br label %failed_reset

failed_reset:                                     ; preds = %failed_init, %if.end171.failed_reset_crit_edge
  %ret.1 = phi i32 [ %call178, %if.end171.failed_reset_crit_edge ], [ %ret.0, %failed_init ]
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #15
  %135 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_phy, align 8
  %tobool247.not = icmp eq ptr %136, null
  br i1 %tobool247.not, label %failed_reset.failed_regulator_crit_edge, label %if.then248

failed_reset.failed_regulator_crit_edge:          ; preds = %failed_reset
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_regulator

if.then248:                                       ; preds = %failed_reset
  call void @__sanitizer_cov_trace_pc() #17
  %call250 = call i32 @regulator_disable(ptr noundef nonnull %136) #15
  br label %failed_regulator

failed_regulator:                                 ; preds = %if.then248, %failed_reset.failed_regulator_crit_edge, %if.else164.failed_regulator_crit_edge, %do.end161
  %ret.2 = phi i32 [ %ret.1, %if.then248 ], [ %ret.1, %failed_reset.failed_regulator_crit_edge ], [ %call156, %do.end161 ], [ -517, %if.else164.failed_regulator_crit_edge ]
  %137 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %clk_ahb, align 4
  call void @clk_disable(ptr noundef %138) #15
  call void @clk_unprepare(ptr noundef %138) #15
  br label %failed_clk_ahb

failed_clk_ahb:                                   ; preds = %failed_regulator, %if.end144.failed_clk_ahb_crit_edge
  %ret.3 = phi i32 [ %call146, %if.end144.failed_clk_ahb_crit_edge ], [ %ret.2, %failed_regulator ]
  %139 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clk_ipg, align 8
  call void @clk_disable(ptr noundef %140) #15
  call void @clk_unprepare(ptr noundef %140) #15
  br label %failed_clk_ipg

failed_clk_ipg:                                   ; preds = %failed_clk_ahb, %if.end139.failed_clk_ipg_crit_edge
  %ret.4 = phi i32 [ %call141, %if.end139.failed_clk_ipg_crit_edge ], [ %ret.3, %failed_clk_ahb ]
  %call254 = call fastcc i32 @fec_enet_clk_enable(ptr noundef nonnull %call, i1 noundef zeroext false)
  br label %failed_rgmii_delay

failed_rgmii_delay:                               ; preds = %failed_clk_ipg, %if.end135.failed_rgmii_delay_crit_edge, %if.then88, %if.then80, %fec_enet_parse_rgmii_delay.exit
  %ret.5 = phi i32 [ -22, %fec_enet_parse_rgmii_delay.exit ], [ %78, %if.then80 ], [ %80, %if.then88 ], [ %call136, %if.end135.failed_rgmii_delay_crit_edge ], [ %ret.4, %failed_clk_ipg ]
  %call255 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %2) #15
  br i1 %call255, label %if.then256, label %failed_rgmii_delay.if.end257_crit_edge

failed_rgmii_delay.if.end257_crit_edge:           ; preds = %failed_rgmii_delay
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end257

if.then256:                                       ; preds = %failed_rgmii_delay
  call void @__sanitizer_cov_trace_pc() #17
  call void @of_phy_deregister_fixed_link(ptr noundef %2) #15
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %failed_rgmii_delay.if.end257_crit_edge
  call void @of_node_put(ptr noundef %phy_node.0) #15
  br label %failed_phy

failed_phy:                                       ; preds = %if.end257, %do.end, %if.end41.failed_phy_crit_edge
  %ret.6 = phi i32 [ %call42, %if.end41.failed_phy_crit_edge ], [ %ret.5, %if.end257 ], [ %call51, %do.end ]
  %141 = load i32, ptr @fec_probe.dev_id, align 4
  %dec = add i32 %141, -1
  store i32 %dec, ptr @fec_probe.dev_id, align 4
  br label %failed_ioremap

failed_ioremap:                                   ; preds = %failed_phy, %if.then23
  %ret.7 = phi i32 [ %43, %if.then23 ], [ %ret.6, %failed_phy ]
  call void @free_netdev(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %failed_ioremap, %if.end231, %fec_enet_get_queue_num.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.7, %failed_ioremap ], [ 0, %if.end231 ], [ -12, %fec_enet_get_queue_num.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %irq_name) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_rx_qs) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_tx_qs) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_timeout_work = getelementptr i8, ptr %1, i32 2772
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_work) #15
  tail call void @fec_ptp_stop(ptr noundef %pdev) #15
  tail call void @unregister_netdev(ptr noundef %1) #15
  %5 = load i32, ptr @mii_cnt, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr @mii_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i32 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i32, label %if.then.i33, label %if.end.fec_enet_mii_remove.exit_crit_edge

if.end.fec_enet_mii_remove.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_mii_remove.exit

if.then.i33:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %mii_bus.i = getelementptr i8, ptr %1, i32 2480
  %6 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_bus.i, align 8
  tail call void @mdiobus_unregister(ptr noundef %7) #15
  %8 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mii_bus.i, align 8
  tail call void @mdiobus_free(ptr noundef %9) #15
  br label %fec_enet_mii_remove.exit

fec_enet_mii_remove.exit:                         ; preds = %if.then.i33, %if.end.fec_enet_mii_remove.exit_crit_edge
  %reg_phy = getelementptr i8, ptr %1, i32 3160
  %10 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_phy, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %fec_enet_mii_remove.exit.if.end8_crit_edge, label %if.then5

fec_enet_mii_remove.exit.if.end8_crit_edge:       ; preds = %fec_enet_mii_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then5:                                         ; preds = %fec_enet_mii_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %fec_enet_mii_remove.exit.if.end8_crit_edge
  %call9 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #15
  br i1 %call9, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @of_phy_deregister_fixed_link(ptr noundef %3) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %phy_node = getelementptr i8, ptr %1, i32 2492
  %12 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %13) #15
  %clk_ahb = getelementptr i8, ptr %1, i32 2316
  %14 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %15) #15
  tail call void @clk_unprepare(ptr noundef %15) #15
  %clk_ipg = getelementptr i8, ptr %1, i32 2312
  %16 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %17) #15
  tail call void @clk_unprepare(ptr noundef %17) #15
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #15, !srcloc !269
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end11.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end11.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end11.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #15
  tail call void @free_netdev(ptr noundef %1) #15
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_init_stop_mode(ptr nocapture noundef %fep, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %out_val = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %out_val) #15
  %0 = ptrtoint ptr %out_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %out_val, align 4, !annotation !265
  %1 = getelementptr inbounds [3 x i32], ptr %out_val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !265
  %3 = getelementptr inbounds [3 x i32], ptr %out_val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !265
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #15
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #15
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call.i46 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef nonnull %out_val, i32 noundef 3, i32 noundef 0) #15
  %8 = call i32 @llvm.smin.i32(i32 %call.i46, i32 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i46)
  %tobool2.not = icmp sgt i32 %call.i46, -1
  br i1 %tobool2.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fec_enet_init_stop_mode.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fec_enet_init_stop_mode, %if.then8)) #15
          to label %cleanup [label %if.then8], !srcloc !271

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.fec_enet_private, ptr %fep, i32 0, i32 16
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fec_enet_init_stop_mode.__UNIQUE_ID_ddebug519, ptr noundef %dev, ptr noundef nonnull @.str.36) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %7) #15
  %stop_gpr = getelementptr inbounds %struct.fec_enet_private, ptr %fep, i32 0, i32 49
  %11 = ptrtoint ptr %stop_gpr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %stop_gpr, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end26

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %pdev19 = getelementptr inbounds %struct.fec_enet_private, ptr %fep, i32 0, i32 16
  %12 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev19, align 8
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.37) #18
  %14 = ptrtoint ptr %stop_gpr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stop_gpr, align 4
  %16 = ptrtoint ptr %15 to i32
  store ptr null, ptr %stop_gpr, align 4
  br label %out

if.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %conv = trunc i32 %18 to i8
  %reg = getelementptr inbounds %struct.fec_enet_private, ptr %fep, i32 0, i32 49, i32 1
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %reg, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %conv29 = trunc i32 %21 to i8
  %bit = getelementptr inbounds %struct.fec_enet_private, ptr %fep, i32 0, i32 49, i32 2
  %22 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv29, ptr %bit, align 1
  br label %out

out:                                              ; preds = %if.end26, %do.end18
  %ret.0 = phi i32 [ %16, %do.end18 ], [ 0, %if.end26 ]
  call void @of_node_put(ptr noundef nonnull %7) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8, %do.body, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %of_parse_phandle.exit.cleanup_crit_edge ], [ %8, %if.then8 ], [ 0, %of_parse_phandle.exit.thread ], [ %8, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %out_val) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_clk_enable(ptr noundef %ndev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_enet_out = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %clk_enet_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_enet_out, align 4
  br i1 %enable, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %1) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_ptp = getelementptr i8, ptr %ndev, i32 2328
  %2 = ptrtoint ptr %clk_ptp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ptp, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %ptp_clk_mutex = getelementptr i8, ptr %ndev, i32 2340
  tail call void @mutex_lock_nested(ptr noundef %ptp_clk_mutex, i32 noundef 0) #15
  %4 = ptrtoint ptr %clk_ptp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ptp, align 8
  %call.i80 = tail call i32 @clk_prepare(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end.i84, label %if.then5.failed_clk_ptp.sink.split_crit_edge

if.then5.failed_clk_ptp.sink.split_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_ptp.sink.split

if.end.i84:                                       ; preds = %if.then5
  %call1.i82 = tail call i32 @clk_enable(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool2.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool2.not.i83, label %if.else, label %if.then3.i85

if.then3.i85:                                     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %5) #15
  br label %failed_clk_ptp.sink.split

if.else:                                          ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #17
  %ptp_clk_on = getelementptr i8, ptr %ndev, i32 2336
  %6 = ptrtoint ptr %ptp_clk_on to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ptp_clk_on, align 8
  tail call void @mutex_unlock(ptr noundef %ptp_clk_mutex) #15
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end.if.end13_crit_edge
  %clk_ref = getelementptr i8, ptr %ndev, i32 2320
  %7 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_ref, align 8
  %call.i88 = tail call i32 @clk_prepare(ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.end.i92, label %if.end13.failed_clk_ref_crit_edge

if.end13.failed_clk_ref_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_ref

if.end.i92:                                       ; preds = %if.end13
  %call1.i90 = tail call i32 @clk_enable(ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool2.not.i91 = icmp eq i32 %call1.i90, 0
  br i1 %tobool2.not.i91, label %if.end17, label %if.then3.i93

if.then3.i93:                                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %8) #15
  br label %failed_clk_ref

if.end17:                                         ; preds = %if.end.i92
  %clk_2x_txclk = getelementptr i8, ptr %ndev, i32 2332
  %9 = ptrtoint ptr %clk_2x_txclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_2x_txclk, align 4
  %call.i96 = tail call i32 @clk_prepare(ptr noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end.i100, label %if.end17.failed_clk_2x_txclk_crit_edge

if.end17.failed_clk_2x_txclk_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_2x_txclk

if.end.i100:                                      ; preds = %if.end17
  %call1.i98 = tail call i32 @clk_enable(ptr noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool2.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool2.not.i99, label %if.end21, label %if.then3.i101

if.then3.i101:                                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %10) #15
  br label %failed_clk_2x_txclk

if.end21:                                         ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @fec_enet_phy_reset_after_clk_enable(ptr noundef %ndev)
  br label %cleanup

if.else22:                                        ; preds = %entry
  tail call void @clk_disable(ptr noundef %1) #15
  tail call void @clk_unprepare(ptr noundef %1) #15
  %clk_ptp24 = getelementptr i8, ptr %ndev, i32 2328
  %11 = ptrtoint ptr %clk_ptp24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_ptp24, align 8
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.else22.if.end31_crit_edge, label %if.then26

if.else22.if.end31_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #17
  %ptp_clk_mutex27 = getelementptr i8, ptr %ndev, i32 2340
  tail call void @mutex_lock_nested(ptr noundef %ptp_clk_mutex27, i32 noundef 0) #15
  %13 = ptrtoint ptr %clk_ptp24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_ptp24, align 8
  tail call void @clk_disable(ptr noundef %14) #15
  tail call void @clk_unprepare(ptr noundef %14) #15
  %ptp_clk_on29 = getelementptr i8, ptr %ndev, i32 2336
  %15 = ptrtoint ptr %ptp_clk_on29 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %ptp_clk_on29, align 8
  tail call void @mutex_unlock(ptr noundef %ptp_clk_mutex27) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.else22.if.end31_crit_edge
  %clk_ref32 = getelementptr i8, ptr %ndev, i32 2320
  %16 = ptrtoint ptr %clk_ref32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_ref32, align 8
  tail call void @clk_disable(ptr noundef %17) #15
  tail call void @clk_unprepare(ptr noundef %17) #15
  %clk_2x_txclk33 = getelementptr i8, ptr %ndev, i32 2332
  %18 = ptrtoint ptr %clk_2x_txclk33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_2x_txclk33, align 4
  tail call void @clk_disable(ptr noundef %19) #15
  tail call void @clk_unprepare(ptr noundef %19) #15
  br label %cleanup

failed_clk_2x_txclk:                              ; preds = %if.then3.i101, %if.end17.failed_clk_2x_txclk_crit_edge
  %retval.0.i102.ph = phi i32 [ %call1.i98, %if.then3.i101 ], [ %call.i96, %if.end17.failed_clk_2x_txclk_crit_edge ]
  %20 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_ref, align 8
  %tobool36.not = icmp eq ptr %21, null
  br i1 %tobool36.not, label %failed_clk_2x_txclk.failed_clk_ref_crit_edge, label %if.then37

failed_clk_2x_txclk.failed_clk_ref_crit_edge:     ; preds = %failed_clk_2x_txclk
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_ref

if.then37:                                        ; preds = %failed_clk_2x_txclk
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_disable(ptr noundef nonnull %21) #15
  tail call void @clk_unprepare(ptr noundef nonnull %21) #15
  br label %failed_clk_ref

failed_clk_ref:                                   ; preds = %if.then37, %failed_clk_2x_txclk.failed_clk_ref_crit_edge, %if.then3.i93, %if.end13.failed_clk_ref_crit_edge
  %ret.0 = phi i32 [ %retval.0.i102.ph, %if.then37 ], [ %retval.0.i102.ph, %failed_clk_2x_txclk.failed_clk_ref_crit_edge ], [ %call1.i90, %if.then3.i93 ], [ %call.i88, %if.end13.failed_clk_ref_crit_edge ]
  %22 = ptrtoint ptr %clk_ptp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_ptp, align 8
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %failed_clk_ref.failed_clk_ptp_crit_edge, label %if.then42

failed_clk_ref.failed_clk_ptp_crit_edge:          ; preds = %failed_clk_ref
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_ptp

if.then42:                                        ; preds = %failed_clk_ref
  call void @__sanitizer_cov_trace_pc() #17
  %ptp_clk_mutex43 = getelementptr i8, ptr %ndev, i32 2340
  tail call void @mutex_lock_nested(ptr noundef %ptp_clk_mutex43, i32 noundef 0) #15
  %24 = ptrtoint ptr %clk_ptp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_ptp, align 8
  tail call void @clk_disable(ptr noundef %25) #15
  tail call void @clk_unprepare(ptr noundef %25) #15
  %ptp_clk_on45 = getelementptr i8, ptr %ndev, i32 2336
  %26 = ptrtoint ptr %ptp_clk_on45 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ptp_clk_on45, align 8
  br label %failed_clk_ptp.sink.split

failed_clk_ptp.sink.split:                        ; preds = %if.then42, %if.then3.i85, %if.then5.failed_clk_ptp.sink.split_crit_edge
  %ptp_clk_mutex43.sink = phi ptr [ %ptp_clk_mutex43, %if.then42 ], [ %ptp_clk_mutex, %if.then5.failed_clk_ptp.sink.split_crit_edge ], [ %ptp_clk_mutex, %if.then3.i85 ]
  %ret.1.ph = phi i32 [ %ret.0, %if.then42 ], [ %call.i80, %if.then5.failed_clk_ptp.sink.split_crit_edge ], [ %call1.i82, %if.then3.i85 ]
  tail call void @mutex_unlock(ptr noundef %ptp_clk_mutex43.sink) #15
  br label %failed_clk_ptp

failed_clk_ptp:                                   ; preds = %failed_clk_ptp.sink.split, %failed_clk_ref.failed_clk_ptp_crit_edge
  %ret.1 = phi i32 [ %ret.0, %failed_clk_ref.failed_clk_ptp_crit_edge ], [ %ret.1.ph, %failed_clk_ptp.sink.split ]
  %27 = ptrtoint ptr %clk_enet_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_enet_out, align 4
  tail call void @clk_disable(ptr noundef %28) #15
  tail call void @clk_unprepare(ptr noundef %28) #15
  br label %cleanup

cleanup:                                          ; preds = %failed_clk_ptp, %if.end31, %if.end21, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %failed_clk_ptp ], [ 0, %if.end31 ], [ 0, %if.end21 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %clk) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_reset_phy(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %msec = alloca i32, align 4
  %phy_post_delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msec) #15
  %0 = ptrtoint ptr %msec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %msec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_post_delay) #15
  %1 = ptrtoint ptr %phy_post_delay to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %phy_post_delay, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.45, ptr noundef nonnull %msec, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool1.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %msec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %cmp = icmp sgt i32 %5, 1000
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %msec to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %msec, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i)
  %cmp5 = icmp eq i32 %call.i, -517
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.else

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i)
  %7 = icmp ult i32 %call.i, 2048
  br i1 %7, label %if.end10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %call.i.i63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.47, ptr noundef nonnull %phy_post_delay, i32 noundef 1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i63)
  %tobool12.not = icmp sgt i32 %call.i.i63, -1
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true13:                                  ; preds = %if.end10
  %8 = ptrtoint ptr %phy_post_delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_post_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %9)
  %cmp14 = icmp sgt i32 %9, 1000
  br i1 %cmp14, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end16_crit_edge

land.lhs.true13.if.end16_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true13.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %call.i64 = call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.48, ptr noundef null) #15
  %tobool.i.not = icmp eq ptr %call.i64, null
  %cond = select i1 %tobool.i.not, i32 0, i32 2
  %call20 = call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %call.i, i32 noundef %cond, ptr noundef nonnull @.str.49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call20) #18
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %msec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp25 = icmp sgt i32 %11, 20
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  call void @msleep(i32 noundef %11) #15
  br label %if.end29

if.else27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %mul = mul i32 %11, 1000
  %add = add i32 %mul, 1000
  call void @usleep_range_state(i32 noundef %mul, i32 noundef %add, i32 noundef 2) #15
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  %lnot.ext = zext i1 %tobool.i.not to i32
  %call.i65 = call ptr @gpio_to_desc(i32 noundef %call.i) #15
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i65, i32 noundef %lnot.ext) #15
  %12 = ptrtoint ptr %phy_post_delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_post_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %13)
  %cmp34 = icmp sgt i32 %13, 20
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  call void @msleep(i32 noundef %13) #15
  br label %cleanup

if.else36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  %mul37 = mul i32 %13, 1000
  %add39 = add i32 %mul37, 1000
  call void @usleep_range_state(i32 noundef %mul37, i32 noundef %add39, i32 noundef 2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.then35, %if.end29.cleanup_crit_edge, %do.end, %land.lhs.true13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -517, %if.end3.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -22, %land.lhs.true13.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.else36 ], [ 0, %if.then35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_post_delay) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msec) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_init(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %addr.i90.i = alloca [6 x i8], align 1
  %addr.i.i = alloca [6 x i8], align 1
  %tmpaddr.i = alloca [6 x i8], align 4
  %bd_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bd_dma) #15
  %0 = ptrtoint ptr %bd_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bd_dma, align 4, !annotation !265
  %bufdesc_ex = getelementptr i8, ptr %ndev, i32 2524
  %1 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bufdesc_ex, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond.neg = select i1 %tobool.not, i32 -8, i32 -32
  %cond = select i1 %tobool.not, i32 8, i32 32
  %3 = tail call i32 @llvm.ctlz.i32(i32 %cond, i1 true) #15, !range !272
  %sub.i = xor i32 %3, 31
  %shl = shl nuw i32 1, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %shl)
  %cmp.not = icmp eq i32 %cond, %shl
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !273

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3484, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rx_align = getelementptr i8, ptr %ndev, i32 3176
  %4 = ptrtoint ptr %rx_align to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %rx_align, align 8
  %tx_align = getelementptr i8, ptr %ndev, i32 3172
  %5 = ptrtoint ptr %tx_align to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %tx_align, align 4
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #15
  br label %if.end29

dma_set_mask_and_coherent.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %do.end26, label %dma_set_mask_and_coherent.exit.if.end29_crit_edge

dma_set_mask_and_coherent.exit.if.end29_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

do.end26:                                         ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28, ptr noundef nonnull @.str.52) #18
  br label %cleanup

if.end29:                                         ; preds = %dma_set_mask_and_coherent.exit.if.end29_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %num_tx_queues.i = getelementptr i8, ptr %ndev, i32 2432
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp80.not.i = icmp eq i32 %11, 0
  br i1 %cmp80.not.i, label %if.end29.for.cond20.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end29.for.cond20.preheader.i_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond20.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end29
  %total_tx_ring_size.i = getelementptr i8, ptr %ndev, i32 2464
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw i32 %i.081.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i229 = icmp ult i32 %inc.i, %13
  br i1 %cmp.i229, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.cond20.preheader.i_crit_edge

for.cond.i.for.cond20.preheader.i_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond20.preheader.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond20.preheader.i:                           ; preds = %for.cond.i.for.cond20.preheader.i_crit_edge, %if.end29.for.cond20.preheader.i_crit_edge
  %num_rx_queues.i = getelementptr i8, ptr %ndev, i32 2436
  %14 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2182.not.i = icmp eq i32 %15, 0
  br i1 %cmp2182.not.i, label %for.cond20.preheader.i.if.end33_crit_edge, label %for.body23.lr.ph.i

for.cond20.preheader.i.if.end33_crit_edge:        ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

for.body23.lr.ph.i:                               ; preds = %for.cond20.preheader.i
  %total_rx_ring_size.i = getelementptr i8, ptr %ndev, i32 2468
  br label %for.body23.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 4140) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.fec_enet_alloc_queue.exit_crit_edge, label %if.end.i

for.body.i.fec_enet_alloc_queue.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_alloc_queue.exit

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %i.081.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %ring_size.i = getelementptr inbounds %struct.bufdesc_prop, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 512, ptr %ring_size.i, align 8
  %19 = ptrtoint ptr %total_tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_tx_ring_size.i, align 8
  %add.i = add i32 %20, 512
  store i32 %add.i, ptr %total_tx_ring_size.i, align 8
  %tx_stop_threshold.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %tx_stop_threshold.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 217, ptr %tx_stop_threshold.i, align 4
  %tx_wake_threshold.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %tx_wake_threshold.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 147, ptr %tx_wake_threshold.i, align 2
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %tso_hdrs_dma.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 131072, ptr noundef %tso_hdrs_dma.i, i32 noundef 3264, i32 noundef 0) #15
  %tso_hdrs.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %call7.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %tso_hdrs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %tso_hdrs.i, align 4
  %tobool17.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not.i, label %if.end.i.fec_enet_alloc_queue.exit_crit_edge, label %for.cond.i

if.end.i.fec_enet_alloc_queue.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_alloc_queue.exit

for.body23.i:                                     ; preds = %if.end30.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %i.183.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc42.i, %if.end30.i.for.body23.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i78.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 2076) #19
  %arrayidx25.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.183.i
  %27 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i78.i, ptr %arrayidx25.i, align 4
  %tobool28.not.i = icmp eq ptr %call7.i.i78.i, null
  br i1 %tobool28.not.i, label %for.body23.i.fec_enet_alloc_queue.exit_crit_edge, label %if.end30.i

for.body23.i.fec_enet_alloc_queue.exit_crit_edge: ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_alloc_queue.exit

if.end30.i:                                       ; preds = %for.body23.i
  %ring_size34.i = getelementptr inbounds %struct.bufdesc_prop, ptr %call7.i.i78.i, i32 0, i32 6
  %28 = ptrtoint ptr %ring_size34.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 512, ptr %ring_size34.i, align 8
  %29 = ptrtoint ptr %total_rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_rx_ring_size.i, align 4
  %add40.i = add i32 %30, 512
  store i32 %add40.i, ptr %total_rx_ring_size.i, align 4
  %inc42.i = add nuw i32 %i.183.i, 1
  %31 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_rx_queues.i, align 4
  %cmp21.i = icmp ult i32 %inc42.i, %32
  br i1 %cmp21.i, label %if.end30.i.for.body23.i_crit_edge, label %if.end30.i.if.end33_crit_edge

if.end30.i.if.end33_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end30.i.for.body23.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.i

fec_enet_alloc_queue.exit:                        ; preds = %for.body23.i.fec_enet_alloc_queue.exit_crit_edge, %if.end.i.fec_enet_alloc_queue.exit_crit_edge, %for.body.i.fec_enet_alloc_queue.exit_crit_edge
  tail call fastcc void @fec_enet_free_queue(ptr noundef %ndev) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end30.i.if.end33_crit_edge, %for.cond20.preheader.i.if.end33_crit_edge
  %total_tx_ring_size = getelementptr i8, ptr %ndev, i32 2464
  %33 = ptrtoint ptr %total_tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_tx_ring_size, align 8
  %total_rx_ring_size = getelementptr i8, ptr %ndev, i32 2468
  %35 = ptrtoint ptr %total_rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_rx_ring_size, align 4
  %add = add i32 %36, %34
  %mul = mul i32 %add, %cond
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %call.i230 = call ptr @dmam_alloc_attrs(ptr noundef %dev35, i32 noundef %mul, ptr noundef nonnull %bd_dma, i32 noundef 3264, i32 noundef 0) #15
  %tobool37.not = icmp eq ptr %call.i230, null
  br i1 %tobool37.not, label %if.end33.free_queue_mem_crit_edge, label %if.end39

if.end33.free_queue_mem_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_queue_mem

if.end39:                                         ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmpaddr.i) #15
  %39 = getelementptr inbounds [6 x i8], ptr %tmpaddr.i, i32 0, i32 4
  %40 = call ptr @memset(ptr %tmpaddr.i, i32 255, i32 6)
  %41 = load i32, ptr @macaddr, align 4
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end39.if.then.i234_crit_edge

if.end39.if.then.i234_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i234

is_valid_ether_addr.exit.i:                       ; preds = %if.end39
  %43 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @macaddr, i32 0, i32 4), align 4
  %conv.i.i.i = zext i16 %43 to i32
  %or.i.i.i = or i32 %41, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.then.i234_crit_edge, label %is_valid_ether_addr.exit.i.if.end10.i_crit_edge

is_valid_ether_addr.exit.i.if.end10.i_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

is_valid_ether_addr.exit.i.if.then.i234_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i234

if.then.i234:                                     ; preds = %is_valid_ether_addr.exit.i.if.then.i234_crit_edge, %if.end39.if.then.i234_crit_edge
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3, i32 27
  %46 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i233 = icmp eq ptr %47, null
  br i1 %tobool.not.i233, label %if.then.i234.if.end10.i_crit_edge, label %if.then2.i

if.then.i234.if.end10.i_crit_edge:                ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.then.i234
  %call3.i = call i32 @of_get_mac_address(ptr noundef nonnull %47, ptr noundef nonnull %tmpaddr.i) #15
  %48 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call3.i, label %if.end9.fold.split.i [
    i32 0, label %if.then2.i.if.end10.i_crit_edge
    i32 -517, label %fec_get_mac.exit
  ]

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.end9.fold.split.i:                             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end9.fold.split.i, %if.then2.i.if.end10.i_crit_edge, %if.then.i234.if.end10.i_crit_edge, %is_valid_ether_addr.exit.i.if.end10.i_crit_edge
  %iap.2.i = phi ptr [ @macaddr, %is_valid_ether_addr.exit.i.if.end10.i_crit_edge ], [ @macaddr, %if.then.i234.if.end10.i_crit_edge ], [ %tmpaddr.i, %if.then2.i.if.end10.i_crit_edge ], [ @macaddr, %if.end9.fold.split.i ]
  %49 = ptrtoint ptr %iap.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iap.2.i, align 4
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not.i70.i = icmp eq i32 %51, 0
  br i1 %tobool.i.not.i70.i, label %is_valid_ether_addr.exit75.i, label %if.end10.i.if.then12.i_crit_edge

if.end10.i.if.then12.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i

is_valid_ether_addr.exit75.i:                     ; preds = %if.end10.i
  %add.ptr.i.i.i = getelementptr i8, ptr %iap.2.i, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i.i.i, align 4
  %conv.i.i71.i = zext i16 %53 to i32
  %or.i.i72.i = or i32 %50, %conv.i.i71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i72.i)
  %cmp.i.i73.not.i = icmp eq i32 %or.i.i72.i, 0
  br i1 %cmp.i.i73.not.i, label %is_valid_ether_addr.exit75.i.if.then12.i_crit_edge, label %is_valid_ether_addr.exit75.i.if.end19.i_crit_edge

is_valid_ether_addr.exit75.i.if.end19.i_crit_edge: ; preds = %is_valid_ether_addr.exit75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

is_valid_ether_addr.exit75.i.if.then12.i_crit_edge: ; preds = %is_valid_ether_addr.exit75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i

if.then12.i:                                      ; preds = %is_valid_ether_addr.exit75.i.if.then12.i_crit_edge, %if.end10.i.if.then12.i_crit_edge
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 8
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3, i32 7
  %56 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %platform_data.i.i, align 8
  %tobool16.not.i = icmp eq ptr %57, null
  %mac.i = getelementptr inbounds %struct.fec_platform_data, ptr %57, i32 0, i32 1
  %spec.select.i = select i1 %tobool16.not.i, ptr %iap.2.i, ptr %mac.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then12.i, %is_valid_ether_addr.exit75.i.if.end19.i_crit_edge
  %iap.4.i = phi ptr [ %iap.2.i, %is_valid_ether_addr.exit75.i.if.end19.i_crit_edge ], [ %spec.select.i, %if.then12.i ]
  %58 = ptrtoint ptr %iap.4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iap.4.i, align 4
  %60 = and i32 %59, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i76.i = icmp eq i32 %60, 0
  br i1 %tobool.i.not.i76.i, label %is_valid_ether_addr.exit82.i, label %if.end19.i.if.then21.i_crit_edge

if.end19.i.if.then21.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

is_valid_ether_addr.exit82.i:                     ; preds = %if.end19.i
  %add.ptr.i.i77.i = getelementptr i8, ptr %iap.4.i, i32 4
  %61 = ptrtoint ptr %add.ptr.i.i77.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %add.ptr.i.i77.i, align 2
  %conv.i.i78.i = zext i16 %62 to i32
  %or.i.i79.i = or i32 %59, %conv.i.i78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i79.i)
  %cmp.i.i80.not.i = icmp eq i32 %or.i.i79.i, 0
  br i1 %cmp.i.i80.not.i, label %is_valid_ether_addr.exit82.i.if.then21.i_crit_edge, label %is_valid_ether_addr.exit82.i.if.end33.i_crit_edge

is_valid_ether_addr.exit82.i.if.end33.i_crit_edge: ; preds = %is_valid_ether_addr.exit82.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

is_valid_ether_addr.exit82.i.if.then21.i_crit_edge: ; preds = %is_valid_ether_addr.exit82.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21.i

if.then21.i:                                      ; preds = %is_valid_ether_addr.exit82.i.if.then21.i_crit_edge, %if.end19.i.if.then21.i_crit_edge
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i235 = getelementptr i8, ptr %64, i32 228
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #15, !srcloc !274
  %66 = call i32 @llvm.bswap.i32(i32 %65) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !275
  %67 = ptrtoint ptr %tmpaddr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %tmpaddr.i, align 4
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr27.i = getelementptr i8, ptr %69, i32 232
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #15, !srcloc !274
  %71 = call i32 @llvm.bswap.i32(i32 %70) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !276
  %shr.i = lshr i32 %71, 16
  %conv.i = trunc i32 %shr.i to i16
  %72 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i, ptr %39, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then21.i, %is_valid_ether_addr.exit82.i.if.end33.i_crit_edge
  %iap.5.i = phi ptr [ %iap.4.i, %is_valid_ether_addr.exit82.i.if.end33.i_crit_edge ], [ %tmpaddr.i, %if.then21.i ]
  %73 = ptrtoint ptr %iap.5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iap.5.i, align 4
  %75 = and i32 %74, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i.not.i83.i = icmp eq i32 %75, 0
  br i1 %tobool.i.not.i83.i, label %is_valid_ether_addr.exit89.i, label %if.end33.i.do.end.i_crit_edge

if.end33.i.do.end.i_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

is_valid_ether_addr.exit89.i:                     ; preds = %if.end33.i
  %add.ptr.i.i84.i = getelementptr i8, ptr %iap.5.i, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i84.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i.i84.i, align 2
  %conv.i.i85.i = zext i16 %77 to i32
  %or.i.i86.i = or i32 %74, %conv.i.i85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i86.i)
  %cmp.i.i87.not.i = icmp eq i32 %or.i.i86.i, 0
  br i1 %cmp.i.i87.not.i, label %is_valid_ether_addr.exit89.i.do.end.i_crit_edge, label %if.end43.i

is_valid_ether_addr.exit89.i.do.end.i_crit_edge:  ; preds = %is_valid_ether_addr.exit89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %is_valid_ether_addr.exit89.i.do.end.i_crit_edge, %if.end33.i.do.end.i_crit_edge
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 8
  %dev37.i = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37.i, ptr noundef nonnull @.str.54, ptr noundef %iap.5.i) #18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #15
  %80 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #15
  %81 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %addr.i.i, align 1
  %83 = and i8 %82, -4
  %84 = or i8 %83, 2
  store i8 %84, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #15
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 55
  %85 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #15
  %86 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev, align 8
  %dev42.i = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %88 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42.i, ptr noundef nonnull @.str.57, ptr noundef %89) #18
  br label %if.end43

if.end43.i:                                       ; preds = %is_valid_ether_addr.exit89.i
  %cmp44.i = icmp eq ptr %iap.5.i, @macaddr
  br i1 %cmp44.i, label %cond.true.i, label %if.end43.i.cond.end.i_crit_edge

if.end43.i.cond.end.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev_id.i = getelementptr i8, ptr %ndev, i32 2476
  %90 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dev_id.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end43.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %91, %cond.true.i ], [ 0, %if.end43.i.cond.end.i_crit_edge ]
  %92 = ptrtoint ptr %iap.5.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %iap.5.i, align 1
  %conv.i.i91.i = zext i8 %93 to i64
  %arrayidx.1.i.i.i = getelementptr i8, ptr %iap.5.i, i32 1
  %94 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %conv.1.i.i.i = zext i8 %95 to i64
  %96 = shl nuw nsw i64 %conv.i.i91.i, 16
  %97 = shl nuw nsw i64 %conv.1.i.i.i, 8
  %shl.2.i.i.i = or i64 %97, %96
  %arrayidx.2.i.i.i = getelementptr i8, ptr %iap.5.i, i32 2
  %98 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %conv.2.i.i.i = zext i8 %99 to i64
  %or.2.i.i.i = or i64 %shl.2.i.i.i, %conv.2.i.i.i
  %arrayidx.3.i.i.i = getelementptr i8, ptr %iap.5.i, i32 3
  %100 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %conv.3.i.i.i = zext i8 %101 to i64
  %102 = ptrtoint ptr %add.ptr.i.i84.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %add.ptr.i.i84.i, align 1
  %conv.4.i.i.i = zext i8 %103 to i64
  %104 = shl nuw nsw i64 %or.2.i.i.i, 24
  %105 = shl nuw nsw i64 %conv.3.i.i.i, 16
  %106 = shl nuw nsw i64 %conv.4.i.i.i, 8
  %107 = or i64 %106, %105
  %shl.5.i.i.i = or i64 %107, %104
  %arrayidx.5.i.i.i = getelementptr i8, ptr %iap.5.i, i32 5
  %108 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %conv.5.i.i.i = zext i8 %109 to i64
  %or.5.i.i.i = or i64 %shl.5.i.i.i, %conv.5.i.i.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i90.i) #15
  %110 = getelementptr inbounds [6 x i8], ptr %addr.i90.i, i32 0, i32 1
  %111 = getelementptr inbounds [6 x i8], ptr %addr.i90.i, i32 0, i32 2
  %112 = getelementptr inbounds [6 x i8], ptr %addr.i90.i, i32 0, i32 3
  %113 = getelementptr inbounds [6 x i8], ptr %addr.i90.i, i32 0, i32 4
  %114 = getelementptr inbounds [6 x i8], ptr %addr.i90.i, i32 0, i32 5
  %conv.i.i = zext i32 %cond.i to i64
  %add.i.i = add i64 %or.5.i.i.i, %conv.i.i
  %conv.i3.i.i = trunc i64 %add.i.i to i8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i3.i.i, ptr %114, align 1
  %shr.i.i.i = lshr i64 %add.i.i, 8
  %conv.1.i4.i.i = trunc i64 %shr.i.i.i to i8
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.1.i4.i.i, ptr %113, align 1
  %shr.1.i.i.i = lshr i64 %add.i.i, 16
  %conv.2.i6.i.i = trunc i64 %shr.1.i.i.i to i8
  %117 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv.2.i6.i.i, ptr %112, align 1
  %shr.2.i.i.i = lshr i64 %add.i.i, 24
  %conv.3.i8.i.i = trunc i64 %shr.2.i.i.i to i8
  %118 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.3.i8.i.i, ptr %111, align 1
  %shr.3.i.i.i = lshr i64 %add.i.i, 32
  %conv.4.i10.i.i = trunc i64 %shr.3.i.i.i to i8
  %119 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.4.i10.i.i, ptr %110, align 1
  %shr.4.i.i.i = lshr i64 %add.i.i, 40
  %conv.5.i12.i.i = trunc i64 %shr.4.i.i.i to i8
  %120 = ptrtoint ptr %addr.i90.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv.5.i12.i.i, ptr %addr.i90.i, align 1
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %addr.i90.i, i32 noundef 6) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i90.i) #15
  br label %if.end43

fec_get_mac.exit:                                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmpaddr.i) #15
  br label %free_queue_mem

if.end43:                                         ; preds = %cond.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmpaddr.i) #15
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %121 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end43.fec_set_mac_address.exit_crit_edge, label %do.body.i

if.end43.fec_set_mac_address.exit_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_set_mac_address.exit

do.body.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !277
  call void @arm_heavy_mb() #15
  %dev_addr.i237 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %123 = ptrtoint ptr %dev_addr.i237 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_addr.i237, align 64
  %arrayidx.i238 = getelementptr i8, ptr %124, i32 3
  %125 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i238, align 1
  %conv.i239 = zext i8 %126 to i32
  %arrayidx10.i = getelementptr i8, ptr %124, i32 2
  %127 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %128 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i239
  %arrayidx13.i = getelementptr i8, ptr %124, i32 1
  %129 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %130 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 16
  %or16.i = or i32 %or.i, %shl15.i
  %131 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %124, align 1
  %conv19.i = zext i8 %132 to i32
  %shl20.i = shl nuw i32 %conv19.i, 24
  %or21.i = or i32 %or16.i, %shl20.i
  %133 = call i32 @llvm.bswap.i32(i32 %or21.i) #15
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i240 = getelementptr i8, ptr %135, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 %133) #15, !srcloc !278
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  %136 = ptrtoint ptr %dev_addr.i237 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev_addr.i237, align 64
  %arrayidx26.i = getelementptr i8, ptr %137, i32 5
  %138 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %139 to i32
  %shl28.i = shl nuw nsw i32 %conv27.i, 16
  %arrayidx30.i = getelementptr i8, ptr %137, i32 4
  %140 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %141 to i32
  %shl32.i = shl nuw i32 %conv31.i, 24
  %or33.i = or i32 %shl32.i, %shl28.i
  %142 = call i32 @llvm.bswap.i32(i32 %or33.i) #15
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr35.i = getelementptr i8, ptr %144, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %142) #15, !srcloc !278
  br label %fec_set_mac_address.exit

fec_set_mac_address.exit:                         ; preds = %do.body.i, %if.end43.fec_set_mac_address.exit_crit_edge
  %145 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp45259.not = icmp eq i32 %146, 0
  br i1 %cmp45259.not, label %fec_set_mac_address.exit.for.cond64.preheader_crit_edge, label %for.body.lr.ph

fec_set_mac_address.exit.for.cond64.preheader_crit_edge: ; preds = %fec_set_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond64.preheader

for.body.lr.ph:                                   ; preds = %fec_set_mac_address.exit
  %conv51 = trunc i32 %cond to i8
  %conv54 = trunc i32 %sub.i to i8
  br label %for.body

for.cond64.preheader:                             ; preds = %for.body.for.cond64.preheader_crit_edge, %fec_set_mac_address.exit.for.cond64.preheader_crit_edge
  %cbd_base.0.lcssa = phi ptr [ %call.i230, %fec_set_mac_address.exit.for.cond64.preheader_crit_edge ], [ %add.ptr61, %for.body.for.cond64.preheader_crit_edge ]
  %147 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp65262.not = icmp eq i32 %148, 0
  br i1 %cmp65262.not, label %for.cond64.preheader.for.end102_crit_edge, label %for.body67.lr.ph

for.cond64.preheader.for.end102_crit_edge:        ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end102

for.body67.lr.ph:                                 ; preds = %for.cond64.preheader
  %conv82 = trunc i32 %cond to i8
  %conv85 = trunc i32 %sub.i to i8
  br label %for.body67

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cbd_base.0261 = phi ptr [ %call.i230, %for.body.lr.ph ], [ %add.ptr61, %for.body.for.body_crit_edge ]
  %i.0260 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.0260
  %149 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx, align 4
  %ring_size = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 6
  %151 = ptrtoint ptr %ring_size to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %ring_size, align 4
  %conv = zext i16 %152 to i32
  %mul46 = mul nuw nsw i32 %cond, %conv
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %i.0260, ptr %150, align 4
  %base = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 1
  %154 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %cbd_base.0261, ptr %base, align 4
  %cur = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 3
  %155 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %cbd_base.0261, ptr %cur, align 4
  %156 = ptrtoint ptr %bd_dma to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bd_dma, align 4
  %dma = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 5
  %158 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %dma, align 4
  %dsize53 = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 7
  %159 = ptrtoint ptr %dsize53 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv51, ptr %dsize53, align 2
  %dsize_log256 = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 8
  %160 = ptrtoint ptr %dsize_log256 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv54, ptr %dsize_log256, align 1
  %161 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx57 = getelementptr [3 x i16], ptr @offset_des_active_rxq, i32 0, i32 %i.0260
  %163 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx57, align 2
  %conv58 = zext i16 %164 to i32
  %add.ptr = getelementptr i8, ptr %162, i32 %conv58
  %reg_desc_active = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 4
  %165 = ptrtoint ptr %reg_desc_active to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %add.ptr, ptr %reg_desc_active, align 4
  %add60 = add i32 %157, %mul46
  store i32 %add60, ptr %bd_dma, align 4
  %add.ptr61 = getelementptr i8, ptr %cbd_base.0261, i32 %mul46
  %add.ptr62 = getelementptr i8, ptr %add.ptr61, i32 %cond.neg
  %last = getelementptr inbounds %struct.bufdesc_prop, ptr %150, i32 0, i32 2
  %166 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %add.ptr62, ptr %last, align 4
  %inc = add nuw i32 %i.0260, 1
  %167 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_rx_queues.i, align 4
  %cmp45 = icmp ult i32 %inc, %168
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.body.for.cond64.preheader_crit_edge

for.body.for.cond64.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond64.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.body67.lr.ph
  %cbd_base.1264 = phi ptr [ %cbd_base.0.lcssa, %for.body67.lr.ph ], [ %add.ptr95, %for.body67.for.body67_crit_edge ]
  %i.1263 = phi i32 [ 0, %for.body67.lr.ph ], [ %inc101, %for.body67.for.body67_crit_edge ]
  %arrayidx68 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %i.1263
  %169 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx68, align 4
  %ring_size71 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %ring_size71 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %ring_size71, align 4
  %conv72 = zext i16 %172 to i32
  %mul73 = mul nuw nsw i32 %cond, %conv72
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %i.1263, ptr %170, align 4
  %base77 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 1
  %174 = ptrtoint ptr %base77 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %cbd_base.1264, ptr %base77, align 4
  %cur79 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 3
  %175 = ptrtoint ptr %cur79 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %cbd_base.1264, ptr %cur79, align 4
  %176 = ptrtoint ptr %bd_dma to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %bd_dma, align 4
  %dma81 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 5
  %178 = ptrtoint ptr %dma81 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %dma81, align 4
  %dsize84 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 7
  %179 = ptrtoint ptr %dsize84 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv82, ptr %dsize84, align 2
  %dsize_log287 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 8
  %180 = ptrtoint ptr %dsize_log287 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv85, ptr %dsize_log287, align 1
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx89 = getelementptr [3 x i16], ptr @offset_des_active_txq, i32 0, i32 %i.1263
  %183 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx89, align 2
  %conv90 = zext i16 %184 to i32
  %add.ptr91 = getelementptr i8, ptr %182, i32 %conv90
  %reg_desc_active93 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 4
  %185 = ptrtoint ptr %reg_desc_active93 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %add.ptr91, ptr %reg_desc_active93, align 4
  %add94 = add i32 %177, %mul73
  store i32 %add94, ptr %bd_dma, align 4
  %add.ptr95 = getelementptr i8, ptr %cbd_base.1264, i32 %mul73
  %add.ptr97 = getelementptr i8, ptr %add.ptr95, i32 %cond.neg
  %last99 = getelementptr inbounds %struct.bufdesc_prop, ptr %170, i32 0, i32 2
  %186 = ptrtoint ptr %last99 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %add.ptr97, ptr %last99, align 4
  %inc101 = add nuw i32 %i.1263, 1
  %187 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %num_tx_queues.i, align 8
  %cmp65 = icmp ult i32 %inc101, %188
  br i1 %cmp65, label %for.body67.for.body67_crit_edge, label %for.body67.for.end102_crit_edge

for.body67.for.end102_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end102

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body67

for.end102:                                       ; preds = %for.body67.for.end102_crit_edge, %for.cond64.preheader.for.end102_crit_edge
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 115
  %189 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 200, ptr %watchdog_timeo, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %190 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @fec_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %191 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @fec_enet_ethtool_ops, ptr %ethtool_ops, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr107 = getelementptr i8, ptr %193, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 -2013265912) #15, !srcloc !278
  %napi = getelementptr i8, ptr %ndev, i32 2544
  call void @netif_napi_add(ptr noundef %ndev, ptr noundef %napi, ptr noundef nonnull @fec_enet_rx_napi, i32 noundef 64) #15
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %194 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %quirks, align 4
  %and = and i32 %195, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool108.not = icmp eq i32 %and, 0
  br i1 %tobool108.not, label %for.end102.if.end110_crit_edge, label %if.then109

for.end102.if.end110_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

if.then109:                                       ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #17
  %features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %196 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %features, align 16
  %or = or i64 %197, 256
  store i64 %or, ptr %features, align 16
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %for.end102.if.end110_crit_edge
  %198 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %quirks, align 4
  %and112 = and i32 %199, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end110.if.end118_crit_edge, label %if.then114

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 138
  %200 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store volatile i16 100, ptr %gso_max_segs.i, align 4
  %features115 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %201 = ptrtoint ptr %features115 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %features115, align 16
  %or116 = or i64 %202, 1099511693331
  store i64 %or116, ptr %features115, align 16
  %csum_flags = getelementptr i8, ptr %ndev, i32 2768
  %203 = ptrtoint ptr %csum_flags to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %csum_flags, align 8
  %or117 = or i32 %204, 48
  store i32 %or117, ptr %csum_flags, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.end110.if.end118_crit_edge
  %205 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %quirks, align 4
  %and120 = and i32 %206, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end118.if.end125_crit_edge, label %if.then122

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  %207 = ptrtoint ptr %tx_align to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %tx_align, align 4
  %208 = ptrtoint ptr %rx_align to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 63, ptr %rx_align, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end118.if.end125_crit_edge
  %features126 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %209 = ptrtoint ptr %features126 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %features126, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 24
  %211 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %210, ptr %hw_features, align 8
  call fastcc void @fec_restart(ptr noundef %ndev)
  %212 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %quirks, align 4
  %and128 = and i32 %213, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end125.for.body.i252_crit_edge, label %if.then130

if.end125.for.body.i252_crit_edge:                ; preds = %if.end125
  br label %for.body.i252

if.then130:                                       ; preds = %if.end125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !281
  call void @arm_heavy_mb() #15
  %214 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i243 = getelementptr i8, ptr %215, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 128) #15, !srcloc !278
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %if.then130
  %i.015.i = phi i32 [ 0, %if.then130 ], [ %inc.i245, %do.body1.i.do.body1.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !282
  call void @arm_heavy_mb() #15
  %216 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr.i, align 8
  %offset.i = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %i.015.i, i32 1
  %218 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %offset.i, align 2
  %conv.i244 = zext i16 %219 to i32
  %add.ptr5.i = getelementptr i8, ptr %217, i32 %conv.i244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #15, !srcloc !278
  %inc.i245 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i245, 53
  br i1 %exitcond.not.i, label %fec_enet_clear_ethtool_stats.exit, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i

fec_enet_clear_ethtool_stats.exit:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !283
  call void @arm_heavy_mb() #15
  %220 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %221, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #15, !srcloc !278
  br label %cleanup

for.body.i252:                                    ; preds = %for.body.i252.for.body.i252_crit_edge, %if.end125.for.body.i252_crit_edge
  %i.09.i = phi i32 [ %inc.i250, %for.body.i252.for.body.i252_crit_edge ], [ 0, %if.end125.for.body.i252_crit_edge ]
  %222 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %add.ptr.i, align 8
  %offset.i247 = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %i.09.i, i32 1
  %224 = ptrtoint ptr %offset.i247 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %offset.i247, align 2
  %conv.i248 = zext i16 %225 to i32
  %add.ptr.i249 = getelementptr i8, ptr %223, i32 %conv.i248
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #15, !srcloc !274
  %227 = call i32 @llvm.bswap.i32(i32 %226) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !284
  %conv3.i = zext i32 %227 to i64
  %arrayidx4.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 65, i32 %i.09.i
  %228 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %conv3.i, ptr %arrayidx4.i, align 8
  %inc.i250 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i251 = icmp eq i32 %inc.i250, 53
  br i1 %exitcond.not.i251, label %for.body.i252.cleanup_crit_edge, label %for.body.i252.for.body.i252_crit_edge

for.body.i252.for.body.i252_crit_edge:            ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i252

for.body.i252.cleanup_crit_edge:                  ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

free_queue_mem:                                   ; preds = %fec_get_mac.exit, %if.end33.free_queue_mem_crit_edge
  %ret.0 = phi i32 [ -517, %fec_get_mac.exit ], [ -12, %if.end33.free_queue_mem_crit_edge ]
  call fastcc void @fec_enet_free_queue(ptr noundef %ndev)
  br label %cleanup

cleanup:                                          ; preds = %free_queue_mem, %for.body.i252.cleanup_crit_edge, %fec_enet_clear_ethtool_stats.exit, %fec_enet_alloc_queue.exit, %do.end26
  %retval.0 = phi i32 [ %call.i, %do.end26 ], [ %ret.0, %free_queue_mem ], [ -12, %fec_enet_alloc_queue.exit ], [ 0, %fec_enet_clear_ethtool_stats.exit ], [ 0, %for.body.i252.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bd_dma) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !285
  %3 = and i32 %2, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !286
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #15, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %link = getelementptr i8, ptr %dev_id, i32 2500
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %napi = getelementptr i8, ptr %dev_id, i32 2544
  %call2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call2, label %do.body, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !287
  tail call void @arm_heavy_mb() #15
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #15, !srcloc !278
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %if.end5

if.end5:                                          ; preds = %do.body, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ 1, %do.body ], [ 1, %if.then.if.end5_crit_edge ], [ 0, %land.lhs.true.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_mii_init(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %bus_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_freq) #15
  %quirks = getelementptr i8, ptr %1, i32 2540
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %dev_id = getelementptr i8, ptr %1, i32 2476
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr @mii_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %land.lhs.true3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true3:                                   ; preds = %if.then
  %7 = load ptr, ptr @fec_enet_mii_init.fec0_mii_bus, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true3.cleanup_crit_edge, label %if.then5

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  %mii_bus = getelementptr i8, ptr %1, i32 2480
  %8 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %mii_bus, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr @mii_cnt, align 4
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %9 = ptrtoint ptr %bus_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2500000, ptr %bus_freq, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.91) #15
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call7, ptr noundef nonnull @.str.92, ptr noundef nonnull %bus_freq, i32 noundef 1, i32 noundef 0) #15
  %call.i = call ptr @of_find_property(ptr noundef nonnull %call7, ptr noundef nonnull @.str.93, ptr noundef null) #15
  %tobool.i = icmp ne ptr %call.i, null
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %suppress_preamble.0.off0 = phi i1 [ %tobool.i, %if.then9 ], [ false, %if.end6.if.end12_crit_edge ]
  %clk_ipg = getelementptr i8, ptr %1, i32 2312
  %12 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_ipg, align 8
  %call13 = call i32 @clk_get_rate(ptr noundef %13) #15
  %14 = ptrtoint ptr %bus_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_freq, align 4
  %mul = shl i32 %15, 1
  %add = add i32 %call13, -1
  %sub = add i32 %add, %mul
  %div = udiv i32 %sub, %mul
  %16 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks, align 4
  %18 = and i32 %17, 1
  %spec.select = sub i32 %div, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %spec.select)
  %cmp20 = icmp ugt i32 %spec.select, 63
  %19 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_ipg, align 8
  %call24 = call i32 @clk_get_rate(ptr noundef %20) #15
  br i1 %cmp20, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %call24) #18
  br label %err_out

if.end25:                                         ; preds = %if.end12
  %sub29 = add i32 %call24, 99999999
  %div30 = udiv i32 %sub29, 100000000
  %shl = shl nuw nsw i32 %spec.select, 1
  %sub31 = shl nuw nsw i32 %div30, 8
  %shl32 = add nsw i32 %sub31, -256
  %or = or i32 %shl32, %shl
  %phy_speed = getelementptr i8, ptr %1, i32 2484
  %or36 = or i32 %or, 128
  %spec.select133 = select i1 %suppress_preamble.0.off0, i32 %or36, i32 %or
  %21 = ptrtoint ptr %phy_speed to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select133, ptr %phy_speed, align 4
  %22 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks, align 4
  %and39 = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end25.do.body46_crit_edge, label %do.body42

if.end25.do.body46_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body46

do.body42:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  call void @arm_heavy_mb() #15
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #15, !srcloc !278
  br label %do.body46

do.body46:                                        ; preds = %do.body42, %if.end25.do.body46_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  call void @arm_heavy_mb() #15
  %26 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_speed, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr51 = getelementptr i8, ptr %30, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %28) #15, !srcloc !278
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !290
  call void @arm_heavy_mb() #15
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr56 = getelementptr i8, ptr %32, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 32768) #15, !srcloc !278
  %call.i134 = call ptr @mdiobus_alloc_size(i32 noundef 0) #15
  %mii_bus58 = getelementptr i8, ptr %1, i32 2480
  %33 = ptrtoint ptr %mii_bus58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i134, ptr %mii_bus58, align 8
  %cmp60 = icmp eq ptr %call.i134, null
  br i1 %cmp60, label %do.body46.err_out_crit_edge, label %if.end62

do.body46.err_out_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end62:                                         ; preds = %do.body46
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i134, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.96, ptr %name, align 4
  %35 = ptrtoint ptr %mii_bus58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mii_bus58, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @fec_enet_mdio_read, ptr %read, align 4
  %38 = load ptr, ptr %mii_bus58, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fec_enet_mdio_write, ptr %write, align 8
  %40 = load ptr, ptr %mii_bus58, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev_id68 = getelementptr i8, ptr %1, i32 2476
  %43 = ptrtoint ptr %dev_id68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dev_id68, align 4
  %add69 = add i32 %44, 1
  %call70 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.97, ptr noundef %42, i32 noundef %add69)
  %45 = ptrtoint ptr %mii_bus58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mii_bus58, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i, ptr %priv, align 8
  %48 = load ptr, ptr %mii_bus58, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %parent, align 4
  %50 = load ptr, ptr %mii_bus58, align 8
  %call75 = call i32 @of_mdiobus_register(ptr noundef %50, ptr noundef %call7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %err_out_free_mdiobus

if.end78:                                         ; preds = %if.end62
  call void @of_node_put(ptr noundef %call7) #15
  %51 = load i32, ptr @mii_cnt, align 4
  %inc79 = add i32 %51, 1
  store i32 %inc79, ptr @mii_cnt, align 4
  %52 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %quirks, align 4
  %and81 = and i32 %53, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end78.cleanup_crit_edge, label %if.then83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %mii_bus58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mii_bus58, align 8
  store ptr %55, ptr @fec_enet_mii_init.fec0_mii_bus, align 4
  br label %cleanup

err_out_free_mdiobus:                             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %mii_bus58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mii_bus58, align 8
  call void @mdiobus_free(ptr noundef %57) #15
  br label %err_out

err_out:                                          ; preds = %err_out_free_mdiobus, %do.body46.err_out_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %call75, %err_out_free_mdiobus ], [ -12, %do.body46.err_out_crit_edge ]
  call void @of_node_put(ptr noundef %call7) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then83, %if.end78.cleanup_crit_edge, %if.then5, %land.lhs.true3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %err.0, %err_out ], [ -2, %land.lhs.true3.cleanup_crit_edge ], [ -2, %if.then.cleanup_crit_edge ], [ 0, %if.then83 ], [ 0, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_freq) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_enet_timeout_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %work, i32 -464
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @rtnl_lock() #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i11.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i11.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %napi = getelementptr i8, ptr %work, i32 -228
  tail call void @napi_disable(ptr noundef %napi) #15
  tail call fastcc void @local_bh_disable() #15
  tail call void @netif_tx_lock(ptr noundef %1) #15
  tail call fastcc void @fec_restart(ptr noundef %1)
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %7 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4.not.i = icmp eq i32 %8, 0
  br i1 %cmp4.not.i, label %if.then.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.then.netif_tx_wake_all_queues.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %10, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %11 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %if.then.netif_tx_wake_all_queues.exit_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %1) #15
  tail call fastcc void @local_bh_enable() #15
  tail call void @napi_enable(ptr noundef %napi) #15
  br label %if.end

if.end:                                           ; preds = %netif_tx_wake_all_queues.exit, %lor.lhs.false.if.end_crit_edge
  tail call void @rtnl_unlock() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fec_enet_mii_remove(ptr nocapture noundef readonly %fep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mii_cnt, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @mii_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mii_bus = getelementptr inbounds %struct.fec_enet_private, ptr %fep, i32 0, i32 18
  %1 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %2) #15
  %3 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #15, !srcloc !269
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fec_enet_phy_reset_after_clk_enable(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @phy_reset_after_clk_enable(ptr noundef nonnull %1) #15
  br label %if.end7

if.else:                                          ; preds = %entry
  %phy_node = getelementptr i8, ptr %ndev, i32 2492
  %2 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_node, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else.if.end7_crit_edge, label %if.then3

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call ptr @of_phy_find_device(ptr noundef nonnull %3) #15
  %call6 = tail call i32 @phy_reset_after_clk_enable(ptr noundef %call5) #15
  tail call void @put_device(ptr noundef %call5) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else.if.end7_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset_after_clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.then
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #15
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !277
  tail call void @arm_heavy_mb() #15
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %arrayidx10 = getelementptr i8, ptr %8, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv
  %arrayidx13 = getelementptr i8, ptr %8, i32 1
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %14 to i32
  %shl15 = shl nuw nsw i32 %conv14, 16
  %or16 = or i32 %or, %shl15
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %8, align 1
  %conv19 = zext i8 %16 to i32
  %shl20 = shl nuw i32 %conv19, 24
  %or21 = or i32 %or16, %shl20
  %17 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %19, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %arrayidx26 = getelementptr i8, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %23 to i32
  %shl28 = shl nuw nsw i32 %conv27, 16
  %arrayidx30 = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %25 to i32
  %shl32 = shl nuw i32 %conv31, 24
  %or33 = or i32 %shl32, %shl28
  %26 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr35 = getelementptr i8, ptr %28, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %26) #15, !srcloc !278
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end5.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -99, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_rx_napi(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %shhwtstamps.i.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %num_rx_queues.i = getelementptr i8, ptr %1, i32 2436
  %quirks.i.i = getelementptr i8, ptr %1, i32 2540
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_fifo_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %rx_length_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_frame_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %stats52.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_copybreak.i.i.i = getelementptr i8, ptr %1, i32 3244
  %pdev.i.i.i = getelementptr i8, ptr %1, i32 2472
  %rx_align.i.i.i = getelementptr i8, ptr %1, i32 3176
  %bufdesc_ex.i.i = getelementptr i8, ptr %1, i32 2524
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %hwts_rx_en.i.i = getelementptr i8, ptr %1, i32 3052
  %tmreg_lock.i.i.i = getelementptr i8, ptr %1, i32 2932
  %tc.i.i.i = getelementptr i8, ptr %1, i32 3000
  %csum_flags.i.i = getelementptr i8, ptr %1, i32 2768
  %napi.i.i = getelementptr i8, ptr %1, i32 2544
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %num_tx_queues.i = getelementptr i8, ptr %1, i32 2432
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %tx_heartbeat_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 19
  %tx_window_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 20
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %tx_fifo_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %tx_carrier_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %hwts_tx_en.i.i = getelementptr i8, ptr %1, i32 3056
  %collisions.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %done.0 = phi i32 [ 0, %entry ], [ %add, %land.rhs.do.body_crit_edge ]
  %2 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues.i, align 4
  %i.011.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.011.i)
  %cmp12.i = icmp sgt i32 %i.011.i, -1
  br i1 %cmp12.i, label %do.body.for.body.i_crit_edge, label %do.body.fec_enet_rx.exit_crit_edge

do.body.fec_enet_rx.exit_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_rx.exit

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

for.body.i:                                       ; preds = %fec_enet_rx_queue.exit.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %i.014.i = phi i32 [ %i.0.i, %fec_enet_rx_queue.exit.i.for.body.i_crit_edge ], [ %i.011.i, %do.body.for.body.i_crit_edge ]
  %done.013.i = phi i32 [ %add.i, %fec_enet_rx_queue.exit.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %4 = add i32 %done.0, %done.013.i
  %sub1.i = sub i32 %budget, %4
  %5 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not280.i.i = icmp eq i32 %and.i.i, 0
  %idxprom.i.i = and i32 %i.014.i, 65535
  %arrayidx.i.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %idxprom.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %cur.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur.i.i, align 4
  %cbd_sc283.i.i = getelementptr inbounds %struct.bufdesc, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cbd_sc283.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cbd_sc283.i.i, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool2.not284.i.i = icmp sgt i16 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp.not285.i.i = icmp sgt i32 %sub1.i, 0
  %or.cond286.i.i = and i1 %cmp.not285.i.i, %tobool2.not284.i.i
  br i1 %or.cond286.i.i, label %if.end.lr.ph.i.i, label %for.body.i.fec_enet_rx_queue.exit.i_crit_edge

for.body.i.fec_enet_rx_queue.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_rx_queue.exit.i

if.end.lr.ph.i.i:                                 ; preds = %for.body.i
  %conv.i = trunc i32 %i.014.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp5.i.i = icmp eq i16 %conv.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv.i)
  %cmp8.i.i = icmp eq i16 %conv.i, 1
  %cond.i.i = select i1 %cmp8.i.i, i32 2, i32 32
  %cond10.i.i = select i1 %cmp5.i.i, i32 33554432, i32 %cond.i.i
  %14 = call i32 @llvm.bswap.i32(i32 %cond10.i.i) #15
  %base.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %8, i32 0, i32 1
  %dsize_log2.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %8, i32 0, i32 8
  %add.i253.i.i = add i16 %conv.i, 1
  %last.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %8, i32 0, i32 2
  %dsize.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %8, i32 0, i32 7
  %reg_desc_active.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %8, i32 0, i32 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  %15 = phi i16 [ %13, %if.end.lr.ph.i.i ], [ %147, %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge ]
  %cbd_sc291.i.i = phi ptr [ %cbd_sc283.i.i, %if.end.lr.ph.i.i ], [ %cbd_sc.i.i, %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge ]
  %vlan_tag.0290.i.i = phi i16 [ -1, %if.end.lr.ph.i.i ], [ %vlan_tag.2.i.i, %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge ]
  %pkt_received.0289.i.i = phi i32 [ 0, %if.end.lr.ph.i.i ], [ %inc.i.i, %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge ]
  %skb_new.0288.i.i = phi ptr [ null, %if.end.lr.ph.i.i ], [ %skb_new.2.i.i, %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge ]
  %bdp.0287.i.i = phi ptr [ %10, %if.end.lr.ph.i.i ], [ %cond.i258.i.i, %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %pkt_received.0289.i.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !291
  call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %14) #15, !srcloc !278
  %xor.i.i = xor i16 %15, 2048
  %conv13.i.i = zext i16 %xor.i.i to i32
  %and14.i.i = and i32 %conv13.i.i, 2111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end51.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  %18 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_errors.i.i, align 8
  %inc17.i.i = add i32 %19, 1
  store i32 %inc17.i.i, ptr %rx_errors.i.i, align 8
  %and19.i.i = and i32 %conv13.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end24.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %rx_fifo_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_fifo_errors.i.i, align 8
  %inc23.i.i = add i32 %21, 1
  store i32 %inc23.i.i, ptr %rx_fifo_errors.i.i, align 8
  br label %rx_processing_done.i.i

if.end24.i.i:                                     ; preds = %if.then16.i.i
  %and26.i.i = and i32 %conv13.i.i, 2088
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end24.i.i.if.end36.i.i_crit_edge, label %if.then28.i.i

if.end24.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  %22 = ptrtoint ptr %rx_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_length_errors.i.i, align 8
  %inc30.i.i = add i32 %23, 1
  store i32 %inc30.i.i, ptr %rx_length_errors.i.i, align 8
  %and32.i.i = and i32 %conv13.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.then28.i.i.if.end36.i.i_crit_edge, label %if.then34.i.i

if.then28.i.i.if.end36.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i.i

if.then34.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.90) #18
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then34.i.i, %if.then28.i.i.if.end36.i.i_crit_edge, %if.end24.i.i.if.end36.i.i_crit_edge
  %and38.i.i = and i32 %conv13.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end36.i.i.if.end43.i.i_crit_edge, label %if.then40.i.i

if.end36.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i.i

if.then40.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %rx_crc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_crc_errors.i.i, align 8
  %inc42.i.i = add i32 %25, 1
  store i32 %inc42.i.i, ptr %rx_crc_errors.i.i, align 8
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then40.i.i, %if.end36.i.i.if.end43.i.i_crit_edge
  %and45.i.i = and i32 %conv13.i.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end43.i.i.rx_processing_done.i.i_crit_edge, label %if.then47.i.i

if.end43.i.i.rx_processing_done.i.i_crit_edge:    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rx_processing_done.i.i

if.then47.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %rx_frame_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors.i.i, align 4
  %inc49.i.i = add i32 %27, 1
  store i32 %inc49.i.i, ptr %rx_frame_errors.i.i, align 4
  br label %rx_processing_done.i.i

if.end51.i.i:                                     ; preds = %if.end.i.i
  %28 = ptrtoint ptr %stats52.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats52.i.i, align 8
  %inc53.i.i = add i32 %29, 1
  store i32 %inc53.i.i, ptr %stats52.i.i, align 8
  %30 = ptrtoint ptr %bdp.0287.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bdp.0287.i.i, align 4
  %32 = call i16 @llvm.bswap.i16(i16 %31) #15
  %conv54.i.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i.i = add i32 %34, %conv54.i.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 8
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bdp.0287.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %37 = ptrtoint ptr %dsize_log2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dsize_log2.i.i.i, align 1
  %conv.i.i.i = zext i8 %38 to i32
  %shr.i.i.i = ashr i32 %sub.ptr.sub.i.i.i, %conv.i.i.i
  %arrayidx58.i.i = getelementptr %struct.fec_enet_priv_rx_q, ptr %8, i32 0, i32 1, i32 %shr.i.i.i
  %39 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx58.i.i, align 4
  %sub.i.i = add nsw i32 %conv54.i.i, -4
  %41 = ptrtoint ptr %rx_copybreak.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_copybreak.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %sub.i.i)
  %cmp.i.i.i = icmp ult i32 %42, %sub.i.i
  br i1 %cmp.i.i.i, label %if.end51.i.i.if.then64.i.i_crit_edge, label %if.end.i.i.i

if.end51.i.i.if.then64.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64.i.i

if.end.i.i.i:                                     ; preds = %if.end51.i.i
  %call.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %sub.i.i, i32 noundef 2592) #15
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.then64.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.if.then64.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %43 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %cbd_bufaddr.i.i.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0287.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %cbd_bufaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cbd_bufaddr.i.i.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #15
  %48 = ptrtoint ptr %rx_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_align.i.i.i, align 8
  %sub.i.i.i = sub i32 2048, %49
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i.i, i32 noundef %47, i32 noundef %sub.i.i.i, i32 noundef 2) #15
  br i1 %tobool.not280.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %data6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %52 = ptrtoint ptr %data6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data6.i.i.i, align 4
  %54 = call ptr @memcpy(ptr %51, ptr %53, i32 %sub.i.i)
  br label %if.end76.i.i

if.else.i.i.i:                                    ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %32)
  %cmp5.i.i.i.i = icmp ugt i16 %32, 4
  br i1 %cmp5.i.i.i.i, label %for.body.i.preheader.i.i.i, label %if.else.i.i.i.if.end76.i.i_crit_edge

if.else.i.i.i.if.end76.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76.i.i

for.body.i.preheader.i.i.i:                       ; preds = %if.else.i.i.i
  %data8.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %55 = ptrtoint ptr %data8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data8.i.i.i, align 4
  %data7.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %57 = ptrtoint ptr %data7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data7.i.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.preheader.i.i.i
  %dst.08.i.i.i.i = phi ptr [ %incdec.ptr1.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %58, %for.body.i.preheader.i.i.i ]
  %src.07.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %56, %for.body.i.preheader.i.i.i ]
  %i.06.i.i.i.i = phi i32 [ %add.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i.i ]
  %59 = ptrtoint ptr %src.07.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src.07.i.i.i.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #15
  %62 = ptrtoint ptr %dst.08.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %dst.08.i.i.i.i, align 4
  %add.i.i.i.i = add nuw nsw i32 %i.06.i.i.i.i, 4
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %src.07.i.i.i.i, i32 1
  %incdec.ptr1.i.i.i.i = getelementptr i32, ptr %dst.08.i.i.i.i, i32 1
  %cmp.i.i.i.i = icmp slt i32 %add.i.i.i.i, %sub.i.i
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.body.i.i.i.i.if.end76.i.i_crit_edge

for.body.i.i.i.i.if.end76.i.i_crit_edge:          ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76.i.i

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i.i

if.then64.i.i:                                    ; preds = %if.end.i.i.i.if.then64.i.i_crit_edge, %if.end51.i.i.if.then64.i.i_crit_edge
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 2048, i32 noundef 2592) #15
  %tobool66.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool66.not.i.i, label %if.then71.i.i, label %if.end74.i.i, !prof !292

if.then71.i.i:                                    ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_dropped.i.i, align 8
  %inc73.i.i = add i32 %64, 1
  store i32 %inc73.i.i, ptr %rx_dropped.i.i, align 8
  br label %rx_processing_done.i.i

if.end74.i.i:                                     ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  %cbd_bufaddr.i.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0287.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %cbd_bufaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cbd_bufaddr.i.i, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #15
  %70 = ptrtoint ptr %rx_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_align.i.i.i, align 8
  %sub75.i.i = sub i32 2048, %71
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %69, i32 noundef %sub75.i.i, i32 noundef 2, i32 noundef 0) #15
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.end74.i.i, %for.body.i.i.i.i.if.end76.i.i_crit_edge, %if.else.i.i.i.if.end76.i.i_crit_edge, %if.then5.i.i.i
  %retval.0.i276.i.i = phi i1 [ false, %if.end74.i.i ], [ true, %if.else.i.i.i.if.end76.i.i_crit_edge ], [ true, %if.then5.i.i.i ], [ true, %for.body.i.i.i.i.if.end76.i.i_crit_edge ]
  %skb.0274.i.i = phi ptr [ %40, %if.end74.i.i ], [ %call.i.i.i.i, %if.else.i.i.i.if.end76.i.i_crit_edge ], [ %call.i.i.i.i, %if.then5.i.i.i ], [ %call.i.i.i.i, %for.body.i.i.i.i.if.end76.i.i_crit_edge ]
  %skb_new.1.i.i = phi ptr [ %call.i.i.i, %if.end74.i.i ], [ %skb_new.0288.i.i, %if.else.i.i.i.if.end76.i.i_crit_edge ], [ %skb_new.0288.i.i, %if.then5.i.i.i ], [ %skb_new.0288.i.i, %for.body.i.i.i.i.if.end76.i.i_crit_edge ]
  %data77.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 19
  %72 = ptrtoint ptr %data77.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data77.i.i, align 4
  %add.ptr78.i.i = getelementptr i8, ptr %73, i32 -2
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr78.i.i) #15, !srcloc !293
  %call81.i.i = call ptr @skb_put(ptr noundef %skb.0274.i.i, i32 noundef %sub.i.i) #15
  %74 = ptrtoint ptr %data77.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data77.i.i, align 4
  %brmerge.i.i = select i1 %retval.0.i276.i.i, i1 true, i1 %tobool.not280.i.i
  %brmerge.not.i.i = xor i1 %brmerge.i.i, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp3.i.i.i = icmp ne i16 %31, 0
  %or.cond278.i.i = select i1 %brmerge.not.i.i, i1 %cmp3.i.i.i, i1 false
  br i1 %or.cond278.i.i, label %if.end76.i.i.for.body.i.i.i_crit_edge, label %if.end76.i.i.if.end88.i.i_crit_edge

if.end76.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88.i.i

if.end76.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end76.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end76.i.i.for.body.i.i.i_crit_edge
  %buf.05.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %75, %if.end76.i.i.for.body.i.i.i_crit_edge ]
  %i.04.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end76.i.i.for.body.i.i.i_crit_edge ]
  %76 = ptrtoint ptr %buf.05.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buf.05.i.i.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #15
  %79 = ptrtoint ptr %buf.05.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %buf.05.i.i.i, align 4
  %add.i.i.i = add nuw nsw i32 %i.04.i.i.i, 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %buf.05.i.i.i, i32 1
  %cmp.i250.i.i = icmp ult i32 %add.i.i.i, %conv54.i.i
  br i1 %cmp.i250.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.if.end88.i.i_crit_edge

for.body.i.i.i.if.end88.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

if.end88.i.i:                                     ; preds = %for.body.i.i.i.if.end88.i.i_crit_edge, %if.end76.i.i.if.end88.i.i_crit_edge
  %80 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %quirks.i.i, align 4
  %and90.i.i = and i32 %81, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i.i)
  %tobool91.not.i.i = icmp eq i32 %and90.i.i, 0
  br i1 %tobool91.not.i.i, label %if.end88.i.i.if.end94.i.i_crit_edge, label %if.then92.i.i

if.end88.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94.i.i

if.then92.i.i:                                    ; preds = %if.end88.i.i
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 6
  %82 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp.i251.i.i = icmp ult i32 %83, 2
  br i1 %cmp.i251.i.i, label %if.then92.i.i.if.end94.i.i_crit_edge, label %cond.false.i.i.i, !prof !292

if.then92.i.i.if.end94.i.i_crit_edge:             ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94.i.i

cond.false.i.i.i:                                 ; preds = %if.then92.i.i
  %sub.i.i.i.i = add i32 %83, -2
  %84 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub.i.i.i.i, ptr %len1.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 7
  %85 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %86)
  %cmp.i.i252.i.i = icmp ult i32 %sub.i.i.i.i, %86
  br i1 %cmp.i.i252.i.i, label %do.body4.i.i.i.i, label %__skb_pull.exit.i.i.i, !prof !292

do.body4.i.i.i.i:                                 ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #15, !srcloc !294
  unreachable

__skb_pull.exit.i.i.i:                            ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %data77.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data77.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %88, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data77.i.i, align 4
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %__skb_pull.exit.i.i.i, %if.then92.i.i.if.end94.i.i_crit_edge, %if.end88.i.i.if.end94.i.i_crit_edge
  %data.0.i.i = phi ptr [ %75, %if.end88.i.i.if.end94.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %__skb_pull.exit.i.i.i ], [ null, %if.then92.i.i.if.end94.i.i_crit_edge ]
  %89 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool95.not.i.i = icmp eq i8 %90, 0
  %spec.select.i.i = select i1 %tobool95.not.i.i, ptr null, ptr %bdp.0287.i.i
  %91 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %features.i.i, align 16
  %and98.i.i = and i64 %92, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and98.i.i)
  %tobool99.not.i.i = icmp eq i64 %and98.i.i, 0
  %brmerge279.i.i = select i1 %tobool99.not.i.i, i1 true, i1 %tobool95.not.i.i
  br i1 %brmerge279.i.i, label %if.end94.i.i.if.end112.i.i_crit_edge, label %land.lhs.true104.i.i

if.end94.i.i.if.end112.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112.i.i

land.lhs.true104.i.i:                             ; preds = %if.end94.i.i
  %cbd_esc.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %spec.select.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %cbd_esc.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cbd_esc.i.i, align 4
  %and105.i.i = and i32 %94, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i.i)
  %tobool106.not.i.i = icmp eq i32 %and105.i.i, 0
  br i1 %tobool106.not.i.i, label %land.lhs.true104.i.i.if.end112.i.i_crit_edge, label %if.then107.i.i

land.lhs.true104.i.i.if.end112.i.i_crit_edge:     ; preds = %land.lhs.true104.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112.i.i

if.then107.i.i:                                   ; preds = %land.lhs.true104.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr108.i.i = getelementptr i8, ptr %data.0.i.i, i32 14
  %95 = ptrtoint ptr %add.ptr108.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr108.i.i, align 2
  %97 = ptrtoint ptr %data77.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data77.i.i, align 4
  %add.ptr110.i.i = getelementptr i8, ptr %98, i32 4
  %99 = call ptr @memmove(ptr %add.ptr110.i.i, ptr %data.0.i.i, i32 12)
  %call111.i.i = call ptr @skb_pull(ptr noundef %skb.0274.i.i, i32 noundef 4) #15
  br label %if.end112.i.i

if.end112.i.i:                                    ; preds = %if.then107.i.i, %land.lhs.true104.i.i.if.end112.i.i_crit_edge, %if.end94.i.i.if.end112.i.i_crit_edge
  %vlan_packet_rcvd.0.off0.i.i = phi i1 [ true, %if.then107.i.i ], [ false, %land.lhs.true104.i.i.if.end112.i.i_crit_edge ], [ false, %if.end94.i.i.if.end112.i.i_crit_edge ]
  %vlan_tag.1.i.i = phi i16 [ %96, %if.then107.i.i ], [ %vlan_tag.0290.i.i, %land.lhs.true104.i.i.if.end112.i.i_crit_edge ], [ %vlan_tag.0290.i.i, %if.end94.i.i.if.end112.i.i_crit_edge ]
  %call113.i.i = call zeroext i16 @eth_type_trans(ptr noundef %skb.0274.i.i, ptr noundef %1) #15
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 15, i32 0, i32 18
  %100 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %call113.i.i, ptr %protocol.i.i, align 8
  %101 = ptrtoint ptr %hwts_rx_en.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hwts_rx_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool114.not.i.i = icmp eq i32 %102, 0
  br i1 %tobool114.not.i.i, label %if.end112.i.i.if.end121.i.i_crit_edge, label %land.lhs.true115.i.i

if.end112.i.i.if.end121.i.i_crit_edge:            ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i.i

land.lhs.true115.i.i:                             ; preds = %if.end112.i.i
  %103 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool117.not.i.i = icmp eq i8 %104, 0
  br i1 %tobool117.not.i.i, label %land.lhs.true115.i.i.if.end134.i.i_crit_edge, label %if.then119.i.i

land.lhs.true115.i.i.if.end134.i.i_crit_edge:     ; preds = %land.lhs.true115.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i.i

if.then119.i.i:                                   ; preds = %land.lhs.true115.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ts.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %spec.select.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ts.i.i, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #15
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 17
  %108 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 7
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i.i.i) #15
  %conv5.i.i.i = zext i32 %107 to i64
  %call6.i.i.i = call i64 @timecounter_cyc2time(ptr noundef %tc.i.i.i, i64 noundef %conv5.i.i.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i.i.i, i32 noundef %call2.i.i.i) #15
  %110 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %call6.i.i.i, ptr %hwtstamps.i.i.i, align 8
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then119.i.i, %if.end112.i.i.if.end121.i.i_crit_edge
  %111 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %.pr.i.i = load i8, ptr %bufdesc_ex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool123.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool123.not.i.i, label %if.end121.i.i.if.end134.i.i_crit_edge, label %land.lhs.true125.i.i

if.end121.i.i.if.end134.i.i_crit_edge:            ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i.i

land.lhs.true125.i.i:                             ; preds = %if.end121.i.i
  %112 = ptrtoint ptr %csum_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %csum_flags.i.i, align 8
  %and126.i.i = and i32 %113, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i.i)
  %tobool127.not.i.i = icmp eq i32 %and126.i.i, 0
  br i1 %tobool127.not.i.i, label %land.lhs.true125.i.i.if.end134.i.i_crit_edge, label %if.then128.i.i

land.lhs.true125.i.i.if.end134.i.i_crit_edge:     ; preds = %land.lhs.true125.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i.i

if.then128.i.i:                                   ; preds = %land.lhs.true125.i.i
  %cbd_esc129.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %spec.select.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %cbd_esc129.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cbd_esc129.i.i, align 4
  %and130.i.i = and i32 %115, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i.i)
  %tobool131.not.i.i = icmp eq i32 %and130.i.i, 0
  br i1 %tobool131.not.i.i, label %if.then132.i.i, label %if.then128.i.i.if.end134.i.i_crit_edge

if.then128.i.i.if.end134.i.i_crit_edge:           ; preds = %if.then128.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134.i.i

if.then132.i.i:                                   ; preds = %if.then128.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 15
  %116 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %if.end134.i.i

if.end134.i.i:                                    ; preds = %if.then132.i.i, %if.then128.i.i.if.end134.i.i_crit_edge, %land.lhs.true125.i.i.if.end134.i.i_crit_edge, %if.end121.i.i.if.end134.i.i_crit_edge, %land.lhs.true115.i.i.if.end134.i.i_crit_edge
  br i1 %vlan_packet_rcvd.0.off0.i.i, label %if.then136.i.i, label %if.end134.i.i.if.end137.i.i_crit_edge

if.end134.i.i.if.end137.i.i_crit_edge:            ; preds = %if.end134.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end137.i.i

if.then136.i.i:                                   ; preds = %if.end134.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 15, i32 0, i32 9
  %117 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 15, i32 0, i32 10
  %118 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %vlan_tag.1.i.i, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 15, i32 0, i32 3
  %119 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, -2147483648
  store i32 %bf.set.i.i.i, ptr %vlan_present.i.i.i, align 2
  br label %if.end137.i.i

if.end137.i.i:                                    ; preds = %if.then136.i.i, %if.end134.i.i.if.end137.i.i_crit_edge
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0274.i.i, i32 0, i32 10
  %120 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %add.i253.i.i, ptr %queue_mapping.i.i.i, align 8
  %call138.i.i = call i32 @napi_gro_receive(ptr noundef %napi.i.i, ptr noundef %skb.0274.i.i) #15
  br i1 %retval.0.i276.i.i, label %if.then140.i.i, label %if.else146.i.i

if.then140.i.i:                                   ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdev.i.i.i, align 8
  %dev142.i.i = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3
  %cbd_bufaddr143.i.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0287.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %cbd_bufaddr143.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cbd_bufaddr143.i.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #15
  %126 = ptrtoint ptr %rx_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rx_align.i.i.i, align 8
  %sub145.i.i = sub i32 2048, %127
  call void @dma_sync_single_for_device(ptr noundef %dev142.i.i, i32 noundef %125, i32 noundef %sub145.i.i, i32 noundef 2) #15
  br label %rx_processing_done.i.i

if.else146.i.i:                                   ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %skb_new.1.i.i, ptr %arrayidx58.i.i, align 4
  %call149.i.i = call fastcc i32 @fec_enet_new_rxbdp(ptr noundef %1, ptr noundef %bdp.0287.i.i, ptr noundef %skb_new.1.i.i) #15
  br label %rx_processing_done.i.i

rx_processing_done.i.i:                           ; preds = %if.else146.i.i, %if.then140.i.i, %if.then71.i.i, %if.then47.i.i, %if.end43.i.i.rx_processing_done.i.i_crit_edge, %if.then21.i.i
  %skb_new.2.i.i = phi ptr [ %skb_new.0288.i.i, %if.then21.i.i ], [ %skb_new.0288.i.i, %if.then47.i.i ], [ %skb_new.0288.i.i, %if.end43.i.i.rx_processing_done.i.i_crit_edge ], [ %skb_new.1.i.i, %if.then140.i.i ], [ %skb_new.1.i.i, %if.else146.i.i ], [ null, %if.then71.i.i ]
  %vlan_tag.2.i.i = phi i16 [ %vlan_tag.0290.i.i, %if.then21.i.i ], [ %vlan_tag.0290.i.i, %if.then47.i.i ], [ %vlan_tag.0290.i.i, %if.end43.i.i.rx_processing_done.i.i_crit_edge ], [ %vlan_tag.1.i.i, %if.then140.i.i ], [ %vlan_tag.1.i.i, %if.else146.i.i ], [ %vlan_tag.0290.i.i, %if.then71.i.i ]
  %and152.i.i = and i16 %xor.i.i, 32448
  %129 = or i16 %and152.i.i, -32768
  %130 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool157.not.i.i = icmp eq i8 %131, 0
  br i1 %tobool157.not.i.i, label %rx_processing_done.i.i.do.body162.i.i_crit_edge, label %if.then158.i.i

rx_processing_done.i.i.do.body162.i.i_crit_edge:  ; preds = %rx_processing_done.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body162.i.i

if.then158.i.i:                                   ; preds = %rx_processing_done.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %cbd_esc160.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.0287.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %cbd_esc160.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 32768, ptr %cbd_esc160.i.i, align 4
  %cbd_prot.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.0287.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %cbd_prot.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %cbd_prot.i.i, align 4
  %cbd_bdu.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.0287.i.i, i32 0, i32 3
  %134 = ptrtoint ptr %cbd_bdu.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %cbd_bdu.i.i, align 4
  br label %do.body162.i.i

do.body162.i.i:                                   ; preds = %if.then158.i.i, %rx_processing_done.i.i.do.body162.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %135 = call i16 @llvm.bswap.i16(i16 %129) #15
  %136 = ptrtoint ptr %cbd_sc291.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %cbd_sc291.i.i, align 2
  %137 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %last.i.i.i, align 4
  %cmp.not.i.i.i = icmp ugt ptr %138, %bdp.0287.i.i
  br i1 %cmp.not.i.i.i, label %cond.false.i257.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %do.body162.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %139 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i.i.i, align 4
  br label %fec_enet_get_nextdesc.exit.i.i

cond.false.i257.i.i:                              ; preds = %do.body162.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %141 = ptrtoint ptr %dsize.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %dsize.i.i.i, align 2
  %conv.i255.i.i = zext i8 %142 to i32
  %add.ptr.i256.i.i = getelementptr i8, ptr %bdp.0287.i.i, i32 %conv.i255.i.i
  br label %fec_enet_get_nextdesc.exit.i.i

fec_enet_get_nextdesc.exit.i.i:                   ; preds = %cond.false.i257.i.i, %cond.true.i.i.i
  %cond.i258.i.i = phi ptr [ %140, %cond.true.i.i.i ], [ %add.ptr.i256.i.i, %cond.false.i257.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !296
  call void @arm_heavy_mb() #15
  %143 = ptrtoint ptr %reg_desc_active.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg_desc_active.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 0) #15, !srcloc !278
  %cbd_sc.i.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i258.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %cbd_sc.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %cbd_sc.i.i, align 2
  %147 = call i16 @llvm.bswap.i16(i16 %146) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %147)
  %tobool2.not.i.i = icmp sgt i16 %147, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %sub1.i)
  %cmp.not.i.i = icmp slt i32 %inc.i.i, %sub1.i
  %or.cond.i.i = select i1 %tobool2.not.i.i, i1 %cmp.not.i.i, i1 false
  br i1 %or.cond.i.i, label %fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge, label %fec_enet_get_nextdesc.exit.i.i.fec_enet_rx_queue.exit.i_crit_edge

fec_enet_get_nextdesc.exit.i.i.fec_enet_rx_queue.exit.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_rx_queue.exit.i

fec_enet_get_nextdesc.exit.i.i.if.end.i.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

fec_enet_rx_queue.exit.i:                         ; preds = %fec_enet_get_nextdesc.exit.i.i.fec_enet_rx_queue.exit.i_crit_edge, %for.body.i.fec_enet_rx_queue.exit.i_crit_edge
  %bdp.0.lcssa.i.i = phi ptr [ %10, %for.body.i.fec_enet_rx_queue.exit.i_crit_edge ], [ %cond.i258.i.i, %fec_enet_get_nextdesc.exit.i.i.fec_enet_rx_queue.exit.i_crit_edge ]
  %pkt_received.0.lcssa.i.i = phi i32 [ 0, %for.body.i.fec_enet_rx_queue.exit.i_crit_edge ], [ %inc.i.i, %fec_enet_get_nextdesc.exit.i.i.fec_enet_rx_queue.exit.i_crit_edge ]
  %148 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %bdp.0.lcssa.i.i, ptr %cur.i.i, align 4
  %add.i = add i32 %pkt_received.0.lcssa.i.i, %done.013.i
  %i.0.i = add i32 %i.014.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %fec_enet_rx_queue.exit.i.for.body.i_crit_edge, label %fec_enet_rx_queue.exit.i.fec_enet_rx.exit_crit_edge

fec_enet_rx_queue.exit.i.fec_enet_rx.exit_crit_edge: ; preds = %fec_enet_rx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_rx.exit

fec_enet_rx_queue.exit.i.for.body.i_crit_edge:    ; preds = %fec_enet_rx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

fec_enet_rx.exit:                                 ; preds = %fec_enet_rx_queue.exit.i.fec_enet_rx.exit_crit_edge, %do.body.fec_enet_rx.exit_crit_edge
  %done.0.lcssa.i = phi i32 [ 0, %do.body.fec_enet_rx.exit_crit_edge ], [ %add.i, %fec_enet_rx_queue.exit.i.fec_enet_rx.exit_crit_edge ]
  %add = add i32 %done.0.lcssa.i, %done.0
  %149 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_tx_queues.i, align 8
  %i.04.i = add i32 %150, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.04.i)
  %cmp5.i = icmp sgt i32 %i.04.i, -1
  br i1 %cmp5.i, label %fec_enet_rx.exit.for.body.i26_crit_edge, label %fec_enet_rx.exit.fec_enet_tx.exit_crit_edge

fec_enet_rx.exit.fec_enet_tx.exit_crit_edge:      ; preds = %fec_enet_rx.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_tx.exit

fec_enet_rx.exit.for.body.i26_crit_edge:          ; preds = %fec_enet_rx.exit
  br label %for.body.i26

for.body.i26:                                     ; preds = %fec_enet_tx_queue.exit.i.for.body.i26_crit_edge, %fec_enet_rx.exit.for.body.i26_crit_edge
  %i.06.i = phi i32 [ %i.0.i57, %fec_enet_tx_queue.exit.i.for.body.i26_crit_edge ], [ %i.04.i, %fec_enet_rx.exit.for.body.i26_crit_edge ]
  %idxprom.i.i22 = and i32 %i.06.i, 65535
  %arrayidx.i.i23 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %idxprom.i.i22
  %151 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i.i23, align 4
  %153 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %154, i32 %idxprom.i.i22
  %dirty_tx.i.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %152, i32 0, i32 5
  %155 = ptrtoint ptr %dirty_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dirty_tx.i.i, align 4
  %last.i.i.i24 = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 2
  %157 = ptrtoint ptr %last.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %last.i.i.i24, align 4
  %cmp.not.i.i.i25 = icmp ugt ptr %158, %156
  br i1 %cmp.not.i.i.i25, label %cond.false.i.i.i31, label %cond.true.i.i.i28

cond.true.i.i.i28:                                ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #17
  %base.i.i.i27 = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 1
  %159 = ptrtoint ptr %base.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i.i.i27, align 4
  br label %fec_enet_get_nextdesc.exit.i.i33

cond.false.i.i.i31:                               ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #17
  %dsize.i.i.i29 = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 7
  %161 = ptrtoint ptr %dsize.i.i.i29 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %dsize.i.i.i29, align 2
  %conv.i.i.i30 = zext i8 %162 to i32
  %add.ptr.i184.i.i = getelementptr i8, ptr %156, i32 %conv.i.i.i30
  br label %fec_enet_get_nextdesc.exit.i.i33

fec_enet_get_nextdesc.exit.i.i33:                 ; preds = %cond.false.i.i.i31, %cond.true.i.i.i28
  %cond.i.i.i = phi ptr [ %160, %cond.true.i.i.i28 ], [ %add.ptr.i184.i.i, %cond.false.i.i.i31 ]
  %cur.i.i32 = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 3
  %163 = ptrtoint ptr %cur.i.i32 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %cur.i.i32, align 4
  %cmp.not205.i.i = icmp eq ptr %cond.i.i.i, %164
  br i1 %cmp.not205.i.i, label %fec_enet_get_nextdesc.exit.i.i33.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

fec_enet_get_nextdesc.exit.i.i33.while.end.i.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %fec_enet_get_nextdesc.exit.i.i33
  %base.i185.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 1
  %dsize_log2.i.i.i34 = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 8
  %tso_hdrs_dma.i.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %152, i32 0, i32 7
  %ring_size.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 6
  %dsize.i191.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 7
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %154, i32 %idxprom.i.i22, i32 13
  %tx_wake_threshold.i.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %152, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end108.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %bdp.0206.i.i = phi ptr [ %cond.i.i.i, %while.body.lr.ph.i.i ], [ %cond.i195.i.i, %if.end108.i.i.while.body.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !297
  %cbd_sc.i.i35 = getelementptr inbounds %struct.bufdesc, ptr %bdp.0206.i.i, i32 0, i32 1
  %165 = ptrtoint ptr %cbd_sc.i.i35 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load volatile i16, ptr %cbd_sc.i.i35, align 2
  %167 = call i16 @llvm.bswap.i16(i16 %166) #15
  %conv9.i.i = zext i16 %167 to i32
  %and.i.i36 = and i32 %conv9.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i, label %if.end.i.i42, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

if.end.i.i42:                                     ; preds = %while.body.i.i
  %168 = ptrtoint ptr %base.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i185.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i37 = ptrtoint ptr %bdp.0206.i.i to i32
  %sub.ptr.rhs.cast.i.i.i38 = ptrtoint ptr %169 to i32
  %sub.ptr.sub.i.i.i39 = sub i32 %sub.ptr.lhs.cast.i.i.i37, %sub.ptr.rhs.cast.i.i.i38
  %170 = ptrtoint ptr %dsize_log2.i.i.i34 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %dsize_log2.i.i.i34, align 1
  %conv.i186.i.i = zext i8 %171 to i32
  %shr.i.i.i40 = ashr i32 %sub.ptr.sub.i.i.i39, %conv.i186.i.i
  %arrayidx12.i.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %152, i32 0, i32 2, i32 %shr.i.i.i40
  %172 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx12.i.i, align 4
  store ptr null, ptr %arrayidx12.i.i, align 4
  %cbd_bufaddr.i.i41 = getelementptr inbounds %struct.bufdesc, ptr %bdp.0206.i.i, i32 0, i32 2
  %174 = ptrtoint ptr %cbd_bufaddr.i.i41 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cbd_bufaddr.i.i41, align 4
  %176 = call i32 @llvm.bswap.i32(i32 %175) #15
  %177 = ptrtoint ptr %tso_hdrs_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tso_hdrs_dma.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %178)
  %cmp15.not.i.i = icmp ult i32 %176, %178
  br i1 %cmp15.not.i.i, label %if.end.i.i42.if.then23.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i42.if.then23.i.i_crit_edge:             ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i42
  %179 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %ring_size.i.i, align 4
  %conv20.i.i = zext i16 %180 to i32
  %mul.i.i = shl nuw nsw i32 %conv20.i.i, 8
  %add.i.i43 = add i32 %mul.i.i, %178
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %add.i.i43)
  %cmp21.i.i = icmp ult i32 %176, %add.i.i43
  br i1 %cmp21.i.i, label %land.lhs.true.i.i.if.end26.i.i_crit_edge, label %land.lhs.true.i.i.if.then23.i.i_crit_edge

land.lhs.true.i.i.if.then23.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i.i

land.lhs.true.i.i.if.end26.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true.i.i.if.then23.i.i_crit_edge, %if.end.i.i42.if.then23.i.i_crit_edge
  %181 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i44 = getelementptr inbounds %struct.platform_device, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %bdp.0206.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %bdp.0206.i.i, align 4
  %185 = call i16 @llvm.bswap.i16(i16 %184) #15
  %conv25.i.i = zext i16 %185 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i44, i32 noundef %176, i32 noundef %conv25.i.i, i32 noundef 1, i32 noundef 0) #15
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true.i.i.if.end26.i.i_crit_edge
  %186 = ptrtoint ptr %cbd_bufaddr.i.i41 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %cbd_bufaddr.i.i41, align 4
  %tobool28.not.i.i = icmp eq ptr %173, null
  br i1 %tobool28.not.i.i, label %if.end26.i.i.do.body94.i.i_crit_edge, label %if.end30.i.i

if.end26.i.i.do.body94.i.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body94.i.i

if.end30.i.i:                                     ; preds = %if.end26.i.i
  %and32.i.i45 = and i32 %conv9.i.i, 451
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i45)
  %tobool33.not.i.i46 = icmp eq i32 %and32.i.i45, 0
  br i1 %tobool33.not.i.i46, label %if.else.i.i, label %if.then34.i.i48

if.then34.i.i48:                                  ; preds = %if.end30.i.i
  %187 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %tx_errors.i.i, align 4
  %inc.i.i47 = add i32 %188, 1
  store i32 %inc.i.i47, ptr %tx_errors.i.i, align 4
  %and36.i.i = and i32 %conv9.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.then34.i.i48.if.end41.i.i_crit_edge, label %if.then38.i.i

if.then34.i.i48.if.end41.i.i_crit_edge:           ; preds = %if.then34.i.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i.i

if.then38.i.i:                                    ; preds = %if.then34.i.i48
  call void @__sanitizer_cov_trace_pc() #17
  %189 = ptrtoint ptr %tx_heartbeat_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tx_heartbeat_errors.i.i, align 4
  %inc40.i.i = add i32 %190, 1
  store i32 %inc40.i.i, ptr %tx_heartbeat_errors.i.i, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then38.i.i, %if.then34.i.i48.if.end41.i.i_crit_edge
  %and43.i.i = and i32 %conv9.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end41.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

if.end41.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %191 = ptrtoint ptr %tx_window_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tx_window_errors.i.i, align 8
  %inc47.i.i = add i32 %192, 1
  store i32 %inc47.i.i, ptr %tx_window_errors.i.i, align 8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.end41.i.i.if.end48.i.i_crit_edge
  %and50.i.i = and i32 %conv9.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end48.i.i.if.end55.i.i_crit_edge, label %if.then52.i.i

if.end48.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i.i

if.then52.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %193 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %tx_aborted_errors.i.i, align 8
  %inc54.i.i = add i32 %194, 1
  store i32 %inc54.i.i, ptr %tx_aborted_errors.i.i, align 8
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then52.i.i, %if.end48.i.i.if.end55.i.i_crit_edge
  %and57.i.i = and i32 %conv9.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end55.i.i.if.end62.i.i_crit_edge, label %if.then59.i.i

if.end55.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i.i

if.then59.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %195 = ptrtoint ptr %tx_fifo_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %tx_fifo_errors.i.i, align 8
  %inc61.i.i = add i32 %196, 1
  store i32 %inc61.i.i, ptr %tx_fifo_errors.i.i, align 8
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then59.i.i, %if.end55.i.i.if.end62.i.i_crit_edge
  %and64.i.i = and i32 %conv9.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.end62.i.i.if.end74.i.i49_crit_edge, label %if.end62.i.i.if.end74.sink.split.i.i_crit_edge

if.end62.i.i.if.end74.sink.split.i.i_crit_edge:   ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.sink.split.i.i

if.end62.i.i.if.end74.i.i49_crit_edge:            ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i.i49

if.else.i.i:                                      ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %197 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tx_packets.i.i, align 4
  %inc71.i.i = add i32 %198, 1
  store i32 %inc71.i.i, ptr %tx_packets.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %173, i32 0, i32 6
  %199 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len.i.i, align 4
  br label %if.end74.sink.split.i.i

if.end74.sink.split.i.i:                          ; preds = %if.else.i.i, %if.end62.i.i.if.end74.sink.split.i.i_crit_edge
  %tx_carrier_errors.sink211.i.i = phi ptr [ %tx_bytes.i.i, %if.else.i.i ], [ %tx_carrier_errors.i.i, %if.end62.i.i.if.end74.sink.split.i.i_crit_edge ]
  %.sink210.i.i = phi i32 [ %200, %if.else.i.i ], [ 1, %if.end62.i.i.if.end74.sink.split.i.i_crit_edge ]
  %201 = ptrtoint ptr %tx_carrier_errors.sink211.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tx_carrier_errors.sink211.i.i, align 4
  %inc68.i.i = add i32 %202, %.sink210.i.i
  store i32 %inc68.i.i, ptr %tx_carrier_errors.sink211.i.i, align 4
  br label %if.end74.i.i49

if.end74.i.i49:                                   ; preds = %if.end74.sink.split.i.i, %if.end62.i.i.if.end74.i.i49_crit_edge
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %173, i32 0, i32 17
  %203 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %tx_flags.i.i, align 1
  %207 = and i8 %206, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool78.not.i.i = icmp eq i8 %207, 0
  br i1 %tobool78.not.i.i, label %if.end74.i.i49.if.end86.i.i_crit_edge, label %land.rhs.i.i

if.end74.i.i49.if.end86.i.i_crit_edge:            ; preds = %if.end74.i.i49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86.i.i

land.rhs.i.i:                                     ; preds = %if.end74.i.i49
  %208 = ptrtoint ptr %hwts_tx_en.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %hwts_tx_en.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool79.not.i.i = icmp eq i32 %209, 0
  br i1 %tobool79.not.i.i, label %land.rhs.i.i.if.end86.i.i_crit_edge, label %land.lhs.true82.i.i, !prof !273

land.rhs.i.i.if.end86.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86.i.i

land.lhs.true82.i.i:                              ; preds = %land.rhs.i.i
  %210 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool83.not.i.i = icmp eq i8 %211, 0
  br i1 %tobool83.not.i.i, label %land.lhs.true82.i.i.if.end86.i.i_crit_edge, label %if.then85.i.i

land.lhs.true82.i.i.if.end86.i.i_crit_edge:       ; preds = %land.lhs.true82.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86.i.i

if.then85.i.i:                                    ; preds = %land.lhs.true82.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #15
  %212 = ptrtoint ptr %shhwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 -1, ptr %shhwtstamps.i.i, align 8, !annotation !265
  %ts.i.i50 = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.0206.i.i, i32 0, i32 4
  %213 = ptrtoint ptr %ts.i.i50 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ts.i.i50, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214) #15
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i.i.i) #15
  %conv5.i.i = zext i32 %215 to i64
  %call6.i.i = call i64 @timecounter_cyc2time(ptr noundef %tc.i.i.i, i64 noundef %conv5.i.i) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i.i.i, i32 noundef %call2.i.i) #15
  %216 = ptrtoint ptr %shhwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %call6.i.i, ptr %shhwtstamps.i.i, align 8
  call void @skb_tstamp_tx(ptr noundef nonnull %173, ptr noundef nonnull %shhwtstamps.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i.i) #15
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %if.then85.i.i, %land.lhs.true82.i.i.if.end86.i.i_crit_edge, %land.rhs.i.i.if.end86.i.i_crit_edge, %if.end74.i.i49.if.end86.i.i_crit_edge
  %and88.i.i = and i32 %conv9.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i.i)
  %tobool89.not.i.i = icmp eq i32 %and88.i.i, 0
  br i1 %tobool89.not.i.i, label %if.end86.i.i.if.end93.i.i_crit_edge, label %if.then90.i.i

if.end86.i.i.if.end93.i.i_crit_edge:              ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end93.i.i

if.then90.i.i:                                    ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %217 = ptrtoint ptr %collisions.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %collisions.i.i, align 4
  %inc92.i.i = add i32 %218, 1
  store i32 %inc92.i.i, ptr %collisions.i.i, align 4
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %if.then90.i.i, %if.end86.i.i.if.end93.i.i_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef nonnull %173, i32 noundef 1) #15
  br label %do.body94.i.i

do.body94.i.i:                                    ; preds = %if.end93.i.i, %if.end26.i.i.do.body94.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !298
  call void @arm_heavy_mb() #15
  %219 = ptrtoint ptr %dirty_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %bdp.0206.i.i, ptr %dirty_tx.i.i, align 4
  %220 = ptrtoint ptr %last.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %last.i.i.i24, align 4
  %cmp.not.i188.i.i = icmp ugt ptr %221, %bdp.0206.i.i
  br i1 %cmp.not.i188.i.i, label %cond.false.i194.i.i, label %cond.true.i190.i.i

cond.true.i190.i.i:                               ; preds = %do.body94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %222 = ptrtoint ptr %base.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base.i185.i.i, align 4
  br label %fec_enet_get_nextdesc.exit196.i.i

cond.false.i194.i.i:                              ; preds = %do.body94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %dsize.i191.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %dsize.i191.i.i, align 2
  %conv.i192.i.i = zext i8 %225 to i32
  %add.ptr.i193.i.i = getelementptr i8, ptr %bdp.0206.i.i, i32 %conv.i192.i.i
  br label %fec_enet_get_nextdesc.exit196.i.i

fec_enet_get_nextdesc.exit196.i.i:                ; preds = %cond.false.i194.i.i, %cond.true.i190.i.i
  %cond.i195.i.i = phi ptr [ %223, %cond.true.i190.i.i ], [ %add.ptr.i193.i.i, %cond.false.i194.i.i ]
  %226 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %fec_enet_get_nextdesc.exit196.i.i.if.end108.i.i_crit_edge, label %if.then101.i.i

fec_enet_get_nextdesc.exit196.i.i.if.end108.i.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit196.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108.i.i

if.then101.i.i:                                   ; preds = %fec_enet_get_nextdesc.exit196.i.i
  %228 = ptrtoint ptr %cur.i.i32 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cur.i.i32, align 4
  %sub.ptr.rhs.cast.i198.i.i = ptrtoint ptr %229 to i32
  %sub.ptr.sub.i199.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i37, %sub.ptr.rhs.cast.i198.i.i
  %230 = ptrtoint ptr %dsize_log2.i.i.i34 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %dsize_log2.i.i.i34, align 1
  %conv.i201.i.i = zext i8 %231 to i32
  %shr.i202.i.i = ashr i32 %sub.ptr.sub.i199.i.i, %conv.i201.i.i
  %sub.i.i.i51 = add i32 %shr.i202.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i51)
  %cmp.i.i.i52 = icmp sgt i32 %sub.i.i.i51, -1
  br i1 %cmp.i.i.i52, label %if.then101.i.i.fec_enet_get_free_txdesc_num.exit.i.i_crit_edge, label %cond.false.i203.i.i

if.then101.i.i.fec_enet_get_free_txdesc_num.exit.i.i_crit_edge: ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_get_free_txdesc_num.exit.i.i

cond.false.i203.i.i:                              ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %232 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %ring_size.i.i, align 4
  %conv4.i.i.i = zext i16 %233 to i32
  %add.i.i.i53 = add nsw i32 %sub.i.i.i51, %conv4.i.i.i
  br label %fec_enet_get_free_txdesc_num.exit.i.i

fec_enet_get_free_txdesc_num.exit.i.i:            ; preds = %cond.false.i203.i.i, %if.then101.i.i.fec_enet_get_free_txdesc_num.exit.i.i_crit_edge
  %cond.i204.i.i = phi i32 [ %add.i.i.i53, %cond.false.i203.i.i ], [ %sub.i.i.i51, %if.then101.i.i.fec_enet_get_free_txdesc_num.exit.i.i_crit_edge ]
  %234 = ptrtoint ptr %tx_wake_threshold.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %tx_wake_threshold.i.i, align 2
  %conv103.i.i = zext i16 %235 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i204.i.i, i32 %conv103.i.i)
  %cmp104.not.i.i = icmp slt i32 %cond.i204.i.i, %conv103.i.i
  br i1 %cmp104.not.i.i, label %fec_enet_get_free_txdesc_num.exit.i.i.if.end108.i.i_crit_edge, label %if.then106.i.i

fec_enet_get_free_txdesc_num.exit.i.i.if.end108.i.i_crit_edge: ; preds = %fec_enet_get_free_txdesc_num.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108.i.i

if.then106.i.i:                                   ; preds = %fec_enet_get_free_txdesc_num.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #15
  br label %if.end108.i.i

if.end108.i.i:                                    ; preds = %if.then106.i.i, %fec_enet_get_free_txdesc_num.exit.i.i.if.end108.i.i_crit_edge, %fec_enet_get_nextdesc.exit196.i.i.if.end108.i.i_crit_edge
  %236 = ptrtoint ptr %cur.i.i32 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile ptr, ptr %cur.i.i32, align 4
  %cmp.not.i.i54 = icmp eq ptr %cond.i195.i.i, %237
  br i1 %cmp.not.i.i54, label %if.end108.i.i.while.end.i.i_crit_edge, label %if.end108.i.i.while.body.i.i_crit_edge

if.end108.i.i.while.body.i.i_crit_edge:           ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.end108.i.i.while.end.i.i_crit_edge:            ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end108.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge, %fec_enet_get_nextdesc.exit.i.i33.while.end.i.i_crit_edge
  %bdp.0.lcssa.i.i55 = phi ptr [ %cond.i.i.i, %fec_enet_get_nextdesc.exit.i.i33.while.end.i.i_crit_edge ], [ %bdp.0206.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %cond.i195.i.i, %if.end108.i.i.while.end.i.i_crit_edge ]
  %238 = ptrtoint ptr %cur.i.i32 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cur.i.i32, align 4
  %cmp111.not.i.i = icmp eq ptr %bdp.0.lcssa.i.i55, %239
  br i1 %cmp111.not.i.i, label %while.end.i.i.fec_enet_tx_queue.exit.i_crit_edge, label %land.lhs.true113.i.i

while.end.i.i.fec_enet_tx_queue.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_tx_queue.exit.i

land.lhs.true113.i.i:                             ; preds = %while.end.i.i
  %reg_desc_active.i.i56 = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 4
  %240 = ptrtoint ptr %reg_desc_active.i.i56 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %reg_desc_active.i.i56, align 4
  %242 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #15, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !299
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %cmp118.i.i = icmp eq i32 %242, 0
  br i1 %cmp118.i.i, label %do.body121.i.i, label %land.lhs.true113.i.i.fec_enet_tx_queue.exit.i_crit_edge

land.lhs.true113.i.i.fec_enet_tx_queue.exit.i_crit_edge: ; preds = %land.lhs.true113.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_tx_queue.exit.i

do.body121.i.i:                                   ; preds = %land.lhs.true113.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !300
  call void @arm_heavy_mb() #15
  %243 = ptrtoint ptr %reg_desc_active.i.i56 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %reg_desc_active.i.i56, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 0) #15, !srcloc !278
  br label %fec_enet_tx_queue.exit.i

fec_enet_tx_queue.exit.i:                         ; preds = %do.body121.i.i, %land.lhs.true113.i.i.fec_enet_tx_queue.exit.i_crit_edge, %while.end.i.i.fec_enet_tx_queue.exit.i_crit_edge
  %i.0.i57 = add i32 %i.06.i, -1
  %cmp.i58 = icmp sgt i32 %i.0.i57, -1
  br i1 %cmp.i58, label %fec_enet_tx_queue.exit.i.for.body.i26_crit_edge, label %fec_enet_tx_queue.exit.i.fec_enet_tx.exit_crit_edge

fec_enet_tx_queue.exit.i.fec_enet_tx.exit_crit_edge: ; preds = %fec_enet_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_tx.exit

fec_enet_tx_queue.exit.i.for.body.i26_crit_edge:  ; preds = %fec_enet_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i26

fec_enet_tx.exit:                                 ; preds = %fec_enet_tx_queue.exit.i.fec_enet_tx.exit_crit_edge, %fec_enet_rx.exit.fec_enet_tx.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp = icmp slt i32 %add, %budget
  br i1 %cmp, label %land.rhs, label %fec_enet_tx.exit.if.end_crit_edge

fec_enet_tx.exit.if.end_crit_edge:                ; preds = %fec_enet_tx.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %fec_enet_tx.exit
  %245 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %246, i32 4
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #15, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !285
  %248 = and i32 %247, -32769
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !286
  call void @arm_heavy_mb() #15
  %249 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %250, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %248) #15, !srcloc !278
  %cmp.i60.not = icmp eq i32 %248, 0
  br i1 %cmp.i60.not, label %if.then.critedge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then.critedge:                                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %add) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !301
  call void @arm_heavy_mb() #15
  %251 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %252, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1442840566) #15, !srcloc !278
  br label %if.end

if.end:                                           ; preds = %if.then.critedge, %fec_enet_tx.exit.if.end_crit_edge
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fec_restart(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %ec.i = alloca %struct.ethtool_coalesce, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %and2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.body5_crit_edge, label %land.lhs.true

lor.lhs.false.do.body5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

land.lhs.true:                                    ; preds = %lor.lhs.false
  %link = getelementptr i8, ptr %ndev, i32 2500
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.body5_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #15, !srcloc !278
  br label %if.end

do.body5:                                         ; preds = %land.lhs.true.do.body5_crit_edge, %lor.lhs.false.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !303
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16777216) #15, !srcloc !278
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #15
  br label %if.end

if.end:                                           ; preds = %do.body5, %do.body
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %temp_mac.sroa.0.0.copyload = load i32, ptr %10, align 1
  %temp_mac.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 4
  %12 = ptrtoint ptr %temp_mac.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %temp_mac.sroa.5.0.copyload = load i16, ptr %temp_mac.sroa.5.0..sroa_idx, align 1
  %temp_mac.sroa.5.0.insert.ext = zext i16 %temp_mac.sroa.5.0.copyload to i32
  %temp_mac.sroa.5.0.insert.shift = shl nuw i32 %temp_mac.sroa.5.0.insert.ext, 16
  %temp_mac.sroa.5.0.insert.insert = or i32 %temp_mac.sroa.5.0.insert.shift, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !304
  tail call void @arm_heavy_mb() #15
  %13 = tail call i32 @llvm.bswap.i32(i32 %temp_mac.sroa.0.0.copyload)
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr14 = getelementptr i8, ptr %15, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %13) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !305
  tail call void @arm_heavy_mb() #15
  %16 = tail call i32 @llvm.bswap.i32(i32 %temp_mac.sroa.5.0.insert.insert)
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr20 = getelementptr i8, ptr %18, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %16) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !306
  tail call void @arm_heavy_mb() #15
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr25 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -32769) #15, !srcloc !278
  %num_rx_queues.i = getelementptr i8, ptr %ndev, i32 2436
  %21 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp164.not.i = icmp eq i32 %22, 0
  br i1 %cmp164.not.i, label %if.end.for.cond20.preheader.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.cond20.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond20.preheader.i

for.cond20.preheader.i:                           ; preds = %fec_enet_get_prevdesc.exit.i.for.cond20.preheader.i_crit_edge, %if.end.for.cond20.preheader.i_crit_edge
  %num_tx_queues.i = getelementptr i8, ptr %ndev, i32 2432
  %23 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp21171.not.i = icmp eq i32 %24, 0
  br i1 %cmp21171.not.i, label %for.cond20.preheader.i.fec_enet_bd_init.exit_crit_edge, label %for.body23.lr.ph.i

for.cond20.preheader.i.fec_enet_bd_init.exit_crit_edge: ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_bd_init.exit

for.body23.lr.ph.i:                               ; preds = %for.cond20.preheader.i
  %pdev.i = getelementptr i8, ptr %ndev, i32 2472
  br label %for.body23.i

for.body.i:                                       ; preds = %fec_enet_get_prevdesc.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %q.0165.i = phi i32 [ %inc18.i, %fec_enet_get_prevdesc.exit.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %q.0165.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %base.i = getelementptr inbounds %struct.bufdesc_prop, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %ring_size.i = getelementptr inbounds %struct.bufdesc_prop, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ring_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp3161.not.i = icmp eq i16 %30, 0
  br i1 %cmp3161.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body5.lr.ph.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body5.lr.ph.i:                                ; preds = %for.body.i
  %last.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %26, i32 0, i32 2
  %dsize.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %26, i32 0, i32 7
  br label %for.body5.i

for.body5.i:                                      ; preds = %fec_enet_get_nextdesc.exit.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %i.0163.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc.i, %fec_enet_get_nextdesc.exit.i.for.body5.i_crit_edge ]
  %bdp.0162.i = phi ptr [ %28, %for.body5.lr.ph.i ], [ %cond.i.i, %fec_enet_get_nextdesc.exit.i.for.body5.i_crit_edge ]
  %cbd_bufaddr.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0162.i, i32 0, i32 2
  %31 = ptrtoint ptr %cbd_bufaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cbd_bufaddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  %spec.select.i = select i1 %tobool.not.i, i16 0, i16 128
  %33 = getelementptr inbounds %struct.bufdesc, ptr %bdp.0162.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %spec.select.i, ptr %33, align 2
  %35 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %last.i.i, align 4
  %cmp.not.i.i = icmp ugt ptr %36, %bdp.0162.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  br label %fec_enet_get_nextdesc.exit.i

cond.false.i.i:                                   ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %dsize.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dsize.i.i, align 2
  %conv.i.i = zext i8 %40 to i32
  %add.ptr.i129.i = getelementptr i8, ptr %bdp.0162.i, i32 %conv.i.i
  br label %fec_enet_get_nextdesc.exit.i

fec_enet_get_nextdesc.exit.i:                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %38, %cond.true.i.i ], [ %add.ptr.i129.i, %cond.false.i.i ]
  %inc.i = add nuw nsw i32 %i.0163.i, 1
  %41 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ring_size.i, align 4
  %conv.i = zext i16 %42 to i32
  %cmp3.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp3.i, label %fec_enet_get_nextdesc.exit.i.for.body5.i_crit_edge, label %fec_enet_get_nextdesc.exit.i.for.end.i_crit_edge

fec_enet_get_nextdesc.exit.i.for.end.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

fec_enet_get_nextdesc.exit.i.for.body5.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

for.end.i:                                        ; preds = %fec_enet_get_nextdesc.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %bdp.0.lcssa.i = phi ptr [ %28, %for.body.i.for.end.i_crit_edge ], [ %cond.i.i, %fec_enet_get_nextdesc.exit.i.for.end.i_crit_edge ]
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %cmp.not.i131.i = icmp ult ptr %44, %bdp.0.lcssa.i
  br i1 %cmp.not.i131.i, label %cond.false.i137.i, label %cond.true.i133.i

cond.true.i133.i:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %last.i132.i = getelementptr inbounds %struct.bufdesc_prop, ptr %26, i32 0, i32 2
  %45 = ptrtoint ptr %last.i132.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %last.i132.i, align 4
  br label %fec_enet_get_prevdesc.exit.i

cond.false.i137.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dsize.i134.i = getelementptr inbounds %struct.bufdesc_prop, ptr %26, i32 0, i32 7
  %47 = ptrtoint ptr %dsize.i134.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dsize.i134.i, align 2
  %conv.i135.i = zext i8 %48 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i135.i
  %add.ptr.i136.i = getelementptr i8, ptr %bdp.0.lcssa.i, i32 %idx.neg.i.i
  br label %fec_enet_get_prevdesc.exit.i

fec_enet_get_prevdesc.exit.i:                     ; preds = %cond.false.i137.i, %cond.true.i133.i
  %cond.i138.i = phi ptr [ %46, %cond.true.i133.i ], [ %add.ptr.i136.i, %cond.false.i137.i ]
  %cbd_sc11.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i138.i, i32 0, i32 1
  %49 = ptrtoint ptr %cbd_sc11.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cbd_sc11.i, align 2
  %51 = or i16 %50, 32
  store i16 %51, ptr %cbd_sc11.i, align 2
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %cur.i = getelementptr inbounds %struct.bufdesc_prop, ptr %26, i32 0, i32 3
  %54 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %cur.i, align 4
  %inc18.i = add nuw i32 %q.0165.i, 1
  %55 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc18.i, %56
  br i1 %cmp.i, label %fec_enet_get_prevdesc.exit.i.for.body.i_crit_edge, label %fec_enet_get_prevdesc.exit.i.for.cond20.preheader.i_crit_edge

fec_enet_get_prevdesc.exit.i.for.cond20.preheader.i_crit_edge: ; preds = %fec_enet_get_prevdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond20.preheader.i

fec_enet_get_prevdesc.exit.i.for.body.i_crit_edge: ; preds = %fec_enet_get_prevdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body23.i:                                     ; preds = %fec_enet_get_prevdesc.exit159.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %q.1172.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc76.i, %fec_enet_get_prevdesc.exit159.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %q.1172.i
  %57 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx24.i, align 4
  %base26.i = getelementptr inbounds %struct.bufdesc_prop, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base26.i, align 4
  %cur28.i = getelementptr inbounds %struct.bufdesc_prop, ptr %58, i32 0, i32 3
  %61 = ptrtoint ptr %cur28.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %cur28.i, align 4
  %ring_size31.i = getelementptr inbounds %struct.bufdesc_prop, ptr %58, i32 0, i32 6
  %62 = ptrtoint ptr %ring_size31.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ring_size31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp33167.not.i = icmp eq i16 %63, 0
  br i1 %cmp33167.not.i, label %for.body23.i.for.end68.i_crit_edge, label %for.body35.lr.ph.i

for.body23.i.for.end68.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end68.i

for.body35.lr.ph.i:                               ; preds = %for.body23.i
  %tso_hdrs_dma.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %58, i32 0, i32 7
  %last.i139.i = getelementptr inbounds %struct.bufdesc_prop, ptr %58, i32 0, i32 2
  %dsize.i143.i = getelementptr inbounds %struct.bufdesc_prop, ptr %58, i32 0, i32 7
  br label %for.body35.i

for.body35.i:                                     ; preds = %fec_enet_get_nextdesc.exit148.i.for.body35.i_crit_edge, %for.body35.lr.ph.i
  %i.1169.i = phi i32 [ 0, %for.body35.lr.ph.i ], [ %inc67.i, %fec_enet_get_nextdesc.exit148.i.for.body35.i_crit_edge ]
  %bdp.1168.i = phi ptr [ %60, %for.body35.lr.ph.i ], [ %cond.i147.i, %fec_enet_get_nextdesc.exit148.i.for.body35.i_crit_edge ]
  %cbd_sc36.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.1168.i, i32 0, i32 1
  %64 = ptrtoint ptr %cbd_sc36.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %cbd_sc36.i, align 2
  %cbd_bufaddr37.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.1168.i, i32 0, i32 2
  %65 = ptrtoint ptr %cbd_bufaddr37.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cbd_bufaddr37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool38.not.i = icmp eq i32 %66, 0
  br i1 %tobool38.not.i, label %for.body35.i.if.end54.i_crit_edge, label %land.lhs.true.i

for.body35.i.if.end54.i_crit_edge:                ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

land.lhs.true.i:                                  ; preds = %for.body35.i
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #15
  %68 = ptrtoint ptr %tso_hdrs_dma.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tso_hdrs_dma.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp40.not.i = icmp ult i32 %67, %69
  br i1 %cmp40.not.i, label %land.lhs.true.i.if.then50.i_crit_edge, label %land.lhs.true42.i

land.lhs.true.i.if.then50.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50.i

land.lhs.true42.i:                                ; preds = %land.lhs.true.i
  %70 = ptrtoint ptr %ring_size31.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ring_size31.i, align 4
  %conv47.i = zext i16 %71 to i32
  %mul.i = shl nuw nsw i32 %conv47.i, 8
  %add.i = add i32 %mul.i, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add.i)
  %cmp48.i = icmp ult i32 %67, %add.i
  br i1 %cmp48.i, label %land.lhs.true42.i.if.end54.i_crit_edge, label %land.lhs.true42.i.if.then50.i_crit_edge

land.lhs.true42.i.if.then50.i_crit_edge:          ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50.i

land.lhs.true42.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

if.then50.i:                                      ; preds = %land.lhs.true42.i.if.then50.i_crit_edge, %land.lhs.true.i.if.then50.i_crit_edge
  %72 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev.i, align 8
  %dev51.i = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %bdp.1168.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bdp.1168.i, align 4
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #15
  %conv53.i = zext i16 %76 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev51.i, i32 noundef %67, i32 noundef %conv53.i, i32 noundef 1, i32 noundef 0) #15
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then50.i, %land.lhs.true42.i.if.end54.i_crit_edge, %for.body35.i.if.end54.i_crit_edge
  %arrayidx55.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %58, i32 0, i32 2, i32 %i.1169.i
  %77 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx55.i, align 4
  %tobool56.not.i = icmp eq ptr %78, null
  br i1 %tobool56.not.i, label %if.end54.i.if.end62.i_crit_edge, label %if.then57.i

if.end54.i.if.end62.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %78, i32 noundef 1) #15
  %79 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx55.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then57.i, %if.end54.i.if.end62.i_crit_edge
  %80 = ptrtoint ptr %cbd_bufaddr37.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %cbd_bufaddr37.i, align 4
  %81 = ptrtoint ptr %last.i139.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %last.i139.i, align 4
  %cmp.not.i140.i = icmp ugt ptr %82, %bdp.1168.i
  br i1 %cmp.not.i140.i, label %cond.false.i146.i, label %cond.true.i142.i

cond.true.i142.i:                                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base26.i, align 4
  br label %fec_enet_get_nextdesc.exit148.i

cond.false.i146.i:                                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %dsize.i143.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dsize.i143.i, align 2
  %conv.i144.i = zext i8 %86 to i32
  %add.ptr.i145.i = getelementptr i8, ptr %bdp.1168.i, i32 %conv.i144.i
  br label %fec_enet_get_nextdesc.exit148.i

fec_enet_get_nextdesc.exit148.i:                  ; preds = %cond.false.i146.i, %cond.true.i142.i
  %cond.i147.i = phi ptr [ %84, %cond.true.i142.i ], [ %add.ptr.i145.i, %cond.false.i146.i ]
  %inc67.i = add nuw nsw i32 %i.1169.i, 1
  %87 = ptrtoint ptr %ring_size31.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ring_size31.i, align 4
  %conv32.i = zext i16 %88 to i32
  %cmp33.i = icmp ult i32 %inc67.i, %conv32.i
  br i1 %cmp33.i, label %fec_enet_get_nextdesc.exit148.i.for.body35.i_crit_edge, label %fec_enet_get_nextdesc.exit148.i.for.end68.i_crit_edge

fec_enet_get_nextdesc.exit148.i.for.end68.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit148.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end68.i

fec_enet_get_nextdesc.exit148.i.for.body35.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit148.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body35.i

for.end68.i:                                      ; preds = %fec_enet_get_nextdesc.exit148.i.for.end68.i_crit_edge, %for.body23.i.for.end68.i_crit_edge
  %bdp.1.lcssa.i = phi ptr [ %60, %for.body23.i.for.end68.i_crit_edge ], [ %cond.i147.i, %fec_enet_get_nextdesc.exit148.i.for.end68.i_crit_edge ]
  %89 = ptrtoint ptr %base26.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base26.i, align 4
  %cmp.not.i150.i = icmp ult ptr %90, %bdp.1.lcssa.i
  br i1 %cmp.not.i150.i, label %cond.false.i157.i, label %cond.true.i152.i

cond.true.i152.i:                                 ; preds = %for.end68.i
  call void @__sanitizer_cov_trace_pc() #17
  %last.i151.i = getelementptr inbounds %struct.bufdesc_prop, ptr %58, i32 0, i32 2
  %91 = ptrtoint ptr %last.i151.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %last.i151.i, align 4
  br label %fec_enet_get_prevdesc.exit159.i

cond.false.i157.i:                                ; preds = %for.end68.i
  call void @__sanitizer_cov_trace_pc() #17
  %dsize.i153.i = getelementptr inbounds %struct.bufdesc_prop, ptr %58, i32 0, i32 7
  %93 = ptrtoint ptr %dsize.i153.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dsize.i153.i, align 2
  %conv.i154.i = zext i8 %94 to i32
  %idx.neg.i155.i = sub nsw i32 0, %conv.i154.i
  %add.ptr.i156.i = getelementptr i8, ptr %bdp.1.lcssa.i, i32 %idx.neg.i155.i
  br label %fec_enet_get_prevdesc.exit159.i

fec_enet_get_prevdesc.exit159.i:                  ; preds = %cond.false.i157.i, %cond.true.i152.i
  %cond.i158.i = phi ptr [ %92, %cond.true.i152.i ], [ %add.ptr.i156.i, %cond.false.i157.i ]
  %cbd_sc71.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i158.i, i32 0, i32 1
  %95 = ptrtoint ptr %cbd_sc71.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %cbd_sc71.i, align 2
  %97 = or i16 %96, 32
  store i16 %97, ptr %cbd_sc71.i, align 2
  %dirty_tx.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %58, i32 0, i32 5
  %98 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %cond.i158.i, ptr %dirty_tx.i, align 4
  %inc76.i = add nuw i32 %q.1172.i, 1
  %99 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_tx_queues.i, align 8
  %cmp21.i = icmp ult i32 %inc76.i, %100
  br i1 %cmp21.i, label %fec_enet_get_prevdesc.exit159.i.for.body23.i_crit_edge, label %fec_enet_get_prevdesc.exit159.i.fec_enet_bd_init.exit_crit_edge

fec_enet_get_prevdesc.exit159.i.fec_enet_bd_init.exit_crit_edge: ; preds = %fec_enet_get_prevdesc.exit159.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_bd_init.exit

fec_enet_get_prevdesc.exit159.i.for.body23.i_crit_edge: ; preds = %fec_enet_get_prevdesc.exit159.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23.i

fec_enet_bd_init.exit:                            ; preds = %fec_enet_get_prevdesc.exit159.i.fec_enet_bd_init.exit_crit_edge, %for.cond20.preheader.i.fec_enet_bd_init.exit_crit_edge
  %101 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp84.not.i = icmp eq i32 %102, 0
  br i1 %cmp84.not.i, label %fec_enet_bd_init.exit.for.cond25.preheader.i_crit_edge, label %for.inc.peel.i

fec_enet_bd_init.exit.for.cond25.preheader.i_crit_edge: ; preds = %fec_enet_bd_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond25.preheader.i

for.inc.peel.i:                                   ; preds = %fec_enet_bd_init.exit
  %arrayidx.peel.i = getelementptr i8, ptr %ndev, i32 2452
  %103 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.peel.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !307
  tail call void @arm_heavy_mb() #15
  %dma.peel.i = getelementptr inbounds %struct.bufdesc_prop, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %dma.peel.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma.peel.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #15
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.peel.i = getelementptr i8, ptr %109, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel.i, i32 %107) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !308
  tail call void @arm_heavy_mb() #15
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr15.peel.i = getelementptr i8, ptr %111, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.peel.i, i32 -1073283072) #15, !srcloc !278
  %112 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp.peel.i = icmp ugt i32 %113, 1
  br i1 %cmp.peel.i, label %for.inc.peel.i.for.inc.i_crit_edge, label %for.inc.peel.i.for.cond25.preheader.i_crit_edge

for.inc.peel.i.for.cond25.preheader.i_crit_edge:  ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond25.preheader.i

for.inc.peel.i.for.inc.i_crit_edge:               ; preds = %for.inc.peel.i
  br label %for.inc.i

for.cond25.preheader.i:                           ; preds = %for.inc.i.for.cond25.preheader.i_crit_edge, %for.inc.peel.i.for.cond25.preheader.i_crit_edge, %fec_enet_bd_init.exit.for.cond25.preheader.i_crit_edge
  %114 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp2686.not.i = icmp eq i32 %115, 0
  br i1 %cmp2686.not.i, label %for.cond25.preheader.i.fec_enet_reset_skb.exit_crit_edge, label %for.inc56.peel.i

for.cond25.preheader.i.fec_enet_reset_skb.exit_crit_edge: ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_reset_skb.exit

for.inc56.peel.i:                                 ; preds = %for.cond25.preheader.i
  %arrayidx28.peel.i = getelementptr i8, ptr %ndev, i32 2440
  %116 = ptrtoint ptr %arrayidx28.peel.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx28.peel.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !309
  tail call void @arm_heavy_mb() #15
  %dma33.peel.i = getelementptr inbounds %struct.bufdesc_prop, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %dma33.peel.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma33.peel.i, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #15
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr42.peel.i = getelementptr i8, ptr %122, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.peel.i, i32 %120) #15, !srcloc !278
  %123 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp26.peel.i = icmp ugt i32 %124, 1
  br i1 %cmp26.peel.i, label %for.inc56.peel.i.for.inc56.i_crit_edge, label %for.inc56.peel.i.fec_enet_enable_ring.exit_crit_edge

for.inc56.peel.i.fec_enet_enable_ring.exit_crit_edge: ; preds = %for.inc56.peel.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_enable_ring.exit

for.inc56.peel.i.for.inc56.i_crit_edge:           ; preds = %for.inc56.peel.i
  br label %for.inc56.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %for.inc.peel.i.for.inc.i_crit_edge
  %i.085.i = phi i32 [ %inc.i370, %for.inc.i.for.inc.i_crit_edge ], [ 1, %for.inc.peel.i.for.inc.i_crit_edge ]
  %arrayidx.i368 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.085.i
  %125 = ptrtoint ptr %arrayidx.i368 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i368, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !307
  tail call void @arm_heavy_mb() #15
  %dma.i = getelementptr inbounds %struct.bufdesc_prop, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma.i, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #15
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.085.i)
  %cmp1.i = icmp eq i32 %i.085.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.085.i)
  %cmp2.i = icmp eq i32 %i.085.i, 2
  %cond.i = select i1 %cmp2.i, i32 364, i32 384
  %cond3.i = select i1 %cmp1.i, i32 352, i32 %cond.i
  %add.ptr.i369 = getelementptr i8, ptr %131, i32 %cond3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i369, i32 %129) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !308
  tail call void @arm_heavy_mb() #15
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i, align 8
  %cond12.i = select i1 %cmp2.i, i32 372, i32 392
  %cond14.i = select i1 %cmp1.i, i32 360, i32 %cond12.i
  %add.ptr15.i = getelementptr i8, ptr %133, i32 %cond14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 -1073283072) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !310
  tail call void @arm_heavy_mb() #15
  %or.i = select i1 %cmp1.i, i32 78352, i32 95828
  %134 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i, align 8
  %cond23.i = select i1 %cmp2.i, i32 460, i32 456
  %add.ptr24.i = getelementptr i8, ptr %136, i32 %cond23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %134) #15, !srcloc !278
  %inc.i370 = add nuw i32 %i.085.i, 1
  %137 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i371 = icmp ult i32 %inc.i370, %138
  br i1 %cmp.i371, label %for.inc.i.for.inc.i_crit_edge, label %for.inc.i.for.cond25.preheader.i_crit_edge, !llvm.loop !311

for.inc.i.for.cond25.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond25.preheader.i

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc56.i:                                      ; preds = %for.inc56.i.for.inc56.i_crit_edge, %for.inc56.peel.i.for.inc56.i_crit_edge
  %i.187.i = phi i32 [ %inc57.i, %for.inc56.i.for.inc56.i_crit_edge ], [ 1, %for.inc56.peel.i.for.inc56.i_crit_edge ]
  %arrayidx28.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %i.187.i
  %139 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !309
  tail call void @arm_heavy_mb() #15
  %dma33.i = getelementptr inbounds %struct.bufdesc_prop, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %dma33.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dma33.i, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #15
  %144 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.187.i)
  %cmp35.i = icmp eq i32 %i.187.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.187.i)
  %cmp38.i = icmp eq i32 %i.187.i, 2
  %cond39.i = select i1 %cmp38.i, i32 368, i32 388
  %cond41.i = select i1 %cmp35.i, i32 356, i32 %cond39.i
  %add.ptr42.i = getelementptr i8, ptr %145, i32 %cond41.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %143) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !313
  tail call void @arm_heavy_mb() #15
  %146 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr.i, align 8
  %cond53.i = select i1 %cmp38.i, i32 476, i32 472
  %add.ptr54.i = getelementptr i8, ptr %147, i32 %cond53.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 131328) #15, !srcloc !278
  %inc57.i = add nuw i32 %i.187.i, 1
  %148 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_tx_queues.i, align 8
  %cmp26.i = icmp ult i32 %inc57.i, %149
  br i1 %cmp26.i, label %for.inc56.i.for.inc56.i_crit_edge, label %for.inc56.i.fec_enet_enable_ring.exit_crit_edge, !llvm.loop !314

for.inc56.i.fec_enet_enable_ring.exit_crit_edge:  ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_enable_ring.exit

for.inc56.i.for.inc56.i_crit_edge:                ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc56.i

fec_enet_enable_ring.exit:                        ; preds = %for.inc56.i.fec_enet_enable_ring.exit_crit_edge, %for.inc56.peel.i.fec_enet_enable_ring.exit_crit_edge
  %150 = phi i32 [ %124, %for.inc56.peel.i.fec_enet_enable_ring.exit_crit_edge ], [ %149, %for.inc56.i.fec_enet_enable_ring.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp26.not.i = icmp eq i32 %150, 0
  br i1 %cmp26.not.i, label %fec_enet_enable_ring.exit.fec_enet_reset_skb.exit_crit_edge, label %fec_enet_enable_ring.exit.for.body.i376_crit_edge

fec_enet_enable_ring.exit.for.body.i376_crit_edge: ; preds = %fec_enet_enable_ring.exit
  br label %for.body.i376

fec_enet_enable_ring.exit.fec_enet_reset_skb.exit_crit_edge: ; preds = %fec_enet_enable_ring.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_reset_skb.exit

for.body.i376:                                    ; preds = %for.inc10.i.for.body.i376_crit_edge, %fec_enet_enable_ring.exit.for.body.i376_crit_edge
  %i.027.i = phi i32 [ %inc11.i, %for.inc10.i.for.body.i376_crit_edge ], [ 0, %fec_enet_enable_ring.exit.for.body.i376_crit_edge ]
  %arrayidx.i374 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %i.027.i
  %151 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i374, align 4
  %ring_size.i375 = getelementptr inbounds %struct.bufdesc_prop, ptr %152, i32 0, i32 6
  %153 = ptrtoint ptr %ring_size.i375 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %ring_size.i375, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %cmp224.not.i = icmp eq i16 %154, 0
  br i1 %cmp224.not.i, label %for.body.i376.for.inc10.i_crit_edge, label %for.body.i376.for.body4.i_crit_edge

for.body.i376.for.body4.i_crit_edge:              ; preds = %for.body.i376
  br label %for.body4.i

for.body.i376.for.inc10.i_crit_edge:              ; preds = %for.body.i376
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc10.i

for.body4.i:                                      ; preds = %for.inc.i381.for.body4.i_crit_edge, %for.body.i376.for.body4.i_crit_edge
  %j.025.i = phi i32 [ %inc.i378, %for.inc.i381.for.body4.i_crit_edge ], [ 0, %for.body.i376.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %152, i32 0, i32 2, i32 %j.025.i
  %155 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx5.i, align 4
  %tobool.not.i377 = icmp eq ptr %156, null
  br i1 %tobool.not.i377, label %for.body4.i.for.inc.i381_crit_edge, label %if.then.i

for.body4.i.for.inc.i381_crit_edge:               ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i381

if.then.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %156, i32 noundef 1) #15
  %157 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %arrayidx5.i, align 4
  br label %for.inc.i381

for.inc.i381:                                     ; preds = %if.then.i, %for.body4.i.for.inc.i381_crit_edge
  %inc.i378 = add nuw nsw i32 %j.025.i, 1
  %158 = ptrtoint ptr %ring_size.i375 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %ring_size.i375, align 4
  %conv.i379 = zext i16 %159 to i32
  %cmp2.i380 = icmp ult i32 %inc.i378, %conv.i379
  br i1 %cmp2.i380, label %for.inc.i381.for.body4.i_crit_edge, label %for.inc.i381.for.inc10.i_crit_edge

for.inc.i381.for.inc10.i_crit_edge:               ; preds = %for.inc.i381
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc10.i

for.inc.i381.for.body4.i_crit_edge:               ; preds = %for.inc.i381
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4.i

for.inc10.i:                                      ; preds = %for.inc.i381.for.inc10.i_crit_edge, %for.body.i376.for.inc10.i_crit_edge
  %inc11.i = add nuw i32 %i.027.i, 1
  %160 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %num_tx_queues.i, align 8
  %cmp.i382 = icmp ult i32 %inc11.i, %161
  br i1 %cmp.i382, label %for.inc10.i.for.body.i376_crit_edge, label %for.inc10.i.fec_enet_reset_skb.exit_crit_edge

for.inc10.i.fec_enet_reset_skb.exit_crit_edge:    ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_reset_skb.exit

for.inc10.i.for.body.i376_crit_edge:              ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i376

fec_enet_reset_skb.exit:                          ; preds = %for.inc10.i.fec_enet_reset_skb.exit_crit_edge, %fec_enet_enable_ring.exit.fec_enet_reset_skb.exit_crit_edge, %for.cond25.preheader.i.fec_enet_reset_skb.exit_crit_edge
  %full_duplex = getelementptr i8, ptr %ndev, i32 2504
  %162 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %full_duplex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %163)
  %cmp = icmp eq i32 %163, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %164 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr31 = getelementptr i8, ptr %165, i32 196
  br i1 %cmp, label %do.body27, label %if.else32

do.body27:                                        ; preds = %fec_enet_reset_skb.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 67108864) #15, !srcloc !278
  br label %do.body39

if.else32:                                        ; preds = %fec_enet_reset_skb.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #15, !srcloc !278
  br label %do.body39

do.body39:                                        ; preds = %if.else32, %do.body27
  %rcntl.0 = phi i32 [ 130023428, %do.body27 ], [ 130023430, %if.else32 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @arm_heavy_mb() #15
  %phy_speed = getelementptr i8, ptr %ndev, i32 2484
  %166 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %phy_speed, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %169 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr43 = getelementptr i8, ptr %170, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %168) #15, !srcloc !278
  %171 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %quirks, align 4
  %and45 = and i32 %172, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body39.if.end70_crit_edge, label %if.then47

do.body39.if.end70_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then47:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #17
  %173 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr49 = getelementptr i8, ptr %174, i32 452
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !316
  %csum_flags = getelementptr i8, ptr %ndev, i32 2768
  %176 = ptrtoint ptr %csum_flags to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %csum_flags, align 8
  %and53 = and i32 %177, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %178 = and i32 %175, 2046820351
  %179 = or i32 %178, -2147483648
  %180 = tail call i32 @llvm.bswap.i32(i32 %179)
  %masksel = select i1 %tobool54.not, i32 0, i32 6
  %val.0 = or i32 %masksel, %180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !317
  tail call void @arm_heavy_mb() #15
  %181 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %182 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr64 = getelementptr i8, ptr %183, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %181) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %184 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr69 = getelementptr i8, ptr %185, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -1073283072) #15, !srcloc !278
  br label %if.end70

if.end70:                                         ; preds = %if.then47, %do.body39.if.end70_crit_edge
  %186 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %quirks, align 4
  %and72 = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else114, label %if.then74

if.then74:                                        ; preds = %if.end70
  %or75 = or i32 %rcntl.0, 1073741856
  %phy_interface = getelementptr i8, ptr %ndev, i32 2488
  %188 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %phy_interface, align 8
  %190 = zext i32 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %189, label %if.then74.if.end96_crit_edge [
    i32 9, label %if.then74.if.then86_crit_edge
    i32 10, label %if.then74.if.then86_crit_edge393
    i32 11, label %if.then74.if.then86_crit_edge394
    i32 12, label %if.then74.if.then86_crit_edge395
    i32 7, label %if.then91
  ]

if.then74.if.then86_crit_edge395:                 ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then74.if.then86_crit_edge394:                 ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then74.if.then86_crit_edge393:                 ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then74.if.then86_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then86

if.then74.if.end96_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then86:                                        ; preds = %if.then74.if.then86_crit_edge, %if.then74.if.then86_crit_edge393, %if.then74.if.then86_crit_edge394, %if.then74.if.then86_crit_edge395
  %or87 = or i32 %rcntl.0, 1073741920
  br label %if.end96

if.then91:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  %or92 = or i32 %rcntl.0, 1073742112
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.then86, %if.then74.if.end96_crit_edge
  %rcntl.1 = phi i32 [ %or87, %if.then86 ], [ %or92, %if.then91 ], [ %or75, %if.then74.if.end96_crit_edge ]
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %191 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %phydev, align 16
  %tobool97.not = icmp eq ptr %192, null
  br i1 %tobool97.not, label %if.end96.if.end155_crit_edge, label %if.then98

if.end96.if.end155_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

if.then98:                                        ; preds = %if.end96
  %speed = getelementptr inbounds %struct.phy_device, ptr %192, i32 0, i32 8
  %193 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %speed, align 8
  %195 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %194, label %if.else109 [
    i32 1000, label %if.then98.if.end155_crit_edge
    i32 100, label %if.then107
  ]

if.then98.if.end155_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

if.then107:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %and108 = and i32 %rcntl.1, -513
  br label %if.end155

if.else109:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %or110 = or i32 %rcntl.1, 512
  br label %if.end155

if.else114:                                       ; preds = %if.end70
  %and116 = and i32 %187, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else114.if.end155_crit_edge, label %if.then118

if.else114.if.end155_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

if.then118:                                       ; preds = %if.else114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !319
  tail call void @arm_heavy_mb() #15
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr123 = getelementptr i8, ptr %197, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #15, !srcloc !278
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr127391 = getelementptr i8, ptr %199, i32 776
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127391) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !320
  %201 = and i32 %200, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool132.not392 = icmp eq i32 %201, 0
  br i1 %tobool132.not392, label %if.then118.while.end_crit_edge, label %if.then118.while.body_crit_edge

if.then118.while.body_crit_edge:                  ; preds = %if.then118
  br label %while.body

if.then118.while.end_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then118.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %202(i32 noundef 214748) #15
  %203 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr127 = getelementptr i8, ptr %204, i32 776
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !320
  %206 = and i32 %205, 67108864
  %tobool132.not = icmp eq i32 %206, 0
  br i1 %tobool132.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then118.while.end_crit_edge
  %phy_interface133 = getelementptr i8, ptr %ndev, i32 2488
  %207 = ptrtoint ptr %phy_interface133 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %phy_interface133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %208)
  %cmp134 = icmp eq i32 %208, 7
  %cond = zext i1 %cmp134 to i32
  %phydev135 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %209 = ptrtoint ptr %phydev135 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %phydev135, align 16
  %tobool136.not = icmp eq ptr %210, null
  br i1 %tobool136.not, label %while.end.do.body144_crit_edge, label %land.lhs.true137

while.end.do.body144_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body144

land.lhs.true137:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %speed139 = getelementptr inbounds %struct.phy_device, ptr %210, i32 0, i32 8
  %211 = ptrtoint ptr %speed139 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %speed139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %212)
  %cmp140 = icmp eq i32 %212, 10
  %or142 = or i32 %cond, 64
  %spec.select = select i1 %cmp140, i32 %or142, i32 %cond
  br label %do.body144

do.body144:                                       ; preds = %land.lhs.true137, %while.end.do.body144_crit_edge
  %cfgr.0 = phi i32 [ %cond, %while.end.do.body144_crit_edge ], [ %spec.select, %land.lhs.true137 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !321
  tail call void @arm_heavy_mb() #15
  %213 = tail call i32 @llvm.bswap.i32(i32 %cfgr.0)
  %214 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr148 = getelementptr i8, ptr %215, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %213) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !322
  tail call void @arm_heavy_mb() #15
  %216 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr153 = getelementptr i8, ptr %217, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 33554432) #15, !srcloc !278
  br label %if.end155

if.end155:                                        ; preds = %do.body144, %if.else114.if.end155_crit_edge, %if.else109, %if.then107, %if.then98.if.end155_crit_edge, %if.end96.if.end155_crit_edge
  %ecntl.0 = phi i32 [ 2, %if.then107 ], [ 2, %if.else109 ], [ 2, %if.end96.if.end155_crit_edge ], [ 2, %do.body144 ], [ 2, %if.else114.if.end155_crit_edge ], [ 34, %if.then98.if.end155_crit_edge ]
  %rcntl.2 = phi i32 [ %and108, %if.then107 ], [ %or110, %if.else109 ], [ %rcntl.1, %if.end96.if.end155_crit_edge ], [ %rcntl.0, %do.body144 ], [ %rcntl.0, %if.else114.if.end155_crit_edge ], [ %rcntl.1, %if.then98.if.end155_crit_edge ]
  %pause_flag = getelementptr i8, ptr %ndev, i32 2528
  %218 = ptrtoint ptr %pause_flag to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %pause_flag, align 8
  %and156 = and i32 %219, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %lor.lhs.false158, label %if.end155.if.then168_crit_edge

if.end155.if.then168_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then168

lor.lhs.false158:                                 ; preds = %if.end155
  %and160 = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %lor.lhs.false158.if.else195_crit_edge, label %land.lhs.true162

lor.lhs.false158.if.else195_crit_edge:            ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else195

land.lhs.true162:                                 ; preds = %lor.lhs.false158
  %phydev163 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %220 = ptrtoint ptr %phydev163 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %phydev163, align 16
  %tobool164.not = icmp eq ptr %221, null
  br i1 %tobool164.not, label %land.lhs.true162.if.else195_crit_edge, label %land.lhs.true165

land.lhs.true162.if.else195_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else195

land.lhs.true165:                                 ; preds = %land.lhs.true162
  %pause = getelementptr inbounds %struct.phy_device, ptr %221, i32 0, i32 11
  %222 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool167.not = icmp eq i32 %223, 0
  br i1 %tobool167.not, label %land.lhs.true165.if.else195_crit_edge, label %land.lhs.true165.if.then168_crit_edge

land.lhs.true165.if.then168_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then168

land.lhs.true165.if.else195_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else195

if.then168:                                       ; preds = %land.lhs.true165.if.then168_crit_edge, %if.end155.if.then168_crit_edge
  %or169 = or i32 %rcntl.2, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !323
  tail call void @arm_heavy_mb() #15
  %224 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr174 = getelementptr i8, ptr %225, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 -2080374784) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !324
  tail call void @arm_heavy_mb() #15
  %226 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr179 = getelementptr i8, ptr %227, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 268435456) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !325
  tail call void @arm_heavy_mb() #15
  %228 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr184 = getelementptr i8, ptr %229, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 134217728) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !326
  tail call void @arm_heavy_mb() #15
  %230 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr189 = getelementptr i8, ptr %231, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 134217728) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !327
  tail call void @arm_heavy_mb() #15
  %232 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr194 = getelementptr i8, ptr %233, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 -251723776) #15, !srcloc !278
  br label %do.body198

if.else195:                                       ; preds = %land.lhs.true165.if.else195_crit_edge, %land.lhs.true162.if.else195_crit_edge, %lor.lhs.false158.if.else195_crit_edge
  %and196 = and i32 %rcntl.2, -33
  br label %do.body198

do.body198:                                       ; preds = %if.else195, %if.then168
  %rcntl.3 = phi i32 [ %or169, %if.then168 ], [ %and196, %if.else195 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  tail call void @arm_heavy_mb() #15
  %234 = tail call i32 @llvm.bswap.i32(i32 %rcntl.3)
  %235 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr202 = getelementptr i8, ptr %236, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %234) #15, !srcloc !278
  tail call void @set_multicast_list(ptr noundef %ndev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %237 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr207 = getelementptr i8, ptr %238, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 0) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !330
  tail call void @arm_heavy_mb() #15
  %239 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr212 = getelementptr i8, ptr %240, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 0) #15, !srcloc !278
  %241 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %quirks, align 4
  %and214 = and i32 %242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %do.body198.if.end223_crit_edge, label %if.then216

do.body198.if.end223_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end223

if.then216:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #17
  %or217 = or i32 %ecntl.0, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !331
  tail call void @arm_heavy_mb() #15
  %243 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr222 = getelementptr i8, ptr %244, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 65536) #15, !srcloc !278
  br label %if.end223

if.end223:                                        ; preds = %if.then216, %do.body198.if.end223_crit_edge
  %ecntl.1 = phi i32 [ %or217, %if.then216 ], [ %ecntl.0, %do.body198.if.end223_crit_edge ]
  %bufdesc_ex = getelementptr i8, ptr %ndev, i32 2524
  %245 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %bufdesc_ex, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool224.not = icmp eq i8 %246, 0
  %or226 = or i32 %ecntl.1, 16
  %spec.select362 = select i1 %tobool224.not, i32 %ecntl.1, i32 %or226
  %247 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %quirks, align 4
  %and229 = and i32 %248, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.end223.do.body244_crit_edge, label %land.lhs.true239

if.end223.do.body244_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body244

land.lhs.true239:                                 ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #17
  %rgmii_txc_dly = getelementptr i8, ptr %ndev, i32 2496
  %249 = ptrtoint ptr %rgmii_txc_dly to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %rgmii_txc_dly, align 8, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool232.not = icmp eq i8 %250, 0
  %or234 = or i32 %spec.select362, 65536
  %spec.select363 = select i1 %tobool232.not, i32 %spec.select362, i32 %or234
  %rgmii_rxc_dly = getelementptr i8, ptr %ndev, i32 2497
  %251 = ptrtoint ptr %rgmii_rxc_dly to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %rgmii_rxc_dly, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool240.not = icmp eq i8 %252, 0
  %or242 = or i32 %spec.select363, 131072
  %spec.select364 = select i1 %tobool240.not, i32 %spec.select363, i32 %or242
  br label %do.body244

do.body244:                                       ; preds = %land.lhs.true239, %if.end223.do.body244_crit_edge
  %ecntl.4 = phi i32 [ %spec.select364, %land.lhs.true239 ], [ %spec.select362, %if.end223.do.body244_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !332
  tail call void @arm_heavy_mb() #15
  %253 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr248 = getelementptr i8, ptr %254, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248, i32 0) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !333
  tail call void @arm_heavy_mb() #15
  %255 = tail call i32 @llvm.bswap.i32(i32 %ecntl.4)
  %256 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr253 = getelementptr i8, ptr %257, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 %255) #15, !srcloc !278
  %258 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp4.not.i = icmp eq i32 %259, 0
  br i1 %cmp4.not.i, label %do.body244.fec_enet_active_rxring.exit_crit_edge, label %do.body244.do.body.i_crit_edge

do.body244.do.body.i_crit_edge:                   ; preds = %do.body244
  br label %do.body.i

do.body244.fec_enet_active_rxring.exit_crit_edge: ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_active_rxring.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body244.do.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i386, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body244.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @arm_heavy_mb() #15
  %arrayidx.i385 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.05.i
  %260 = ptrtoint ptr %arrayidx.i385 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i385, align 4
  %reg_desc_active.i = getelementptr inbounds %struct.bufdesc_prop, ptr %261, i32 0, i32 4
  %262 = ptrtoint ptr %reg_desc_active.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %reg_desc_active.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 0) #15, !srcloc !278
  %inc.i386 = add nuw i32 %i.05.i, 1
  %264 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i387 = icmp ult i32 %inc.i386, %265
  br i1 %cmp.i387, label %do.body.i.do.body.i_crit_edge, label %do.body.i.fec_enet_active_rxring.exit_crit_edge

do.body.i.fec_enet_active_rxring.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_active_rxring.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

fec_enet_active_rxring.exit:                      ; preds = %do.body.i.fec_enet_active_rxring.exit_crit_edge, %do.body244.fec_enet_active_rxring.exit_crit_edge
  %266 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %bufdesc_ex, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool255.not = icmp eq i8 %267, 0
  br i1 %tobool255.not, label %fec_enet_active_rxring.exit.if.end257_crit_edge, label %if.then256

fec_enet_active_rxring.exit.if.end257_crit_edge:  ; preds = %fec_enet_active_rxring.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end257

if.then256:                                       ; preds = %fec_enet_active_rxring.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @fec_ptp_start_cyclecounter(ptr noundef %ndev) #15
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %fec_enet_active_rxring.exit.if.end257_crit_edge
  %link258 = getelementptr i8, ptr %ndev, i32 2500
  %268 = ptrtoint ptr %link258 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %link258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool259.not = icmp eq i32 %269, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %270 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr271 = getelementptr i8, ptr %271, i32 8
  br i1 %tobool259.not, label %do.body267, label %do.body261

do.body261:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr271, i32 -1442840566) #15, !srcloc !278
  br label %if.end272

do.body267:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr271, i32 0) #15, !srcloc !278
  br label %if.end272

if.end272:                                        ; preds = %do.body267, %do.body261
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %ec.i) #15
  %272 = call ptr @memset(ptr %ec.i, i32 255, i32 92)
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec.i, i32 0, i32 1
  %273 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 1000, ptr %rx_coalesce_usecs.i, align 4
  %rx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec.i, i32 0, i32 2
  %274 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 200, ptr %rx_max_coalesced_frames.i, align 4
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec.i, i32 0, i32 5
  %275 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 1000, ptr %tx_coalesce_usecs.i, align 4
  %tx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec.i, i32 0, i32 6
  %276 = ptrtoint ptr %tx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 200, ptr %tx_max_coalesced_frames.i, align 4
  %call.i = call i32 @fec_enet_set_coalesce(ptr noundef %ndev, ptr noundef nonnull %ec.i, ptr noundef null, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %ec.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fec_enet_free_queue(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %num_tx_queues = getelementptr i8, ptr %ndev, i32 2432
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp46.not = icmp eq i32 %1, 0
  br i1 %cmp46.not, label %entry.for.cond7.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %ndev, i32 2436
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp848.not = icmp eq i32 %3, 0
  br i1 %cmp848.not, label %for.cond7.preheader.for.cond15.preheader_crit_edge, label %for.cond7.preheader.for.body10_crit_edge

for.cond7.preheader.for.body10_crit_edge:         ; preds = %for.cond7.preheader
  br label %for.body10

for.cond7.preheader.for.cond15.preheader_crit_edge: ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond15.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %i.047
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tso_hdrs = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %tso_hdrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tso_hdrs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %ring_size = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %ring_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ring_size, align 4
  %conv = zext i16 %11 to i32
  %mul = shl nuw nsw i32 %conv, 8
  %tso_hdrs_dma = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %tso_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tso_hdrs_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.047, 1
  %14 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond7.preheader_crit_edge

for.inc.for.cond7.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond7.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond15.preheader:                             ; preds = %for.body10.for.cond15.preheader_crit_edge, %for.cond7.preheader.for.cond15.preheader_crit_edge
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1750.not = icmp eq i32 %17, 0
  br i1 %cmp1750.not, label %for.cond15.preheader.for.end24_crit_edge, label %for.cond15.preheader.for.body19_crit_edge

for.cond15.preheader.for.body19_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body19

for.cond15.preheader.for.end24_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end24

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond7.preheader.for.body10_crit_edge
  %i.149 = phi i32 [ %inc13, %for.body10.for.body10_crit_edge ], [ 0, %for.cond7.preheader.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.149
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11, align 4
  tail call void @kfree(ptr noundef %19) #15
  %inc13 = add nuw i32 %i.149, 1
  %20 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rx_queues, align 4
  %cmp8 = icmp ult i32 %inc13, %21
  br i1 %cmp8, label %for.body10.for.body10_crit_edge, label %for.body10.for.cond15.preheader_crit_edge

for.body10.for.cond15.preheader_crit_edge:        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond15.preheader

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body10

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond15.preheader.for.body19_crit_edge
  %i.251 = phi i32 [ %inc23, %for.body19.for.body19_crit_edge ], [ 0, %for.cond15.preheader.for.body19_crit_edge ]
  %arrayidx21 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %i.251
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  tail call void @kfree(ptr noundef %23) #15
  %inc23 = add nuw i32 %i.251, 1
  %24 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues, align 8
  %cmp17 = icmp ult i32 %inc23, %25
  br i1 %cmp17, label %for.body19.for.body19_crit_edge, label %for.body19.for.end24_crit_edge

for.body19.for.end24_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end24

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body19

for.end24:                                        ; preds = %for.body19.for.end24_crit_edge, %for.cond15.preheader.for.end24_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_open(ptr noundef %ndev) #2 align 64 {
entry:
  %mdio_bus_id.i = alloca [61 x i8], align 1
  %phy_name.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev3) #15
  %call5 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %ndev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.clk_enable_crit_edge

if.end.clk_enable_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %clk_enable

if.end7:                                          ; preds = %if.end
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %5 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phydev, align 16
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end7.if.else_crit_edge, label %land.lhs.true

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end7
  %drv = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv, align 8
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end7.if.else_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.else, %land.lhs.true.if.end12_crit_edge
  %reset_again.0.off0 = phi i1 [ true, %if.else ], [ false, %land.lhs.true.if.end12_crit_edge ]
  %num_rx_queues.i = getelementptr i8, ptr %ndev, i32 2436
  %9 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp55.not.i = icmp eq i32 %10, 0
  br i1 %cmp55.not.i, label %if.end12.for.cond2.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end12.for.cond2.preheader.i_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end12
  %bufdesc_ex.i.i = getelementptr i8, ptr %ndev, i32 2524
  br label %for.body.i

for.cond2.preheader.i:                            ; preds = %for.inc.i.for.cond2.preheader.i_crit_edge, %if.end12.for.cond2.preheader.i_crit_edge
  %num_tx_queues.i = getelementptr i8, ptr %ndev, i32 2432
  %11 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp357.not.i = icmp eq i32 %12, 0
  br i1 %cmp357.not.i, label %for.cond2.preheader.i.if.end16_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.if.end16_crit_edge:         ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %bufdesc_ex.i25.i = getelementptr i8, ptr %ndev, i32 2524
  br label %for.body4.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.056.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %ring_size.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ring_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp55.not.i.i = icmp eq i16 %18, 0
  br i1 %cmp55.not.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %last.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %14, i32 0, i32 2
  %dsize.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %14, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %fec_enet_get_nextdesc.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %bdp.057.i.i = phi ptr [ %16, %for.body.lr.ph.i.i ], [ %cond.i.i.i, %fec_enet_get_nextdesc.exit.i.i.for.body.i.i_crit_edge ]
  %i.056.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %fec_enet_get_nextdesc.exit.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 2048, i32 noundef 2592) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.fec_enet_alloc_buffers.exit_crit_edge, label %if.end.i.i

for.body.i.i.fec_enet_alloc_buffers.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_alloc_buffers.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %call4.i.i = tail call fastcc i32 @fec_enet_new_rxbdp(ptr noundef %ndev, ptr noundef %bdp.057.i.i, ptr noundef nonnull %call.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #15
  br label %fec_enet_alloc_buffers.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %arrayidx8.i.i = getelementptr %struct.fec_enet_priv_rx_q, ptr %14, i32 0, i32 1, i32 %i.056.i.i
  %19 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i, ptr %arrayidx8.i.i, align 4
  %cbd_sc.i.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.057.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %cbd_sc.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 128, ptr %cbd_sc.i.i, align 2
  %21 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool9.not.i.i, label %if.end7.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end7.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %cbd_esc.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.057.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %cbd_esc.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32768, ptr %cbd_esc.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end7.i.i.if.end11.i.i_crit_edge
  %24 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %last.i.i.i, align 4
  %cmp.not.i.i.i = icmp ugt ptr %25, %bdp.057.i.i
  br i1 %cmp.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  br label %fec_enet_get_nextdesc.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %dsize.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dsize.i.i.i, align 2
  %conv.i.i.i = zext i8 %29 to i32
  %add.ptr.i41.i.i = getelementptr i8, ptr %bdp.057.i.i, i32 %conv.i.i.i
  br label %fec_enet_get_nextdesc.exit.i.i

fec_enet_get_nextdesc.exit.i.i:                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %27, %cond.true.i.i.i ], [ %add.ptr.i41.i.i, %cond.false.i.i.i ]
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %30 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ring_size.i.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %fec_enet_get_nextdesc.exit.i.i.for.body.i.i_crit_edge, label %fec_enet_get_nextdesc.exit.i.i.for.end.i.i_crit_edge

fec_enet_get_nextdesc.exit.i.i.for.end.i.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

fec_enet_get_nextdesc.exit.i.i.for.body.i.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %fec_enet_get_nextdesc.exit.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %bdp.0.lcssa.i.i = phi ptr [ %16, %for.body.i.for.end.i.i_crit_edge ], [ %cond.i.i.i, %fec_enet_get_nextdesc.exit.i.i.for.end.i.i_crit_edge ]
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %cmp.not.i43.i.i = icmp ult ptr %33, %bdp.0.lcssa.i.i
  br i1 %cmp.not.i43.i.i, label %cond.false.i49.i.i, label %cond.true.i45.i.i

cond.true.i45.i.i:                                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %last.i44.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %14, i32 0, i32 2
  %34 = ptrtoint ptr %last.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %last.i44.i.i, align 4
  br label %for.inc.i

cond.false.i49.i.i:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dsize.i46.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %14, i32 0, i32 7
  %36 = ptrtoint ptr %dsize.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dsize.i46.i.i, align 2
  %conv.i47.i.i = zext i8 %37 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i47.i.i
  %add.ptr.i48.i.i = getelementptr i8, ptr %bdp.0.lcssa.i.i, i32 %idx.neg.i.i.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false.i49.i.i, %cond.true.i45.i.i
  %cond.i50.i.i = phi ptr [ %35, %cond.true.i45.i.i ], [ %add.ptr.i48.i.i, %cond.false.i49.i.i ]
  %cbd_sc16.i.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i50.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %cbd_sc16.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cbd_sc16.i.i, align 2
  %40 = or i16 %39, 32
  store i16 %40, ptr %cbd_sc16.i.i, align 2
  %inc.i = add nuw i32 %i.056.i, 1
  %41 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i67 = icmp ult i32 %inc.i, %42
  br i1 %cmp.i67, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond2.preheader.i_crit_edge

for.inc.i.for.cond2.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body4.i:                                      ; preds = %for.inc9.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.158.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc10.i, %for.inc9.i.for.body4.i_crit_edge ]
  %arrayidx.i22.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %i.158.i
  %43 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i22.i, align 4
  %base.i23.i = getelementptr inbounds %struct.bufdesc_prop, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %base.i23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i23.i, align 4
  %ring_size.i24.i = getelementptr inbounds %struct.bufdesc_prop, ptr %44, i32 0, i32 6
  %47 = ptrtoint ptr %ring_size.i24.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ring_size.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp47.not.i.i = icmp eq i16 %48, 0
  br i1 %cmp47.not.i.i, label %for.body4.i.for.end.i44.i_crit_edge, label %for.body.lr.ph.i28.i

for.body4.i.for.end.i44.i_crit_edge:              ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i44.i

for.body.lr.ph.i28.i:                             ; preds = %for.body4.i
  %last.i.i26.i = getelementptr inbounds %struct.bufdesc_prop, ptr %44, i32 0, i32 2
  %dsize.i.i27.i = getelementptr inbounds %struct.bufdesc_prop, ptr %44, i32 0, i32 7
  br label %for.body.i30.i

for.body.i30.i:                                   ; preds = %fec_enet_get_nextdesc.exit.i42.i.for.body.i30.i_crit_edge, %for.body.lr.ph.i28.i
  %bdp.049.i.i = phi ptr [ %46, %for.body.lr.ph.i28.i ], [ %cond.i.i38.i, %fec_enet_get_nextdesc.exit.i42.i.for.body.i30.i_crit_edge ]
  %i.048.i.i = phi i32 [ 0, %for.body.lr.ph.i28.i ], [ %inc.i39.i, %fec_enet_get_nextdesc.exit.i42.i.for.body.i30.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 2048) #19
  %arrayidx4.i.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %44, i32 0, i32 1, i32 %i.048.i.i
  %50 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i.i, ptr %arrayidx4.i.i, align 4
  %tobool.not.i29.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i29.i, label %for.body.i30.i.fec_enet_alloc_buffers.exit_crit_edge, label %if.end.i32.i

for.body.i30.i.fec_enet_alloc_buffers.exit_crit_edge: ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_alloc_buffers.exit

if.end.i32.i:                                     ; preds = %for.body.i30.i
  %cbd_sc.i31.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.049.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %cbd_sc.i31.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %cbd_sc.i31.i, align 2
  %cbd_bufaddr.i.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.049.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %cbd_bufaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %cbd_bufaddr.i.i, align 4
  %53 = ptrtoint ptr %bufdesc_ex.i25.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bufdesc_ex.i25.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool7.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool7.not.i.i, label %if.end.i32.i.if.end9.i.i_crit_edge, label %if.then8.i.i

if.end.i32.i.if.end9.i.i_crit_edge:               ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  %cbd_esc.i33.i = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.049.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %cbd_esc.i33.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 64, ptr %cbd_esc.i33.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then8.i.i, %if.end.i32.i.if.end9.i.i_crit_edge
  %56 = ptrtoint ptr %last.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %last.i.i26.i, align 4
  %cmp.not.i.i34.i = icmp ugt ptr %57, %bdp.049.i.i
  br i1 %cmp.not.i.i34.i, label %cond.false.i.i37.i, label %cond.true.i.i35.i

cond.true.i.i35.i:                                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %base.i23.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i23.i, align 4
  br label %fec_enet_get_nextdesc.exit.i42.i

cond.false.i.i37.i:                               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %dsize.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dsize.i.i27.i, align 2
  %conv.i.i36.i = zext i8 %61 to i32
  %add.ptr.i35.i.i = getelementptr i8, ptr %bdp.049.i.i, i32 %conv.i.i36.i
  br label %fec_enet_get_nextdesc.exit.i42.i

fec_enet_get_nextdesc.exit.i42.i:                 ; preds = %cond.false.i.i37.i, %cond.true.i.i35.i
  %cond.i.i38.i = phi ptr [ %59, %cond.true.i.i35.i ], [ %add.ptr.i35.i.i, %cond.false.i.i37.i ]
  %inc.i39.i = add nuw nsw i32 %i.048.i.i, 1
  %62 = ptrtoint ptr %ring_size.i24.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ring_size.i24.i, align 4
  %conv.i40.i = zext i16 %63 to i32
  %cmp.i41.i = icmp ult i32 %inc.i39.i, %conv.i40.i
  br i1 %cmp.i41.i, label %fec_enet_get_nextdesc.exit.i42.i.for.body.i30.i_crit_edge, label %fec_enet_get_nextdesc.exit.i42.i.for.end.i44.i_crit_edge

fec_enet_get_nextdesc.exit.i42.i.for.end.i44.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i44.i

fec_enet_get_nextdesc.exit.i42.i.for.body.i30.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i30.i

for.end.i44.i:                                    ; preds = %fec_enet_get_nextdesc.exit.i42.i.for.end.i44.i_crit_edge, %for.body4.i.for.end.i44.i_crit_edge
  %bdp.0.lcssa.i43.i = phi ptr [ %46, %for.body4.i.for.end.i44.i_crit_edge ], [ %cond.i.i38.i, %fec_enet_get_nextdesc.exit.i42.i.for.end.i44.i_crit_edge ]
  %64 = ptrtoint ptr %base.i23.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i23.i, align 4
  %cmp.not.i37.i.i = icmp ult ptr %65, %bdp.0.lcssa.i43.i
  br i1 %cmp.not.i37.i.i, label %cond.false.i43.i.i, label %cond.true.i39.i.i

cond.true.i39.i.i:                                ; preds = %for.end.i44.i
  call void @__sanitizer_cov_trace_pc() #17
  %last.i38.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %44, i32 0, i32 2
  %66 = ptrtoint ptr %last.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %last.i38.i.i, align 4
  br label %for.inc9.i

cond.false.i43.i.i:                               ; preds = %for.end.i44.i
  call void @__sanitizer_cov_trace_pc() #17
  %dsize.i40.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %44, i32 0, i32 7
  %68 = ptrtoint ptr %dsize.i40.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dsize.i40.i.i, align 2
  %conv.i41.i.i = zext i8 %69 to i32
  %idx.neg.i.i45.i = sub nsw i32 0, %conv.i41.i.i
  %add.ptr.i42.i.i = getelementptr i8, ptr %bdp.0.lcssa.i43.i, i32 %idx.neg.i.i45.i
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %cond.false.i43.i.i, %cond.true.i39.i.i
  %cond.i44.i.i = phi ptr [ %67, %cond.true.i39.i.i ], [ %add.ptr.i42.i.i, %cond.false.i43.i.i ]
  %cbd_sc14.i.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i44.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %cbd_sc14.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cbd_sc14.i.i, align 2
  %72 = or i16 %71, 32
  store i16 %72, ptr %cbd_sc14.i.i, align 2
  %inc10.i = add nuw i32 %i.158.i, 1
  %73 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_tx_queues.i, align 8
  %cmp3.i = icmp ult i32 %inc10.i, %74
  br i1 %cmp3.i, label %for.inc9.i.for.body4.i_crit_edge, label %for.inc9.i.if.end16_crit_edge

for.inc9.i.if.end16_crit_edge:                    ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

for.inc9.i.for.body4.i_crit_edge:                 ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4.i

fec_enet_alloc_buffers.exit:                      ; preds = %for.body.i30.i.fec_enet_alloc_buffers.exit_crit_edge, %if.then6.i.i, %for.body.i.i.fec_enet_alloc_buffers.exit_crit_edge
  tail call fastcc void @fec_enet_free_buffers(ptr noundef %ndev) #15
  br label %err_enet_alloc

if.end16:                                         ; preds = %for.inc9.i.if.end16_crit_edge, %for.cond2.preheader.i.if.end16_crit_edge
  tail call fastcc void @fec_restart(ptr noundef %ndev)
  br i1 %reset_again.0.off0, label %if.then18, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  %75 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phydev, align 16
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i69

if.then.i69:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @phy_reset_after_clk_enable(ptr noundef nonnull %76) #15
  br label %if.end19

if.else.i:                                        ; preds = %if.then18
  %phy_node.i = getelementptr i8, ptr %ndev, i32 2492
  %77 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy_node.i, align 4
  %tobool2.not.i = icmp eq ptr %78, null
  br i1 %tobool2.not.i, label %if.else.i.if.end19_crit_edge, label %if.then3.i

if.else.i.if.end19_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call ptr @of_phy_find_device(ptr noundef nonnull %78) #15
  %call6.i = tail call i32 @phy_reset_after_clk_enable(ptr noundef %call5.i) #15
  tail call void @put_device(ptr noundef %call5.i) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then3.i, %if.else.i.if.end19_crit_edge, %if.then.i69, %if.end16.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %mdio_bus_id.i) #15
  %79 = call ptr @memset(ptr %mdio_bus_id.i, i32 255, i32 61)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %phy_name.i) #15
  %80 = call ptr @memset(ptr %phy_name.i, i32 255, i32 64)
  %phy_node.i70 = getelementptr i8, ptr %ndev, i32 2492
  %81 = ptrtoint ptr %phy_node.i70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phy_node.i70, align 4
  %tobool.not.i71 = icmp eq ptr %82, null
  br i1 %tobool.not.i71, label %if.else.i73, label %if.then.i72

if.then.i72:                                      ; preds = %if.end19
  %phy_interface.i = getelementptr i8, ptr %ndev, i32 2488
  %83 = ptrtoint ptr %phy_interface.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %phy_interface.i, align 8
  %call3.i = tail call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef nonnull %82, ptr noundef nonnull @fec_enet_adjust_link, i32 noundef 0, i32 noundef %84) #15
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %fec_enet_mii_probe.exit.thread94, label %if.then.i72.if.end26.i_crit_edge

if.then.i72.if.end26.i_crit_edge:                 ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

fec_enet_mii_probe.exit.thread94:                 ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.63) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_name.i) #15
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %mdio_bus_id.i) #15
  br label %err_enet_mii_probe

if.else.i73:                                      ; preds = %if.end19
  %dev_id1.i = getelementptr i8, ptr %ndev, i32 2476
  %85 = ptrtoint ptr %dev_id1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dev_id1.i, align 4
  %mii_bus.i = getelementptr i8, ptr %ndev, i32 2480
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.inc.i77.for.body.i75_crit_edge, %if.else.i73
  %dev_id.072.i = phi i32 [ %86, %if.else.i73 ], [ %dev_id.1.i, %for.inc.i77.for.body.i75_crit_edge ]
  %phy_id.070.i = phi i32 [ 0, %if.else.i73 ], [ %inc.i76, %for.inc.i77.for.body.i75_crit_edge ]
  %87 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mii_bus.i, align 8
  %call6.i74 = tail call zeroext i1 @mdiobus_is_registered_device(ptr noundef %88, i32 noundef %phy_id.070.i) #15
  br i1 %call6.i74, label %if.end8.i, label %for.body.i75.for.inc.i77_crit_edge

for.body.i75.for.inc.i77_crit_edge:               ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i77

if.end8.i:                                        ; preds = %for.body.i75
  %dec.i = add i32 %dev_id.072.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_id.072.i)
  %tobool9.not.i = icmp eq i32 %dev_id.072.i, 0
  br i1 %tobool9.not.i, label %for.end.i, label %if.end8.i.for.inc.i77_crit_edge

if.end8.i.for.inc.i77_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i77

for.inc.i77:                                      ; preds = %if.end8.i.for.inc.i77_crit_edge, %for.body.i75.for.inc.i77_crit_edge
  %dev_id.1.i = phi i32 [ %dec.i, %if.end8.i.for.inc.i77_crit_edge ], [ %dev_id.072.i, %for.body.i75.for.inc.i77_crit_edge ]
  %inc.i76 = add nuw nsw i32 %phy_id.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i76, 32
  br i1 %exitcond.not.i, label %if.then16.i, label %for.inc.i77.for.body.i75_crit_edge

for.inc.i77.for.body.i75_crit_edge:               ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i75

for.end.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mii_bus.i, align 8
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %90, i32 0, i32 2
  %call14.i = call i32 @strlcpy(ptr noundef nonnull %mdio_bus_id.i, ptr noundef %id.i, i32 noundef 61) #15
  br label %if.end19.i

if.then16.i:                                      ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.64) #18
  %call18.i = call i32 @strlcpy(ptr noundef nonnull %mdio_bus_id.i, ptr noundef nonnull @.str.65, i32 noundef 61) #15
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %for.end.i
  %phy_id.1.i = phi i32 [ 0, %if.then16.i ], [ %phy_id.070.i, %for.end.i ]
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_name.i, i32 noundef 64, ptr noundef nonnull @.str.66, ptr noundef nonnull %mdio_bus_id.i, i32 noundef %phy_id.1.i) #15
  %phy_interface24.i = getelementptr i8, ptr %ndev, i32 2488
  %91 = ptrtoint ptr %phy_interface24.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %phy_interface24.i, align 8
  %call25.i = call ptr @phy_connect(ptr noundef %ndev, ptr noundef nonnull %phy_name.i, ptr noundef nonnull @fec_enet_adjust_link, i32 noundef %92) #15
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end19.i, %if.then.i72.if.end26.i_crit_edge
  %phy_dev.0.i = phi ptr [ %call3.i, %if.then.i72.if.end26.i_crit_edge ], [ %call25.i, %if.end19.i ]
  %cmp.i.i78 = icmp ugt ptr %phy_dev.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i78, label %fec_enet_mii_probe.exit, label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i
  %quirks.i = getelementptr i8, ptr %ndev, i32 2540
  %93 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool31.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  %call33.i = call i32 @phy_set_max_speed(ptr noundef %phy_dev.0.i, i32 noundef 1000) #15
  call void @phy_remove_link_mode(ptr noundef %phy_dev.0.i, i32 noundef 4) #15
  call void @phy_support_sym_pause(ptr noundef %phy_dev.0.i) #15
  br label %fec_enet_mii_probe.exit.thread

if.else34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  %call35.i = call i32 @phy_set_max_speed(ptr noundef %phy_dev.0.i, i32 noundef 100) #15
  br label %fec_enet_mii_probe.exit.thread

fec_enet_mii_probe.exit.thread:                   ; preds = %if.else34.i, %if.then32.i
  %link.i = getelementptr i8, ptr %ndev, i32 2500
  %95 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %link.i, align 4
  %full_duplex.i = getelementptr i8, ptr %ndev, i32 2504
  %96 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %full_duplex.i, align 8
  %mac_managed_pm.i = getelementptr inbounds %struct.phy_device, ptr %phy_dev.0.i, i32 0, i32 4
  %97 = ptrtoint ptr %mac_managed_pm.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i = load i16, ptr %mac_managed_pm.i, align 8
  %bf.set.i = or i16 %bf.load.i, 16
  store i16 %bf.set.i, ptr %mac_managed_pm.i, align 8
  call void @phy_attached_info(ptr noundef %phy_dev.0.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_name.i) #15
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %mdio_bus_id.i) #15
  %98 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %quirks.i, align 4
  %and = and i32 %99, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %fec_enet_mii_probe.exit.thread.if.end26_crit_edge, label %if.then25

fec_enet_mii_probe.exit.thread.if.end26_crit_edge: ; preds = %fec_enet_mii_probe.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

fec_enet_mii_probe.exit:                          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.67) #18
  %100 = ptrtoint ptr %phy_dev.0.i to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_name.i) #15
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %mdio_bus_id.i) #15
  br label %err_enet_mii_probe

if.then25:                                        ; preds = %fec_enet_mii_probe.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  call void @imx6q_cpuidle_fec_irqs_used() #15
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %fec_enet_mii_probe.exit.thread.if.end26_crit_edge
  %napi = getelementptr i8, ptr %ndev, i32 2544
  call void @napi_enable(ptr noundef %napi) #15
  %101 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %phydev, align 16
  call void @phy_start(ptr noundef %102) #15
  %num_tx_queues.i80 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %103 = ptrtoint ptr %num_tx_queues.i80 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_tx_queues.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp4.not.i = icmp eq i32 %104, 0
  br i1 %cmp4.not.i, label %if.end26.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i81

if.end26.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i81:                               ; preds = %if.end26
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.body.i84.for.body.i84_crit_edge, %for.body.lr.ph.i81
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i81 ], [ %inc.i82, %for.body.i84.for.body.i84_crit_edge ]
  %105 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %106, i32 %i.05.i, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %inc.i82 = add nuw i32 %i.05.i, 1
  %107 = ptrtoint ptr %num_tx_queues.i80 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_tx_queues.i80, align 4
  %cmp.i83 = icmp ult i32 %inc.i82, %108
  br i1 %cmp.i83, label %for.body.i84.for.body.i84_crit_edge, label %for.body.i84.netif_tx_start_all_queues.exit_crit_edge

for.body.i84.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_start_all_queues.exit

for.body.i84.for.body.i84_crit_edge:              ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i84

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i84.netif_tx_start_all_queues.exit_crit_edge, %if.end26.netif_tx_start_all_queues.exit_crit_edge
  %dev28 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %wol_flag = getelementptr i8, ptr %ndev, i32 2532
  %109 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %wol_flag, align 4
  %and29 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30 = icmp ne i32 %and29, 0
  %call31 = call i32 @device_set_wakeup_enable(ptr noundef %dev28, i1 noundef zeroext %tobool30) #15
  br label %cleanup

err_enet_mii_probe:                               ; preds = %fec_enet_mii_probe.exit, %fec_enet_mii_probe.exit.thread94
  %retval.0.i7997 = phi i32 [ -19, %fec_enet_mii_probe.exit.thread94 ], [ %100, %fec_enet_mii_probe.exit ]
  call fastcc void @fec_enet_free_buffers(ptr noundef %ndev)
  br label %err_enet_alloc

err_enet_alloc:                                   ; preds = %err_enet_mii_probe, %fec_enet_alloc_buffers.exit
  %ret.0 = phi i32 [ -12, %fec_enet_alloc_buffers.exit ], [ %retval.0.i7997, %err_enet_mii_probe ]
  %call32 = call fastcc i32 @fec_enet_clk_enable(ptr noundef %ndev, i1 noundef zeroext false)
  br label %clk_enable

clk_enable:                                       ; preds = %err_enet_alloc, %if.end.clk_enable_crit_edge
  %ret.1 = phi i32 [ %call5, %if.end.clk_enable_crit_edge ], [ %ret.0, %err_enet_alloc ]
  %111 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev, align 8
  %call.i86 = call i64 @ktime_get_mono_fast_ns() #15
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3, i32 12, i32 22
  %113 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store volatile i64 %call.i86, ptr %last_busy.i, align 8
  %114 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev, align 8
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %115, i32 0, i32 3
  %call.i87 = call i32 @__pm_runtime_suspend(ptr noundef %dev36, i32 noundef 13) #15
  %116 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev, align 8
  %dev39 = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3
  %call40 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev39) #15
  br label %cleanup

cleanup:                                          ; preds = %clk_enable, %netif_tx_start_all_queues.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %clk_enable ], [ 0, %netif_tx_start_all_queues.exit ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %1) #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %napi = getelementptr i8, ptr %ndev, i32 2544
  tail call void @napi_disable(ptr noundef %napi) #15
  tail call fastcc void @local_bh_disable() #15
  %5 = tail call i32 @llvm.read_register.i32(metadata !255) #15
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #15
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %9 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.not.i = icmp eq i32 %10, 0
  br i1 %cmp13.not.i, label %if.then.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.then.netif_tx_disable.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %12, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #15
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %12, i32 %i.014.i, i32 11
  %13 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %8, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %12, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %14 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #15
  %inc.i = add nuw i32 %i.014.i, 1
  %15 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.then.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #15
  tail call fastcc void @local_bh_enable() #15
  tail call fastcc void @fec_stop(ptr noundef %ndev)
  br label %if.end

if.end:                                           ; preds = %netif_tx_disable.exit, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %18) #15
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %19 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks, align 4
  %and = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.body.i26.preheader_crit_edge, label %if.then3

if.end.for.body.i26.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i26.preheader

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @imx6q_cpuidle_fec_irqs_unused() #15
  br label %for.body.i26.preheader

for.body.i26.preheader:                           ; preds = %if.then3, %if.end.for.body.i26.preheader_crit_edge
  br label %for.body.i26

for.body.i26:                                     ; preds = %for.body.i26.for.body.i26_crit_edge, %for.body.i26.preheader
  %i.09.i = phi i32 [ %inc.i25, %for.body.i26.for.body.i26_crit_edge ], [ 0, %for.body.i26.preheader ]
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %offset.i = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %i.09.i, i32 1
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %offset.i, align 2
  %conv.i = zext i16 %24 to i32
  %add.ptr.i24 = getelementptr i8, ptr %22, i32 %conv.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #15, !srcloc !274
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !284
  %conv3.i = zext i32 %26 to i64
  %arrayidx4.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 65, i32 %i.09.i
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv3.i, ptr %arrayidx4.i, align 8
  %inc.i25 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i25, 53
  br i1 %exitcond.not.i, label %fec_enet_update_ethtool_stats.exit, label %for.body.i26.for.body.i26_crit_edge

for.body.i26.for.body.i26_crit_edge:              ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i26

fec_enet_update_ethtool_stats.exit:               ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %ndev, i1 noundef zeroext false)
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %call6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #15
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #15
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev10, i32 noundef 13) #15
  tail call fastcc void @fec_enet_free_buffers(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  %tso.i = alloca %struct.tso_t, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not = icmp eq i16 %9, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cur.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tso.i) #15
  %12 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.tso_t, ptr %tso.i, i32 0, i32 2
  %14 = call ptr @memset(ptr %tso.i, i32 255, i32 20)
  %call1.i = tail call i32 @tso_count_descs(ptr noundef %skb) #15
  %dirty_tx.i.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %dirty_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dirty_tx.i.i, align 4
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %dsize_log2.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %dsize_log2.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dsize_log2.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %shr.i.i = ashr i32 %sub.ptr.sub.i.i, %conv.i.i
  %sub.i.i = add i32 %shr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %if.then.fec_enet_get_free_txdesc_num.exit.i_crit_edge, label %cond.false.i.i

if.then.fec_enet_get_free_txdesc_num.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_get_free_txdesc_num.exit.i

cond.false.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %ring_size.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ring_size.i.i, align 4
  %conv4.i.i = zext i16 %22 to i32
  %add.i.i = add nsw i32 %sub.i.i, %conv4.i.i
  br label %fec_enet_get_free_txdesc_num.exit.i

fec_enet_get_free_txdesc_num.exit.i:              ; preds = %cond.false.i.i, %if.then.fec_enet_get_free_txdesc_num.exit.i_crit_edge
  %cond.i.i = phi i32 [ %add.i.i, %cond.false.i.i ], [ %sub.i.i, %if.then.fec_enet_get_free_txdesc_num.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %cond.i.i)
  %cmp.not.i = icmp slt i32 %call1.i, %cond.i.i
  br i1 %cmp.not.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %fec_enet_get_free_txdesc_num.exit.i
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  %call3.i = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.thread149_crit_edge, label %if.then4.i

if.then.i.if.end.thread149_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread149

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.69) #18
  br label %if.end.thread149

if.end5.i:                                        ; preds = %fec_enet_get_free_txdesc_num.exit.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %24 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %24)
  %cmp.not.i.i = icmp eq i16 %24, 1536
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.end5.i
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %25 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %if.end.i.i
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #15
  %28 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %29, 65535
  %shr.i.i.i.i = ashr i32 %29, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.if.end5.i.i_crit_edge, label %skb_cow_head.exit.i.i

skb_header_cloned.exit.i.i.i.if.end5.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i

skb_cow_head.exit.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i
  %call4.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %skb_cow_head.exit.i.i.if.end5.i.i_crit_edge, label %if.then8.i, !prof !273

skb_cow_head.exit.i.i.if.end5.i.i_crit_edge:      ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %skb_cow_head.exit.i.i.if.end5.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.if.end5.i.i_crit_edge, %if.end.i.i.if.end5.i.i_crit_edge
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %protocol.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %31)
  %cmp.i.i.i = icmp eq i16 %31, 2048
  br i1 %cmp.i.i.i, label %is_ipv4_pkt.exit.i.i, label %if.end5.i.i.if.end9.i.i_crit_edge

if.end5.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i.i

is_ipv4_pkt.exit.i.i:                             ; preds = %if.end5.i.i
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i.i.i, align 8
  %network_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i.i.i
  %36 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i.i = load i8, ptr %add.ptr.i.i.i.i.i, align 4
  %bf.lshr.mask.i.i.i = and i8 %bf.load.i.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i.i)
  %cmp3.i.i.i = icmp eq i8 %bf.lshr.mask.i.i.i, 64
  br i1 %cmp3.i.i.i, label %if.then7.i.i, label %is_ipv4_pkt.exit.i.i.if.end9.i.i_crit_edge

is_ipv4_pkt.exit.i.i.if.end9.i.i_crit_edge:       ; preds = %is_ipv4_pkt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %is_ipv4_pkt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %check.i.i, align 2
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %is_ipv4_pkt.exit.i.i.if.end9.i.i_crit_edge, %if.end5.i.i.if.end9.i.i_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 8
  %conv10.i.i = zext i16 %42 to i32
  %add.ptr.i162.i = getelementptr i8, ptr %39, i32 %conv10.i.i
  %csum_offset.i.i = getelementptr inbounds %struct.anon.60, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %csum_offset.i.i, align 2
  %conv11.i.i = zext i16 %44 to i32
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr.i162.i, i32 %conv11.i.i
  %45 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %add.ptr12.i.i, align 2
  br label %if.end9.i

if.then8.i:                                       ; preds = %skb_cow_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %if.end.thread149

if.end9.i:                                        ; preds = %if.end9.i.i, %if.end5.i.if.end9.i_crit_edge
  %call10.i = call i32 @tso_start(ptr noundef %skb, ptr noundef nonnull %tso.i) #15
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %47, %call10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp11283.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp11283.i, label %while.body.lr.ph.i, label %if.end9.i.while.end54.i_crit_edge

if.end9.i.while.end54.i_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54.i

while.body.lr.ph.i:                               ; preds = %if.end9.i
  %base.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 1
  %tso_hdrs.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 6
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tx_align.i.i = getelementptr i8, ptr %ndev, i32 3172
  %tso_hdrs_dma.i.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 7
  %quirks.i.i = getelementptr i8, ptr %ndev, i32 2540
  %pdev.i.i = getelementptr i8, ptr %ndev, i32 2472
  %bufdesc_ex.i.i = getelementptr i8, ptr %ndev, i32 2524
  %last.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 2
  %dsize.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup51.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %total_len.0285.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %sub17.i, %cleanup51.i.while.body.i_crit_edge ]
  %bdp.0284.i = phi ptr [ %11, %while.body.lr.ph.i ], [ %bdp.2.i, %cleanup51.i.while.body.i_crit_edge ]
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %sub.ptr.lhs.cast.i163.i = ptrtoint ptr %bdp.0284.i to i32
  %sub.ptr.rhs.cast.i164.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i165.i = sub i32 %sub.ptr.lhs.cast.i163.i, %sub.ptr.rhs.cast.i164.i
  %50 = ptrtoint ptr %dsize_log2.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dsize_log2.i.i, align 1
  %conv.i167.i = zext i8 %51 to i32
  %shr.i168.i = ashr i32 %sub.ptr.sub.i165.i, %conv.i167.i
  %52 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %end.i.i, align 4
  %gso_size.i30 = getelementptr inbounds %struct.skb_shared_info, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %gso_size.i30 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %gso_size.i30, align 4
  %conv.i = zext i16 %55 to i32
  %56 = call i32 @llvm.umin.i32(i32 %total_len.0285.i, i32 %conv.i) #15
  %sub17.i = sub nsw i32 %total_len.0285.i, %56
  %57 = ptrtoint ptr %tso_hdrs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tso_hdrs.i, align 4
  %mul.i = shl i32 %shr.i168.i, 8
  %add.ptr.i31 = getelementptr i8, ptr %58, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.i)
  %cmp18.i = icmp eq i32 %sub17.i, 0
  call void @tso_build_hdr(ptr noundef %skb, ptr noundef %add.ptr.i31, ptr noundef nonnull %tso.i, i32 noundef %56, i1 noundef zeroext %cmp18.i) #15
  %59 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i.i.i, align 8
  %61 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i169.i = zext i16 %62 to i32
  %add.ptr.i.i.i170.i = getelementptr i8, ptr %60, i32 %conv.i.i.i169.i
  %63 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i170.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %doff.i.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i170.i, i32 0, i32 4
  %65 = ptrtoint ptr %doff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i.i.i171.i = load i16, ptr %doff.i.i.i.i, align 4
  %66 = lshr i16 %bf.load.i.i.i171.i, 10
  %67 = and i16 %66, 60
  %mul.i.i.i.i = zext i16 %67 to i32
  %add.i172.i = add i32 %sub.ptr.sub.i.i.i, %mul.i.i.i.i
  %cbd_sc.i.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0284.i, i32 0, i32 1
  %68 = ptrtoint ptr %cbd_sc.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %cbd_sc.i.i, align 2
  %70 = and i16 %69, 112
  %71 = or i16 %70, 132
  %72 = ptrtoint ptr %tso_hdrs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tso_hdrs.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %73, i32 %mul.i
  %74 = ptrtoint ptr %add.ptr6.i.i to i32
  %75 = ptrtoint ptr %tx_align.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_align.i.i, align 4
  %and9.i.i = and i32 %76, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool.not.i173.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool.not.i173.i, label %lor.lhs.false.i.i, label %while.body.i.if.then.i.i_crit_edge

while.body.i.if.then.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i
  %77 = ptrtoint ptr %tso_hdrs_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tso_hdrs_dma.i.i, align 4
  %add8.i.i = add i32 %78, %mul.i
  %79 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %quirks.i.i, align 4
  %and10.i.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false.i.i.if.end29.i.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

lor.lhs.false.i.i.if.end29.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %while.body.i.if.then.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 1, i32 %shr.i168.i
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i, align 4
  %83 = call ptr @memcpy(ptr %82, ptr %64, i32 %add.i172.i)
  %84 = load ptr, ptr %arrayidx.i.i, align 4
  %85 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %quirks.i.i, align 4
  %and15.i.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp ne i32 %and15.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i172.i)
  %cmp3.i.i174.i = icmp sgt i32 %add.i172.i, 0
  %or.cond.i.i = select i1 %tobool16.not.i.i, i1 %cmp3.i.i174.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i.for.body.i.i.i_crit_edge, label %if.then.i.i.if.end.i176.i_crit_edge

if.then.i.i.if.end.i176.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i176.i

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %buf.05.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %84, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %i.04.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %87 = ptrtoint ptr %buf.05.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf.05.i.i.i, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88) #15
  %90 = ptrtoint ptr %buf.05.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %buf.05.i.i.i, align 4
  %add.i.i.i = add i32 %i.04.i.i.i, 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %buf.05.i.i.i, i32 1
  %cmp.i.i175.i = icmp slt i32 %add.i.i.i, %add.i172.i
  br i1 %cmp.i.i175.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.if.end.i176.i_crit_edge

for.body.i.i.i.if.end.i176.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i176.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

if.end.i176.i:                                    ; preds = %for.body.i.i.i.if.end.i176.i_crit_edge, %if.then.i.i.if.end.i176.i_crit_edge
  %91 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %84) #15
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i176.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !273

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #15
  %init_name.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3, i32 3
  %93 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i177.i = icmp eq ptr %94, null
  br i1 %tobool.not.i.i.i177.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %96, %if.end.i.i.i.i ], [ %94, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #15
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end.i176.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %84, i32 noundef %add.i172.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %97 = load ptr, ptr @mem_map, align 4
  %98 = ptrtoint ptr %84 to i32
  %sub.i.i.i = add i32 %98, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i86.i.i = getelementptr %struct.page, ptr %97, i32 %shr.i.i.i
  %and.i.i.i = and i32 %98, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i86.i.i, i32 noundef %and.i.i.i, i32 noundef %add.i172.i, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %99 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev.i.i, align 8
  %dev20.i.i = getelementptr inbounds %struct.platform_device, ptr %100, i32 0, i32 3
  call void @debug_dma_mapping_error(ptr noundef %dev20.i.i, i32 noundef %retval.0.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i87.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i87.i.i, label %if.then23.i.i, label %dma_map_single_attrs.exit.i.i.if.end29.i.i_crit_edge

dma_map_single_attrs.exit.i.i.if.end29.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

if.then23.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  %call24.i.i = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.then23.i.i.if.end_crit_edge, label %if.then23.i.i.if.end.sink.split_crit_edge

if.then23.i.i.if.end.sink.split_crit_edge:        ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.sink.split

if.then23.i.i.if.end_crit_edge:                   ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end29.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i.if.end29.i.i_crit_edge, %lor.lhs.false.i.i.if.end29.i.i_crit_edge
  %dmabuf.0.i.i = phi i32 [ %add8.i.i, %lor.lhs.false.i.i.if.end29.i.i_crit_edge ], [ %retval.0.i.i.i, %dma_map_single_attrs.exit.i.i.if.end29.i.i_crit_edge ]
  %101 = call i32 @llvm.bswap.i32(i32 %dmabuf.0.i.i) #15
  %cbd_bufaddr.i.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0284.i, i32 0, i32 2
  %102 = ptrtoint ptr %cbd_bufaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %cbd_bufaddr.i.i, align 4
  %conv30.i.i = trunc i32 %add.i172.i to i16
  %103 = call i16 @llvm.bswap.i16(i16 %conv30.i.i) #15
  %104 = ptrtoint ptr %bdp.0284.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %bdp.0284.i, align 4
  %105 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool31.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool31.not.i.i, label %if.end29.i.i.fec_enet_txq_put_hdr_tso.exit.i_crit_edge, label %if.then32.i.i

if.end29.i.i.fec_enet_txq_put_hdr_tso.exit.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_txq_put_hdr_tso.exit.i

if.then32.i.i:                                    ; preds = %if.end29.i.i
  %107 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %quirks.i.i, align 4
  %and34.i.i = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.then32.i.i.if.end39.i.i_crit_edge, label %if.then36.i.i

if.then32.i.i.if.end39.i.i_crit_edge:             ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i.i

if.then36.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %3, align 4
  %and37.i.i = shl i32 %110, 20
  %shl.i.i = and i32 %and37.i.i, 15728640
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then36.i.i, %if.then32.i.i.if.end39.i.i_crit_edge
  %estatus.0.i.i = phi i32 [ %shl.i.i, %if.then36.i.i ], [ 0, %if.then32.i.i.if.end39.i.i_crit_edge ]
  %111 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load.i179.i = load i16, ptr %ip_summed.i.i, align 8
  %112 = and i16 %bf.load.i179.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %112)
  %cmp.i180.i = icmp eq i16 %112, 1536
  %or43.i.i = or i32 %estatus.0.i.i, 402653184
  %spec.select.i.i = select i1 %cmp.i180.i, i32 %or43.i.i, i32 %estatus.0.i.i
  %cbd_bdu.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.0284.i, i32 0, i32 3
  %113 = ptrtoint ptr %cbd_bdu.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %cbd_bdu.i.i, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #15
  %cbd_esc.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %bdp.0284.i, i32 0, i32 1
  %115 = ptrtoint ptr %cbd_esc.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %cbd_esc.i.i, align 4
  br label %fec_enet_txq_put_hdr_tso.exit.i

fec_enet_txq_put_hdr_tso.exit.i:                  ; preds = %if.end39.i.i, %if.end29.i.i.fec_enet_txq_put_hdr_tso.exit.i_crit_edge
  %116 = ptrtoint ptr %cbd_sc.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %71, ptr %cbd_sc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp25279.not.i = icmp eq i32 %56, 0
  br i1 %cmp25279.not.i, label %fec_enet_txq_put_hdr_tso.exit.i.while.end.i_crit_edge, label %fec_enet_txq_put_hdr_tso.exit.i.while.body27.i_crit_edge

fec_enet_txq_put_hdr_tso.exit.i.while.body27.i_crit_edge: ; preds = %fec_enet_txq_put_hdr_tso.exit.i
  br label %while.body27.i

fec_enet_txq_put_hdr_tso.exit.i.while.end.i_crit_edge: ; preds = %fec_enet_txq_put_hdr_tso.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body27.i:                                   ; preds = %cleanup.i.while.body27.i_crit_edge, %fec_enet_txq_put_hdr_tso.exit.i.while.body27.i_crit_edge
  %data_left.0281.i = phi i32 [ %sub48.i, %cleanup.i.while.body27.i_crit_edge ], [ %56, %fec_enet_txq_put_hdr_tso.exit.i.while.body27.i_crit_edge ]
  %bdp.1280.i = phi ptr [ %cond.i187.i, %cleanup.i.while.body27.i_crit_edge ], [ %bdp.0284.i, %fec_enet_txq_put_hdr_tso.exit.i.while.body27.i_crit_edge ]
  %117 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %12, align 4
  %119 = call i32 @llvm.smin.i32(i32 %118, i32 %data_left.0281.i) #15
  %120 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %last.i.i, align 4
  %cmp.not.i182.i = icmp ugt ptr %121, %bdp.1280.i
  br i1 %cmp.not.i182.i, label %cond.false.i186.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_pc() #17
  %122 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i, align 4
  br label %fec_enet_get_nextdesc.exit.i

cond.false.i186.i:                                ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %dsize.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %dsize.i.i, align 2
  %conv.i184.i = zext i8 %125 to i32
  %add.ptr.i185.i = getelementptr i8, ptr %bdp.1280.i, i32 %conv.i184.i
  br label %fec_enet_get_nextdesc.exit.i

fec_enet_get_nextdesc.exit.i:                     ; preds = %cond.false.i186.i, %cond.true.i.i
  %cond.i187.i = phi ptr [ %123, %cond.true.i.i ], [ %add.ptr.i185.i, %cond.false.i186.i ]
  %126 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i.i, align 4
  %sub.ptr.lhs.cast.i189.i = ptrtoint ptr %cond.i187.i to i32
  %sub.ptr.rhs.cast.i190.i = ptrtoint ptr %127 to i32
  %sub.ptr.sub.i191.i = sub i32 %sub.ptr.lhs.cast.i189.i, %sub.ptr.rhs.cast.i190.i
  %128 = ptrtoint ptr %dsize_log2.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %dsize_log2.i.i, align 1
  %conv.i193.i = zext i8 %129 to i32
  %shr.i194.i = ashr i32 %sub.ptr.sub.i191.i, %conv.i193.i
  %130 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data_left.0281.i, i32 %118)
  %cmp40.not.i = icmp sgt i32 %data_left.0281.i, %118
  %cbd_sc.i195.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i187.i, i32 0, i32 1
  %132 = ptrtoint ptr %cbd_sc.i195.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %cbd_sc.i195.i, align 2
  %134 = shl i16 %133, 8
  %135 = and i16 %134, 28672
  %136 = ptrtoint ptr %131 to i32
  %137 = ptrtoint ptr %tx_align.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_align.i.i, align 4
  %and5.i.i = and i32 %138, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i197.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i197.i, label %lor.lhs.false.i199.i, label %fec_enet_get_nextdesc.exit.i.if.then.i203.i_crit_edge

fec_enet_get_nextdesc.exit.i.if.then.i203.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i203.i

lor.lhs.false.i199.i:                             ; preds = %fec_enet_get_nextdesc.exit.i
  %139 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %quirks.i.i, align 4
  %and6.i.i = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i199.i.if.end14.i.i_crit_edge, label %lor.lhs.false.i199.i.if.then.i203.i_crit_edge

lor.lhs.false.i199.i.if.then.i203.i_crit_edge:    ; preds = %lor.lhs.false.i199.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i203.i

lor.lhs.false.i199.i.if.end14.i.i_crit_edge:      ; preds = %lor.lhs.false.i199.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i

if.then.i203.i:                                   ; preds = %lor.lhs.false.i199.i.if.then.i203.i_crit_edge, %fec_enet_get_nextdesc.exit.i.if.then.i203.i_crit_edge
  %arrayidx.i200.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 1, i32 %shr.i194.i
  %141 = ptrtoint ptr %arrayidx.i200.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i200.i, align 4
  %143 = call ptr @memcpy(ptr %142, ptr %131, i32 %119)
  %144 = load ptr, ptr %arrayidx.i200.i, align 4
  %145 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %quirks.i.i, align 4
  %and11.i.i = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp ne i32 %and11.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp3.i.i201.i = icmp sgt i32 %119, 0
  %or.cond.i202.i = and i1 %cmp3.i.i201.i, %tobool12.not.i.i
  br i1 %or.cond.i202.i, label %if.then.i203.i.for.body.i.i209.i_crit_edge, label %if.then.i203.i.if.end14.i.i_crit_edge

if.then.i203.i.if.end14.i.i_crit_edge:            ; preds = %if.then.i203.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i

if.then.i203.i.for.body.i.i209.i_crit_edge:       ; preds = %if.then.i203.i
  br label %for.body.i.i209.i

for.body.i.i209.i:                                ; preds = %for.body.i.i209.i.for.body.i.i209.i_crit_edge, %if.then.i203.i.for.body.i.i209.i_crit_edge
  %buf.05.i.i204.i = phi ptr [ %incdec.ptr.i.i207.i, %for.body.i.i209.i.for.body.i.i209.i_crit_edge ], [ %144, %if.then.i203.i.for.body.i.i209.i_crit_edge ]
  %i.04.i.i205.i = phi i32 [ %add.i.i206.i, %for.body.i.i209.i.for.body.i.i209.i_crit_edge ], [ 0, %if.then.i203.i.for.body.i.i209.i_crit_edge ]
  %147 = ptrtoint ptr %buf.05.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %buf.05.i.i204.i, align 4
  %149 = call i32 @llvm.bswap.i32(i32 %148) #15
  %150 = ptrtoint ptr %buf.05.i.i204.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %buf.05.i.i204.i, align 4
  %add.i.i206.i = add i32 %i.04.i.i205.i, 4
  %incdec.ptr.i.i207.i = getelementptr i32, ptr %buf.05.i.i204.i, i32 1
  %cmp.i.i208.i = icmp slt i32 %add.i.i206.i, %119
  br i1 %cmp.i.i208.i, label %for.body.i.i209.i.for.body.i.i209.i_crit_edge, label %for.body.i.i209.i.if.end14.i.i_crit_edge

for.body.i.i209.i.if.end14.i.i_crit_edge:         ; preds = %for.body.i.i209.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i

for.body.i.i209.i.for.body.i.i209.i_crit_edge:    ; preds = %for.body.i.i209.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i209.i

if.end14.i.i:                                     ; preds = %for.body.i.i209.i.if.end14.i.i_crit_edge, %if.then.i203.i.if.end14.i.i_crit_edge, %lor.lhs.false.i199.i.if.end14.i.i_crit_edge
  %data.addr.0.i.i = phi ptr [ %144, %if.then.i203.i.if.end14.i.i_crit_edge ], [ %131, %lor.lhs.false.i199.i.if.end14.i.i_crit_edge ], [ %144, %for.body.i.i209.i.if.end14.i.i_crit_edge ]
  %151 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev.i.i, align 8
  %dev.i211.i = getelementptr inbounds %struct.platform_device, ptr %152, i32 0, i32 3
  %call.i.i212.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %data.addr.0.i.i) #15
  br i1 %call.i.i212.i, label %land.rhs.i.i214.i, label %if.end39.i.i226.i

land.rhs.i.i214.i:                                ; preds = %if.end14.i.i
  %.b1.i.i213.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i213.i, label %land.rhs.i.i214.i.dma_map_single_attrs.exit.i228.i_crit_edge, label %if.then.i.i218.i, !prof !273

land.rhs.i.i214.i.dma_map_single_attrs.exit.i228.i_crit_edge: ; preds = %land.rhs.i.i214.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.i228.i

if.then.i.i218.i:                                 ; preds = %land.rhs.i.i214.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i215.i = call ptr @dev_driver_string(ptr noundef %dev.i211.i) #15
  %init_name.i.i.i216.i = getelementptr inbounds %struct.platform_device, ptr %152, i32 0, i32 3, i32 3
  %153 = ptrtoint ptr %init_name.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %init_name.i.i.i216.i, align 8
  %tobool.not.i.i.i217.i = icmp eq ptr %154, null
  br i1 %tobool.not.i.i.i217.i, label %if.end.i.i.i219.i, label %if.then.i.i218.i.dev_name.exit.i.i221.i_crit_edge

if.then.i.i218.i.dev_name.exit.i.i221.i_crit_edge: ; preds = %if.then.i.i218.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i221.i

if.end.i.i.i219.i:                                ; preds = %if.then.i.i218.i
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %dev.i211.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i211.i, align 4
  br label %dev_name.exit.i.i221.i

dev_name.exit.i.i221.i:                           ; preds = %if.end.i.i.i219.i, %if.then.i.i218.i.dev_name.exit.i.i221.i_crit_edge
  %retval.0.i.i.i220.i = phi ptr [ %156, %if.end.i.i.i219.i ], [ %154, %if.then.i.i218.i.dev_name.exit.i.i221.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i215.i, ptr noundef %retval.0.i.i.i220.i) #15
  br label %dma_map_single_attrs.exit.i228.i

if.end39.i.i226.i:                                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @debug_dma_map_single(ptr noundef %dev.i211.i, ptr noundef %data.addr.0.i.i, i32 noundef %119) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %157 = load ptr, ptr @mem_map, align 4
  %158 = ptrtoint ptr %data.addr.0.i.i to i32
  %sub.i.i222.i = add i32 %158, 1073741824
  %shr.i.i223.i = lshr i32 %sub.i.i222.i, 12
  %add.ptr.i97.i.i = getelementptr %struct.page, ptr %157, i32 %shr.i.i223.i
  %and.i.i224.i = and i32 %158, 4095
  %call41.i.i225.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i211.i, ptr noundef %add.ptr.i97.i.i, i32 noundef %and.i.i224.i, i32 noundef %119, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit.i228.i

dma_map_single_attrs.exit.i228.i:                 ; preds = %if.end39.i.i226.i, %dev_name.exit.i.i221.i, %land.rhs.i.i214.i.dma_map_single_attrs.exit.i228.i_crit_edge
  %retval.0.i.i227.i = phi i32 [ %call41.i.i225.i, %if.end39.i.i226.i ], [ -1, %dev_name.exit.i.i221.i ], [ -1, %land.rhs.i.i214.i.dma_map_single_attrs.exit.i228.i_crit_edge ]
  %159 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev.i.i, align 8
  %dev17.i.i = getelementptr inbounds %struct.platform_device, ptr %160, i32 0, i32 3
  call void @debug_dma_mapping_error(ptr noundef %dev17.i.i, i32 noundef %retval.0.i.i227.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i227.i)
  %cmp.i98.i.i = icmp eq i32 %retval.0.i.i227.i, -1
  br i1 %cmp.i98.i.i, label %if.then20.i.i, label %if.end25.i.i

if.then20.i.i:                                    ; preds = %dma_map_single_attrs.exit.i228.i
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  %call21.i.i = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.then20.i.i.if.end_crit_edge, label %if.then20.i.i.if.end.sink.split_crit_edge

if.then20.i.i.if.end.sink.split_crit_edge:        ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.sink.split

if.then20.i.i.if.end_crit_edge:                   ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end25.i.i:                                     ; preds = %dma_map_single_attrs.exit.i228.i
  %conv26.i.i = trunc i32 %119 to i16
  %161 = call i16 @llvm.bswap.i16(i16 %conv26.i.i) #15
  %162 = ptrtoint ptr %cond.i187.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %cond.i187.i, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %retval.0.i.i227.i) #15
  %cbd_bufaddr.i230.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i187.i, i32 0, i32 2
  %164 = ptrtoint ptr %cbd_bufaddr.i230.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %cbd_bufaddr.i230.i, align 4
  %165 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool27.not.i.i = icmp eq i8 %166, 0
  br i1 %tobool27.not.i.i, label %if.end25.i.i.if.end41.i.i_crit_edge, label %if.then28.i.i

if.end25.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  %167 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %quirks.i.i, align 4
  %and30.i.i = and i32 %168, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i232.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i232.i, label %if.then28.i.i.if.end35.i.i_crit_edge, label %if.then32.i234.i

if.then28.i.i.if.end35.i.i_crit_edge:             ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i.i

if.then32.i234.i:                                 ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %169 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %3, align 4
  %and33.i.i = shl i32 %170, 20
  %shl.i233.i = and i32 %and33.i.i, 15728640
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then32.i234.i, %if.then28.i.i.if.end35.i.i_crit_edge
  %estatus.0.i235.i = phi i32 [ %shl.i233.i, %if.then32.i234.i ], [ 0, %if.then28.i.i.if.end35.i.i_crit_edge ]
  %171 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %bf.load.i237.i = load i16, ptr %ip_summed.i.i, align 8
  %172 = and i16 %bf.load.i237.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %172)
  %cmp.i238.i = icmp eq i16 %172, 1536
  %or39.i.i = or i32 %estatus.0.i235.i, 402653184
  %spec.select.i239.i = select i1 %cmp.i238.i, i32 %or39.i.i, i32 %estatus.0.i235.i
  %cbd_bdu.i240.i = getelementptr inbounds %struct.bufdesc_ex, ptr %cond.i187.i, i32 0, i32 3
  %173 = ptrtoint ptr %cbd_bdu.i240.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %cbd_bdu.i240.i, align 4
  %174 = call i32 @llvm.bswap.i32(i32 %spec.select.i239.i) #15
  %cbd_esc.i241.i = getelementptr inbounds %struct.bufdesc_ex, ptr %cond.i187.i, i32 0, i32 1
  %175 = ptrtoint ptr %cbd_esc.i241.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %cbd_esc.i241.i, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.end35.i.i, %if.end25.i.i.if.end41.i.i_crit_edge
  %spec.select96.v.i.i = select i1 %cmp40.not.i, i16 -31744, i16 -29696
  %spec.select96.i.i = or i16 %135, %spec.select96.v.i.i
  br i1 %cmp18.i, label %if.then49.i.i, label %if.end41.i.i.cleanup.i_crit_edge

if.end41.i.i.cleanup.i_crit_edge:                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then49.i.i:                                    ; preds = %if.end41.i.i
  %176 = or i16 %spec.select96.i.i, 4096
  %177 = ptrtoint ptr %bufdesc_ex.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bufdesc_ex.i.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool54.not.i.i = icmp eq i8 %178, 0
  br i1 %tobool54.not.i.i, label %if.then49.i.i.cleanup.i_crit_edge, label %if.then55.i.i

if.then49.i.i.cleanup.i_crit_edge:                ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then55.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %cbd_esc56.i.i = getelementptr inbounds %struct.bufdesc_ex, ptr %cond.i187.i, i32 0, i32 1
  %179 = ptrtoint ptr %cbd_esc56.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cbd_esc56.i.i, align 4
  %or57.i.i = or i32 %180, 64
  store i32 %or57.i.i, ptr %cbd_esc56.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then55.i.i, %if.then49.i.i.cleanup.i_crit_edge, %if.end41.i.i.cleanup.i_crit_edge
  %status.1.i.i = phi i16 [ %176, %if.then55.i.i ], [ %176, %if.then49.i.i.cleanup.i_crit_edge ], [ %spec.select96.i.i, %if.end41.i.i.cleanup.i_crit_edge ]
  %181 = call i16 @llvm.bswap.i16(i16 %status.1.i.i) #15
  %182 = ptrtoint ptr %cbd_sc.i195.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %cbd_sc.i195.i, align 2
  %sub48.i = sub i32 %data_left.0281.i, %119
  call void @tso_build_data(ptr noundef %skb, ptr noundef nonnull %tso.i, i32 noundef %119) #15
  %cmp25.i = icmp sgt i32 %sub48.i, 0
  br i1 %cmp25.i, label %cleanup.i.while.body27.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

cleanup.i.while.body27.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body27.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %fec_enet_txq_put_hdr_tso.exit.i.while.end.i_crit_edge
  %index.1.lcssa.i = phi i32 [ %shr.i168.i, %fec_enet_txq_put_hdr_tso.exit.i.while.end.i_crit_edge ], [ %shr.i194.i, %cleanup.i.while.end.i_crit_edge ]
  %bdp.1.lcssa.i = phi ptr [ %bdp.0284.i, %fec_enet_txq_put_hdr_tso.exit.i.while.end.i_crit_edge ], [ %cond.i187.i, %cleanup.i.while.end.i_crit_edge ]
  %183 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %last.i.i, align 4
  %cmp.not.i244.i = icmp ugt ptr %184, %bdp.1.lcssa.i
  br i1 %cmp.not.i244.i, label %cond.false.i250.i, label %cond.true.i246.i

cond.true.i246.i:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %185 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i.i, align 4
  br label %cleanup51.i

cond.false.i250.i:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %187 = ptrtoint ptr %dsize.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %dsize.i.i, align 2
  %conv.i248.i = zext i8 %188 to i32
  %add.ptr.i249.i = getelementptr i8, ptr %bdp.1.lcssa.i, i32 %conv.i248.i
  br label %cleanup51.i

cleanup51.i:                                      ; preds = %cond.false.i250.i, %cond.true.i246.i
  %bdp.2.i = phi ptr [ %186, %cond.true.i246.i ], [ %add.ptr.i249.i, %cond.false.i250.i ]
  %cmp11.i = icmp sgt i32 %sub17.i, 0
  br i1 %cmp11.i, label %cleanup51.i.while.body.i_crit_edge, label %cleanup51.i.while.end54.i_crit_edge

cleanup51.i.while.end54.i_crit_edge:              ; preds = %cleanup51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end54.i

cleanup51.i.while.body.i_crit_edge:               ; preds = %cleanup51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.end54.i:                                    ; preds = %cleanup51.i.while.end54.i_crit_edge, %if.end9.i.while.end54.i_crit_edge
  %index.0.lcssa.i = phi i32 [ 0, %if.end9.i.while.end54.i_crit_edge ], [ %index.1.lcssa.i, %cleanup51.i.while.end54.i_crit_edge ]
  %bdp.0.lcssa.i = phi ptr [ %11, %if.end9.i.while.end54.i_crit_edge ], [ %bdp.2.i, %cleanup51.i.while.end54.i_crit_edge ]
  %arrayidx.i32 = getelementptr %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 2, i32 %index.0.lcssa.i
  %189 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %skb, ptr %arrayidx.i32, align 4
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #15
  %190 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %tx_flags.i.i, align 1
  %194 = and i8 %193, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i253.i = icmp eq i8 %194, 0
  br i1 %tobool.not.i253.i, label %while.end54.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i254.i

while.end54.i.skb_tx_timestamp.exit.i_crit_edge:  ; preds = %while.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_tx_timestamp.exit.i

if.then.i254.i:                                   ; preds = %while.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #15
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i254.i, %while.end54.i.skb_tx_timestamp.exit.i_crit_edge
  %195 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %bdp.0.lcssa.i, ptr %cur.i, align 4
  %quirks.i = getelementptr i8, ptr %ndev, i32 2540
  %196 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %197, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool57.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool57.not.i, label %skb_tx_timestamp.exit.i.do.body.i_crit_edge, label %lor.lhs.false.i

skb_tx_timestamp.exit.i.do.body.i_crit_edge:      ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %skb_tx_timestamp.exit.i
  %reg_desc_active.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 4
  %198 = ptrtoint ptr %reg_desc_active.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %reg_desc_active.i, align 4
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #15, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !335
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool62.not.i = icmp eq i32 %200, 0
  br i1 %tobool62.not.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %lor.lhs.false63.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

lor.lhs.false63.i:                                ; preds = %lor.lhs.false.i
  %201 = ptrtoint ptr %reg_desc_active.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_desc_active.i, align 4
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #15, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool71.not.i = icmp eq i32 %203, 0
  br i1 %tobool71.not.i, label %lor.lhs.false63.i.do.body.i_crit_edge, label %lor.lhs.false72.i

lor.lhs.false63.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

lor.lhs.false72.i:                                ; preds = %lor.lhs.false63.i
  %204 = ptrtoint ptr %reg_desc_active.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %reg_desc_active.i, align 4
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %205) #15, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool80.not.i = icmp eq i32 %206, 0
  br i1 %tobool80.not.i, label %lor.lhs.false72.i.do.body.i_crit_edge, label %lor.lhs.false81.i

lor.lhs.false72.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

lor.lhs.false81.i:                                ; preds = %lor.lhs.false72.i
  %207 = ptrtoint ptr %reg_desc_active.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %reg_desc_active.i, align 4
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #15, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool89.not.i = icmp eq i32 %209, 0
  br i1 %tobool89.not.i, label %lor.lhs.false81.i.do.body.i_crit_edge, label %lor.lhs.false81.i.if.end.thread149_crit_edge

lor.lhs.false81.i.if.end.thread149_crit_edge:     ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.thread149

lor.lhs.false81.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false81.i.do.body.i_crit_edge, %lor.lhs.false72.i.do.body.i_crit_edge, %lor.lhs.false63.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %skb_tx_timestamp.exit.i.do.body.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !339
  call void @arm_heavy_mb() #15
  %reg_desc_active92.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 4
  %210 = ptrtoint ptr %reg_desc_active92.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg_desc_active92.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 0) #15, !srcloc !278
  br label %if.end.thread149

if.else:                                          ; preds = %entry
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %212 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %nr_frags2.i, align 2
  %dirty_tx.i.i34 = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 5
  %214 = ptrtoint ptr %dirty_tx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dirty_tx.i.i34, align 4
  %cur.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 3
  %216 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cur.i.i, align 4
  %sub.ptr.lhs.cast.i.i35 = ptrtoint ptr %215 to i32
  %sub.ptr.rhs.cast.i.i36 = ptrtoint ptr %217 to i32
  %sub.ptr.sub.i.i37 = sub i32 %sub.ptr.lhs.cast.i.i35, %sub.ptr.rhs.cast.i.i36
  %dsize_log2.i.i38 = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 8
  %218 = ptrtoint ptr %dsize_log2.i.i38 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %dsize_log2.i.i38, align 1
  %conv.i.i39 = zext i8 %219 to i32
  %shr.i.i40 = ashr i32 %sub.ptr.sub.i.i37, %conv.i.i39
  %sub.i.i41 = add i32 %shr.i.i40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i41)
  %cmp.i.i42 = icmp sgt i32 %sub.i.i41, -1
  br i1 %cmp.i.i42, label %if.else.fec_enet_get_free_txdesc_num.exit.i48_crit_edge, label %cond.false.i.i46

if.else.fec_enet_get_free_txdesc_num.exit.i48_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_get_free_txdesc_num.exit.i48

cond.false.i.i46:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %ring_size.i.i43 = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 6
  %220 = ptrtoint ptr %ring_size.i.i43 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %ring_size.i.i43, align 4
  %conv4.i.i44 = zext i16 %221 to i32
  %add.i.i45 = add nsw i32 %sub.i.i41, %conv4.i.i44
  br label %fec_enet_get_free_txdesc_num.exit.i48

fec_enet_get_free_txdesc_num.exit.i48:            ; preds = %cond.false.i.i46, %if.else.fec_enet_get_free_txdesc_num.exit.i48_crit_edge
  %cond.i.i47 = phi i32 [ %add.i.i45, %cond.false.i.i46 ], [ %sub.i.i41, %if.else.fec_enet_get_free_txdesc_num.exit.i48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond.i.i47)
  %cmp.i = icmp ult i32 %cond.i.i47, 18
  br i1 %cmp.i, label %if.then.i50, label %if.end7.i

if.then.i50:                                      ; preds = %fec_enet_get_free_txdesc_num.exit.i48
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  %call5.i = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i49 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i49, label %if.then.i50.if.end7_crit_edge, label %if.then6.i

if.then.i50.if.end7_crit_edge:                    ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6.i:                                       ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.71) #18
  br label %if.end7

if.end7.i:                                        ; preds = %fec_enet_get_free_txdesc_num.exit.i48
  %ip_summed.i.i51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %222 = ptrtoint ptr %ip_summed.i.i51 to i32
  call void @__asan_load2_noabort(i32 %222)
  %bf.load.i.i52 = load i16, ptr %ip_summed.i.i51, align 8
  %223 = and i16 %bf.load.i.i52, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %223)
  %cmp.not.i.i53 = icmp eq i16 %223, 1536
  br i1 %cmp.not.i.i53, label %if.end.i.i57, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i

if.end.i.i57:                                     ; preds = %if.end7.i
  %cloned.i.i.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %224 = ptrtoint ptr %cloned.i.i.i.i54 to i32
  call void @__asan_load1_noabort(i32 %224)
  %bf.load.i.i.i.i55 = load i8, ptr %cloned.i.i.i.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i55)
  %tobool.not.i.i.i.i56 = icmp sgt i8 %bf.load.i.i.i.i55, -1
  br i1 %tobool.not.i.i.i.i56, label %if.end.i.i57.if.end5.i.i70_crit_edge, label %skb_header_cloned.exit.i.i.i64

if.end.i.i57.if.end5.i.i70_crit_edge:             ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i70

skb_header_cloned.exit.i.i.i64:                   ; preds = %if.end.i.i57
  %dataref1.i.i.i.i58 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %call.i.i.i.i.i.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i58, i32 noundef 4) #15
  %225 = ptrtoint ptr %dataref1.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %dataref1.i.i.i.i58, align 4
  %and.i.i.i.i60 = and i32 %226, 65535
  %shr.i.i.i.i61 = ashr i32 %226, 16
  %sub.i.i.i.i62 = sub nsw i32 %and.i.i.i.i60, %shr.i.i.i.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i62)
  %cmp.i.not.i.i.i63 = icmp eq i32 %sub.i.i.i.i62, 1
  br i1 %cmp.i.not.i.i.i63, label %skb_header_cloned.exit.i.i.i64.if.end5.i.i70_crit_edge, label %skb_cow_head.exit.i.i67

skb_header_cloned.exit.i.i.i64.if.end5.i.i70_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i70

skb_cow_head.exit.i.i67:                          ; preds = %skb_header_cloned.exit.i.i.i64
  %call4.i.i.i.i65 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %call4.i.i.i.i65, 0
  br i1 %tobool.not.i.i66, label %skb_cow_head.exit.i.i67.if.end5.i.i70_crit_edge, label %if.then10.i, !prof !273

skb_cow_head.exit.i.i67.if.end5.i.i70_crit_edge:  ; preds = %skb_cow_head.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i70

if.end5.i.i70:                                    ; preds = %skb_cow_head.exit.i.i67.if.end5.i.i70_crit_edge, %skb_header_cloned.exit.i.i.i64.if.end5.i.i70_crit_edge, %if.end.i.i57.if.end5.i.i70_crit_edge
  %protocol.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %227 = ptrtoint ptr %protocol.i.i.i68 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %protocol.i.i.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %228)
  %cmp.i.i.i69 = icmp eq i16 %228, 2048
  br i1 %cmp.i.i.i69, label %is_ipv4_pkt.exit.i.i78, label %if.end5.i.i70.if.end9.i.i86_crit_edge

if.end5.i.i70.if.end9.i.i86_crit_edge:            ; preds = %if.end5.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i.i86

is_ipv4_pkt.exit.i.i78:                           ; preds = %if.end5.i.i70
  %head.i.i.i.i.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %229 = ptrtoint ptr %head.i.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %head.i.i.i.i.i71, align 8
  %network_header.i.i.i.i.i72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %231 = ptrtoint ptr %network_header.i.i.i.i.i72 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %network_header.i.i.i.i.i72, align 4
  %conv.i.i.i.i.i73 = zext i16 %232 to i32
  %add.ptr.i.i.i.i.i74 = getelementptr i8, ptr %230, i32 %conv.i.i.i.i.i73
  %233 = ptrtoint ptr %add.ptr.i.i.i.i.i74 to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load.i.i.i75 = load i8, ptr %add.ptr.i.i.i.i.i74, align 4
  %bf.lshr.mask.i.i.i76 = and i8 %bf.load.i.i.i75, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i.i.i76)
  %cmp3.i.i.i77 = icmp eq i8 %bf.lshr.mask.i.i.i76, 64
  br i1 %cmp3.i.i.i77, label %if.then7.i.i80, label %is_ipv4_pkt.exit.i.i78.if.end9.i.i86_crit_edge

is_ipv4_pkt.exit.i.i78.if.end9.i.i86_crit_edge:   ; preds = %is_ipv4_pkt.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9.i.i86

if.then7.i.i80:                                   ; preds = %is_ipv4_pkt.exit.i.i78
  call void @__sanitizer_cov_trace_pc() #17
  %check.i.i79 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i.i74, i32 0, i32 7
  %234 = ptrtoint ptr %check.i.i79 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %check.i.i79, align 2
  br label %if.end9.i.i86

if.end9.i.i86:                                    ; preds = %if.then7.i.i80, %is_ipv4_pkt.exit.i.i78.if.end9.i.i86_crit_edge, %if.end5.i.i70.if.end9.i.i86_crit_edge
  %head.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %235 = ptrtoint ptr %head.i.i81 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %head.i.i81, align 8
  %237 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %237, align 8
  %conv10.i.i82 = zext i16 %239 to i32
  %add.ptr.i1.i = getelementptr i8, ptr %236, i32 %conv10.i.i82
  %csum_offset.i.i83 = getelementptr inbounds %struct.anon.60, ptr %237, i32 0, i32 1
  %240 = ptrtoint ptr %csum_offset.i.i83 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %csum_offset.i.i83, align 2
  %conv11.i.i84 = zext i16 %241 to i32
  %add.ptr12.i.i85 = getelementptr i8, ptr %add.ptr.i1.i, i32 %conv11.i.i84
  %242 = ptrtoint ptr %add.ptr12.i.i85 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 0, ptr %add.ptr12.i.i85, align 2
  br label %if.end11.i

if.then10.i:                                      ; preds = %skb_cow_head.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %if.end7

if.end11.i:                                       ; preds = %if.end9.i.i86, %if.end7.i.if.end11.i_crit_edge
  %243 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cur.i.i, align 4
  %cbd_sc.i = getelementptr inbounds %struct.bufdesc, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %cbd_sc.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %cbd_sc.i, align 2
  %247 = shl i16 %246, 8
  %248 = and i16 %247, -4096
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %249 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %251 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %253 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %data_len.i.i, align 8
  %sub.i2.i = sub i32 %252, %254
  %conv15.i = trunc i32 %sub.i2.i to i16
  %base.i.i87 = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 1
  %255 = ptrtoint ptr %base.i.i87 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base.i.i87, align 4
  %sub.ptr.lhs.cast.i3.i = ptrtoint ptr %244 to i32
  %sub.ptr.rhs.cast.i4.i = ptrtoint ptr %256 to i32
  %sub.ptr.sub.i5.i = sub i32 %sub.ptr.lhs.cast.i3.i, %sub.ptr.rhs.cast.i4.i
  %257 = ptrtoint ptr %dsize_log2.i.i38 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %dsize_log2.i.i38, align 1
  %conv.i7.i = zext i8 %258 to i32
  %shr.i8.i = ashr i32 %sub.ptr.sub.i5.i, %conv.i7.i
  %259 = ptrtoint ptr %250 to i32
  %tx_align.i = getelementptr i8, ptr %ndev, i32 3172
  %260 = ptrtoint ptr %tx_align.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %tx_align.i, align 4
  %and18.i = and i32 %261, %259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i89, label %if.end11.i.if.then22.i_crit_edge

if.end11.i.if.then22.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22.i

lor.lhs.false.i89:                                ; preds = %if.end11.i
  %quirks.i88 = getelementptr i8, ptr %ndev, i32 2540
  %262 = ptrtoint ptr %quirks.i88 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %quirks.i88, align 4
  %and20.i = and i32 %263, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.if.end33_crit_edge.i, label %lor.lhs.false.i89.if.then22.i_crit_edge

lor.lhs.false.i89.if.then22.i_crit_edge:          ; preds = %lor.lhs.false.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22.i

lor.lhs.false.if.end33_crit_edge.i:               ; preds = %lor.lhs.false.i89
  call void @__sanitizer_cov_trace_pc() #17
  %.pre.i = and i32 %sub.i2.i, 65535
  br label %if.end33.i

if.then22.i:                                      ; preds = %lor.lhs.false.i89.if.then22.i_crit_edge, %if.end11.i.if.then22.i_crit_edge
  %arrayidx.i90 = getelementptr %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 1, i32 %shr.i8.i
  %264 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx.i90, align 4
  %conv24.i = and i32 %sub.i2.i, 65535
  %266 = call ptr @memcpy(ptr %265, ptr %250, i32 %conv24.i)
  %267 = load ptr, ptr %arrayidx.i90, align 4
  %quirks27.i = getelementptr i8, ptr %ndev, i32 2540
  %268 = ptrtoint ptr %quirks27.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %quirks27.i, align 4
  %and28.i = and i32 %269, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp ne i32 %and28.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24.i)
  %cmp3.i.i = icmp ne i32 %conv24.i, 0
  %or.cond.i = select i1 %tobool29.not.i, i1 %cmp3.i.i, i1 false
  br i1 %or.cond.i, label %if.then22.i.for.body.i.i_crit_edge, label %if.then22.i.if.end33.i_crit_edge

if.then22.i.if.end33.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.then22.i.for.body.i.i_crit_edge:               ; preds = %if.then22.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then22.i.for.body.i.i_crit_edge
  %buf.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %267, %if.then22.i.for.body.i.i_crit_edge ]
  %i.04.i.i = phi i32 [ %add.i9.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then22.i.for.body.i.i_crit_edge ]
  %270 = ptrtoint ptr %buf.05.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %buf.05.i.i, align 4
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #15
  %273 = ptrtoint ptr %buf.05.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %buf.05.i.i, align 4
  %add.i9.i = add nuw nsw i32 %i.04.i.i, 4
  %incdec.ptr.i.i = getelementptr i32, ptr %buf.05.i.i, i32 1
  %cmp.i10.i = icmp ult i32 %add.i9.i, %conv24.i
  br i1 %cmp.i10.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end33.i_crit_edge

for.body.i.i.if.end33.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end33.i:                                       ; preds = %for.body.i.i.if.end33.i_crit_edge, %if.then22.i.if.end33.i_crit_edge, %lor.lhs.false.if.end33_crit_edge.i
  %conv34.pre-phi.i = phi i32 [ %.pre.i, %lor.lhs.false.if.end33_crit_edge.i ], [ %conv24.i, %if.then22.i.if.end33.i_crit_edge ], [ %conv24.i, %for.body.i.i.if.end33.i_crit_edge ]
  %bufaddr.0.i = phi ptr [ %250, %lor.lhs.false.if.end33_crit_edge.i ], [ %267, %if.then22.i.if.end33.i_crit_edge ], [ %267, %for.body.i.i.if.end33.i_crit_edge ]
  %pdev.i = getelementptr i8, ptr %ndev, i32 2472
  %274 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %275, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %bufaddr.0.i) #15
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i93

land.rhs.i.i:                                     ; preds = %if.end33.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i91, !prof !273

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.i

if.then.i.i91:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #15
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %275, i32 0, i32 3, i32 3
  %276 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %277, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i91.dev_name.exit.i.i_crit_edge

if.then.i.i91.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_pc() #17
  %278 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i91.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i92 = phi ptr [ %279, %if.end.i.i.i ], [ %277, %if.then.i.i91.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i92) #15
  br label %dma_map_single_attrs.exit.i

if.end39.i.i93:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %bufaddr.0.i, i32 noundef %conv34.pre-phi.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %280 = load ptr, ptr @mem_map, align 4
  %281 = ptrtoint ptr %bufaddr.0.i to i32
  %sub.i11.i = add i32 %281, 1073741824
  %shr.i12.i = lshr i32 %sub.i11.i, 12
  %add.ptr.i13.i = getelementptr %struct.page, ptr %280, i32 %shr.i12.i
  %and.i.i = and i32 %281, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i13.i, i32 noundef %and.i.i, i32 noundef %conv34.pre-phi.i, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i93, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i14.i = phi i32 [ %call41.i.i, %if.end39.i.i93 ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %282 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pdev.i, align 8
  %dev37.i = getelementptr inbounds %struct.platform_device, ptr %283, i32 0, i32 3
  tail call void @debug_dma_mapping_error(ptr noundef %dev37.i, i32 noundef %retval.0.i14.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i14.i)
  %cmp.i15.i = icmp eq i32 %retval.0.i14.i, -1
  br i1 %cmp.i15.i, label %if.then40.i, label %if.end45.i

if.then40.i:                                      ; preds = %dma_map_single_attrs.exit.i
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  %call41.i = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then40.i.if.end7_crit_edge, label %if.then43.i

if.then40.i.if.end7_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then43.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.70) #18
  br label %if.end7

if.end45.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool46.not.i = icmp eq i8 %213, 0
  br i1 %tobool46.not.i, label %if.else.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end45.i
  %284 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cur.i.i, align 4
  %286 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %end.i.i, align 4
  %nr_frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %nr_frags2.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %nr_frags2.i.i, align 2
  %conv.i17.i = zext i8 %289 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %cmp188.not.i.i = icmp eq i8 %289, 0
  br i1 %cmp188.not.i.i, label %if.then47.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then47.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_txq_submit_frag_skb.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then47.i
  %last.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 2
  %dsize.i.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 7
  %sub.i18.i = add nsw i32 %conv.i17.i, -1
  %bufdesc_ex.i.i94 = getelementptr i8, ptr %ndev, i32 2524
  %hwts_tx_en.i.i = getelementptr i8, ptr %ndev, i32 3056
  %quirks.i.i95 = getelementptr i8, ptr %ndev, i32 2540
  br label %for.body.i20.i

for.body.i20.i:                                   ; preds = %if.end78.i.i.for.body.i20.i_crit_edge, %for.body.lr.ph.i.i
  %estatus.0191.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %estatus.4.i.i, %if.end78.i.i.for.body.i20.i_crit_edge ]
  %frag.0190.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end78.i.i.for.body.i20.i_crit_edge ]
  %bdp.0189.i.i = phi ptr [ %285, %for.body.lr.ph.i.i ], [ %cond.i.i.i, %if.end78.i.i.for.body.i20.i_crit_edge ]
  %290 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i.i96 = getelementptr %struct.skb_shared_info, ptr %291, i32 0, i32 12, i32 %frag.0190.i.i
  %292 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %last.i.i.i, align 4
  %cmp.not.i.i.i = icmp ugt ptr %293, %bdp.0189.i.i
  br i1 %cmp.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  %294 = ptrtoint ptr %base.i.i87 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %base.i.i87, align 4
  br label %fec_enet_get_nextdesc.exit.i.i

cond.false.i.i.i:                                 ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  %296 = ptrtoint ptr %dsize.i.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %dsize.i.i.i, align 2
  %conv.i.i.i = zext i8 %297 to i32
  %add.ptr.i165.i.i = getelementptr i8, ptr %bdp.0189.i.i, i32 %conv.i.i.i
  br label %fec_enet_get_nextdesc.exit.i.i

fec_enet_get_nextdesc.exit.i.i:                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %295, %cond.true.i.i.i ], [ %add.ptr.i165.i.i, %cond.false.i.i.i ]
  %cbd_sc.i.i97 = getelementptr inbounds %struct.bufdesc, ptr %cond.i.i.i, i32 0, i32 1
  %298 = ptrtoint ptr %cbd_sc.i.i97 to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %cbd_sc.i.i97, align 2
  %300 = shl i16 %299, 8
  %301 = and i16 %300, 28672
  %302 = or i16 %301, -31744
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %291, i32 0, i32 12, i32 %frag.0190.i.i, i32 1
  %303 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.0190.i.i, i32 %sub.i18.i)
  %cmp15.i.i = icmp eq i32 %frag.0190.i.i, %sub.i18.i
  br i1 %cmp15.i.i, label %if.then.i22.i, label %fec_enet_get_nextdesc.exit.i.i.if.end32.i.i_crit_edge

fec_enet_get_nextdesc.exit.i.i.if.end32.i.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

if.then.i22.i:                                    ; preds = %fec_enet_get_nextdesc.exit.i.i
  %305 = or i16 %301, -25600
  %306 = ptrtoint ptr %bufdesc_ex.i.i94 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %bufdesc_ex.i.i94, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool.not.i21.i = icmp eq i8 %307, 0
  br i1 %tobool.not.i21.i, label %if.then.i22.i.if.end49.i.i_crit_edge, label %if.then20.i.i100

if.then.i22.i.if.end49.i.i_crit_edge:             ; preds = %if.then.i22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i.i

if.then20.i.i100:                                 ; preds = %if.then.i22.i
  %or21.i.i = or i32 %estatus.0191.i.i, 1073741824
  %tx_flags.i.i98 = getelementptr inbounds %struct.skb_shared_info, ptr %291, i32 0, i32 3
  %308 = ptrtoint ptr %tx_flags.i.i98 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %tx_flags.i.i98, align 1
  %310 = and i8 %309, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool25.not.i.i99 = icmp eq i8 %310, 0
  br i1 %tobool25.not.i.i99, label %if.then20.i.i100.if.end32.i.i_crit_edge, label %land.rhs.i23.i

if.then20.i.i100.if.end32.i.i_crit_edge:          ; preds = %if.then20.i.i100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

land.rhs.i23.i:                                   ; preds = %if.then20.i.i100
  %311 = ptrtoint ptr %hwts_tx_en.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %hwts_tx_en.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool26.not.i.i = icmp eq i32 %312, 0
  br i1 %tobool26.not.i.i, label %land.rhs.i23.i.if.end32.i.i_crit_edge, label %if.then29.i.i, !prof !273

land.rhs.i23.i.if.end32.i.i_crit_edge:            ; preds = %land.rhs.i23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

if.then29.i.i:                                    ; preds = %land.rhs.i23.i
  call void @__sanitizer_cov_trace_pc() #17
  %or30.i.i = or i32 %estatus.0191.i.i, 1610612736
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then29.i.i, %land.rhs.i23.i.if.end32.i.i_crit_edge, %if.then20.i.i100.if.end32.i.i_crit_edge, %fec_enet_get_nextdesc.exit.i.i.if.end32.i.i_crit_edge
  %status.0.ph.i.i = phi i16 [ %305, %if.then20.i.i100.if.end32.i.i_crit_edge ], [ %302, %fec_enet_get_nextdesc.exit.i.i.if.end32.i.i_crit_edge ], [ %305, %land.rhs.i23.i.if.end32.i.i_crit_edge ], [ %305, %if.then29.i.i ]
  %estatus.1.ph.i.i = phi i32 [ %or21.i.i, %if.then20.i.i100.if.end32.i.i_crit_edge ], [ %estatus.0191.i.i, %fec_enet_get_nextdesc.exit.i.i.if.end32.i.i_crit_edge ], [ %or21.i.i, %land.rhs.i23.i.if.end32.i.i_crit_edge ], [ %or30.i.i, %if.then29.i.i ]
  %313 = ptrtoint ptr %bufdesc_ex.i.i94 to i32
  call void @__asan_load1_noabort(i32 %313)
  %.pr.i.i = load i8, ptr %bufdesc_ex.i.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool34.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end32.i.i.if.end49.i.i_crit_edge, label %if.then35.i.i

if.end32.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  %314 = ptrtoint ptr %quirks.i.i95 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %quirks.i.i95, align 4
  %and36.i.i = and i32 %315, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.then35.i.i.if.end42.i.i_crit_edge, label %if.then38.i.i

if.then35.i.i.if.end42.i.i_crit_edge:             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i.i

if.then38.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %316 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %3, align 4
  %and40.i.i = shl i32 %317, 20
  %shl.i.i101 = and i32 %and40.i.i, 15728640
  %or41.i.i = or i32 %shl.i.i101, %estatus.1.ph.i.i
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then35.i.i.if.end42.i.i_crit_edge
  %estatus.2.i.i = phi i32 [ %or41.i.i, %if.then38.i.i ], [ %estatus.1.ph.i.i, %if.then35.i.i.if.end42.i.i_crit_edge ]
  %318 = ptrtoint ptr %ip_summed.i.i51 to i32
  call void @__asan_load2_noabort(i32 %318)
  %bf.load.i24.i = load i16, ptr %ip_summed.i.i51, align 8
  %319 = and i16 %bf.load.i24.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %319)
  %cmp44.i.i = icmp eq i16 %319, 1536
  %or47.i.i = or i32 %estatus.2.i.i, 402653184
  %spec.select.i.i102 = select i1 %cmp44.i.i, i32 %or47.i.i, i32 %estatus.2.i.i
  %cbd_bdu.i.i103 = getelementptr inbounds %struct.bufdesc_ex, ptr %cond.i.i.i, i32 0, i32 3
  %320 = ptrtoint ptr %cbd_bdu.i.i103 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 0, ptr %cbd_bdu.i.i103, align 4
  %321 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i102) #15
  %cbd_esc.i.i104 = getelementptr inbounds %struct.bufdesc_ex, ptr %cond.i.i.i, i32 0, i32 1
  %322 = ptrtoint ptr %cbd_esc.i.i104 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %cbd_esc.i.i104, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.end42.i.i, %if.end32.i.i.if.end49.i.i_crit_edge, %if.then.i22.i.if.end49.i.i_crit_edge
  %status.0202.i.i = phi i16 [ %status.0.ph.i.i, %if.end42.i.i ], [ %status.0.ph.i.i, %if.end32.i.i.if.end49.i.i_crit_edge ], [ %305, %if.then.i22.i.if.end49.i.i_crit_edge ]
  %estatus.4.i.i = phi i32 [ %spec.select.i.i102, %if.end42.i.i ], [ %estatus.1.ph.i.i, %if.end32.i.i.if.end49.i.i_crit_edge ], [ %estatus.0191.i.i, %if.then.i22.i.if.end49.i.i_crit_edge ]
  %323 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %arrayidx.i.i96, align 4
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %324) #15
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %291, i32 0, i32 12, i32 %frag.0190.i.i, i32 2
  %325 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %add.ptr.i168.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %326
  %327 = ptrtoint ptr %base.i.i87 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %base.i.i87, align 4
  %sub.ptr.lhs.cast.i.i.i105 = ptrtoint ptr %cond.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i106 = ptrtoint ptr %328 to i32
  %sub.ptr.sub.i.i.i107 = sub i32 %sub.ptr.lhs.cast.i.i.i105, %sub.ptr.rhs.cast.i.i.i106
  %329 = ptrtoint ptr %dsize_log2.i.i38 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %dsize_log2.i.i38, align 1
  %conv.i170.i.i = zext i8 %330 to i32
  %shr.i.i.i108 = ashr i32 %sub.ptr.sub.i.i.i107, %conv.i170.i.i
  %331 = ptrtoint ptr %add.ptr.i168.i.i to i32
  %332 = ptrtoint ptr %tx_align.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %tx_align.i, align 4
  %and53.i.i = and i32 %333, %331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i109 = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i109, label %lor.lhs.false.i.i110, label %if.end49.i.i.if.then58.i.i_crit_edge

if.end49.i.i.if.then58.i.i_crit_edge:             ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then58.i.i

lor.lhs.false.i.i110:                             ; preds = %if.end49.i.i
  %334 = ptrtoint ptr %quirks.i.i95 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %quirks.i.i95, align 4
  %and56.i.i = and i32 %335, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %lor.lhs.false.i.i110.if.end67.i.i_crit_edge, label %lor.lhs.false.i.i110.if.then58.i.i_crit_edge

lor.lhs.false.i.i110.if.then58.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then58.i.i

lor.lhs.false.i.i110.if.end67.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67.i.i

if.then58.i.i:                                    ; preds = %lor.lhs.false.i.i110.if.then58.i.i_crit_edge, %if.end49.i.i.if.then58.i.i_crit_edge
  %arrayidx59.i.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 1, i32 %shr.i.i.i108
  %336 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %arrayidx59.i.i, align 4
  %338 = call ptr @memcpy(ptr %337, ptr %add.ptr.i168.i.i, i32 %304)
  %339 = load ptr, ptr %arrayidx59.i.i, align 4
  %340 = ptrtoint ptr %quirks.i.i95 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %quirks.i.i95, align 4
  %and63.i.i = and i32 %341, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp ne i32 %and63.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %cmp3.i.i25.i = icmp sgt i32 %304, 0
  %or.cond.i.i111 = select i1 %tobool64.not.i.i, i1 %cmp3.i.i25.i, i1 false
  br i1 %or.cond.i.i111, label %if.then58.i.i.for.body.i.i.i116_crit_edge, label %if.then58.i.i.if.end67.i.i_crit_edge

if.then58.i.i.if.end67.i.i_crit_edge:             ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67.i.i

if.then58.i.i.for.body.i.i.i116_crit_edge:        ; preds = %if.then58.i.i
  br label %for.body.i.i.i116

for.body.i.i.i116:                                ; preds = %for.body.i.i.i116.for.body.i.i.i116_crit_edge, %if.then58.i.i.for.body.i.i.i116_crit_edge
  %buf.05.i.i.i112 = phi ptr [ %incdec.ptr.i.i.i115, %for.body.i.i.i116.for.body.i.i.i116_crit_edge ], [ %339, %if.then58.i.i.for.body.i.i.i116_crit_edge ]
  %i.04.i.i.i113 = phi i32 [ %add.i.i.i114, %for.body.i.i.i116.for.body.i.i.i116_crit_edge ], [ 0, %if.then58.i.i.for.body.i.i.i116_crit_edge ]
  %342 = ptrtoint ptr %buf.05.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %buf.05.i.i.i112, align 4
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #15
  %345 = ptrtoint ptr %buf.05.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %buf.05.i.i.i112, align 4
  %add.i.i.i114 = add i32 %i.04.i.i.i113, 4
  %incdec.ptr.i.i.i115 = getelementptr i32, ptr %buf.05.i.i.i112, i32 1
  %cmp.i.i26.i = icmp slt i32 %add.i.i.i114, %304
  br i1 %cmp.i.i26.i, label %for.body.i.i.i116.for.body.i.i.i116_crit_edge, label %for.body.i.i.i116.if.end67.i.i_crit_edge

for.body.i.i.i116.if.end67.i.i_crit_edge:         ; preds = %for.body.i.i.i116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67.i.i

for.body.i.i.i116.for.body.i.i.i116_crit_edge:    ; preds = %for.body.i.i.i116
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i116

if.end67.i.i:                                     ; preds = %for.body.i.i.i116.if.end67.i.i_crit_edge, %if.then58.i.i.if.end67.i.i_crit_edge, %lor.lhs.false.i.i110.if.end67.i.i_crit_edge
  %bufaddr.0.i.i = phi ptr [ %339, %if.then58.i.i.if.end67.i.i_crit_edge ], [ %add.ptr.i168.i.i, %lor.lhs.false.i.i110.if.end67.i.i_crit_edge ], [ %339, %for.body.i.i.i116.if.end67.i.i_crit_edge ]
  %346 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %pdev.i, align 8
  %dev.i.i117 = getelementptr inbounds %struct.platform_device, ptr %347, i32 0, i32 3
  %call.i.i.i118 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %bufaddr.0.i.i) #15
  br i1 %call.i.i.i118, label %land.rhs.i.i.i120, label %if.end39.i.i.i130

land.rhs.i.i.i120:                                ; preds = %if.end67.i.i
  %.b1.i.i.i119 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i119, label %land.rhs.i.i.i120.dma_map_single_attrs.exit.i.i131_crit_edge, label %if.then.i.i.i123, !prof !273

land.rhs.i.i.i120.dma_map_single_attrs.exit.i.i131_crit_edge: ; preds = %land.rhs.i.i.i120
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.i.i131

if.then.i.i.i123:                                 ; preds = %land.rhs.i.i.i120
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i121 = tail call ptr @dev_driver_string(ptr noundef %dev.i.i117) #15
  %init_name.i.i.i.i122 = getelementptr inbounds %struct.platform_device, ptr %347, i32 0, i32 3, i32 3
  %348 = ptrtoint ptr %init_name.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %init_name.i.i.i.i122, align 8
  %tobool.not.i.i.i27.i = icmp eq ptr %349, null
  br i1 %tobool.not.i.i.i27.i, label %if.end.i.i.i.i124, label %if.then.i.i.i123.dev_name.exit.i.i.i126_crit_edge

if.then.i.i.i123.dev_name.exit.i.i.i126_crit_edge: ; preds = %if.then.i.i.i123
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i.i126

if.end.i.i.i.i124:                                ; preds = %if.then.i.i.i123
  call void @__sanitizer_cov_trace_pc() #17
  %350 = ptrtoint ptr %dev.i.i117 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dev.i.i117, align 4
  br label %dev_name.exit.i.i.i126

dev_name.exit.i.i.i126:                           ; preds = %if.end.i.i.i.i124, %if.then.i.i.i123.dev_name.exit.i.i.i126_crit_edge
  %retval.0.i.i.i.i125 = phi ptr [ %351, %if.end.i.i.i.i124 ], [ %349, %if.then.i.i.i123.dev_name.exit.i.i.i126_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i.i.i121, ptr noundef %retval.0.i.i.i.i125) #15
  br label %dma_map_single_attrs.exit.i.i131

if.end39.i.i.i130:                                ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i117, ptr noundef %bufaddr.0.i.i, i32 noundef %304) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %352 = load ptr, ptr @mem_map, align 4
  %353 = ptrtoint ptr %bufaddr.0.i.i to i32
  %sub.i.i.i127 = add i32 %353, 1073741824
  %shr.i171.i.i = lshr i32 %sub.i.i.i127, 12
  %add.ptr.i172.i.i = getelementptr %struct.page, ptr %352, i32 %shr.i171.i.i
  %and.i.i.i128 = and i32 %353, 4095
  %call41.i.i.i129 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i117, ptr noundef %add.ptr.i172.i.i, i32 noundef %and.i.i.i128, i32 noundef %304, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit.i.i131

dma_map_single_attrs.exit.i.i131:                 ; preds = %if.end39.i.i.i130, %dev_name.exit.i.i.i126, %land.rhs.i.i.i120.dma_map_single_attrs.exit.i.i131_crit_edge
  %retval.0.i.i28.i = phi i32 [ %call41.i.i.i129, %if.end39.i.i.i130 ], [ -1, %dev_name.exit.i.i.i126 ], [ -1, %land.rhs.i.i.i120.dma_map_single_attrs.exit.i.i131_crit_edge ]
  %354 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %pdev.i, align 8
  %dev70.i.i = getelementptr inbounds %struct.platform_device, ptr %355, i32 0, i32 3
  tail call void @debug_dma_mapping_error(ptr noundef %dev70.i.i, i32 noundef %retval.0.i.i28.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i28.i)
  %cmp.i173.i.i = icmp eq i32 %retval.0.i.i28.i, -1
  br i1 %cmp.i173.i.i, label %if.then73.i.i, label %if.end78.i.i

if.then73.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i131
  %call74.i.i = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %if.then73.i.i.dma_mapping_error.i.i_crit_edge, label %if.then76.i.i

if.then73.i.i.dma_mapping_error.i.i_crit_edge:    ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_mapping_error.i.i

if.then76.i.i:                                    ; preds = %if.then73.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.70) #18
  br label %dma_mapping_error.i.i

if.end78.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i131
  %356 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i28.i) #15
  %cbd_bufaddr.i.i132 = getelementptr inbounds %struct.bufdesc, ptr %cond.i.i.i, i32 0, i32 2
  %357 = ptrtoint ptr %cbd_bufaddr.i.i132 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %cbd_bufaddr.i.i132, align 4
  %conv79.i.i = trunc i32 %304 to i16
  %358 = tail call i16 @llvm.bswap.i16(i16 %conv79.i.i) #15
  %359 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %358, ptr %cond.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !340
  tail call void @arm_heavy_mb() #15
  %360 = tail call i16 @llvm.bswap.i16(i16 %status.0202.i.i) #15
  %361 = ptrtoint ptr %cbd_sc.i.i97 to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %360, ptr %cbd_sc.i.i97, align 2
  %inc.i.i = add nuw nsw i32 %frag.0190.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i17.i
  br i1 %exitcond.not.i.i, label %if.end78.i.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge, label %if.end78.i.i.for.body.i20.i_crit_edge

if.end78.i.i.for.body.i20.i_crit_edge:            ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i20.i

if.end78.i.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge: ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_txq_submit_frag_skb.exit.i

dma_mapping_error.i.i:                            ; preds = %if.then76.i.i, %if.then73.i.i.dma_mapping_error.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag.0190.i.i)
  %cmp84192.not.i.i = icmp eq i32 %frag.0190.i.i, 0
  br i1 %cmp84192.not.i.i, label %dma_mapping_error.i.i.if.then50.i_crit_edge, label %for.body86.lr.ph.i.i

dma_mapping_error.i.i.if.then50.i_crit_edge:      ; preds = %dma_mapping_error.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50.i

for.body86.lr.ph.i.i:                             ; preds = %dma_mapping_error.i.i
  %362 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %cur.i.i, align 4
  br label %for.body86.i.i

for.body86.i.i:                                   ; preds = %fec_enet_get_nextdesc.exit183.i.i.for.body86.i.i_crit_edge, %for.body86.lr.ph.i.i
  %i.0194.i.i = phi i32 [ 0, %for.body86.lr.ph.i.i ], [ %inc95.i.i, %fec_enet_get_nextdesc.exit183.i.i.for.body86.i.i_crit_edge ]
  %bdp.1193.i.i = phi ptr [ %363, %for.body86.lr.ph.i.i ], [ %cond.i182.i.i, %fec_enet_get_nextdesc.exit183.i.i.for.body86.i.i_crit_edge ]
  %364 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %last.i.i.i, align 4
  %cmp.not.i175.i.i = icmp ugt ptr %365, %bdp.1193.i.i
  br i1 %cmp.not.i175.i.i, label %cond.false.i181.i.i, label %cond.true.i177.i.i

cond.true.i177.i.i:                               ; preds = %for.body86.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %366 = ptrtoint ptr %base.i.i87 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %base.i.i87, align 4
  br label %fec_enet_get_nextdesc.exit183.i.i

cond.false.i181.i.i:                              ; preds = %for.body86.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %368 = ptrtoint ptr %dsize.i.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %dsize.i.i.i, align 2
  %conv.i179.i.i = zext i8 %369 to i32
  %add.ptr.i180.i.i = getelementptr i8, ptr %bdp.1193.i.i, i32 %conv.i179.i.i
  br label %fec_enet_get_nextdesc.exit183.i.i

fec_enet_get_nextdesc.exit183.i.i:                ; preds = %cond.false.i181.i.i, %cond.true.i177.i.i
  %cond.i182.i.i = phi ptr [ %367, %cond.true.i177.i.i ], [ %add.ptr.i180.i.i, %cond.false.i181.i.i ]
  %370 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %pdev.i, align 8
  %dev90.i.i = getelementptr inbounds %struct.platform_device, ptr %371, i32 0, i32 3
  %cbd_bufaddr91.i.i = getelementptr inbounds %struct.bufdesc, ptr %cond.i182.i.i, i32 0, i32 2
  %372 = ptrtoint ptr %cbd_bufaddr91.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %cbd_bufaddr91.i.i, align 4
  %374 = tail call i32 @llvm.bswap.i32(i32 %373) #15
  %375 = ptrtoint ptr %cond.i182.i.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %cond.i182.i.i, align 4
  %377 = tail call i16 @llvm.bswap.i16(i16 %376) #15
  %conv93.i.i = zext i16 %377 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev90.i.i, i32 noundef %374, i32 noundef %conv93.i.i, i32 noundef 1, i32 noundef 0) #15
  %inc95.i.i = add nuw nsw i32 %i.0194.i.i, 1
  %exitcond198.not.i.i = icmp eq i32 %inc95.i.i, %frag.0190.i.i
  br i1 %exitcond198.not.i.i, label %fec_enet_get_nextdesc.exit183.i.i.if.then50.i_crit_edge, label %fec_enet_get_nextdesc.exit183.i.i.for.body86.i.i_crit_edge

fec_enet_get_nextdesc.exit183.i.i.for.body86.i.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body86.i.i

fec_enet_get_nextdesc.exit183.i.i.if.then50.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50.i

fec_enet_txq_submit_frag_skb.exit.i:              ; preds = %if.end78.i.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge, %if.then47.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge
  %retval.0.i29.i = phi ptr [ %285, %if.then47.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge ], [ %cond.i.i.i, %if.end78.i.i.fec_enet_txq_submit_frag_skb.exit.i_crit_edge ]
  %cmp.i30.i = icmp ugt ptr %retval.0.i29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %fec_enet_txq_submit_frag_skb.exit.i.if.then50.i_crit_edge, label %fec_enet_txq_submit_frag_skb.exit.i.if.end70.i_crit_edge

fec_enet_txq_submit_frag_skb.exit.i.if.end70.i_crit_edge: ; preds = %fec_enet_txq_submit_frag_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70.i

fec_enet_txq_submit_frag_skb.exit.i.if.then50.i_crit_edge: ; preds = %fec_enet_txq_submit_frag_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50.i

if.then50.i:                                      ; preds = %fec_enet_txq_submit_frag_skb.exit.i.if.then50.i_crit_edge, %fec_enet_get_nextdesc.exit183.i.i.if.then50.i_crit_edge, %dma_mapping_error.i.i.if.then50.i_crit_edge
  %378 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %pdev.i, align 8
  %dev52.i = getelementptr inbounds %struct.platform_device, ptr %379, i32 0, i32 3
  tail call void @dma_unmap_page_attrs(ptr noundef %dev52.i, i32 noundef %retval.0.i14.i, i32 noundef %conv34.pre-phi.i, i32 noundef 1, i32 noundef 0) #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %if.end7

if.else.i:                                        ; preds = %if.end45.i
  %380 = or i16 %248, 6144
  %bufdesc_ex.i = getelementptr i8, ptr %ndev, i32 2524
  %381 = ptrtoint ptr %bufdesc_ex.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %bufdesc_ex.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool57.not.i133 = icmp eq i8 %382, 0
  br i1 %tobool57.not.i133, label %if.else.i.if.end70.i_crit_edge, label %if.then58.i

if.else.i.if.end70.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70.i

if.then58.i:                                      ; preds = %if.else.i
  %383 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %384, i32 0, i32 3
  %385 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %tx_flags.i, align 1
  %387 = and i8 %386, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool62.not.i134 = icmp eq i8 %387, 0
  br i1 %tobool62.not.i134, label %if.then58.i.if.end70.i_crit_edge, label %land.rhs.i

if.then58.i.if.end70.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70.i

land.rhs.i:                                       ; preds = %if.then58.i
  %hwts_tx_en.i = getelementptr i8, ptr %ndev, i32 3056
  %388 = ptrtoint ptr %hwts_tx_en.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %hwts_tx_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %tobool63.not.i = icmp eq i32 %389, 0
  br i1 %tobool63.not.i, label %land.rhs.i.if.end70.i_crit_edge, label %if.then66.i, !prof !273

land.rhs.i.if.end70.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70.i

if.then66.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %land.rhs.i.if.end70.i_crit_edge, %if.then58.i.if.end70.i_crit_edge, %if.else.i.if.end70.i_crit_edge, %fec_enet_txq_submit_frag_skb.exit.i.if.end70.i_crit_edge
  %last_bdp.0.i = phi ptr [ %retval.0.i29.i, %fec_enet_txq_submit_frag_skb.exit.i.if.end70.i_crit_edge ], [ %244, %if.then66.i ], [ %244, %land.rhs.i.if.end70.i_crit_edge ], [ %244, %if.else.i.if.end70.i_crit_edge ], [ %244, %if.then58.i.if.end70.i_crit_edge ]
  %status.0.i = phi i16 [ %248, %fec_enet_txq_submit_frag_skb.exit.i.if.end70.i_crit_edge ], [ %380, %if.then66.i ], [ %380, %land.rhs.i.if.end70.i_crit_edge ], [ %380, %if.else.i.if.end70.i_crit_edge ], [ %380, %if.then58.i.if.end70.i_crit_edge ]
  %estatus.0.i = phi i32 [ 0, %fec_enet_txq_submit_frag_skb.exit.i.if.end70.i_crit_edge ], [ 1610612736, %if.then66.i ], [ 1073741824, %land.rhs.i.if.end70.i_crit_edge ], [ 0, %if.else.i.if.end70.i_crit_edge ], [ 1073741824, %if.then58.i.if.end70.i_crit_edge ]
  %390 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i14.i) #15
  %cbd_bufaddr.i = getelementptr inbounds %struct.bufdesc, ptr %244, i32 0, i32 2
  %391 = ptrtoint ptr %cbd_bufaddr.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %cbd_bufaddr.i, align 4
  %392 = tail call i16 @llvm.bswap.i16(i16 %conv15.i) #15
  %393 = ptrtoint ptr %244 to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %392, ptr %244, align 4
  %bufdesc_ex71.i = getelementptr i8, ptr %ndev, i32 2524
  %394 = ptrtoint ptr %bufdesc_ex71.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %bufdesc_ex71.i, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool72.not.i = icmp eq i8 %395, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end110.i_crit_edge, label %if.then73.i

if.end70.i.if.end110.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110.i

if.then73.i:                                      ; preds = %if.end70.i
  %396 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %end.i.i, align 4
  %tx_flags75.i = getelementptr inbounds %struct.skb_shared_info, ptr %397, i32 0, i32 3
  %398 = ptrtoint ptr %tx_flags75.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %tx_flags75.i, align 1
  %400 = and i8 %399, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %400)
  %tobool78.not.i = icmp eq i8 %400, 0
  br i1 %tobool78.not.i, label %if.then73.i.if.end95.i_crit_edge, label %land.rhs79.i

if.then73.i.if.end95.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95.i

land.rhs79.i:                                     ; preds = %if.then73.i
  %hwts_tx_en80.i = getelementptr i8, ptr %ndev, i32 3056
  %401 = ptrtoint ptr %hwts_tx_en80.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %hwts_tx_en80.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %tobool81.not.i = icmp eq i32 %402, 0
  br i1 %tobool81.not.i, label %land.rhs79.i.if.end95.i_crit_edge, label %if.then89.i, !prof !273

land.rhs79.i.if.end95.i_crit_edge:                ; preds = %land.rhs79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95.i

if.then89.i:                                      ; preds = %land.rhs79.i
  call void @__sanitizer_cov_trace_pc() #17
  %403 = or i8 %399, 4
  %404 = ptrtoint ptr %tx_flags75.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %403, ptr %tx_flags75.i, align 1
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then89.i, %land.rhs79.i.if.end95.i_crit_edge, %if.then73.i.if.end95.i_crit_edge
  %quirks96.i = getelementptr i8, ptr %ndev, i32 2540
  %405 = ptrtoint ptr %quirks96.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %quirks96.i, align 4
  %and97.i = and i32 %406, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end95.i.if.end103.i_crit_edge, label %if.then99.i

if.end95.i.if.end103.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.then99.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #17
  %407 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %3, align 4
  %and101.i = shl i32 %408, 20
  %shl.i = and i32 %and101.i, 15728640
  %or102.i = or i32 %shl.i, %estatus.0.i
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then99.i, %if.end95.i.if.end103.i_crit_edge
  %estatus.1.i = phi i32 [ %or102.i, %if.then99.i ], [ %estatus.0.i, %if.end95.i.if.end103.i_crit_edge ]
  %409 = ptrtoint ptr %ip_summed.i.i51 to i32
  call void @__asan_load2_noabort(i32 %409)
  %bf.load.i = load i16, ptr %ip_summed.i.i51, align 8
  %410 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %410)
  %cmp105.i = icmp eq i16 %410, 1536
  %or108.i = or i32 %estatus.1.i, 402653184
  %spec.select.i = select i1 %cmp105.i, i32 %or108.i, i32 %estatus.1.i
  %cbd_bdu.i = getelementptr inbounds %struct.bufdesc_ex, ptr %244, i32 0, i32 3
  %411 = ptrtoint ptr %cbd_bdu.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 0, ptr %cbd_bdu.i, align 4
  %412 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  %cbd_esc.i = getelementptr inbounds %struct.bufdesc_ex, ptr %244, i32 0, i32 1
  %413 = ptrtoint ptr %cbd_esc.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %412, ptr %cbd_esc.i, align 4
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.end103.i, %if.end70.i.if.end110.i_crit_edge
  %414 = ptrtoint ptr %base.i.i87 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %base.i.i87, align 4
  %sub.ptr.lhs.cast.i35.i = ptrtoint ptr %last_bdp.0.i to i32
  %sub.ptr.rhs.cast.i36.i = ptrtoint ptr %415 to i32
  %sub.ptr.sub.i37.i = sub i32 %sub.ptr.lhs.cast.i35.i, %sub.ptr.rhs.cast.i36.i
  %416 = ptrtoint ptr %dsize_log2.i.i38 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %dsize_log2.i.i38, align 1
  %conv.i39.i = zext i8 %417 to i32
  %shr.i40.i = ashr i32 %sub.ptr.sub.i37.i, %conv.i39.i
  %arrayidx113.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 2, i32 %shr.i40.i
  %418 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %skb, ptr %arrayidx113.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !341
  tail call void @arm_heavy_mb() #15
  %419 = or i16 %status.0.i, -31744
  %420 = tail call i16 @llvm.bswap.i16(i16 %419) #15
  %421 = ptrtoint ptr %cbd_sc.i to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 %420, ptr %cbd_sc.i, align 2
  %last.i.i135 = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 2
  %422 = ptrtoint ptr %last.i.i135 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %last.i.i135, align 4
  %cmp.not.i41.i = icmp ugt ptr %423, %last_bdp.0.i
  br i1 %cmp.not.i41.i, label %cond.false.i45.i, label %cond.true.i.i136

cond.true.i.i136:                                 ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #17
  %424 = ptrtoint ptr %base.i.i87 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %base.i.i87, align 4
  br label %fec_enet_get_nextdesc.exit.i138

cond.false.i45.i:                                 ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #17
  %dsize.i.i137 = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 7
  %426 = ptrtoint ptr %dsize.i.i137 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %dsize.i.i137, align 2
  %conv.i43.i = zext i8 %427 to i32
  %add.ptr.i44.i = getelementptr i8, ptr %last_bdp.0.i, i32 %conv.i43.i
  br label %fec_enet_get_nextdesc.exit.i138

fec_enet_get_nextdesc.exit.i138:                  ; preds = %cond.false.i45.i, %cond.true.i.i136
  %cond.i46.i = phi ptr [ %425, %cond.true.i.i136 ], [ %add.ptr.i44.i, %cond.false.i45.i ]
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #15
  %428 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i48.i = getelementptr inbounds %struct.skb_shared_info, ptr %429, i32 0, i32 3
  %430 = ptrtoint ptr %tx_flags.i48.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %tx_flags.i48.i, align 1
  %432 = and i8 %431, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %432)
  %tobool.not.i49.i = icmp eq i8 %432, 0
  br i1 %tobool.not.i49.i, label %fec_enet_get_nextdesc.exit.i138.skb_tx_timestamp.exit.i140_crit_edge, label %if.then.i50.i

fec_enet_get_nextdesc.exit.i138.skb_tx_timestamp.exit.i140_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i138
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_tx_timestamp.exit.i140

if.then.i50.i:                                    ; preds = %fec_enet_get_nextdesc.exit.i138
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #15
  br label %skb_tx_timestamp.exit.i140

skb_tx_timestamp.exit.i140:                       ; preds = %if.then.i50.i, %fec_enet_get_nextdesc.exit.i138.skb_tx_timestamp.exit.i140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !342
  tail call void @arm_heavy_mb() #15
  %433 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %cond.i46.i, ptr %cur.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !343
  tail call void @arm_heavy_mb() #15
  %reg_desc_active.i139 = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 4
  %434 = ptrtoint ptr %reg_desc_active.i139 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %reg_desc_active.i139, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %435, i32 0) #15, !srcloc !278
  br label %if.end7

if.end.thread149:                                 ; preds = %do.body.i, %lor.lhs.false81.i.if.end.thread149_crit_edge, %if.then8.i, %if.then4.i, %if.then.i.if.end.thread149_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso.i) #15
  br label %if.end7

if.end.sink.split:                                ; preds = %if.then20.i.i.if.end.sink.split_crit_edge, %if.then23.i.i.if.end.sink.split_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.70) #18
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then20.i.i.if.end_crit_edge, %if.then23.i.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso.i) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end.thread149, %skb_tx_timestamp.exit.i140, %if.then50.i, %if.then43.i, %if.then40.i.if.end7_crit_edge, %if.then10.i, %if.then6.i, %if.then.i50.if.end7_crit_edge
  %dirty_tx.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 5
  %436 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dirty_tx.i, align 4
  %cur.i142 = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 3
  %438 = ptrtoint ptr %cur.i142 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %cur.i142, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %437 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %439 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %dsize_log2.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 8
  %440 = ptrtoint ptr %dsize_log2.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %dsize_log2.i, align 1
  %conv.i143 = zext i8 %441 to i32
  %shr.i = ashr i32 %sub.ptr.sub.i, %conv.i143
  %sub.i144 = add i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i144)
  %cmp.i145 = icmp sgt i32 %sub.i144, -1
  br i1 %cmp.i145, label %if.end7.fec_enet_get_free_txdesc_num.exit_crit_edge, label %cond.false.i

if.end7.fec_enet_get_free_txdesc_num.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_get_free_txdesc_num.exit

cond.false.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %ring_size.i = getelementptr inbounds %struct.bufdesc_prop, ptr %3, i32 0, i32 6
  %442 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %ring_size.i, align 4
  %conv4.i = zext i16 %443 to i32
  %add.i = add nsw i32 %sub.i144, %conv4.i
  br label %fec_enet_get_free_txdesc_num.exit

fec_enet_get_free_txdesc_num.exit:                ; preds = %cond.false.i, %if.end7.fec_enet_get_free_txdesc_num.exit_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ %sub.i144, %if.end7.fec_enet_get_free_txdesc_num.exit_crit_edge ]
  %tx_stop_threshold = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %3, i32 0, i32 3
  %444 = ptrtoint ptr %tx_stop_threshold to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %tx_stop_threshold, align 4
  %conv9 = zext i16 %445 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv9)
  %cmp.not = icmp sgt i32 %cond.i, %conv9
  br i1 %cmp.not, label %fec_enet_get_free_txdesc_num.exit.cleanup_crit_edge, label %if.then11

fec_enet_get_free_txdesc_num.exit.cleanup_crit_edge: ; preds = %fec_enet_get_free_txdesc_num.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %fec_enet_get_free_txdesc_num.exit
  call void @__sanitizer_cov_trace_pc() #17
  %state.i = getelementptr %struct.netdev_queue, ptr %5, i32 %idxprom, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %fec_enet_get_free_txdesc_num.exit.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ 16, %if.end ], [ 0, %if.then11 ], [ 0, %fec_enet_get_free_txdesc_num.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @fec_enet_select_queue(ptr noundef %ndev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %ndev, ptr noundef %skb, ptr noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.i = icmp eq i16 %3, 3
  br i1 %cmp.i, label %fec_enet_get_raw_vlan_tci.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

fec_enet_get_raw_vlan_tci.exit:                   ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %h_vlan_TCI.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %h_vlan_TCI.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.not = icmp eq i16 %7, 0
  br i1 %tobool3.not, label %fec_enet_get_raw_vlan_tci.exit.cleanup_crit_edge, label %if.end5

fec_enet_get_raw_vlan_tci.exit.cleanup_crit_edge: ; preds = %fec_enet_get_raw_vlan_tci.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %fec_enet_get_raw_vlan_tci.exit
  call void @__sanitizer_cov_trace_pc() #17
  %8 = lshr i16 %7, 13
  %9 = zext i16 %8 to i32
  %arrayidx = getelementptr [8 x i16], ptr @fec_enet_vlan_pri_to_queue, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %fec_enet_get_raw_vlan_tci.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i16 [ %11, %if.end5 ], [ %call1, %if.then ], [ 0, %fec_enet_get_raw_vlan_tci.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9 = getelementptr i8, ptr %3, i32 132
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = or i32 %4, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !344
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #15, !srcloc !278
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i32 %4, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !345
  tail call void @arm_heavy_mb() #15
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr18 = getelementptr i8, ptr %10, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %8) #15, !srcloc !278
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and20 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end33, label %do.body23

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !346
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr27 = getelementptr i8, ptr %14, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -1) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !347
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr32 = getelementptr i8, ptr %16, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1) #15, !srcloc !278
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %17 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.094 = load ptr, ptr %mc, align 4
  %cmp.not95 = icmp eq ptr %ha.094, %mc
  br i1 %cmp.not95, label %if.end33.do.body57_crit_edge, label %for.body.lr.ph

if.end33.do.body57_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body57

for.body.lr.ph:                                   ; preds = %if.end33
  %addr_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 56
  %18 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %19 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ha.098 = phi ptr [ %ha.094, %for.body.lr.ph ], [ %ha.0, %for.inc.for.body_crit_edge ]
  %hash_high.097 = phi i32 [ 0, %for.body.lr.ph ], [ %hash_high.1, %for.inc.for.body_crit_edge ]
  %hash_low.096 = phi i32 [ 0, %for.body.lr.ph ], [ %hash_low.1, %for.inc.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.098, i32 0, i32 2
  %call39 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef %conv) #20
  %shr = lshr i32 %call39, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp43 = icmp slt i32 %call39, 0
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add nsw i32 %shr, -32
  %shl = shl nuw i32 1, %sub
  %or47 = or i32 %shl, %hash_high.097
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %shl49 = shl nuw i32 1, %shr
  %or50 = or i32 %shl49, %hash_low.096
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then45
  %hash_low.1 = phi i32 [ %hash_low.096, %if.then45 ], [ %or50, %if.else ]
  %hash_high.1 = phi i32 [ %or47, %if.then45 ], [ %hash_high.097, %if.else ]
  %20 = ptrtoint ptr %ha.098 to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.0 = load ptr, ptr %ha.098, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.inc.do.body57_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.body57_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body57

do.body57:                                        ; preds = %for.inc.do.body57_crit_edge, %if.end33.do.body57_crit_edge
  %hash_low.0.lcssa = phi i32 [ 0, %if.end33.do.body57_crit_edge ], [ %hash_low.1, %for.inc.do.body57_crit_edge ]
  %hash_high.0.lcssa = phi i32 [ 0, %if.end33.do.body57_crit_edge ], [ %hash_high.1, %for.inc.do.body57_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !348
  tail call void @arm_heavy_mb() #15
  %21 = tail call i32 @llvm.bswap.i32(i32 %hash_high.0.lcssa)
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr61 = getelementptr i8, ptr %23, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %21) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !349
  tail call void @arm_heavy_mb() #15
  %24 = tail call i32 @llvm.bswap.i32(i32 %hash_low.0.lcssa)
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr66 = getelementptr i8, ptr %26, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %24) #15, !srcloc !278
  br label %cleanup

cleanup:                                          ; preds = %do.body57, %do.body23, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_ioctl(ptr noundef %ndev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup23_crit_edge, label %if.end4

if.end.cleanup23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end4:                                          ; preds = %if.end
  %bufdesc_ex = getelementptr i8, ptr %ndev, i32 2524
  %4 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bufdesc_ex, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end21_crit_edge, label %land.lhs.true.i

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

land.lhs.true.i:                                  ; preds = %if.end4
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 37
  %6 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_ts.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.phy_has_hwtstamp.exit_crit_edge, label %land.rhs.i

land.lhs.true.i.phy_has_hwtstamp.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %phy_has_hwtstamp.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %hwtstamp.i = getelementptr inbounds %struct.mii_timestamper, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %hwtstamp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwtstamp.i, align 4
  %tobool3.i = icmp ne ptr %9, null
  br label %phy_has_hwtstamp.exit

phy_has_hwtstamp.exit:                            ; preds = %land.rhs.i, %land.lhs.true.i.phy_has_hwtstamp.exit_crit_edge
  %10 = phi i1 [ false, %land.lhs.true.i.phy_has_hwtstamp.exit_crit_edge ], [ %tobool3.i, %land.rhs.i ]
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %cmd, label %phy_has_hwtstamp.exit.if.end21_crit_edge [
    i32 35248, label %if.then8
    i32 35249, label %if.then14
  ]

phy_has_hwtstamp.exit.if.end21_crit_edge:         ; preds = %phy_has_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then8:                                         ; preds = %phy_has_hwtstamp.exit
  br i1 %10, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 @fec_ptp_set(ptr noundef %ndev, ptr noundef %rq) #15
  br label %cleanup23

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @fec_ptp_disable_hwts(ptr noundef %ndev) #15
  br label %if.end21

if.then14:                                        ; preds = %phy_has_hwtstamp.exit
  br i1 %10, label %if.then14.if.end21_crit_edge, label %if.then16

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 @fec_ptp_get(ptr noundef %ndev, ptr noundef %rq) #15
  br label %cleanup23

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %if.end12, %phy_has_hwtstamp.exit.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  %call22 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %1, ptr noundef %rq, i32 noundef %cmd) #15
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21, %if.then16, %if.then10, %if.end.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.1 = phi i32 [ %call22, %if.end21 ], [ -22, %entry.cleanup23_crit_edge ], [ -19, %if.end.cleanup23_crit_edge ], [ %call11, %if.then10 ], [ %call17, %if.then16 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.72) #18
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #18
  %tx_queue.i = getelementptr i8, ptr %ndev, i32 2440
  %0 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue.i, align 8
  %base.i = getelementptr inbounds %struct.bufdesc_prop, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %cur.i = getelementptr inbounds %struct.bufdesc_prop, ptr %1, i32 0, i32 3
  %dirty_tx.i = getelementptr inbounds %struct.fec_enet_priv_tx_q, ptr %1, i32 0, i32 5
  %last.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %1, i32 0, i32 2
  %dsize.i.i = getelementptr inbounds %struct.bufdesc_prop, ptr %1, i32 0, i32 7
  br label %do.body2.i

do.body2.i:                                       ; preds = %fec_enet_get_nextdesc.exit.i.do.body2.i_crit_edge, %entry
  %index.0.i = phi i32 [ 0, %entry ], [ %inc.i, %fec_enet_get_nextdesc.exit.i.do.body2.i_crit_edge ]
  %bdp.0.i = phi ptr [ %3, %entry ], [ %cond.i.i, %fec_enet_get_nextdesc.exit.i.do.body2.i_crit_edge ]
  %4 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.i, align 4
  %cmp.i = icmp eq ptr %bdp.0.i, %5
  %cond.i = select i1 %cmp.i, i32 83, i32 32
  %6 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dirty_tx.i, align 4
  %cmp8.i = icmp eq ptr %bdp.0.i, %7
  %cond9.i = select i1 %cmp8.i, i32 72, i32 32
  %cbd_sc.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %cbd_sc.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cbd_sc.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #15
  %conv.i = zext i16 %10 to i32
  %cbd_bufaddr.i = getelementptr inbounds %struct.bufdesc, ptr %bdp.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %cbd_bufaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cbd_bufaddr.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #15
  %14 = ptrtoint ptr %bdp.0.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bdp.0.i, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #15
  %conv10.i = zext i16 %16 to i32
  %arrayidx11.i = getelementptr %struct.fec_enet_priv_tx_q, ptr %1, i32 0, i32 2, i32 %index.0.i
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %index.0.i, i32 noundef %cond.i, i32 noundef %cond9.i, i32 noundef %conv.i, i32 noundef %13, i32 noundef %conv10.i, ptr noundef %18) #18
  %19 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %last.i.i, align 4
  %cmp.not.i.i = icmp ugt ptr %20, %bdp.0.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  br label %fec_enet_get_nextdesc.exit.i

cond.false.i.i:                                   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %dsize.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dsize.i.i, align 2
  %conv.i.i = zext i8 %24 to i32
  %add.ptr.i35.i = getelementptr i8, ptr %bdp.0.i, i32 %conv.i.i
  br label %fec_enet_get_nextdesc.exit.i

fec_enet_get_nextdesc.exit.i:                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %22, %cond.true.i.i ], [ %add.ptr.i35.i, %cond.false.i.i ]
  %inc.i = add i32 %index.0.i, 1
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %cmp18.not.i = icmp eq ptr %cond.i.i, %26
  br i1 %cmp18.not.i, label %fec_dump.exit, label %fec_enet_get_nextdesc.exit.i.do.body2.i_crit_edge

fec_enet_get_nextdesc.exit.i.do.body2.i_crit_edge: ; preds = %fec_enet_get_nextdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

fec_dump.exit:                                    ; preds = %fec_enet_get_nextdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %27 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_timeout_work = getelementptr i8, ptr %ndev, i32 2772
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %tx_timeout_work) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %link.i = getelementptr i8, ptr %dev, i32 2500
  %napi.i = getelementptr i8, ptr %dev, i32 2544
  %arrayidx = getelementptr i8, ptr %dev, i32 2512
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %entry
  tail call void @disable_irq(i32 noundef %1) #15
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !285
  %5 = and i32 %4, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !286
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %5) #15, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.i, label %if.then.fec_enet_interrupt.exit_crit_edge, label %land.lhs.true.i

if.then.fec_enet_interrupt.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit

land.lhs.true.i:                                  ; preds = %if.then
  %8 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.fec_enet_interrupt.exit_crit_edge, label %if.then.i

land.lhs.true.i.fec_enet_interrupt.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call2.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #15
  br i1 %call2.i, label %do.body.i, label %if.then.i.fec_enet_interrupt.exit_crit_edge

if.then.i.fec_enet_interrupt.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !287
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #15, !srcloc !278
  tail call void @__napi_schedule(ptr noundef %napi.i) #15
  br label %fec_enet_interrupt.exit

fec_enet_interrupt.exit:                          ; preds = %do.body.i, %if.then.i.fec_enet_interrupt.exit_crit_edge, %land.lhs.true.i.fec_enet_interrupt.exit_crit_edge, %if.then.fec_enet_interrupt.exit_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  tail call void @enable_irq(i32 noundef %13) #15
  br label %for.inc

for.inc:                                          ; preds = %fec_enet_interrupt.exit, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 2516
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.1 = icmp sgt i32 %15, 0
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  tail call void @disable_irq(i32 noundef %15) #15
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i10.i.1 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.1) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !285
  %19 = and i32 %18, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !286
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i.1 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.1, i32 %19) #15, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not.i.1 = icmp eq i32 %19, 0
  br i1 %cmp.i.not.i.1, label %if.then.1.fec_enet_interrupt.exit.1_crit_edge, label %land.lhs.true.i.1

if.then.1.fec_enet_interrupt.exit.1_crit_edge:    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit.1

land.lhs.true.i.1:                                ; preds = %if.then.1
  %22 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.1 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.1, label %land.lhs.true.i.1.fec_enet_interrupt.exit.1_crit_edge, label %if.then.i.1

land.lhs.true.i.1.fec_enet_interrupt.exit.1_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit.1

if.then.i.1:                                      ; preds = %land.lhs.true.i.1
  %call2.i.1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #15
  br i1 %call2.i.1, label %do.body.i.1, label %if.then.i.1.fec_enet_interrupt.exit.1_crit_edge

if.then.i.1.fec_enet_interrupt.exit.1_crit_edge:  ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit.1

do.body.i.1:                                      ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !287
  tail call void @arm_heavy_mb() #15
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i18.1 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.1, i32 0) #15, !srcloc !278
  tail call void @__napi_schedule(ptr noundef %napi.i) #15
  br label %fec_enet_interrupt.exit.1

fec_enet_interrupt.exit.1:                        ; preds = %do.body.i.1, %if.then.i.1.fec_enet_interrupt.exit.1_crit_edge, %land.lhs.true.i.1.fec_enet_interrupt.exit.1_crit_edge, %if.then.1.fec_enet_interrupt.exit.1_crit_edge
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1, align 4
  tail call void @enable_irq(i32 noundef %27) #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %fec_enet_interrupt.exit.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 2520
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.2 = icmp sgt i32 %29, 0
  br i1 %cmp1.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  tail call void @disable_irq(i32 noundef %29) #15
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i10.i.2 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.2) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !285
  %33 = and i32 %32, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !286
  tail call void @arm_heavy_mb() #15
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i.2 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.2, i32 %33) #15, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.not.i.2 = icmp eq i32 %33, 0
  br i1 %cmp.i.not.i.2, label %if.then.2.fec_enet_interrupt.exit.2_crit_edge, label %land.lhs.true.i.2

if.then.2.fec_enet_interrupt.exit.2_crit_edge:    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit.2

land.lhs.true.i.2:                                ; preds = %if.then.2
  %36 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.2 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.2, label %land.lhs.true.i.2.fec_enet_interrupt.exit.2_crit_edge, label %if.then.i.2

land.lhs.true.i.2.fec_enet_interrupt.exit.2_crit_edge: ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit.2

if.then.i.2:                                      ; preds = %land.lhs.true.i.2
  %call2.i.2 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #15
  br i1 %call2.i.2, label %do.body.i.2, label %if.then.i.2.fec_enet_interrupt.exit.2_crit_edge

if.then.i.2.fec_enet_interrupt.exit.2_crit_edge:  ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_interrupt.exit.2

do.body.i.2:                                      ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !287
  tail call void @arm_heavy_mb() #15
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i18.2 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.2, i32 0) #15, !srcloc !278
  tail call void @__napi_schedule(ptr noundef %napi.i) #15
  br label %fec_enet_interrupt.exit.2

fec_enet_interrupt.exit.2:                        ; preds = %do.body.i.2, %if.then.i.2.fec_enet_interrupt.exit.2_crit_edge, %land.lhs.true.i.2.fec_enet_interrupt.exit.2_crit_edge, %if.then.2.fec_enet_interrupt.exit.2_crit_edge
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.2, align 4
  tail call void @enable_irq(i32 noundef %41) #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %fec_enet_interrupt.exit.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %.pre = xor i64 %1, %features
  %.pre28 = and i64 %.pre, 1099511627776
  br i1 %tobool.i.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pre28)
  %tobool.not = icmp eq i64 %.pre28, 0
  br i1 %tobool.not, label %if.else.thread, label %if.then

if.else.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %features, ptr %features1, align 16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %napi = getelementptr i8, ptr %netdev, i32 2544
  tail call void @napi_disable(ptr noundef %napi) #15
  tail call fastcc void @local_bh_disable() #15
  tail call void @netif_tx_lock(ptr noundef %netdev) #15
  tail call fastcc void @fec_stop(ptr noundef %netdev)
  %5 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features1, align 16
  %xor.i = xor i64 %6, %features
  store i64 %features, ptr %features1, align 16
  %and.i = and i64 %xor.i, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.fec_enet_set_netdev_features.exit_crit_edge, label %if.then.i

if.then.fec_enet_set_netdev_features.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_set_netdev_features.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and3.i = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  %csum_flags6.i = getelementptr i8, ptr %netdev, i32 2768
  %7 = ptrtoint ptr %csum_flags6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %csum_flags6.i, align 8
  %and7.i = and i32 %8, -49
  %masksel.i = select i1 %tobool4.not.i, i32 0, i32 48
  %or.sink.i = or i32 %and7.i, %masksel.i
  store i32 %or.sink.i, ptr %csum_flags6.i, align 8
  br label %fec_enet_set_netdev_features.exit

fec_enet_set_netdev_features.exit:                ; preds = %if.then.i, %if.then.fec_enet_set_netdev_features.exit_crit_edge
  tail call fastcc void @fec_restart(ptr noundef %netdev)
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %9 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not.i = icmp eq i32 %10, 0
  br i1 %cmp4.not.i, label %fec_enet_set_netdev_features.exit.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

fec_enet_set_netdev_features.exit.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %fec_enet_set_netdev_features.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %fec_enet_set_netdev_features.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %12, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %13 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %fec_enet_set_netdev_features.exit.netif_tx_wake_all_queues.exit_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %netdev) #15
  tail call fastcc void @local_bh_enable() #15
  tail call void @napi_enable(ptr noundef %napi) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %features, ptr %features1, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pre28)
  %tobool.not.i19 = icmp eq i64 %.pre28, 0
  br i1 %tobool.not.i19, label %if.else.if.end_crit_edge, label %if.then.i26

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i26:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %and3.i20 = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i20)
  %tobool4.not.i21 = icmp eq i64 %and3.i20, 0
  %csum_flags6.i22 = getelementptr i8, ptr %netdev, i32 2768
  %16 = ptrtoint ptr %csum_flags6.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %csum_flags6.i22, align 8
  %and7.i23 = and i32 %17, -49
  %masksel.i24 = select i1 %tobool4.not.i21, i32 0, i32 48
  %or.sink.i25 = or i32 %and7.i23, %masksel.i24
  store i32 %or.sink.i25, ptr %csum_flags6.i22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i26, %if.else.if.end_crit_edge, %netif_tx_wake_all_queues.exit, %if.else.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6q_cpuidle_fec_irqs_used() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fec_enet_free_buffers(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %num_rx_queues = getelementptr i8, ptr %ndev, i32 2436
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp73.not = icmp eq i32 %1, 0
  br i1 %cmp73.not, label %entry.for.cond14.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond14.preheader

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %rx_align = getelementptr i8, ptr %ndev, i32 3176
  br label %for.body

for.cond14.preheader:                             ; preds = %for.inc11.for.cond14.preheader_crit_edge, %entry.for.cond14.preheader_crit_edge
  %num_tx_queues = getelementptr i8, ptr %ndev, i32 2432
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1578.not = icmp eq i32 %3, 0
  br i1 %cmp1578.not, label %for.cond14.preheader.for.end37_crit_edge, label %for.cond14.preheader.for.body17_crit_edge

for.cond14.preheader.for.body17_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body17

for.cond14.preheader.for.end37_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37

for.body:                                         ; preds = %for.inc11.for.body_crit_edge, %for.body.lr.ph
  %q.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.inc11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 13, i32 %q.074
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 1
  %ring_size = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ring_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp370.not = icmp eq i16 %7, 0
  br i1 %cmp370.not, label %for.body.for.inc11_crit_edge, label %for.body5.lr.ph

for.body.for.inc11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

for.body5.lr.ph:                                  ; preds = %for.body
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %last.i = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 2
  %dsize.i = getelementptr inbounds %struct.bufdesc_prop, ptr %5, i32 0, i32 7
  br label %for.body5

for.body5:                                        ; preds = %fec_enet_get_nextdesc.exit.for.body5_crit_edge, %for.body5.lr.ph
  %bdp.072 = phi ptr [ %9, %for.body5.lr.ph ], [ %cond.i, %fec_enet_get_nextdesc.exit.for.body5_crit_edge ]
  %i.071 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc, %fec_enet_get_nextdesc.exit.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.fec_enet_priv_rx_q, ptr %5, i32 0, i32 1, i32 %i.071
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  store ptr null, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body5.if.end_crit_edge, label %if.then

for.body5.if.end_crit_edge:                       ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %cbd_bufaddr = getelementptr inbounds %struct.bufdesc, ptr %bdp.072, i32 0, i32 2
  %14 = ptrtoint ptr %cbd_bufaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cbd_bufaddr, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %rx_align to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_align, align 8
  %sub = sub i32 2048, %18
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %16, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #15
  tail call void @consume_skb(ptr noundef nonnull %11) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5.if.end_crit_edge
  %19 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %last.i, align 4
  %cmp.not.i = icmp ugt ptr %20, %bdp.072
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  br label %fec_enet_get_nextdesc.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dsize.i, align 2
  %conv.i = zext i8 %24 to i32
  %add.ptr.i68 = getelementptr i8, ptr %bdp.072, i32 %conv.i
  br label %fec_enet_get_nextdesc.exit

fec_enet_get_nextdesc.exit:                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %22, %cond.true.i ], [ %add.ptr.i68, %cond.false.i ]
  %inc = add nuw nsw i32 %i.071, 1
  %25 = ptrtoint ptr %ring_size to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ring_size, align 4
  %conv = zext i16 %26 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %fec_enet_get_nextdesc.exit.for.body5_crit_edge, label %fec_enet_get_nextdesc.exit.for.inc11_crit_edge

fec_enet_get_nextdesc.exit.for.inc11_crit_edge:   ; preds = %fec_enet_get_nextdesc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

fec_enet_get_nextdesc.exit.for.body5_crit_edge:   ; preds = %fec_enet_get_nextdesc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5

for.inc11:                                        ; preds = %fec_enet_get_nextdesc.exit.for.inc11_crit_edge, %for.body.for.inc11_crit_edge
  %inc12 = add nuw i32 %q.074, 1
  %27 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_rx_queues, align 4
  %cmp = icmp ult i32 %inc12, %28
  br i1 %cmp, label %for.inc11.for.body_crit_edge, label %for.inc11.for.cond14.preheader_crit_edge

for.inc11.for.cond14.preheader_crit_edge:         ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond14.preheader

for.inc11.for.body_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body17:                                       ; preds = %for.inc35.for.body17_crit_edge, %for.cond14.preheader.for.body17_crit_edge
  %q.179 = phi i32 [ %inc36, %for.inc35.for.body17_crit_edge ], [ 0, %for.cond14.preheader.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 12, i32 %q.179
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx18, align 4
  %ring_size21 = getelementptr inbounds %struct.bufdesc_prop, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %ring_size21 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ring_size21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp2376.not = icmp eq i16 %32, 0
  br i1 %cmp2376.not, label %for.body17.for.inc35_crit_edge, label %for.body17.for.body25_crit_edge

for.body17.for.body25_crit_edge:                  ; preds = %for.body17
  br label %for.body25

for.body17.for.inc35_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body17.for.body25_crit_edge
  %i.177 = phi i32 [ %inc33, %for.body25.for.body25_crit_edge ], [ 0, %for.body17.for.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.fec_enet_priv_tx_q, ptr %30, i32 0, i32 1, i32 %i.177
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx26, align 4
  tail call void @kfree(ptr noundef %34) #15
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx26, align 4
  %arrayidx29 = getelementptr %struct.fec_enet_priv_tx_q, ptr %30, i32 0, i32 2, i32 %i.177
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx29, align 4
  store ptr null, ptr %arrayidx29, align 4
  tail call void @consume_skb(ptr noundef %37) #15
  %inc33 = add nuw nsw i32 %i.177, 1
  %38 = ptrtoint ptr %ring_size21 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ring_size21, align 4
  %conv22 = zext i16 %39 to i32
  %cmp23 = icmp ult i32 %inc33, %conv22
  br i1 %cmp23, label %for.body25.for.body25_crit_edge, label %for.body25.for.inc35_crit_edge

for.body25.for.inc35_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc35

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body25

for.inc35:                                        ; preds = %for.body25.for.inc35_crit_edge, %for.body17.for.inc35_crit_edge
  %inc36 = add nuw i32 %q.179, 1
  %40 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_tx_queues, align 8
  %cmp15 = icmp ult i32 %inc36, %41
  br i1 %cmp15, label %for.inc35.for.body17_crit_edge, label %for.inc35.for.end37_crit_edge

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end37

for.inc35.for.body17_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body17

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %for.cond14.preheader.for.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_new_rxbdp(ptr noundef %ndev, ptr nocapture noundef writeonly %bdp, ptr nocapture noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %rx_align = getelementptr i8, ptr %ndev, i32 3176
  %3 = ptrtoint ptr %rx_align to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_align, align 8
  %and = and i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i32 %4, 1
  %sub = sub i32 %add, %and
  %add.ptr.i27 = getelementptr i8, ptr %1, i32 %sub
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i27, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %7, i32 %sub
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %rx_align to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_align, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !273

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #15
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub4 = sub i32 2048, %13
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %11, i32 noundef %sub4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %11 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i28 = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i28, i32 noundef %and.i, i32 noundef %sub4, i32 noundef 2, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %20 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %cbd_bufaddr = getelementptr inbounds %struct.bufdesc, ptr %bdp, i32 0, i32 2
  %21 = ptrtoint ptr %cbd_bufaddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cbd_bufaddr, align 4
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void @debug_dma_mapping_error(ptr noundef %dev7, i32 noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then11, label %dma_map_single_attrs.exit.cleanup_crit_edge

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %dma_map_single_attrs.exit
  %call12 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %if.then14

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.60) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then11.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then14 ], [ -12, %if.then11.cleanup_crit_edge ], [ 0, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_enet_adjust_link(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i79.not = icmp eq i32 %6, 0
  br i1 %tobool.i79.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %link = getelementptr i8, ptr %ndev, i32 2500
  %7 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %link, align 4
  br label %if.end45

if.else:                                          ; preds = %lor.lhs.false
  %link3 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %link3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %link3, align 8
  %9 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %link29 = getelementptr i8, ptr %ndev, i32 2500
  %10 = ptrtoint ptr %link29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else28, label %if.then4

if.then4:                                         ; preds = %if.else
  br i1 %tobool30.not, label %if.then7, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %link29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %link29, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4.if.end_crit_edge
  %full_duplex = getelementptr i8, ptr %ndev, i32 2504
  %13 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %full_duplex, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %if.end
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed, align 8
  %speed18 = getelementptr i8, ptr %ndev, i32 2508
  %19 = ptrtoint ptr %speed18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp19.not = icmp eq i32 %18, %20
  br i1 %cmp19.not, label %if.end23, label %if.end17.if.end23.thread_crit_edge

if.end17.if.end23.thread_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.thread

if.end17.thread:                                  ; preds = %if.end
  %21 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %full_duplex, align 8
  %speed83 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %speed83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed83, align 8
  %speed1884 = getelementptr i8, ptr %ndev, i32 2508
  %24 = ptrtoint ptr %speed1884 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed1884, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp19.not85 = icmp eq i32 %23, %25
  br i1 %cmp19.not85, label %if.end17.thread.if.then25_crit_edge, label %if.end17.thread.if.end23.thread_crit_edge

if.end17.thread.if.end23.thread_crit_edge:        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.thread

if.end17.thread.if.then25_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.end23.thread:                                  ; preds = %if.end17.thread.if.end23.thread_crit_edge, %if.end17.if.end23.thread_crit_edge
  %speed1887 = phi ptr [ %speed1884, %if.end17.thread.if.end23.thread_crit_edge ], [ %speed18, %if.end17.if.end23.thread_crit_edge ]
  %26 = phi i32 [ %23, %if.end17.thread.if.end23.thread_crit_edge ], [ %18, %if.end17.if.end23.thread_crit_edge ]
  %27 = ptrtoint ptr %speed1887 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %speed1887, align 4
  br label %if.then25

if.end23:                                         ; preds = %if.end17
  br i1 %tobool30.not, label %if.end23.if.then25_crit_edge, label %if.end23.if.end45_crit_edge

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.end23.thread, %if.end17.thread.if.then25_crit_edge
  %napi = getelementptr i8, ptr %ndev, i32 2544
  tail call void @napi_disable(ptr noundef %napi) #15
  tail call fastcc void @local_bh_disable() #15
  tail call void @netif_tx_lock(ptr noundef %ndev) #15
  tail call fastcc void @fec_restart(ptr noundef %ndev)
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %28 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.not.i = icmp eq i32 %29, 0
  br i1 %cmp4.not.i, label %if.then25.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.then25.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.then25
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %31, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %32 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %if.then25.netif_tx_wake_all_queues.exit_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %ndev) #15
  tail call fastcc void @local_bh_enable() #15
  tail call void @napi_enable(ptr noundef %napi) #15
  br label %if.then44

if.else28:                                        ; preds = %if.else
  br i1 %tobool30.not, label %if.else28.if.end45_crit_edge, label %if.then31

if.else28.if.end45_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  %napi32 = getelementptr i8, ptr %ndev, i32 2544
  tail call void @napi_disable(ptr noundef %napi32) #15
  tail call fastcc void @local_bh_disable() #15
  tail call void @netif_tx_lock(ptr noundef %ndev) #15
  tail call fastcc void @fec_stop(ptr noundef %ndev)
  tail call void @netif_tx_unlock(ptr noundef %ndev) #15
  tail call fastcc void @local_bh_enable() #15
  tail call void @napi_enable(ptr noundef %napi32) #15
  %34 = ptrtoint ptr %link3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load35 = load i16, ptr %link3, align 8
  %bf.lshr36 = lshr i16 %bf.load35, 2
  %bf.clear37 = and i16 %bf.lshr36, 1
  %bf.cast38 = zext i16 %bf.clear37 to i32
  %35 = ptrtoint ptr %link29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.cast38, ptr %link29, align 4
  br label %if.then44

if.then44:                                        ; preds = %if.then31, %netif_tx_wake_all_queues.exit
  tail call void @phy_print_status(ptr noundef %1) #15
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else28.if.end45_crit_edge, %if.end23.if.end45_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mdiobus_is_registered_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_sym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fec_stop(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !350
  %and = and i32 %2, 65536
  %link = getelementptr i8, ptr %ndev, i32 2500
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !351
  tail call void @arm_heavy_mb() #15
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #15, !srcloc !278
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #15
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !352
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.then14, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.68) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body.if.end15_crit_edge, %entry.if.end15_crit_edge
  %wol_flag = getelementptr i8, ptr %ndev, i32 2532
  %12 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wol_flag, align 4
  %and16 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else33

if.then18:                                        ; preds = %if.end15
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %and19 = and i32 %15, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr31 = getelementptr i8, ptr %17, i32 36
  br i1 %tobool20.not, label %do.body27, label %do.body22

do.body22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #15, !srcloc !278
  br label %do.body47

do.body27:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 16777216) #15, !srcloc !278
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #15
  br label %do.body47

if.else33:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr37 = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !353
  %22 = or i32 %21, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !354
  tail call void @arm_heavy_mb() #15
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr45 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %22) #15, !srcloc !278
  br label %do.body47

do.body47:                                        ; preds = %if.else33, %do.body27, %do.body22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !355
  tail call void @arm_heavy_mb() #15
  %phy_speed = getelementptr i8, ptr %ndev, i32 2484
  %25 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_speed, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr51 = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %27) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !356
  tail call void @arm_heavy_mb() #15
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr56 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 -1442840566) #15, !srcloc !278
  %quirks57 = getelementptr i8, ptr %ndev, i32 2540
  %32 = ptrtoint ptr %quirks57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quirks57, align 4
  %and58 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body47.if.end74_crit_edge, label %land.lhs.true

do.body47.if.end74_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

land.lhs.true:                                    ; preds = %do.body47
  %34 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wol_flag, align 4
  %and61 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body64, label %land.lhs.true.if.end74_crit_edge

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

do.body64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !357
  tail call void @arm_heavy_mb() #15
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr68 = getelementptr i8, ptr %37, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 33554432) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !358
  tail call void @arm_heavy_mb() #15
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr73 = getelementptr i8, ptr %39, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %and) #15, !srcloc !278
  br label %if.end74

if.end74:                                         ; preds = %do.body64, %land.lhs.true.if.end74_crit_edge, %do.body47.if.end74_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6q_cpuidle_fec_irqs_unused() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_count_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fec_ptp_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_disable_hwts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fec_ptp_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_enet_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %driver1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %5, i32 noundef 32) #15
  %init_name.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev4 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_get_regs_len(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call1 = tail call ptr @platform_get_resource(ptr noundef %1, i32 noundef 512, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s.0 = phi i32 [ %add.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %s.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_enet_get_regs(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %regs, ptr nocapture noundef writeonly %regbuf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %version, align 4
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = call ptr @memset(ptr %regbuf, i32 0, i32 %7)
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.035 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [103 x i32], ptr @fec_enet_register_offset, i32 0, i32 %i.035
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = and i32 %i.035, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %11)
  %switch = icmp eq i32 %11, 24
  br i1 %switch, label %land.lhs.true, label %for.body.if.end7_crit_edge

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %and = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %shr = lshr i32 %10, 2
  %arrayidx8 = getelementptr i32, ptr %1, i32 %shr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8) #15, !srcloc !274
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !359
  %arrayidx11 = getelementptr i32, ptr %regbuf, i32 %shr
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 103
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %call.i31 = tail call i64 @ktime_get_mono_fast_ns() #15
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i31, ptr %last_busy.i, align 8
  %call.i32 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fec_enet_get_wol(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %wol) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wol_flag = getelementptr i8, ptr %ndev, i32 2532
  %0 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wol_flag, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %supported5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %supported5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %supported5, align 4
  %3 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wol_flag, align 4
  %and2 = shl i32 %4, 4
  %5 = and i32 %and2, 32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %supported5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %supported5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %5, %if.then ]
  %7 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_set_wol(ptr noundef %ndev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wol_flag = getelementptr i8, ptr %ndev, i32 2532
  %0 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wol_flag, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %and1 = and i32 %3, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %and6 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7 = icmp ne i32 %and6, 0
  %call8 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool7) #15
  %can_wakeup.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end4.if.else_crit_edge, label %device_may_wakeup.exit

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.end4
  %wakeup.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then11

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then11:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wol_flag, align 4
  %or = or i32 %8, 2
  br label %if.end15

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.end4.if.else_crit_edge
  %9 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wol_flag, align 4
  %and14 = and i32 %10, -3
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %storemerge = phi i32 [ %and14, %if.else ], [ %or, %if.then11 ]
  %11 = ptrtoint ptr %wol_flag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %wol_flag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fec_enet_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rx_time_itr = getelementptr i8, ptr %ndev, i32 3184
  %2 = ptrtoint ptr %rx_time_itr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_time_itr, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_coalesce_usecs, align 4
  %rx_pkts_itr = getelementptr i8, ptr %ndev, i32 3180
  %5 = ptrtoint ptr %rx_pkts_itr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_pkts_itr, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %7 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_max_coalesced_frames, align 4
  %tx_time_itr = getelementptr i8, ptr %ndev, i32 3192
  %8 = ptrtoint ptr %tx_time_itr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_time_itr, align 8
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %10 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_coalesce_usecs, align 4
  %tx_pkts_itr = getelementptr i8, ptr %ndev, i32 3188
  %11 = ptrtoint ptr %tx_pkts_itr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_pkts_itr, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %13 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_max_coalesced_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_set_coalesce(ptr nocapture noundef %ndev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %pdev = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.78) #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %6 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp4 = icmp ugt i32 %7, 255
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.81) #18
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs, align 4
  %itr_clk_rate.i = getelementptr i8, ptr %ndev, i32 3196
  %10 = ptrtoint ptr %itr_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %itr_clk_rate.i, align 4
  %div.i = udiv i32 %11, 64000
  %mul.i = mul i32 %div.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535999, i32 %mul.i)
  %cmp11 = icmp ugt i32 %mul.i, 65535999
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.84) #18
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %12 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_coalesce_usecs, align 4
  %mul.i51 = mul i32 %13, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535999, i32 %mul.i51)
  %cmp18 = icmp ugt i32 %mul.i51, 65535999
  br i1 %cmp18, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.87) #18
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %rx_time_itr = getelementptr i8, ptr %ndev, i32 3184
  %14 = ptrtoint ptr %rx_time_itr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %rx_time_itr, align 8
  %15 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_max_coalesced_frames, align 4
  %rx_pkts_itr = getelementptr i8, ptr %ndev, i32 3180
  %17 = ptrtoint ptr %rx_pkts_itr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rx_pkts_itr, align 4
  %18 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_coalesce_usecs, align 4
  %tx_time_itr = getelementptr i8, ptr %ndev, i32 3192
  %20 = ptrtoint ptr %tx_time_itr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tx_time_itr, align 8
  %21 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_max_coalesced_frames, align 4
  %tx_pkts_itr = getelementptr i8, ptr %ndev, i32 3188
  %23 = ptrtoint ptr %tx_pkts_itr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tx_pkts_itr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end23.cleanup_crit_edge, label %lor.lhs.false.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end23
  %24 = ptrtoint ptr %rx_pkts_itr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_pkts_itr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %tx_time_itr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_time_itr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i = icmp eq i32 %27, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %28 = ptrtoint ptr %tx_pkts_itr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pkts_itr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.i, label %lor.lhs.false4.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %and.i = shl i32 %25, 20
  %shl.i = and i32 %and.i, 267386880
  %div1.i.i = udiv i32 %mul.i, 1000
  %and12.i = shl i32 %29, 20
  %shl13.i = and i32 %and12.i, 267386880
  %mul.i81.i = mul i32 %27, %div.i
  %div1.i82.i = udiv i32 %mul.i81.i, 1000
  %and17.i = and i32 %div1.i82.i, 65535
  %or.i = or i32 %div1.i.i, %shl.i
  %or19.i = or i32 %or.i, -1073741824
  %or14.i = or i32 %and17.i, %shl13.i
  %or20.i = or i32 %or14.i, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !360
  tail call void @arm_heavy_mb() #15
  %30 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #15
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %32, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %30) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !361
  tail call void @arm_heavy_mb() #15
  %33 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #15
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %33) #15, !srcloc !278
  %36 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks, align 4
  %and26.i = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end.i.cleanup_crit_edge, label %do.body29.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !362
  tail call void @arm_heavy_mb() #15
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr33.i = getelementptr i8, ptr %39, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %30) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !363
  tail call void @arm_heavy_mb() #15
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %41, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %33) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !364
  tail call void @arm_heavy_mb() #15
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr43.i = getelementptr i8, ptr %43, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %30) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !365
  tail call void @arm_heavy_mb() #15
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr48.i = getelementptr i8, ptr %45, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %33) #15, !srcloc !278
  br label %cleanup

cleanup:                                          ; preds = %do.body29.i, %if.end.i.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end22, %do.end15, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -22, %do.end15 ], [ -22, %do.end22 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %lor.lhs.false2.i.cleanup_crit_edge ], [ 0, %lor.lhs.false4.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.body29.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fec_enet_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %pause) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pause_flag = getelementptr i8, ptr %ndev, i32 2528
  %0 = ptrtoint ptr %pause_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pause_flag, align 8
  %and = and i32 %1, 1
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %autoneg, align 4
  %3 = load i32, ptr %pause_flag, align 8
  %and2 = lshr i32 %3, 1
  %and2.lobit = and i32 %and2, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and2.lobit, ptr %tx_pause, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %5 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2.lobit, ptr %rx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_set_pauseparam(ptr noundef %ndev, ptr nocapture noundef readonly %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pause, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.89) #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %pause_flag = getelementptr i8, ptr %ndev, i32 2528
  %6 = ptrtoint ptr %pause_flag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pause_flag, align 8
  %7 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool4.not, i32 0, i32 2
  %9 = ptrtoint ptr %pause_flag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %pause_flag, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp ne i32 %11, 0
  %cond7 = zext i1 %tobool6.not to i32
  %or9 = or i32 %cond, %cond7
  %12 = ptrtoint ptr %pause_flag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or9, ptr %pause_flag, align 8
  %13 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12 = icmp ne i32 %14, 0
  %15 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14 = icmp ne i32 %16, 0
  %17 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16 = icmp ne i32 %18, 0
  tail call void @phy_set_sym_pause(ptr noundef nonnull %1, i1 noundef zeroext %tobool12, i1 noundef zeroext %tobool14, i1 noundef zeroext %tobool16) #15
  %19 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %if.end2.if.end25_crit_edge, label %if.then19

if.end2.if.end25_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then19:                                        ; preds = %if.end2
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then19.if.end22_crit_edge, label %if.then21

if.then19.if.end22_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @fec_stop(ptr noundef %ndev)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then19.if.end22_crit_edge
  %23 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phydev, align 16
  %call24 = tail call i32 @phy_start_aneg(ptr noundef %24) #15
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.end2.if.end25_crit_edge
  %state.i52 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %25 = ptrtoint ptr %state.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i52, align 4
  %and1.i.i53 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i53)
  %tobool.i54.not = icmp eq i32 %and1.i.i53, 0
  br i1 %tobool.i54.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  %napi = getelementptr i8, ptr %ndev, i32 2544
  tail call void @napi_disable(ptr noundef %napi) #15
  tail call fastcc void @local_bh_disable() #15
  tail call void @netif_tx_lock(ptr noundef %ndev) #15
  tail call fastcc void @fec_restart(ptr noundef %ndev)
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %27 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp4.not.i = icmp eq i32 %28, 0
  br i1 %cmp4.not.i, label %if.then27.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.then27.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.then27
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %30, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %31 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %if.then27.netif_tx_wake_all_queues.exit_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %ndev) #15
  tail call fastcc void @local_bh_enable() #15
  tail call void @napi_enable(ptr noundef %napi) #15
  br label %cleanup

cleanup:                                          ; preds = %netif_tx_wake_all_queues.exit, %if.end25.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %netif_tx_wake_all_queues.exit ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_enet_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.for.body_crit_edge
    i32 0, label %sw.bb1
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.06, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %arrayidx = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %i.06
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 32)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @net_selftest_get_strings(ptr noundef %data) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %for.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_enet_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %offset.i = getelementptr [53 x %struct.fec_stat], ptr @fec_stats, i32 0, i32 %i.09.i, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #15, !srcloc !274
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !284
  %conv3.i = zext i32 %7 to i64
  %arrayidx4.i = getelementptr %struct.fec_enet_private, ptr %add.ptr.i, i32 0, i32 65, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv3.i, ptr %arrayidx4.i, align 8
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ethtool_stats = getelementptr i8, ptr %dev, i32 3272
  %9 = call ptr @memcpy(ptr %data, ptr %ethtool_stats, i32 424)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %sset, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 0, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @net_selftest_get_count() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ %call, %sw.bb1 ], [ 53, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_get_ts_info(ptr noundef %ndev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bufdesc_ex = getelementptr i8, ptr %ndev, i32 2524
  %0 = ptrtoint ptr %bufdesc_ex to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bufdesc_ex, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr i8, ptr %ndev, i32 2816
  %3 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_clock, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 @ptp_clock_index(ptr noundef nonnull %4) #15
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %call4.sink = phi i32 [ %call4, %if.then2 ], [ -1, %if.then.if.end_crit_edge ]
  %5 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4.sink, ptr %5, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %rx_filters, align 4
  br label %cleanup

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %ndev, ptr noundef %info) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call7, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_get_eee(ptr noundef %ndev, ptr noundef %edata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %eee_enabled = getelementptr i8, ptr %ndev, i32 3220
  %4 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eee_enabled, align 4
  %eee_enabled4 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %6 = ptrtoint ptr %eee_enabled4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %eee_enabled4, align 4
  %eee_active = getelementptr i8, ptr %ndev, i32 3216
  %7 = ptrtoint ptr %eee_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eee_active, align 4
  %eee_active5 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %9 = ptrtoint ptr %eee_active5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %eee_active5, align 4
  %tx_lpi_timer = getelementptr i8, ptr %ndev, i32 3228
  %10 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_lpi_timer, align 4
  %tx_lpi_timer6 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %12 = ptrtoint ptr %tx_lpi_timer6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_lpi_timer6, align 4
  %tx_lpi_enabled = getelementptr i8, ptr %ndev, i32 3224
  %13 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_lpi_enabled, align 4
  %tx_lpi_enabled7 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %15 = ptrtoint ptr %tx_lpi_enabled7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_lpi_enabled7, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %16 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phydev, align 16
  %call8 = tail call i32 @phy_ethtool_get_eee(ptr noundef %17, ptr noundef %edata) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_set_eee(ptr noundef %ndev, ptr noundef %edata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %quirks = getelementptr i8, ptr %ndev, i32 2540
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %4 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_lpi_timer, align 4
  %tx_lpi_timer4 = getelementptr i8, ptr %ndev, i32 3228
  %6 = ptrtoint ptr %tx_lpi_timer4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tx_lpi_timer4, align 4
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %7 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end3.if.then10_crit_edge, label %lor.lhs.false

if.end3.if.then10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end3
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %9 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_lpi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false7

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_lpi_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %lor.lhs.false7.if.then10_crit_edge, label %if.else

lor.lhs.false7.if.then10_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false7.if.then10_crit_edge, %lor.lhs.false.if.then10_crit_edge, %if.end3.if.then10_crit_edge
  %tx_lpi_enabled.i = getelementptr i8, ptr %ndev, i32 3224
  %13 = ptrtoint ptr %tx_lpi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_lpi_enabled.i, align 4
  %eee_enabled.i = getelementptr i8, ptr %ndev, i32 3220
  %14 = ptrtoint ptr %eee_enabled.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %eee_enabled.i, align 4
  %eee_active.i = getelementptr i8, ptr %ndev, i32 3216
  %15 = ptrtoint ptr %eee_active.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %eee_active.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !366
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %17, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  tail call void @arm_heavy_mb() #15
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %19, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 0) #15, !srcloc !278
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false7
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %20 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phydev.i, align 16
  %call1.i = tail call i32 @phy_init_eee(ptr noundef %21, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %tx_lpi_timer4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_lpi_timer4, align 4
  %clk_ref_rate.i.i = getelementptr i8, ptr %ndev, i32 3240
  %24 = ptrtoint ptr %clk_ref_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_ref_rate.i.i, align 8
  %div.i.i = udiv i32 %25, 1000
  %mul.i.i = mul i32 %div.i.i, %23
  %div1.i.i = udiv i32 %mul.i.i, 1000
  %tx_lpi_enabled.i32 = getelementptr i8, ptr %ndev, i32 3224
  %26 = ptrtoint ptr %tx_lpi_enabled.i32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %tx_lpi_enabled.i32, align 4
  %eee_enabled.i33 = getelementptr i8, ptr %ndev, i32 3220
  %27 = ptrtoint ptr %eee_enabled.i33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %eee_enabled.i33, align 4
  %eee_active.i34 = getelementptr i8, ptr %ndev, i32 3216
  %28 = ptrtoint ptr %eee_active.i34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %eee_active.i34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !366
  tail call void @arm_heavy_mb() #15
  %29 = tail call i32 @llvm.bswap.i32(i32 %div1.i.i) #15
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %31, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %29) #15, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  tail call void @arm_heavy_mb() #15
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr15.i36 = getelementptr i8, ptr %33, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i36, i32 %29) #15, !srcloc !278
  br label %if.end16

if.end16:                                         ; preds = %if.end.i, %if.then10
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %34 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phydev, align 16
  %call17 = tail call i32 @phy_ethtool_set_eee(ptr noundef %35, ptr noundef %edata) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -95, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ], [ %call1.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fec_enet_get_tunable(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rx_copybreak = getelementptr i8, ptr %netdev, i32 3244
  %2 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_copybreak, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fec_enet_set_tunable(ptr nocapture noundef writeonly %netdev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %rx_copybreak = getelementptr i8, ptr %netdev, i32 3244
  %4 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_copybreak, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_sym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest_get_strings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_selftest_get_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fec_ptp_start_cyclecounter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pdev = getelementptr inbounds %struct.fec_enet_private, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body18_crit_edge, label %if.then4

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %.pre = shl i32 %mii_id, 23
  %.pre71 = and i32 %.pre, 260046848
  br label %do.body18

if.then4:                                         ; preds = %if.end
  %shr = ashr i32 %regnum, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !368
  tail call void @arm_heavy_mb() #15
  %and5 = shl i32 %mii_id, 23
  %shl = and i32 %and5, 260046848
  %and7 = shl i32 %shr, 18
  %shl8 = and i32 %and7, 8126464
  %and11 = and i32 %regnum, 65535
  %or9 = or i32 %shl, %and11
  %or10 = or i32 %or9, %shl8
  %or12 = or i32 %or10, 131072
  %5 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #15, !srcloc !278
  %call13 = tail call fastcc i32 @fec_enet_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then4.do.body18_crit_edge, label %if.then15

if.then4.do.body18_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body18

if.then15:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %netdev = getelementptr inbounds %struct.fec_enet_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.98) #18
  br label %out

do.body18:                                        ; preds = %if.then4.do.body18_crit_edge, %if.end.do.body18_crit_edge
  %shl23.pre-phi = phi i32 [ %.pre71, %if.end.do.body18_crit_edge ], [ %shl, %if.then4.do.body18_crit_edge ]
  %frame_start.0 = phi i32 [ 1073741824, %if.end.do.body18_crit_edge ], [ 0, %if.then4.do.body18_crit_edge ]
  %frame_addr.0 = phi i32 [ %regnum, %if.end.do.body18_crit_edge ], [ %shr, %if.then4.do.body18_crit_edge ]
  %frame_op.0 = phi i32 [ 536870912, %if.end.do.body18_crit_edge ], [ 805306368, %if.then4.do.body18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %and25 = shl i32 %frame_addr.0, 18
  %shl26 = and i32 %and25, 8126464
  %or21 = or i32 %shl23.pre-phi, %frame_start.0
  %or24 = or i32 %or21, %frame_op.0
  %or27 = or i32 %or24, %shl26
  %or28 = or i32 %or27, 131072
  %10 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr30 = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %10) #15, !srcloc !278
  %call31 = tail call fastcc i32 @fec_enet_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  %netdev34 = getelementptr inbounds %struct.fec_enet_private, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %netdev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev34, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.99) #18
  br label %out

if.end35:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr37 = getelementptr i8, ptr %16, i32 64
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !370
  %18 = and i32 %17, -65536
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %out

out:                                              ; preds = %if.end35, %if.then33, %if.then15
  %ret.0 = phi i32 [ %call13, %if.then15 ], [ %call31, %if.then33 ], [ %19, %if.end35 ]
  %call.i67 = tail call i64 @ktime_get_mono_fast_ns() #15
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i67, ptr %last_busy.i, align 8
  %call.i68 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_enet_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pdev = getelementptr inbounds %struct.fec_enet_private, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !268
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !269
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !270
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body18_crit_edge, label %if.then4

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %.pre = shl i32 %mii_id, 23
  %.pre66 = and i32 %.pre, 260046848
  br label %do.body18

if.then4:                                         ; preds = %if.end
  %shr = ashr i32 %regnum, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !371
  tail call void @arm_heavy_mb() #15
  %and5 = shl i32 %mii_id, 23
  %shl = and i32 %and5, 260046848
  %and7 = shl i32 %shr, 18
  %shl8 = and i32 %and7, 8126464
  %and11 = and i32 %regnum, 65535
  %or9 = or i32 %shl, %and11
  %or10 = or i32 %or9, %shl8
  %or12 = or i32 %or10, 131072
  %5 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #15, !srcloc !278
  %call13 = tail call fastcc i32 @fec_enet_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then4.do.body18_crit_edge, label %if.then4.out.sink.split_crit_edge

if.then4.out.sink.split_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.then4.do.body18_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body18

do.body18:                                        ; preds = %if.then4.do.body18_crit_edge, %if.end.do.body18_crit_edge
  %shl23.pre-phi = phi i32 [ %.pre66, %if.end.do.body18_crit_edge ], [ %shl, %if.then4.do.body18_crit_edge ]
  %frame_start.0 = phi i32 [ 1342177280, %if.end.do.body18_crit_edge ], [ 268435456, %if.then4.do.body18_crit_edge ]
  %frame_addr.0 = phi i32 [ %regnum, %if.end.do.body18_crit_edge ], [ %shr, %if.then4.do.body18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !372
  tail call void @arm_heavy_mb() #15
  %and25 = shl i32 %frame_addr.0, 18
  %shl26 = and i32 %and25, 8126464
  %conv = zext i16 %value to i32
  %or24 = or i32 %shl23.pre-phi, %conv
  %or27 = or i32 %or24, %frame_start.0
  %or28 = or i32 %or27, %shl26
  %or30 = or i32 %or28, 131072
  %8 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr32 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %8) #15, !srcloc !278
  %call33 = tail call fastcc i32 @fec_enet_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body18.out_crit_edge, label %do.body18.out.sink.split_crit_edge

do.body18.out.sink.split_crit_edge:               ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

do.body18.out_crit_edge:                          ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out.sink.split:                                   ; preds = %do.body18.out.sink.split_crit_edge, %if.then4.out.sink.split_crit_edge
  %.str.100.sink = phi ptr [ @.str.98, %if.then4.out.sink.split_crit_edge ], [ @.str.100, %do.body18.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call13, %if.then4.out.sink.split_crit_edge ], [ %call33, %do.body18.out.sink.split_crit_edge ]
  %netdev36 = getelementptr inbounds %struct.fec_enet_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev36, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull %.str.100.sink) #18
  br label %out

out:                                              ; preds = %out.sink.split, %do.body18.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.body18.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  %call.i62 = tail call i64 @ktime_get_mono_fast_ns() #15
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i62, ptr %last_busy.i, align 8
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_enet_mdio_wait(ptr nocapture noundef readonly %fep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #15
  %add.i = add i64 %call, 30000000
  %0 = ptrtoint ptr %fep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fep, align 8
  %add.ptr41 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !373
  %3 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not43 = icmp eq i32 %3, 0
  br i1 %tobool.not43, label %entry.land.lhs.true_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call5 = tail call i64 @ktime_get() #15
  call void @__sanitizer_cov_trace_cmp8(i64 %call5, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call5, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #15
  %5 = ptrtoint ptr %fep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fep, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !373
  %8 = and i32 %7, 32768
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.do.body_crit_edge

cond.false.do.body_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %fep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fep, align 8
  %add.ptr11 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !374
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %for.end.if.end30_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

do.body:                                          ; preds = %for.end.do.body_crit_edge, %cond.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !375
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %fep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fep, align 8
  %add.ptr29 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 32768) #15, !srcloc !278
  br label %if.end30

if.end30:                                         ; preds = %do.body, %for.end.if.end30_crit_edge
  %cond = phi i32 [ 0, %do.body ], [ -110, %for.end.if.end30_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @rtnl_lock() #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then:                                          ; preds = %entry
  %wol_flag = getelementptr i8, ptr %1, i32 2532
  %4 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol_flag, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %5, 4
  %6 = ptrtoint ptr %wol_flag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %wol_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %8) #15
  %napi = getelementptr i8, ptr %1, i32 2544
  tail call void @napi_disable(ptr noundef %napi) #15
  tail call fastcc void @local_bh_disable() #15
  tail call void @netif_tx_lock(ptr noundef %1) #15
  tail call void @netif_device_detach(ptr noundef %1) #15
  tail call void @netif_tx_unlock(ptr noundef %1) #15
  tail call fastcc void @local_bh_enable() #15
  tail call fastcc void @fec_stop(ptr noundef %1)
  %9 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wol_flag, align 4
  %and6 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #15
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr i8, ptr %1, i32 2472
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %call10 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev9) #15
  br label %if.end16

if.else:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 512) #15, !srcloc !278
  %wake_irq = getelementptr i8, ptr %1, i32 2536
  %17 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wake_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %if.then11, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @disable_irq(i32 noundef %18) #15
  %19 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wake_irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 1) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge
  %pdev.i = getelementptr i8, ptr %1, i32 2472
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i, align 8
  %stop_gpr1.i = getelementptr i8, ptr %1, i32 3164
  %25 = ptrtoint ptr %stop_gpr1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stop_gpr1.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.else16.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %reg.i = getelementptr i8, ptr %1, i32 3168
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.i, align 4
  %conv.i = zext i8 %28 to i32
  %bit.i = getelementptr i8, ptr %1, i32 3169
  %29 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bit.i, align 1
  %conv5.i = zext i8 %30 to i32
  %shl.i = shl nuw i32 1, %conv5.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %26, i32 noundef %conv.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %if.end16

if.else16.i:                                      ; preds = %if.end15
  %tobool17.not.i = icmp eq ptr %24, null
  br i1 %tobool17.not.i, label %if.else16.i.if.end16_crit_edge, label %land.lhs.true.i

if.else16.i.if.end16_crit_edge:                   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

land.lhs.true.i:                                  ; preds = %if.else16.i
  %sleep_mode_enable.i = getelementptr inbounds %struct.fec_platform_data, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %sleep_mode_enable.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sleep_mode_enable.i, align 4
  %tobool18.not.i = icmp eq ptr %32, null
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.end16_crit_edge, label %if.then19.i

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %32(i32 noundef 1) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then19.i, %land.lhs.true.i.if.end16_crit_edge, %if.else16.i.if.end16_crit_edge, %if.then.i, %if.then8
  %call17 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %1, i1 noundef zeroext false)
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %entry.if.end18_crit_edge
  tail call void @rtnl_unlock() #15
  %reg_phy = getelementptr i8, ptr %1, i32 3160
  %33 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_phy, align 8
  %tobool19.not = icmp eq ptr %34, null
  br i1 %tobool19.not, label %if.end18.if.end26_crit_edge, label %land.lhs.true

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end18
  %wol_flag20 = getelementptr i8, ptr %1, i32 2532
  %35 = ptrtoint ptr %wol_flag20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wol_flag20, align 4
  %and21 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = tail call i32 @regulator_disable(ptr noundef nonnull %34) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %clk_enet_out = getelementptr i8, ptr %1, i32 2324
  %37 = ptrtoint ptr %clk_enet_out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_enet_out, align 4
  %tobool27.not = icmp eq ptr %38, null
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end26.if.then30_crit_edge

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end26
  %39 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_phy, align 8
  %tobool29.not = icmp eq ptr %40, null
  br i1 %tobool29.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end26.if.then30_crit_edge
  %link = getelementptr i8, ptr %1, i32 2500
  %41 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %link, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %reg_phy = getelementptr i8, ptr %1, i32 3160
  %2 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_phy, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %wol_flag = getelementptr i8, ptr %1, i32 2532
  %4 = ptrtoint ptr %wol_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol_flag, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void @rtnl_lock() #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end7.if.end36_crit_edge, label %if.then9

if.end7.if.end36_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then9:                                         ; preds = %if.end7
  %call10 = tail call fastcc i32 @fec_enet_clk_enable(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  tail call void @rtnl_unlock() #15
  %8 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_phy, align 8
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %if.then12.cleanup_crit_edge, label %if.then39

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %wol_flag14 = getelementptr i8, ptr %1, i32 2532
  %10 = ptrtoint ptr %wol_flag14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wol_flag14, align 4
  %and15 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %pdev = getelementptr i8, ptr %1, i32 2472
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i, align 8
  %stop_gpr1.i = getelementptr i8, ptr %1, i32 3164
  %16 = ptrtoint ptr %stop_gpr1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_gpr1.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else16.i, label %if.then.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %reg.i = getelementptr i8, ptr %1, i32 3168
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg.i, align 4
  %conv.i = zext i8 %19 to i32
  %bit.i = getelementptr i8, ptr %1, i32 3169
  %20 = ptrtoint ptr %bit.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bit.i, align 1
  %conv5.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 1, %conv5.i
  %call.i38.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %17, i32 noundef %conv.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %fec_enet_stop_mode.exit

if.else16.i:                                      ; preds = %if.then17
  %tobool17.not.i = icmp eq ptr %15, null
  br i1 %tobool17.not.i, label %if.else16.i.fec_enet_stop_mode.exit_crit_edge, label %land.lhs.true.i

if.else16.i.fec_enet_stop_mode.exit_crit_edge:    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_stop_mode.exit

land.lhs.true.i:                                  ; preds = %if.else16.i
  %sleep_mode_enable.i = getelementptr inbounds %struct.fec_platform_data, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %sleep_mode_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sleep_mode_enable.i, align 4
  %tobool18.not.i = icmp eq ptr %23, null
  br i1 %tobool18.not.i, label %land.lhs.true.i.fec_enet_stop_mode.exit_crit_edge, label %if.then19.i

land.lhs.true.i.fec_enet_stop_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fec_enet_stop_mode.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %23(i32 noundef 0) #15
  br label %fec_enet_stop_mode.exit

fec_enet_stop_mode.exit:                          ; preds = %if.then19.i, %land.lhs.true.i.fec_enet_stop_mode.exit_crit_edge, %if.else16.i.fec_enet_stop_mode.exit_crit_edge, %if.then.i
  %wake_irq = getelementptr i8, ptr %1, i32 2536
  %24 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wake_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool18.not = icmp eq i32 %25, 0
  br i1 %tobool18.not, label %fec_enet_stop_mode.exit.if.end23_crit_edge, label %if.then19

fec_enet_stop_mode.exit.if.end23_crit_edge:       ; preds = %fec_enet_stop_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then19:                                        ; preds = %fec_enet_stop_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %25, i32 noundef 0) #15
  %26 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wake_irq, align 8
  tail call void @enable_irq(i32 noundef %27) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %fec_enet_stop_mode.exit.if.end23_crit_edge
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  %31 = and i32 %30, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  tail call void @arm_heavy_mb() #15
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr28 = getelementptr i8, ptr %33, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %31) #15, !srcloc !278
  %34 = ptrtoint ptr %wol_flag14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wol_flag14, align 4
  %and30 = and i32 %35, -5
  store i32 %and30, ptr %wol_flag14, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %dev31 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call32 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev31) #15
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end23
  tail call fastcc void @fec_restart(ptr noundef %1)
  tail call fastcc void @local_bh_disable() #15
  tail call void @netif_tx_lock(ptr noundef %1) #15
  tail call void @netif_device_attach(ptr noundef %1) #15
  tail call void @netif_tx_unlock(ptr noundef %1) #15
  tail call fastcc void @local_bh_enable() #15
  %napi = getelementptr i8, ptr %1, i32 2544
  tail call void @napi_enable(ptr noundef %napi) #15
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %36 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phydev, align 16
  %call34 = tail call i32 @phy_init_hw(ptr noundef %37) #15
  %38 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %39) #15
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end7.if.end36_crit_edge
  tail call void @rtnl_unlock() #15
  br label %cleanup

if.then39:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %call41 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end36, %if.then12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ %call4, %if.then.cleanup_crit_edge ], [ %call10, %if.then39 ], [ %call10, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_ahb = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %3) #15
  tail call void @clk_unprepare(ptr noundef %3) #15
  %clk_ipg = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 8
  tail call void @clk_disable(ptr noundef %5) #15
  tail call void @clk_unprepare(ptr noundef %5) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_ahb = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ahb, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_ipg = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 8
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end.failed_clk_ipg_crit_edge

if.end.failed_clk_ipg_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %failed_clk_ipg

if.end.i19:                                       ; preds = %if.end
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.then3.i20

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %5) #15
  br label %failed_clk_ipg

failed_clk_ipg:                                   ; preds = %if.then3.i20, %if.end.failed_clk_ipg_crit_edge
  %retval.0.i21.ph = phi i32 [ %call1.i17, %if.then3.i20 ], [ %call.i15, %if.end.failed_clk_ipg_crit_edge ]
  %6 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %7) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %failed_clk_ipg, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %failed_clk_ipg ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i21.ph, %failed_clk_ipg ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i19.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !67, !69, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !138, !140, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !172, !173, !175, !176, !177, !179, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253}
!llvm.named.register.sp = !{!255}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @__param_macaddr, !1, !"__param_macaddr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 223, i32 1}
!2 = !{ptr @__UNIQUE_ID_macaddrtype511, !1, !"__UNIQUE_ID_macaddrtype511", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_macaddr512, !4, !"__UNIQUE_ID_macaddr512", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 224, i32 1}
!5 = !{ptr @__initcall__kmod_fec__520_4196_fec_driver_init6, !6, !"__initcall__kmod_fec__520_4196_fec_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 4196, i32 1}
!7 = !{ptr @__exitcall_fec_driver_exit, !6, !"__exitcall_fec_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file521, !9, !"__UNIQUE_ID_file521", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 4198, i32 1}
!10 = !{ptr @__UNIQUE_ID_license522, !9, !"__UNIQUE_ID_license522", i1 false, i1 false}
!11 = !{ptr @__param_str_macaddr, !1, !"__param_str_macaddr", i1 false, i1 false}
!12 = !{ptr @__param_arr_macaddr, !1, !"__param_arr_macaddr", i1 false, i1 false}
!13 = !{ptr @macaddr, !14, !"macaddr", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 222, i32 22}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 4186, i32 11}
!17 = !{ptr @fec_driver, !18, !"fec_driver", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 4184, i32 31}
!19 = !{ptr @fec_probe.dev_id, !20, !"dev_id", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3763, i32 13}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3815, i32 32}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3816, i32 32}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3817, i32 33}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3820, i32 26}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3827, i32 34}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3831, i32 4}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fec_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @fec_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3854, i32 42}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3860, i32 42}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3869, i32 47}
!45 = !{ptr @fec_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3874, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3877, i32 42}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3884, i32 48}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3890, i32 42}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3907, i32 57}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3911, i32 4}
!58 = !{ptr @fec_probe._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fec_probe._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3942, i32 40}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3980, i32 21}
!64 = !{ptr @fec_probe.__key.24, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3983, i32 2}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3675, i32 27}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3677, i32 27}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3680, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fec_enet_get_queue_num._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @fec_enet_get_queue_num._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3687, i32 3}
!79 = !{ptr @fec_enet_get_queue_num._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @fec_enet_get_queue_num._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3726, i32 32}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3733, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @fec_enet_init_stop_mode.__UNIQUE_ID_ddebug519, !84, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3739, i32 3}
!89 = !{ptr @fec_enet_init_stop_mode._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @fec_enet_init_stop_mode._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2061, i32 32}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2063, i32 4}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @fec_enet_parse_rgmii_delay._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @fec_enet_parse_rgmii_delay._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2071, i32 32}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2073, i32 4}
!102 = !{ptr @fec_enet_parse_rgmii_delay._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @fec_enet_parse_rgmii_delay._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3609, i32 33}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3614, i32 36}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3620, i32 33}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3625, i32 42}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3629, i32 4}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3631, i32 3}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @fec_reset_phy._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @fec_reset_phy._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3496, i32 3}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @fec_enet_init._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @fec_enet_init._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1777, i32 3}
!126 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @fec_get_mac._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @fec_get_mac._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1779, i32 3}
!131 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @fec_get_mac._entry.56, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @fec_get_mac._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @offset_des_active_rxq, !135, !"offset_des_active_rxq", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3460, i32 29}
!136 = !{ptr @offset_des_active_txq, !137, !"offset_des_active_txq", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3464, i32 29}
!138 = !{ptr @fec_netdev_ops, !139, !"fec_netdev_ops", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 3444, i32 36}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1423, i32 21}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!144 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2097, i32 21}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2112, i32 22}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2113, i32 25}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2118, i32 5}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2124, i32 20}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1215, i32 21}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 756, i32 21}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 720, i32 22}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 519, i32 21}
!164 = !{ptr @fec_enet_vlan_pri_to_queue, !165, !"fec_enet_vlan_pri_to_queue", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 79, i32 18}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 370, i32 20}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 371, i32 2}
!170 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @fec_dump._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @fec_dump._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 377, i32 3}
!175 = !{ptr @fec_dump._entry.75, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @fec_dump._entry_ptr.77, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @fec_enet_ethtool_ops, !178, !"fec_enet_ethtool_ops", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2901, i32 33}
!179 = distinct !{null, !180, !"fec_enet_register_version", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2319, i32 14}
!181 = !{ptr @fec_enet_register_offset, !182, !"fec_enet_register_offset", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2320, i32 12}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2699, i32 3}
!185 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @fec_enet_set_coalesce._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @fec_enet_set_coalesce._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2704, i32 3}
!190 = !{ptr @fec_enet_set_coalesce._entry.80, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @fec_enet_set_coalesce._entry_ptr.82, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2710, i32 3}
!194 = !{ptr @fec_enet_set_coalesce._entry.83, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @fec_enet_set_coalesce._entry_ptr.85, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2716, i32 3}
!198 = !{ptr @fec_enet_set_coalesce._entry.86, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @fec_enet_set_coalesce._entry_ptr.88, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2448, i32 4}
!202 = !{ptr @fec_stats, !203, !"fec_stats", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2481, i32 3}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1514, i32 23}
!206 = !{ptr @fec_enet_mii_init.fec0_mii_bus, !207, !"fec0_mii_bus", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2152, i32 25}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2188, i32 49}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2190, i32 30}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2192, i32 10}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2207, i32 3}
!216 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @fec_enet_mii_init._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @fec_enet_mii_init._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2256, i32 23}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 2259, i32 46}
!223 = !{ptr @mii_cnt, !224, !"mii_cnt", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 312, i32 12}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1887, i32 28}
!227 = !{ptr @.str.99, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1908, i32 27}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 1964, i32 27}
!231 = !{ptr @fec_dt_ids, !232, !"fec_dt_ids", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 208, i32 34}
!233 = !{ptr @fec_pm_ops, !234, !"fec_pm_ops", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 4179, i32 32}
!235 = !{ptr @fec_devtype, !236, !"fec_devtype", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 158, i32 34}
!237 = !{ptr @fec_imx25_info, !238, !"fec_imx25_info", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 94, i32 33}
!239 = !{ptr @fec_imx27_info, !240, !"fec_imx27_info", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 99, i32 33}
!241 = !{ptr @fec_imx28_info, !242, !"fec_imx28_info", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 103, i32 33}
!243 = !{ptr @fec_imx6q_info, !244, !"fec_imx6q_info", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 110, i32 33}
!245 = !{ptr @fec_mvf600_info, !246, !"fec_mvf600_info", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 117, i32 33}
!247 = !{ptr @fec_imx6x_info, !248, !"fec_imx6x_info", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 121, i32 33}
!249 = !{ptr @fec_imx6ul_info, !250, !"fec_imx6ul_info", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 130, i32 33}
!251 = !{ptr @fec_imx8mq_info, !252, !"fec_imx8mq_info", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 138, i32 33}
!253 = !{ptr @fec_imx8qm_info, !254, !"fec_imx8qm_info", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/freescale/fec_main.c", i32 148, i32 33}
!255 = !{!"sp"}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{!"auto-init"}
!266 = !{i8 0, i8 2}
!267 = !{i64 2148448925, i64 2148448951, i64 2148448980, i64 2148449014, i64 2148449045, i64 2148449068}
!268 = !{i64 2148448344}
!269 = !{i64 933964, i64 933989, i64 934011, i64 934027, i64 934039, i64 934059, i64 934083, i64 934099, i64 934111}
!270 = !{i64 2148448532}
!271 = !{i64 2149062302, i64 2149062307, i64 2149062320, i64 2149062364, i64 2149062398, i64 2149062419}
!272 = !{i32 0, i32 33}
!273 = !{!"branch_weights", i32 2000, i32 1}
!274 = !{i64 6493855}
!275 = !{i64 2158689537}
!276 = !{i64 2158690315}
!277 = !{i64 2158735867}
!278 = !{i64 6493437}
!279 = !{i64 2158736607}
!280 = !{i64 2158741127}
!281 = !{i64 2158713346}
!282 = !{i64 2158714179}
!283 = !{i64 2158714578}
!284 = !{i64 2158711894}
!285 = !{i64 2158686771}
!286 = !{i64 2158687016}
!287 = !{i64 2158687428}
!288 = !{i64 2158707934}
!289 = !{i64 2158708332}
!290 = !{i64 2158708792}
!291 = !{i64 2158683015}
!292 = !{!"branch_weights", i32 1, i32 2000}
!293 = !{i64 947213}
!294 = !{i64 2155238487, i64 2155238975, i64 2155238524, i64 2155238580, i64 2155238614, i64 2155238638, i64 2155238679, i64 2155238700, i64 2155238728, i64 2155238762}
!295 = !{i64 2158685777}
!296 = !{i64 2158686108}
!297 = !{i64 2158674011}
!298 = !{i64 2158680689}
!299 = !{i64 2158681199}
!300 = !{i64 2158681417}
!301 = !{i64 2158688193}
!302 = !{i64 2158647054}
!303 = !{i64 2158647439}
!304 = !{i64 2158648476}
!305 = !{i64 2158649128}
!306 = !{i64 2158649726}
!307 = !{i64 2158641689}
!308 = !{i64 2158642513}
!309 = !{i64 2158645455}
!310 = !{i64 2158643984}
!311 = distinct !{!311, !312}
!312 = !{!"llvm.loop.peeled.count", i32 1}
!313 = !{i64 2158646224}
!314 = distinct !{!314, !312}
!315 = !{i64 2158651024}
!316 = !{i64 2158651729}
!317 = !{i64 2158652192}
!318 = !{i64 2158652761}
!319 = !{i64 2158653356}
!320 = !{i64 2158654012}
!321 = !{i64 2158654786}
!322 = !{i64 2158655180}
!323 = !{i64 2158655590}
!324 = !{i64 2158655988}
!325 = !{i64 2158656382}
!326 = !{i64 2158656779}
!327 = !{i64 2158657182}
!328 = !{i64 2158657595}
!329 = !{i64 2158657992}
!330 = !{i64 2158658377}
!331 = !{i64 2158658776}
!332 = !{i64 2158659240}
!333 = !{i64 2158659647}
!334 = !{i64 2158641100}
!335 = !{i64 2158637186}
!336 = !{i64 2158637696}
!337 = !{i64 2158638206}
!338 = !{i64 2158638716}
!339 = !{i64 2158638934}
!340 = !{i64 2158621478}
!341 = !{i64 2158623661}
!342 = !{i64 2158623956}
!343 = !{i64 2158624174}
!344 = !{i64 2158729309}
!345 = !{i64 2158730190}
!346 = !{i64 2158730603}
!347 = !{i64 2158731024}
!348 = !{i64 2158734941}
!349 = !{i64 2158735357}
!350 = !{i64 2158663370}
!351 = !{i64 2158663587}
!352 = !{i64 2158664785}
!353 = !{i64 2158666625}
!354 = !{i64 2158666862}
!355 = !{i64 2158667266}
!356 = !{i64 2158668070}
!357 = !{i64 2158668877}
!358 = !{i64 2158669270}
!359 = !{i64 2158710654}
!360 = !{i64 2158715220}
!361 = !{i64 2158715625}
!362 = !{i64 2158716040}
!363 = !{i64 2158716445}
!364 = !{i64 2158716850}
!365 = !{i64 2158717255}
!366 = !{i64 2158724954}
!367 = !{i64 2158725378}
!368 = !{i64 2158697620}
!369 = !{i64 2158698510}
!370 = !{i64 2158699689}
!371 = !{i64 2158700104}
!372 = !{i64 2158701024}
!373 = !{i64 2158695667}
!374 = !{i64 2158696149}
!375 = !{i64 2158696996}
!376 = !{i64 2158662663}
!377 = !{i64 2158758091}
!378 = !{i64 2158758328}
