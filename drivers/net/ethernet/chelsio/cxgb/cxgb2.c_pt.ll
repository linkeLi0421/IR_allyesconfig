; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/cxgb2.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/cxgb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.board_info = type { i8, i8, i32, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.cmac = type { %struct.cmac_statistics, ptr, ptr, ptr }
%struct.cmac_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.t1_rx_mode = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.cphy = type { i32, ptr, %struct.delayed_work, i16, i32, i32, i32, i32, ptr, %struct.mdio_if_info, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.sge_port_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.sge_intr_counts = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32] }
%struct.espi_intr_counts = type { i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_description353 = internal constant [46 x i8] c"cxgb.description=Chelsio 10Gb Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author354 = internal constant [35 x i8] c"cxgb.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [49 x i8] c"cxgb.file=drivers/net/ethernet/chelsio/cxgb/cxgb\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [17 x i8] c"cxgb.license=GPL\00", section ".modinfo", align 1
@__param_str_dflt_msg_enable = internal constant [21 x i8] c"cxgb.dflt_msg_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dflt_msg_enable = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@__param_dflt_msg_enable = internal constant %struct.kernel_param { ptr @__param_str_dflt_msg_enable, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @dflt_msg_enable } }, section "__param", align 4
@__UNIQUE_ID_dflt_msg_enabletype357 = internal constant [34 x i8] c"cxgb.parmtype=dflt_msg_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dflt_msg_enable358 = internal constant [67 x i8] c"cxgb.parm=dflt_msg_enable:Chelsio T1 default message enable bitmap\00", section ".modinfo", align 1
@__param_str_t1powersave = internal constant [17 x i8] c"cxgb.t1powersave\00", align 1
@t1powersave = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_t1powersave = internal constant %struct.kernel_param { ptr @__param_str_t1powersave, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @t1powersave } }, section "__param", align 4
@__UNIQUE_ID_t1powersavetype359 = internal constant [30 x i8] c"cxgb.parmtype=t1powersave:int\00", section ".modinfo", align 1
@__UNIQUE_ID_t1powersave360 = internal constant [57 x i8] c"cxgb.parm=t1powersave:Enable/Disable T1 powersaving mode\00", section ".modinfo", align 1
@__param_str_disable_msi = internal constant [17 x i8] c"cxgb.disable_msi\00", align 1
@disable_msi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_msi = internal constant %struct.kernel_param { ptr @__param_str_disable_msi, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @disable_msi } }, section "__param", align 4
@__UNIQUE_ID_disable_msitype361 = internal constant [30 x i8] c"cxgb.parmtype=disable_msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_msi362 = internal constant [63 x i8] c"cxgb.parm=disable_msi:Disable Message Signaled Interrupt (MSI)\00", section ".modinfo", align 1
@__initcall__kmod_cxgb__363_1329_cxgb_pci_driver_init6 = internal global ptr @cxgb_pci_driver_init, section ".initcall6.init", align 4
@cxgb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.8, ptr @t1_pci_tbl, ptr @init_one, ptr @remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cxgb_pci_driver_exit = internal global ptr @cxgb_pci_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10Mbps\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10Gbps\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1000Mbps\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100Mbps\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"link up, %s, %s-duplex\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cxgb\00", [27 x i8] zeroinitializer }, align 32
@t1_pci_tbl = external dso_local constant [0 x %struct.pci_device_id], align 4
@init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cxgb: %s: cannot find PCI device memory base address\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_one\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/chelsio/cxgb/cxgb2.c\00", [54 x i8] zeroinitializer }, align 32
@init_one._entry_ptr = internal global ptr @init_one._entry, section ".printk_index", align 4
@init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cxgb: %s: no usable DMA configuration\0A\00", [55 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.14 = internal global ptr @init_one._entry.12, section ".printk_index", align 4
@init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cxgb: %s: cannot obtain PCI resources\0A\00", [55 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.17 = internal global ptr @init_one._entry.15, section ".printk_index", align 4
@init_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.11, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cxgb: %s: cannot map device registers\0A\00", [55 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.20 = internal global ptr @init_one._entry.18, section ".printk_index", align 4
@init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&adapter->tpi_lock\00", [45 x i8] zeroinitializer }, align 32
@init_one.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adapter->work_lock\00", [44 x i8] zeroinitializer }, align 32
@init_one.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->async_lock\00", [43 x i8] zeroinitializer }, align 32
@init_one.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&adapter->mac_lock\00", [45 x i8] zeroinitializer }, align 32
@init_one.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&adapter->stats_update_task)->work)\00", [40 x i8] zeroinitializer }, align 32
@init_one.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&adapter->stats_update_task)->timer\00", [58 x i8] zeroinitializer }, align 32
@cxgb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cxgb_open, ptr @cxgb_close, ptr @t1_start_xmit, ptr null, ptr null, ptr null, ptr @t1_set_rxmode, ptr @t1_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @t1_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @t1_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @t1_get_stats, ptr null, ptr null, ptr @t1_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @t1_fix_features, ptr @t1_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@t1_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 2097665, i32 0, ptr @get_drvinfo, ptr @get_regs_len, ptr @get_regs, ptr null, ptr null, ptr @get_msglevel, ptr @set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @get_eeprom_len, ptr @get_eeprom, ptr null, ptr @get_coalesce, ptr @set_coalesce, ptr @get_sge_param, ptr @set_sge_param, ptr null, ptr @get_pauseparam, ptr @set_pauseparam, ptr null, ptr @get_strings, ptr null, ptr @get_stats, ptr null, ptr null, ptr null, ptr null, ptr @get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_ksettings, ptr @set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@init_one._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.10, ptr @.str.11, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014cxgb: %s: cannot register net device %s, skipping\0A\00", [43 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.34 = internal global ptr @init_one._entry.32, section ".printk_index", align 4
@init_one._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.10, ptr @.str.11, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cxgb: %s: could not register any net devices\0A\00", [48 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.37 = internal global ptr @init_one._entry.35, section ".printk_index", align 4
@init_one._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.10, ptr @.str.11, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cxgb: %s: %s (rev %d), %s %dMHz/%d-bit\0A\00", [54 x i8] zeroinitializer }, align 32
@init_one._entry_ptr.40 = internal global ptr @init_one._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIX\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@stats_strings = internal constant { [58 x [32 x i8]], [448 x i8] } { [58 x [32 x i8]] [[32 x i8] c"TxOctetsOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxOctetsBad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxUnicastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxMulticastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxBroadcastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxPauseFrames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFramesWithDeferredXmissions\00\00\00", [32 x i8] c"TxLateCollisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxTotalCollisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFramesAbortedDueToXSCollisions", [32 x i8] c"TxUnderrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxLengthErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxInternalMACXmitError\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxFramesWithExcessiveDeferral\00\00\00", [32 x i8] c"TxFCSErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxJumboFramesOk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxJumboOctetsOk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxOctetsOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxOctetsBad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxUnicastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxMulticastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxBroadcastFramesOK\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxPauseFrames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFCSErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxAlignErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxSymbolErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxDataErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxSequenceErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxRuntErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxJabberErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxInternalMACRcvError\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxInRangeLengthErrors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxOutOfRangeLengthField\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxFrameTooLongErrors\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxJumboFramesOk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxJumboOctetsOk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxCsumGood\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxCsumOffload\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxTso\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RxVlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxVlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TxNeedHeadroom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pure_rsps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"unhandled irqs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"respQ_empty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"respQ_overflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"freelistQ_empty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pkt_too_big\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"pkt_mismatch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"cmdQ_full0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"cmdQ_full1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"espi_DIP2ParityErr\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"espi_DIP4Err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"espi_RxDrops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"espi_TxDrops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"espi_RxOvfl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"espi_ParityErr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [448 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.init_one = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 9582, i32 9582, i32 1500, i32 1500, i32 1500, i32 9582, i32 9582, i32 1500, i32 1500, i32 1500, i32 9600], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 100, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 10000]
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"dflt_msg_enable\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 93, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"t1powersave\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 103, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"disable_msi\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 108, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"cxgb_pci_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1322, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 128, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 130, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 133, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 134, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 135, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 138, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 140, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 140, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1329, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 958, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 966, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 972, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1000, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1015, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1016, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1017, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1018, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1020, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"cxgb_netdev_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 928, i32 36 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"t1_ethtool_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 804, i32 33 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1091, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1105, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1111, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"stats_strings\00", align 1
@___asan_gen_.180 = private constant [45 x i8] c"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 354, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant [22 x i8] c"switch.table.init_one\00", align 1
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_dflt_msg_enable358, ptr @__UNIQUE_ID_dflt_msg_enabletype357, ptr @__UNIQUE_ID_disable_msi362, ptr @__UNIQUE_ID_disable_msitype361, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__UNIQUE_ID_t1powersave360, ptr @__UNIQUE_ID_t1powersavetype359, ptr @__exitcall_cxgb_pci_driver_exit, ptr @__initcall__kmod_cxgb__363_1329_cxgb_pci_driver_init6, ptr @__param_dflt_msg_enable, ptr @__param_disable_msi, ptr @__param_t1powersave, ptr @cxgb_pci_driver_exit, ptr @init_one._entry, ptr @init_one._entry.12, ptr @init_one._entry.15, ptr @init_one._entry.18, ptr @init_one._entry.32, ptr @init_one._entry.35, ptr @init_one._entry.38, ptr @init_one._entry_ptr, ptr @init_one._entry_ptr.14, ptr @init_one._entry_ptr.17, ptr @init_one._entry_ptr.20, ptr @init_one._entry_ptr.34, ptr @init_one._entry_ptr.37, ptr @init_one._entry_ptr.40, ptr @dflt_msg_enable, ptr @t1powersave, ptr @disable_msi, ptr @cxgb_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @init_one.__key, ptr @.str.21, ptr @init_one.__key.22, ptr @.str.23, ptr @init_one.__key.24, ptr @.str.25, ptr @init_one.__key.26, ptr @.str.27, ptr @init_one.__key.28, ptr @.str.29, ptr @init_one.__key.30, ptr @.str.31, ptr @cxgb_netdev_ops, ptr @t1_ethtool_ops, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @stats_strings, ptr @switch.table.init_one], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dflt_msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1powersave to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_one._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_strings to i32), i32 1856, i32 2304, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.init_one to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t1_link_negotiated(ptr nocapture noundef readonly %adapter, i32 noundef %port_id, i32 noundef %link_stat, i32 noundef %speed, i32 noundef %duplex, i32 noundef %pause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = lshr i32 %3, 2
  %.lobit = and i32 %4, 1
  %5 = xor i32 %.lobit, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %link_stat)
  %cmp.not = icmp eq i32 %5, %link_stat
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_stat)
  %tobool.not = icmp eq i32 %link_stat, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_on(ptr noundef %1) #12
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str) #15
  br label %link_report.exit

if.else.i:                                        ; preds = %if.end
  %speed.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 3, i32 3
  %11 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %speed.i, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.else.i.sw.epilog.i_crit_edge [
    i16 10000, label %sw.bb.i
    i16 1000, label %sw.bb2.i
    i16 100, label %sw.bb3.i
  ]

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.else.i.sw.epilog.i_crit_edge
  %s.0.i = phi ptr [ @.str.1, %if.else.i.sw.epilog.i_crit_edge ], [ @.str.4, %sw.bb3.i ], [ @.str.3, %sw.bb2.i ], [ @.str.2, %sw.bb.i ]
  %duplex.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 13, i32 %port_id, i32 3, i32 5
  %14 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i = icmp eq i8 %15, 1
  %cond.i = select i1 %cmp.i, ptr @.str.6, ptr @.str.7
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull %s.0.i, ptr noundef nonnull %cond.i) #15
  br label %link_report.exit

link_report.exit:                                 ; preds = %sw.epilog.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %cmp5 = icmp sgt i32 %speed, 0
  br i1 %cmp5, label %land.lhs.true, label %link_report.exit.if.end14_crit_edge

link_report.exit.if.end14_crit_edge:              ; preds = %link_report.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %link_report.exit
  %nports = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 6
  %16 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp7 = icmp ugt i32 %17, 1
  br i1 %cmp7, label %if.then9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %speed)
  %switch.selectcmp = icmp eq i32 %speed, 100
  %switch.select = select i1 %switch.selectcmp, i32 100, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %switch.selectcmp23 = icmp eq i32 %speed, 1000
  %switch.select24 = select i1 %switch.selectcmp23, i32 1000, i32 %switch.select
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 9
  %18 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sge, align 8
  %call12 = tail call i32 @t1_sched_update_parms(ptr noundef %19, i32 noundef %port_id, i32 noundef 0, i32 noundef %switch.select24) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %link_report.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_sched_update_parms(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_pci_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cxgb_pci_driver, ptr noundef null, ptr noundef nonnull @.str.8) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxgb_pci_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @cxgb_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup250_crit_edge

entry.cleanup250_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup250

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end.pci_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i) #15
  br label %out_disable_pdev

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end15, label %do.end11

do.end11:                                         ; preds = %if.end5
  %init_name.i.i382 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i382 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i382, align 8
  %tobool.not.i.i383 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i383, label %if.end.i.i385, label %do.end11.pci_name.exit387_crit_edge

do.end11.pci_name.exit387_crit_edge:              ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit387

if.end.i.i385:                                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %pci_name.exit387

pci_name.exit387:                                 ; preds = %if.end.i.i385, %do.end11.pci_name.exit387_crit_edge
  %retval.0.i.i386 = phi ptr [ %9, %if.end.i.i385 ], [ %7, %do.end11.pci_name.exit387_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i386) #15
  br label %out_disable_pdev

if.end15:                                         ; preds = %if.end5
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #12
  %call16 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end15
  %init_name.i.i388 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i388 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i388, align 8
  %tobool.not.i.i389 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i389, label %if.end.i.i391, label %do.end21.pci_name.exit393_crit_edge

do.end21.pci_name.exit393_crit_edge:              ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit393

if.end.i.i391:                                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %pci_name.exit393

pci_name.exit393:                                 ; preds = %if.end.i.i391, %do.end21.pci_name.exit393_crit_edge
  %retval.0.i.i392 = phi ptr [ %13, %if.end.i.i391 ], [ %11, %do.end21.pci_name.exit393_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i392) #15
  br label %out_disable_pdev

if.end25:                                         ; preds = %if.end15
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %sub = sub i32 1, %15
  %add = add i32 %sub, %17
  %cond = select i1 %cmp, i32 0, i32 %add
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  %call36 = tail call ptr @t1_get_board_info(i32 noundef %19) #12
  %port_number = getelementptr inbounds %struct.board_info, ptr %call36, i32 0, i32 1
  %20 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_number, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp37444.not = icmp eq i8 %21, 0
  br i1 %cmp37444.not, label %if.end25.for.end_crit_edge, label %for.body.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %init_name.i.i401 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %add111 = add i32 %15, -1
  %sub112 = add i32 %add111, %cond
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %adapter.0446 = phi ptr [ null, %for.body.lr.ph ], [ %adapter.1, %for.inc.for.body_crit_edge ]
  %i.0445 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %tobool39.not = icmp eq ptr %adapter.0446, null
  %cond40 = select i1 %tobool39.not, i32 1024, i32 0
  %call41 = tail call ptr @alloc_etherdev_mqs(i32 noundef %cond40, i32 noundef 1, i32 noundef 1) #12
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %for.body.out_free_dev_crit_edge, label %if.end44

for.body.out_free_dev_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_dev

if.end44:                                         ; preds = %for.body
  %parent = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 133, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 8
  br i1 %tobool39.not, label %if.then48, label %if.end44.if.end105_crit_edge

if.end44.if.end105_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.then48:                                        ; preds = %if.end44
  %add.ptr.i394 = getelementptr i8, ptr %call41, i32 2304
  %pdev50 = getelementptr i8, ptr %call41, i32 2308
  %23 = ptrtoint ptr %pdev50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pdev, ptr %pdev50, align 4
  %port = getelementptr i8, ptr %call41, i32 2712
  %24 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call41, ptr %port, align 8
  %call53 = tail call ptr @ioremap(i32 noundef %15, i32 noundef %cond) #12
  %25 = ptrtoint ptr %add.ptr.i394 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call53, ptr %add.ptr.i394, align 128
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %do.end59, label %if.end63

do.end59:                                         ; preds = %if.then48
  %26 = ptrtoint ptr %init_name.i.i401 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i401, align 8
  %tobool.not.i.i396 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i396, label %if.end.i.i398, label %do.end59.pci_name.exit400_crit_edge

do.end59.pci_name.exit400_crit_edge:              ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit400

if.end.i.i398:                                    ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %pci_name.exit400

pci_name.exit400:                                 ; preds = %if.end.i.i398, %do.end59.pci_name.exit400_crit_edge
  %retval.0.i.i399 = phi ptr [ %29, %if.end.i.i398 ], [ %27, %do.end59.pci_name.exit400_crit_edge ]
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i399) #15
  br label %out_free_dev

if.end63:                                         ; preds = %if.then48
  %params = getelementptr i8, ptr %call41, i32 2336
  %call64 = tail call i32 @t1_get_board_rev(ptr noundef %add.ptr.i394, ptr noundef %call36, ptr noundef %params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.out_free_dev_crit_edge

if.end63.out_free_dev_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_dev

if.end67:                                         ; preds = %if.end63
  %30 = ptrtoint ptr %init_name.i.i401 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i401, align 8
  %tobool.not.i.i402 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i402, label %if.end.i.i404, label %if.end67.pci_name.exit406_crit_edge

if.end67.pci_name.exit406_crit_edge:              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit406

if.end.i.i404:                                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  br label %pci_name.exit406

pci_name.exit406:                                 ; preds = %if.end.i.i404, %if.end67.pci_name.exit406_crit_edge
  %retval.0.i.i405 = phi ptr [ %33, %if.end.i.i404 ], [ %31, %if.end67.pci_name.exit406_crit_edge ]
  %name = getelementptr i8, ptr %call41, i32 2324
  %34 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i.i405, ptr %name, align 4
  %35 = load i32, ptr @dflt_msg_enable, align 4
  %msg_enable = getelementptr i8, ptr %call41, i32 2328
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %msg_enable, align 8
  %mmio_len69 = getelementptr i8, ptr %call41, i32 2332
  %37 = ptrtoint ptr %mmio_len69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond, ptr %mmio_len69, align 4
  %tpi_lock = getelementptr i8, ptr %call41, i32 2988
  tail call void @__raw_spin_lock_init(ptr noundef %tpi_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_one.__key, i16 noundef signext 3) #12
  %work_lock = getelementptr i8, ptr %call41, i32 3032
  tail call void @__raw_spin_lock_init(ptr noundef %work_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_one.__key.22, i16 noundef signext 3) #12
  %async_lock = getelementptr i8, ptr %call41, i32 3200
  tail call void @__raw_spin_lock_init(ptr noundef %async_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_one.__key.24, i16 noundef signext 3) #12
  %mac_lock = getelementptr i8, ptr %call41, i32 3076
  tail call void @__raw_spin_lock_init(ptr noundef %mac_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_one.__key.26, i16 noundef signext 3) #12
  %stats_update_task = getelementptr i8, ptr %call41, i32 2840
  tail call void @__init_work(ptr noundef %stats_update_task, i32 noundef 0) #12
  %38 = ptrtoint ptr %stats_update_task to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %stats_update_task, align 8
  %lockdep_map = getelementptr i8, ptr %call41, i32 2856
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_one.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry94 = getelementptr i8, ptr %call41, i32 2844
  %39 = ptrtoint ptr %entry94 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry94, ptr %entry94, align 4
  %prev.i = getelementptr i8, ptr %call41, i32 2848
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry94, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call41, i32 2852
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mac_stats_task, ptr %func, align 4
  %timer = getelementptr i8, ptr %call41, i32 2884
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_one.__key.30) #12
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call41, ptr %driver_data.i.i, align 4
  br label %if.end105

if.end105:                                        ; preds = %pci_name.exit406, %if.end44.if.end105_crit_edge
  %adapter.1 = phi ptr [ %adapter.0446, %if.end44.if.end105_crit_edge ], [ %add.ptr.i394, %pci_name.exit406 ]
  %arrayidx107 = getelementptr %struct.adapter, ptr %adapter.1, i32 0, i32 13, i32 %i.0445
  %43 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call41, ptr %arrayidx107, align 4
  tail call void @netif_carrier_off(ptr noundef nonnull %call41) #12
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %irq109 = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 64
  %46 = ptrtoint ptr %irq109 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %irq109, align 4
  %conv110 = trunc i32 %i.0445 to i8
  %if_port = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 52
  %47 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv110, ptr %if_port, align 2
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 4
  %48 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %15, ptr %mem_start, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 3
  %49 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub112, ptr %mem_end, align 8
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 128
  %50 = ptrtoint ptr %ml_priv to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %adapter.1, ptr %ml_priv, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 24
  %51 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %hw_features, align 8
  %or = or i64 %52, 1099511627779
  store i64 %or, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 23
  %53 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %features, align 16
  %or113 = or i64 %54, 1099511631907
  store i64 %or113, ptr %features, align 16
  %chip_version.i.i = getelementptr inbounds %struct.adapter, ptr %adapter.1, i32 0, i32 8, i32 9
  %55 = ptrtoint ptr %chip_version.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp.i.i = icmp eq i8 %56, 1
  br i1 %cmp.i.i, label %vlan_tso_capable.exit, label %if.end105.if.then116_crit_edge

if.end105.if.then116_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then116

vlan_tso_capable.exit:                            ; preds = %if.end105
  %chip_revision.i.i = getelementptr inbounds %struct.adapter, ptr %adapter.1, i32 0, i32 8, i32 8
  %57 = ptrtoint ptr %chip_revision.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %chip_revision.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %58)
  %cmp4.i.i.not = icmp eq i16 %58, 1
  br i1 %cmp4.i.i.not, label %vlan_tso_capable.exit.if.end133_crit_edge, label %vlan_tso_capable.exit.if.then116_crit_edge

vlan_tso_capable.exit.if.then116_crit_edge:       ; preds = %vlan_tso_capable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then116

vlan_tso_capable.exit.if.end133_crit_edge:        ; preds = %vlan_tso_capable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then116:                                       ; preds = %vlan_tso_capable.exit.if.then116_crit_edge, %if.end105.if.then116_crit_edge
  %or118 = or i64 %54, 1099511632291
  %59 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %or118, ptr %features, align 16
  %or120 = or i64 %52, 1099511628035
  %60 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %or120, ptr %hw_features, align 8
  %61 = ptrtoint ptr %chip_version.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %chip_version.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cmp.i407 = icmp eq i8 %62, 2
  br i1 %cmp.i407, label %adapter_matches_type.exit, label %if.then116.if.then127_crit_edge

if.then116.if.then127_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127

adapter_matches_type.exit:                        ; preds = %if.then116
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %adapter.1, i32 0, i32 8, i32 8
  %63 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %64)
  %cmp4.i.not = icmp eq i16 %64, 3
  br i1 %cmp4.i.not, label %lor.lhs.false, label %adapter_matches_type.exit.if.then127_crit_edge

adapter_matches_type.exit.if.then127_crit_edge:   ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127

lor.lhs.false:                                    ; preds = %adapter_matches_type.exit
  %65 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %port_number, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %66)
  %cmp125.not = icmp eq i8 %66, 4
  br i1 %cmp125.not, label %lor.lhs.false.if.end133_crit_edge, label %lor.lhs.false.if.then127_crit_edge

lor.lhs.false.if.then127_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127

lor.lhs.false.if.end133_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then127:                                       ; preds = %lor.lhs.false.if.then127_crit_edge, %adapter_matches_type.exit.if.then127_crit_edge, %if.then116.if.then127_crit_edge
  %or129 = or i64 %52, 1099511693571
  %67 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or129, ptr %hw_features, align 8
  %or131 = or i64 %54, 1099511697827
  %68 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %or131, ptr %features, align 16
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %lor.lhs.false.if.end133_crit_edge, %vlan_tso_capable.exit.if.end133_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 16
  %69 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @cxgb_netdev_ops, ptr %netdev_ops, align 8
  %70 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %hw_features, align 8
  %and135 = and i64 %71, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and135)
  %tobool136.not = icmp eq i64 %and135, 0
  %cond137 = select i1 %tobool136.not, i16 8, i16 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 19
  %72 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %hard_header_len, align 2
  %add139 = add i16 %cond137, %73
  store i16 %add139, ptr %hard_header_len, align 2
  %napi = getelementptr inbounds %struct.adapter, ptr %adapter.1, i32 0, i32 12
  tail call void @netif_napi_add(ptr noundef nonnull %call41, ptr noundef %napi, ptr noundef nonnull @t1_poll, i32 noundef 64) #12
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 44
  %74 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @t1_ethtool_ops, ptr %ethtool_ops, align 16
  %75 = ptrtoint ptr %call36 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %call36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %76)
  %77 = icmp ult i8 %76, 11
  br i1 %77, label %switch.lookup, label %if.end133.for.inc_crit_edge

if.end133.for.inc_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

switch.lookup:                                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  %78 = sext i8 %76 to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.init_one, i32 0, i32 %78
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %if.end133.for.inc_crit_edge
  %.sink455 = phi i32 [ %switch.load, %switch.lookup ], [ 1500, %if.end133.for.inc_crit_edge ]
  %max_mtu144 = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 31
  %80 = ptrtoint ptr %max_mtu144 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink455, ptr %max_mtu144, align 4
  %inc = add nuw nsw i32 %i.0445, 1
  %81 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %port_number, align 1
  %conv = zext i8 %82 to i32
  %cmp37 = icmp ult i32 %inc, %conv
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  %adapter.0.lcssa = phi ptr [ null, %if.end25.for.end_crit_edge ], [ %adapter.1, %for.inc.for.end_crit_edge ]
  %call145 = tail call i32 @t1_init_sw_modules(ptr noundef %adapter.0.lcssa, ptr noundef %call36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %for.end.out_free_dev_crit_edge, label %for.cond150.preheader

for.end.out_free_dev_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_dev

for.cond150.preheader:                            ; preds = %for.end
  %83 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %port_number, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp153449.not = icmp eq i8 %84, 0
  br i1 %cmp153449.not, label %for.cond150.preheader.for.end185_crit_edge, label %for.body155.lr.ph

for.cond150.preheader.for.end185_crit_edge:       ; preds = %for.cond150.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end185

for.body155.lr.ph:                                ; preds = %for.cond150.preheader
  %init_name.i.i409 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %registered_device_map = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 2
  %name179 = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 5
  br label %for.body155

for.body155:                                      ; preds = %for.inc183.for.body155_crit_edge, %for.body155.lr.ph
  %i.1450 = phi i32 [ 0, %for.body155.lr.ph ], [ %inc184, %for.inc183.for.body155_crit_edge ]
  %arrayidx157 = getelementptr %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 13, i32 %i.1450
  %85 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx157, align 8
  %call159 = tail call i32 @register_netdev(ptr noundef %86) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.else, label %do.end164

do.end164:                                        ; preds = %for.body155
  %87 = ptrtoint ptr %init_name.i.i409 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i409, align 8
  %tobool.not.i.i410 = icmp eq ptr %88, null
  br i1 %tobool.not.i.i410, label %if.end.i.i412, label %do.end164.pci_name.exit414_crit_edge

do.end164.pci_name.exit414_crit_edge:             ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit414

if.end.i.i412:                                    ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 4
  br label %pci_name.exit414

pci_name.exit414:                                 ; preds = %if.end.i.i412, %do.end164.pci_name.exit414_crit_edge
  %retval.0.i.i413 = phi ptr [ %90, %if.end.i.i412 ], [ %88, %do.end164.pci_name.exit414_crit_edge ]
  %91 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx157, align 8
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i413, ptr noundef %92) #15
  br label %for.inc183

if.else:                                          ; preds = %for.body155
  %93 = ptrtoint ptr %registered_device_map to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %registered_device_map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool172.not = icmp eq i32 %94, 0
  br i1 %tobool172.not, label %if.then173, label %if.else.if.end180_crit_edge

if.else.if.end180_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.then173:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx157, align 8
  %97 = ptrtoint ptr %name179 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %name179, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then173, %if.else.if.end180_crit_edge
  %rem.i = and i32 %i.1450, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %i.1450, 5
  %add.ptr.i = getelementptr i32, ptr %registered_device_map, i32 %div2.i
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %99, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc183

for.inc183:                                       ; preds = %if.end180, %pci_name.exit414
  %inc184 = add nuw nsw i32 %i.1450, 1
  %100 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %port_number, align 1
  %conv152 = zext i8 %101 to i32
  %cmp153 = icmp ult i32 %inc184, %conv152
  br i1 %cmp153, label %for.inc183.for.body155_crit_edge, label %for.inc183.for.end185_crit_edge

for.inc183.for.end185_crit_edge:                  ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end185

for.inc183.for.body155_crit_edge:                 ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body155

for.end185:                                       ; preds = %for.inc183.for.end185_crit_edge, %for.cond150.preheader.for.end185_crit_edge
  %registered_device_map186 = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 2
  %102 = ptrtoint ptr %registered_device_map186 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %registered_device_map186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool187.not = icmp eq i32 %103, 0
  br i1 %tobool187.not, label %do.end191, label %do.end198

do.end191:                                        ; preds = %for.end185
  %init_name.i.i415 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %104 = ptrtoint ptr %init_name.i.i415 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i.i415, align 8
  %tobool.not.i.i416 = icmp eq ptr %105, null
  br i1 %tobool.not.i.i416, label %if.end.i.i418, label %do.end191.pci_name.exit420_crit_edge

do.end191.pci_name.exit420_crit_edge:             ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit420

if.end.i.i418:                                    ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  br label %pci_name.exit420

pci_name.exit420:                                 ; preds = %if.end.i.i418, %do.end191.pci_name.exit420_crit_edge
  %retval.0.i.i419 = phi ptr [ %107, %if.end.i.i418 ], [ %105, %do.end191.pci_name.exit420_crit_edge ]
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i.i419) #15
  tail call void @t1_free_sw_modules(ptr noundef %adapter.0.lcssa) #12
  br label %out_free_dev

do.end198:                                        ; preds = %for.end185
  %name200 = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 5
  %108 = ptrtoint ptr %name200 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name200, align 4
  %desc = getelementptr inbounds %struct.board_info, ptr %call36, i32 0, i32 18
  %110 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc, align 4
  %chip_revision = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 8, i32 8
  %112 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %chip_revision, align 32
  %conv202 = zext i16 %113 to i32
  %pci = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 8, i32 3
  %is_pcix = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 8, i32 3, i32 2
  %114 = ptrtoint ptr %is_pcix to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %is_pcix, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool205.not = icmp eq i8 %115, 0
  %cond206 = select i1 %tobool205.not, ptr @.str.42, ptr @.str.41
  %116 = ptrtoint ptr %pci to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %pci, align 32
  %conv209 = zext i16 %117 to i32
  %width = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 8, i32 3, i32 1
  %118 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %width, align 2
  %conv212 = zext i8 %119 to i32
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %109, ptr noundef %111, i32 noundef %conv202, ptr noundef nonnull %cond206, i32 noundef %conv209, i32 noundef %conv212) #15
  %120 = load i32, ptr @t1powersave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool214.not = icmp ne i32 %120, 0
  %spec.select = zext i1 %tobool214.not to i32
  %121 = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 23
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.select, ptr %121, align 4
  %chip_version.i421 = getelementptr inbounds %struct.adapter, ptr %adapter.0.lcssa, i32 0, i32 8, i32 9
  %123 = ptrtoint ptr %chip_version.i421 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %chip_version.i421, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %124)
  %cmp.i423 = icmp eq i8 %124, 1
  br i1 %cmp.i423, label %adapter_matches_type.exit429, label %do.end198.cleanup250_crit_edge

do.end198.cleanup250_crit_edge:                   ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup250

adapter_matches_type.exit429:                     ; preds = %do.end198
  %125 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %chip_revision, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %126)
  %cmp4.i426.not = icmp eq i16 %126, 1
  br i1 %cmp4.i426.not, label %if.then221, label %adapter_matches_type.exit429.cleanup250_crit_edge

adapter_matches_type.exit429.cleanup250_crit_edge: ; preds = %adapter_matches_type.exit429
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup250

if.then221:                                       ; preds = %adapter_matches_type.exit429
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @t1_clock(ptr noundef %adapter.0.lcssa, i32 noundef %120)
  br label %cleanup250

out_free_dev:                                     ; preds = %pci_name.exit420, %for.end.out_free_dev_crit_edge, %if.end63.out_free_dev_crit_edge, %pci_name.exit400, %for.body.out_free_dev_crit_edge
  %err.2 = phi i32 [ -22, %pci_name.exit420 ], [ -19, %for.end.out_free_dev_crit_edge ], [ -12, %pci_name.exit400 ], [ -19, %if.end63.out_free_dev_crit_edge ], [ -12, %for.body.out_free_dev_crit_edge ]
  %adapter.3 = phi ptr [ %adapter.0.lcssa, %pci_name.exit420 ], [ %adapter.0.lcssa, %for.end.out_free_dev_crit_edge ], [ %add.ptr.i394, %pci_name.exit400 ], [ %add.ptr.i394, %if.end63.out_free_dev_crit_edge ], [ %adapter.0446, %for.body.out_free_dev_crit_edge ]
  %tobool224.not = icmp eq ptr %adapter.3, null
  br i1 %tobool224.not, label %out_free_dev.if.end249_crit_edge, label %if.then225

out_free_dev.if.end249_crit_edge:                 ; preds = %out_free_dev
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249

if.then225:                                       ; preds = %out_free_dev
  %127 = ptrtoint ptr %adapter.3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter.3, align 128
  %tobool227.not = icmp eq ptr %128, null
  br i1 %tobool227.not, label %if.then225.if.end230_crit_edge, label %if.then228

if.then225.if.end230_crit_edge:                   ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end230

if.then228:                                       ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %128) #12
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.then225.if.end230_crit_edge
  %129 = ptrtoint ptr %port_number to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %port_number, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp235453.not = icmp eq i8 %130, 0
  br i1 %cmp235453.not, label %if.end230.if.end249_crit_edge, label %for.body237.preheader

if.end230.if.end249_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249

for.body237.preheader:                            ; preds = %if.end230
  %conv232 = zext i8 %130 to i32
  br label %for.body237

for.body237:                                      ; preds = %for.inc247.for.body237_crit_edge, %for.body237.preheader
  %i.2454.in = phi i32 [ %i.2454, %for.inc247.for.body237_crit_edge ], [ %conv232, %for.body237.preheader ]
  %i.2454 = add nsw i32 %i.2454.in, -1
  %arrayidx239 = getelementptr %struct.adapter, ptr %adapter.3, i32 0, i32 13, i32 %i.2454
  %131 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx239, align 8
  %tobool241.not = icmp eq ptr %132, null
  br i1 %tobool241.not, label %for.body237.for.inc247_crit_edge, label %if.then242

for.body237.for.inc247_crit_edge:                 ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc247

if.then242:                                       ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @free_netdev(ptr noundef nonnull %132) #12
  br label %for.inc247

for.inc247:                                       ; preds = %if.then242, %for.body237.for.inc247_crit_edge
  %cmp235 = icmp ugt i32 %i.2454.in, 1
  br i1 %cmp235, label %for.inc247.for.body237_crit_edge, label %for.inc247.if.end249_crit_edge

for.inc247.if.end249_crit_edge:                   ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249

for.inc247.for.body237_crit_edge:                 ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body237

if.end249:                                        ; preds = %for.inc247.if.end249_crit_edge, %if.end230.if.end249_crit_edge, %out_free_dev.if.end249_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  br label %out_disable_pdev

out_disable_pdev:                                 ; preds = %if.end249, %pci_name.exit393, %pci_name.exit387, %pci_name.exit
  %err.3 = phi i32 [ %call.i, %pci_name.exit387 ], [ %call16, %pci_name.exit393 ], [ %err.2, %if.end249 ], [ -19, %pci_name.exit ]
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup250

cleanup250:                                       ; preds = %out_disable_pdev, %if.then221, %adapter_matches_type.exit429.cleanup250_crit_edge, %do.end198.cleanup250_crit_edge, %entry.cleanup250_crit_edge
  %retval.0 = phi i32 [ %err.3, %out_disable_pdev ], [ %call, %entry.cleanup250_crit_edge ], [ 0, %if.then221 ], [ 0, %adapter_matches_type.exit429.cleanup250_crit_edge ], [ 0, %do.end198.cleanup250_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remove_one(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 128
  %2 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ml_priv, align 8
  %nports = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28.not = icmp eq i32 %5, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %registered_device_map = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.029, 5
  %arrayidx.i = getelementptr i32, ptr %registered_device_map, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.029, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.adapter, ptr %3, i32 0, i32 13, i32 %i.029
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  tail call void @unregister_netdev(ptr noundef %11) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.029, 1
  %12 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %i.029, %for.inc.for.end_crit_edge ]
  tail call void @t1_free_sw_modules(ptr noundef %3) #12
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 128
  tail call void @iounmap(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.lcssa)
  %cmp332 = icmp sgt i32 %i.0.lcssa, -1
  br i1 %cmp332, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %for.end.while.body_crit_edge
  %dec33 = phi i32 [ %dec, %if.end12.while.body_crit_edge ], [ %i.0.lcssa, %for.end.while.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.adapter, ptr %3, i32 0, i32 13, i32 %dec33
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5, align 8
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %while.body.if.end12_crit_edge, label %if.then8

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @free_netdev(ptr noundef nonnull %17) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %while.body.if.end12_crit_edge
  %dec = add i32 %dec33, -1
  %cmp3 = icmp sgt i32 %dec, -1
  br i1 %cmp3, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %for.end.while.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 68, i32 noundef 3) #12
  %call1.i = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 68, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t1_get_board_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_get_board_rev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mac_stats_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr i8, ptr %work, i32 -384
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %port = getelementptr i8, ptr %work, i32 -128
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.port_info], ptr %port, i32 0, i32 %i.018
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mac = getelementptr inbounds %struct.port_info, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %statistics_update = getelementptr inbounds %struct.cmac_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %statistics_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %statistics_update, align 4
  %call2 = tail call ptr %11(ptr noundef %7, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.018, 1
  %12 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nports, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %work_lock = getelementptr i8, ptr %work, i32 192
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #12
  %open_device_map = getelementptr i8, ptr %work, i32 -524
  %14 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open_device_map, align 4
  %and = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.if.end5_crit_edge, label %if.then3

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %stats_update_period = getelementptr i8, ptr %work, i32 -380
  %16 = ptrtoint ptr %stats_update_period to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stats_update_period, align 4
  %mul.i = mul i32 %17, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work, i32 noundef %mul.i) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_poll(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_init_sw_modules(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t1_clock(ptr noundef %adapter, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %val.i28 = alloca i32, align 4
  %val.i16 = alloca i32, align 4
  %val.i4 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !117
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 9
  %1 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.i = icmp eq i8 %2, 1
  br i1 %cmp.i, label %adapter_matches_type.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

adapter_matches_type.exit:                        ; preds = %entry
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 8, i32 8
  %3 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp4.i = icmp eq i16 %4, 1
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool1.not, %cmp4.i
  br i1 %or.cond, label %if.end3, label %adapter_matches_type.exit.cleanup_crit_edge

adapter_matches_type.exit.cleanup_crit_edge:      ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %adapter_matches_type.exit
  %t1powersave = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 23
  %5 = ptrtoint ptr %t1powersave to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t1powersave, align 4
  %and4 = and i32 %6, 1
  %and5 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %and5)
  %cmp = icmp eq i32 %and4, %and5
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp9 = icmp eq i32 %and5, 0
  %not.cmp9 = xor i1 %cmp9, true
  %. = zext i1 %not.cmp9 to i32
  %.1 = select i1 %cmp9, i32 20, i32 14
  %7 = ptrtoint ptr %t1powersave to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %t1powersave, align 4
  %tpi_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %tpi_lock) #12
  %call14 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %or = or i32 %9, 131072
  store i32 %or, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 10737400) #12
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %call15 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %12) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 10737400) #12
  %call16 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and18 = and i32 %15, -73
  store i32 %and18, ptr %val, align 4
  %call19 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and18) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 10737400) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i, align 4, !annotation !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 10737400) #12
  %call.i = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i) #12
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %and1.i = and i32 %20, -17
  store i32 %and1.i, ptr %val.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 10737400) #12
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %and2.i = and i32 %23, -9
  store i32 %and2.i, ptr %val.i, align 4
  %call3.i = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 10737400) #12
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i, align 4
  %or4.i = or i32 %26, 8
  store i32 %or4.i, ptr %val.i, align 4
  %call5.i = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 10737400) #12
  %call.i.1 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i) #12
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  %and1.i.1 = and i32 %29, -17
  store i32 %and1.i.1, ptr %val.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 10737400) #12
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %and2.i.1 = and i32 %32, -9
  store i32 %and2.i.1, ptr %val.i, align 4
  %call3.i.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i.1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 10737400) #12
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %or4.i.1 = or i32 %35, 8
  store i32 %or4.i.1, ptr %val.i, align 4
  %call5.i.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i.1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i4) #12
  %36 = ptrtoint ptr %val.i4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i4, align 4, !annotation !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 10737400) #12
  %call.i6 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i4) #12
  %38 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i4, align 4
  %and1.i7 = and i32 %39, -17
  store i32 %and1.i7, ptr %val.i4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 10737400) #12
  %41 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i4, align 4
  %and2.i8 = and i32 %42, -9
  store i32 %and2.i8, ptr %val.i4, align 4
  %call3.i9 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i8) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 10737400) #12
  %44 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i4, align 4
  %or4.i10 = or i32 %45, 8
  store i32 %or4.i10, ptr %val.i4, align 4
  %call5.i11 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 10737400) #12
  %call.i6.1 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i4) #12
  %47 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i4, align 4
  %and1.i7.1 = and i32 %48, -17
  store i32 %and1.i7.1, ptr %val.i4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 10737400) #12
  %50 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i4, align 4
  %and2.i8.1 = and i32 %51, -9
  store i32 %and2.i8.1, ptr %val.i4, align 4
  %call3.i9.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i8.1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 10737400) #12
  %53 = ptrtoint ptr %val.i4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i4, align 4
  %or4.i10.1 = or i32 %54, 8
  store i32 %or4.i10.1, ptr %val.i4, align 4
  %call5.i11.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i10.1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i4) #12
  call fastcc void @bit_bang(ptr noundef %adapter, i32 noundef %.1, i32 noundef 9)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 10737400) #12
  %call20 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %or21 = or i32 %57, 64
  store i32 %or21, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 10737400) #12
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  %call22 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %60) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 10737400) #12
  %call23 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %62 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val, align 4
  %and24 = and i32 %63, -65
  store i32 %and24, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 10737400) #12
  %65 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val, align 4
  %call25 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %66) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 10737400) #12
  %call26 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val, align 4
  %or27 = or i32 %69, 131072
  store i32 %or27, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 10737400) #12
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val, align 4
  %call28 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %72) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 10737400) #12
  %call29 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %74 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val, align 4
  %and31 = and i32 %75, -41
  store i32 %and31, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 10737400) #12
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val, align 4
  %call32 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %78) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 10737400) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i16) #12
  %80 = ptrtoint ptr %val.i16 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %val.i16, align 4, !annotation !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 10737400) #12
  %call.i18 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i16) #12
  %82 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val.i16, align 4
  %and1.i19 = and i32 %83, -17
  store i32 %and1.i19, ptr %val.i16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 10737400) #12
  %85 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i16, align 4
  %and2.i20 = and i32 %86, -9
  store i32 %and2.i20, ptr %val.i16, align 4
  %call3.i21 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i20) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 10737400) #12
  %88 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val.i16, align 4
  %or4.i22 = or i32 %89, 8
  store i32 %or4.i22, ptr %val.i16, align 4
  %call5.i23 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i22) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 10737400) #12
  %call.i18.1 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i16) #12
  %91 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val.i16, align 4
  %and1.i19.1 = and i32 %92, -17
  store i32 %and1.i19.1, ptr %val.i16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 10737400) #12
  %94 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i16, align 4
  %and2.i20.1 = and i32 %95, -9
  store i32 %and2.i20.1, ptr %val.i16, align 4
  %call3.i21.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i20.1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 10737400) #12
  %97 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val.i16, align 4
  %or4.i22.1 = or i32 %98, 8
  store i32 %or4.i22.1, ptr %val.i16, align 4
  %call5.i23.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i22.1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i16) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i28) #12
  %99 = ptrtoint ptr %val.i28 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %val.i28, align 4, !annotation !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 10737400) #12
  %call.i30 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i28) #12
  %101 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val.i28, align 4
  %and1.i31 = and i32 %102, -17
  store i32 %and1.i31, ptr %val.i28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 10737400) #12
  %104 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val.i28, align 4
  %and2.i32 = and i32 %105, -9
  store i32 %and2.i32, ptr %val.i28, align 4
  %call3.i33 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i32) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 10737400) #12
  %107 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val.i28, align 4
  %or4.i34 = or i32 %108, 8
  store i32 %or4.i34, ptr %val.i28, align 4
  %call5.i35 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i34) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 10737400) #12
  %call.i30.1 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i28) #12
  %110 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val.i28, align 4
  %and1.i31.1 = and i32 %111, -17
  store i32 %and1.i31.1, ptr %val.i28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %112(i32 noundef 10737400) #12
  %113 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i28, align 4
  %and2.i32.1 = and i32 %114, -9
  store i32 %and2.i32.1, ptr %val.i28, align 4
  %call3.i33.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2.i32.1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 10737400) #12
  %116 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val.i28, align 4
  %or4.i34.1 = or i32 %117, 8
  store i32 %or4.i34.1, ptr %val.i28, align 4
  %call5.i35.1 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4.i34.1) #12
  %.2 = select i1 %cmp9, i32 24, i32 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i28) #12
  call fastcc void @bit_bang(ptr noundef %adapter, i32 noundef %.2, i32 noundef 9)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 10737400) #12
  %call33 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %119 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val, align 4
  %or34 = or i32 %120, 32
  store i32 %or34, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 10737400) #12
  %122 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %val, align 4
  %call35 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %123) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 10737400) #12
  %call36 = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %125 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %val, align 4
  %and37 = and i32 %126, -33
  store i32 %and37, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %127(i32 noundef 10737400) #12
  %128 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val, align 4
  %call38 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %129) #12
  call void @_raw_spin_unlock(ptr noundef %tpi_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %adapter_matches_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_free_sw_modules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %rm.i.i = alloca %struct.t1_rx_mode, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_device_map, align 4
  %and = and i32 %3, 15
  %napi = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  tail call void @napi_enable(ptr noundef %napi) #12
  %4 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_device_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 16
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.if.end4.i_crit_edge

land.lhs.true.if.end4.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %land.lhs.true
  %call.i = tail call i32 @t1_init_hw_modules(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.cxgb_up.exit_crit_edge

if.then.i.cxgb_up.exit_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cxgb_up.exit

if.end.i:                                         ; preds = %if.then.i
  %port.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i.i, align 8
  %hw_features.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %hw_features.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hw_features.i.i, align 8
  %and.i.i = and i64 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.enable_hw_csum.exit.i_crit_edge, label %if.then.i.i

if.end.i.enable_hw_csum.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_hw_csum.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %tp.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %tp.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp.i.i, align 16
  tail call void @t1_tp_set_ip_checksum_offload(ptr noundef %13, i32 noundef 1) #12
  br label %enable_hw_csum.exit.i

enable_hw_csum.exit.i:                            ; preds = %if.then.i.i, %if.end.i.enable_hw_csum.exit.i_crit_edge
  %tp1.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %tp1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tp1.i.i, align 16
  tail call void @t1_tp_set_tcp_checksum_offload(ptr noundef %15, i32 noundef 1) #12
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 16
  %or.i28 = or i32 %17, 1
  store i32 %or.i28, ptr %flags.i, align 16
  br label %if.end4.i

if.end4.i:                                        ; preds = %enable_hw_csum.exit.i, %land.lhs.true.if.end4.i_crit_edge
  tail call void @t1_interrupts_clear(ptr noundef %1) #12
  %18 = load i32, ptr @disable_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i = icmp eq i32 %18, 0
  br i1 %tobool5.not.i, label %land.end.i, label %land.end.thread.i

land.end.thread.i:                                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %has_msi40.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 11
  %19 = ptrtoint ptr %has_msi40.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %has_msi40.i, align 4
  br label %23

land.end.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %call6.i = tail call i32 @pci_enable_msi(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  %conv.i = zext i1 %tobool7.not.i to i8
  %has_msi.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 11
  %22 = ptrtoint ptr %has_msi.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %has_msi.i, align 4
  %spec.select.i = select i1 %tobool7.not.i, i32 0, i32 128
  br label %23

23:                                               ; preds = %land.end.i, %land.end.thread.i
  %has_msi43.i = phi ptr [ %has_msi40.i, %land.end.thread.i ], [ %has_msi.i, %land.end.i ]
  %24 = phi i32 [ 128, %land.end.thread.i ], [ %spec.select.i, %land.end.i ]
  %pdev844.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %pdev844.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %pdev844.i, align 4
  %.in.i = getelementptr inbounds %struct.pci_dev, ptr %.pn.i, i32 0, i32 46
  %26 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %.in.i, align 4
  %name.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 4
  %call13.i = tail call i32 @request_threaded_irq(i32 noundef %27, ptr noundef nonnull @t1_interrupt, ptr noundef nonnull @t1_interrupt_thread, i32 noundef %24, ptr noundef %29, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %cxgb_up.exit.thread, label %if.then15.i

if.then15.i:                                      ; preds = %23
  %30 = ptrtoint ptr %has_msi43.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_msi43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool18.not.i = icmp eq i8 %31, 0
  br i1 %tobool18.not.i, label %if.then15.i.cxgb_up.exit_crit_edge, label %if.then19.i

if.then15.i.cxgb_up.exit_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cxgb_up.exit

if.then19.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %pdev844.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev844.i, align 4
  tail call void @pci_disable_msi(ptr noundef %33) #12
  br label %cxgb_up.exit

cxgb_up.exit.thread:                              ; preds = %23
  call void @__sanitizer_cov_trace_pc() #14
  %sge.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %sge.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sge.i, align 8
  tail call void @t1_sge_start(ptr noundef %35) #12
  tail call void @t1_interrupts_enable(ptr noundef %1) #12
  br label %if.end

cxgb_up.exit:                                     ; preds = %if.then19.i, %if.then15.i.cxgb_up.exit_crit_edge, %if.then.i.cxgb_up.exit_crit_edge
  %err.0.i = phi i32 [ %call13.i, %if.then19.i ], [ %call13.i, %if.then15.i.cxgb_up.exit_crit_edge ], [ %call.i, %if.then.i.cxgb_up.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %if.then, label %cxgb_up.exit.if.end_crit_edge

cxgb_up.exit.if.end_crit_edge:                    ; preds = %cxgb_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cxgb_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @napi_disable(ptr noundef %napi) #12
  br label %cleanup

if.end:                                           ; preds = %cxgb_up.exit.if.end_crit_edge, %cxgb_up.exit.thread, %entry.if.end_crit_edge
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %36 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %if_port, align 2
  %conv = zext i8 %37 to i32
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %open_device_map, i32 %div2.i
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %39
  store i32 %or.i, ptr %add.ptr.i, align 4
  %40 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %40 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom
  %mac1.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %41 = ptrtoint ptr %mac1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mac1.i, align 4
  %ops.i = getelementptr inbounds %struct.cmac, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %reset.i = getelementptr inbounds %struct.cmac_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset.i, align 4
  %call.i29 = tail call i32 %46(ptr noundef %42) #12
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %macaddress_set.i = getelementptr inbounds %struct.cmac_ops, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %macaddress_set.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %macaddress_set.i, align 4
  %tobool.not.i30 = icmp eq ptr %50, null
  br i1 %tobool.not.i30, label %if.end.link_start.exit_crit_edge, label %if.then.i31

if.end.link_start.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %link_start.exit

if.then.i31:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 86
  %53 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr.i, align 64
  %call5.i = tail call i32 %50(ptr noundef %42, ptr noundef %54) #12
  br label %link_start.exit

link_start.exit:                                  ; preds = %if.then.i31, %if.end.link_start.exit_crit_edge
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 128
  %57 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ml_priv.i.i, align 8
  %if_port.i.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 52
  %59 = ptrtoint ptr %if_port.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %if_port.i.i, align 2
  %idxprom.i.i = zext i8 %60 to i32
  %mac1.i.i = getelementptr %struct.adapter, ptr %58, i32 0, i32 13, i32 %idxprom.i.i, i32 1
  %61 = ptrtoint ptr %mac1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rm.i.i) #12
  %63 = ptrtoint ptr %rm.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %56, ptr %rm.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.cmac, ptr %62, i32 0, i32 2
  %64 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i.i, align 4
  %set_rx_mode.i.i = getelementptr inbounds %struct.cmac_ops, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %set_rx_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_rx_mode.i.i, align 4
  %call.i.i = call i32 %67(ptr noundef %62, ptr noundef nonnull %rm.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rm.i.i) #12
  %phy.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 2
  %68 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy.i, align 4
  %link_config.i = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3
  %call7.i = call i32 @t1_link_start(ptr noundef %69, ptr noundef %42, ptr noundef %link_config.i) #12
  %70 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i, align 4
  %enable.i = getelementptr inbounds %struct.cmac_ops, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %enable.i, align 4
  %call9.i = call i32 %73(ptr noundef %42, i32 noundef 3) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %74 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %75, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %link_start.exit.if.end11_crit_edge

link_start.exit.if.end11_crit_edge:               ; preds = %link_start.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true6:                                   ; preds = %link_start.exit
  %stats_update_period = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 7
  %76 = ptrtoint ptr %stats_update_period to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %stats_update_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool7.not = icmp eq i32 %77, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end11_crit_edge, label %if.then8

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %stats_update_task.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14
  %mul.i = mul i32 %77, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %78 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %stats_update_task.i, i32 noundef %mul.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true6.if.end11_crit_edge, %link_start.exit.if.end11_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %79 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %features, align 16
  call void @t1_vlan_mode(ptr noundef %1, i64 noundef %80) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %err.0.i, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %mac1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %napi = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 12
  tail call void @napi_disable(ptr noundef %napi) #12
  %ops = getelementptr inbounds %struct.cmac, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %disable = getelementptr inbounds %struct.cmac_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable, align 4
  %call = tail call i32 %11(ptr noundef %5, i32 noundef 3) #12
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  %12 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %if_port, align 2
  %conv = zext i8 %13 to i32
  %open_device_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %open_device_map) #12
  %stats_update_period = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %stats_update_period to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stats_update_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %open_device_map, align 4
  %and = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  %work_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #12
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #12
  %stats_update_task.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 14
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %stats_update_task.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %open_device_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %open_device_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end
  %sge.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %sge.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sge.i, align 8
  tail call void @t1_sge_stop(ptr noundef %20) #12
  tail call void @t1_interrupts_disable(ptr noundef %1) #12
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  %call.i27 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %1) #12
  %has_msi.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 11
  %25 = ptrtoint ptr %has_msi.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_msi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.then11.if.end12_crit_edge, label %if.then.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %28) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then11.if.end12_crit_edge, %if.end.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t1_set_rxmode(ptr noundef %dev) #0 align 64 {
entry:
  %rm = alloca %struct.t1_rx_mode, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %mac1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rm) #12
  %6 = ptrtoint ptr %rm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %rm, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %set_rx_mode = getelementptr inbounds %struct.cmac_ops, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %set_rx_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_rx_mode, align 4
  %call = call i32 %10(ptr noundef %5, ptr noundef nonnull %rm) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rm) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t1_set_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %mac1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac1, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %macaddress_set = getelementptr inbounds %struct.cmac_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %macaddress_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %macaddress_set, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %macaddress_set3 = getelementptr inbounds %struct.cmac_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %macaddress_set3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %macaddress_set3, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  %call = tail call i32 %13(ptr noundef %5, ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t1_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %req, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %phy = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 8
  %mdio1 = getelementptr inbounds %struct.cphy, ptr %5, i32 0, i32 9
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %call2 = tail call i32 @mdio_mii_ioctl(ptr noundef %mdio1, ptr noundef %ifr_ifru.i, i32 noundef %cmd) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t1_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %mac1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac1, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %set_mtu = getelementptr inbounds %struct.cmac_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %set_mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_mtu, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %9(ptr noundef %5, i32 noundef %new_mtu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @t1_get_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %mac = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %statistics_update = getelementptr inbounds %struct.cmac_ops, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %statistics_update to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %statistics_update, align 4
  %call = tail call ptr %9(ptr noundef %5, i32 noundef 1) #12
  %TxUnicastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %TxUnicastFramesOK to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %TxUnicastFramesOK, align 8
  %TxMulticastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %TxMulticastFramesOK to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %TxMulticastFramesOK, align 8
  %add = add i64 %13, %11
  %TxBroadcastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %TxBroadcastFramesOK to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %TxBroadcastFramesOK, align 8
  %add2 = add i64 %add, %15
  %conv = trunc i64 %add2 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %16 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %tx_packets, align 4
  %RxUnicastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 19
  %17 = ptrtoint ptr %RxUnicastFramesOK to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %RxUnicastFramesOK, align 8
  %RxMulticastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 20
  %19 = ptrtoint ptr %RxMulticastFramesOK to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %RxMulticastFramesOK, align 8
  %add3 = add i64 %20, %18
  %RxBroadcastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 21
  %21 = ptrtoint ptr %RxBroadcastFramesOK to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %RxBroadcastFramesOK, align 8
  %add4 = add i64 %add3, %22
  %conv5 = trunc i64 %add4 to i32
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv5, ptr %stats, align 4
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %call, align 8
  %conv6 = trunc i64 %25 to i32
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %26 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv6, ptr %tx_bytes, align 4
  %RxOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 17
  %27 = ptrtoint ptr %RxOctetsOK to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %RxOctetsOK, align 8
  %conv7 = trunc i64 %28 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %29 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv7, ptr %rx_bytes, align 4
  %TxLateCollisions = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 7
  %30 = ptrtoint ptr %TxLateCollisions to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %TxLateCollisions, align 8
  %TxLengthErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 11
  %32 = ptrtoint ptr %TxLengthErrors to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %TxLengthErrors, align 8
  %add8 = add i64 %33, %31
  %TxUnderrun = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 10
  %34 = ptrtoint ptr %TxUnderrun to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %TxUnderrun, align 8
  %add9 = add i64 %add8, %35
  %TxFramesAbortedDueToXSCollisions = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 9
  %36 = ptrtoint ptr %TxFramesAbortedDueToXSCollisions to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %TxFramesAbortedDueToXSCollisions, align 8
  %add10 = add i64 %add9, %37
  %conv11 = trunc i64 %add10 to i32
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %38 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv11, ptr %tx_errors, align 4
  %RxDataErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 26
  %39 = ptrtoint ptr %RxDataErrors to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %RxDataErrors, align 8
  %RxJabberErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 29
  %41 = ptrtoint ptr %RxJabberErrors to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %RxJabberErrors, align 8
  %add12 = add i64 %42, %40
  %RxFCSErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 23
  %43 = ptrtoint ptr %RxFCSErrors to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %RxFCSErrors, align 8
  %add13 = add i64 %add12, %44
  %RxAlignErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 24
  %45 = ptrtoint ptr %RxAlignErrors to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %RxAlignErrors, align 8
  %add14 = add i64 %add13, %46
  %RxSequenceErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 27
  %47 = ptrtoint ptr %RxSequenceErrors to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %RxSequenceErrors, align 8
  %add15 = add i64 %add14, %48
  %RxFrameTooLongErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 33
  %49 = ptrtoint ptr %RxFrameTooLongErrors to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %RxFrameTooLongErrors, align 8
  %add16 = add i64 %add15, %50
  %RxSymbolErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 25
  %51 = ptrtoint ptr %RxSymbolErrors to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %RxSymbolErrors, align 8
  %add17 = add i64 %add16, %52
  %RxRuntErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 28
  %53 = ptrtoint ptr %RxRuntErrors to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %RxRuntErrors, align 8
  %add18 = add i64 %add17, %54
  %conv19 = trunc i64 %add18 to i32
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %55 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv19, ptr %rx_errors, align 4
  %56 = load i64, ptr %RxMulticastFramesOK, align 8
  %conv21 = trunc i64 %56 to i32
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %57 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv21, ptr %multicast, align 4
  %TxTotalCollisions = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 8
  %58 = ptrtoint ptr %TxTotalCollisions to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %TxTotalCollisions, align 8
  %conv22 = trunc i64 %59 to i32
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %60 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv22, ptr %collisions, align 4
  %61 = load i64, ptr %RxFrameTooLongErrors, align 8
  %62 = load i64, ptr %RxJabberErrors, align 8
  %add25 = add i64 %62, %61
  %conv26 = trunc i64 %add25 to i32
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %63 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv26, ptr %rx_length_errors, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %64 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %rx_over_errors, align 4
  %65 = load i64, ptr %RxFCSErrors, align 8
  %conv28 = trunc i64 %65 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %66 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv28, ptr %rx_crc_errors, align 4
  %67 = load i64, ptr %RxAlignErrors, align 8
  %conv30 = trunc i64 %67 to i32
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %68 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv30, ptr %rx_frame_errors, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %69 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %rx_fifo_errors, align 4
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %70 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %rx_missed_errors, align 4
  %71 = load i64, ptr %TxFramesAbortedDueToXSCollisions, align 8
  %conv32 = trunc i64 %71 to i32
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %72 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv32, ptr %tx_aborted_errors, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %73 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %tx_carrier_errors, align 4
  %74 = load i64, ptr %TxUnderrun, align 8
  %conv34 = trunc i64 %74 to i32
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %75 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv34, ptr %tx_fifo_errors, align 4
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %76 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %tx_heartbeat_errors, align 4
  %77 = load i64, ptr %TxLateCollisions, align 8
  %conv36 = trunc i64 %77 to i32
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %78 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv36, ptr %tx_window_errors, align 4
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t1_netpoll(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !119
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then22, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call12 = tail call i32 @t1_interrupt(i32 noundef %6, ptr noundef %1) #12
  br label %do.body24

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %pdev48 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pdev48 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev48, align 4
  %irq49 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq49, align 4
  %call1250 = tail call i32 @t1_interrupt(i32 noundef %10, ptr noundef %1) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %do.end11
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !120
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !121

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !122
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @t1_fix_features(ptr nocapture noundef readnone %dev, i64 noundef %features) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i64 %features, -129
  %and = lshr i64 %features, 1
  %0 = and i64 %and, 128
  %features.addr.0 = or i64 %0, %and1
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t1_set_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %2 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ml_priv, align 8
  tail call void @t1_vlan_mode(ptr noundef %3, i64 noundef %features) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_vlan_mode(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_init_hw_modules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_interrupts_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_interrupt_thread(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_sge_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_interrupts_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_tp_set_ip_checksum_offload(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_tp_set_tcp_checksum_offload(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_link_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_sge_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_interrupts_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.8, i32 noundef 32) #12
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call3 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_regs_len(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3072
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %version, align 4
  %3 = call ptr @memset(ptr %buf, i32 0, i32 3072)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %start.addr.08.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry ]
  %p.07.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %buf, %entry ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %add.ptr1.i = getelementptr i8, ptr %5, i32 %start.addr.08.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !123
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i = getelementptr i32, ptr %p.07.i, i32 1
  %8 = ptrtoint ptr %p.07.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p.07.i, align 4
  %add.i = add nuw nsw i32 %start.addr.08.i, 4
  %cmp.not.i = icmp ugt i32 %start.addr.08.i, 188
  br i1 %cmp.not.i, label %reg_block_dump.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

reg_block_dump.exit:                              ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 256
  br label %for.body.i26

for.body.i26:                                     ; preds = %for.body.i26.for.body.i26_crit_edge, %reg_block_dump.exit
  %start.addr.08.i20 = phi i32 [ %add.i24, %for.body.i26.for.body.i26_crit_edge ], [ 256, %reg_block_dump.exit ]
  %p.07.i21 = phi ptr [ %incdec.ptr.i23, %for.body.i26.for.body.i26_crit_edge ], [ %add.ptr.i, %reg_block_dump.exit ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %add.ptr1.i22 = getelementptr i8, ptr %10, i32 %start.addr.08.i20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i22) #12, !srcloc !123
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i23 = getelementptr i32, ptr %p.07.i21, i32 1
  %13 = ptrtoint ptr %p.07.i21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %p.07.i21, align 4
  %add.i24 = add nuw nsw i32 %start.addr.08.i20, 4
  %cmp.not.i25 = icmp ugt i32 %start.addr.08.i20, 504
  br i1 %cmp.not.i25, label %reg_block_dump.exit27, label %for.body.i26.for.body.i26_crit_edge

for.body.i26.for.body.i26_crit_edge:              ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i26

reg_block_dump.exit27:                            ; preds = %for.body.i26
  %add.ptr.i28 = getelementptr i8, ptr %buf, i32 640
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %add.ptr1.i31 = getelementptr i8, ptr %15, i32 640
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31) #12, !srcloc !123
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i32 = getelementptr i8, ptr %buf, i32 644
  %18 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i28, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %add.ptr1.i31.1 = getelementptr i8, ptr %20, i32 644
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.1) #12, !srcloc !123
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i32.1 = getelementptr i8, ptr %buf, i32 648
  %23 = ptrtoint ptr %incdec.ptr.i32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr.i32, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %add.ptr1.i31.2 = getelementptr i8, ptr %25, i32 648
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.2) #12, !srcloc !123
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i32.2 = getelementptr i8, ptr %buf, i32 652
  %28 = ptrtoint ptr %incdec.ptr.i32.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr.i32.1, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 128
  %add.ptr1.i31.3 = getelementptr i8, ptr %30, i32 652
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.3) #12, !srcloc !123
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i32.3 = getelementptr i8, ptr %buf, i32 656
  %33 = ptrtoint ptr %incdec.ptr.i32.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %incdec.ptr.i32.2, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 128
  %add.ptr1.i31.4 = getelementptr i8, ptr %35, i32 656
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.4) #12, !srcloc !123
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i32.4 = getelementptr i8, ptr %buf, i32 660
  %38 = ptrtoint ptr %incdec.ptr.i32.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %incdec.ptr.i32.3, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 128
  %add.ptr1.i31.5 = getelementptr i8, ptr %40, i32 660
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.5) #12, !srcloc !123
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i32.5 = getelementptr i8, ptr %buf, i32 664
  %43 = ptrtoint ptr %incdec.ptr.i32.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %incdec.ptr.i32.4, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 128
  %add.ptr1.i31.6 = getelementptr i8, ptr %45, i32 664
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.6) #12, !srcloc !123
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i32.6 = getelementptr i8, ptr %buf, i32 668
  %48 = ptrtoint ptr %incdec.ptr.i32.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %incdec.ptr.i32.5, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 128
  %add.ptr1.i31.7 = getelementptr i8, ptr %50, i32 668
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.7) #12, !srcloc !123
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %53 = ptrtoint ptr %incdec.ptr.i32.6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %incdec.ptr.i32.6, align 4
  %add.ptr.i37 = getelementptr i8, ptr %buf, i32 768
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %reg_block_dump.exit27
  %start.addr.08.i38 = phi i32 [ %add.i42, %for.body.i44.for.body.i44_crit_edge ], [ 768, %reg_block_dump.exit27 ]
  %p.07.i39 = phi ptr [ %incdec.ptr.i41, %for.body.i44.for.body.i44_crit_edge ], [ %add.ptr.i37, %reg_block_dump.exit27 ]
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 128
  %add.ptr1.i40 = getelementptr i8, ptr %55, i32 %start.addr.08.i38
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i40) #12, !srcloc !123
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i41 = getelementptr i32, ptr %p.07.i39, i32 1
  %58 = ptrtoint ptr %p.07.i39 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %p.07.i39, align 4
  %add.i42 = add nuw nsw i32 %start.addr.08.i38, 4
  %cmp.not.i43 = icmp ugt i32 %start.addr.08.i38, 1208
  br i1 %cmp.not.i43, label %reg_block_dump.exit45, label %for.body.i44.for.body.i44_crit_edge

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i44

reg_block_dump.exit45:                            ; preds = %for.body.i44
  %add.ptr.i46 = getelementptr i8, ptr %buf, i32 1408
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 128
  %add.ptr1.i49 = getelementptr i8, ptr %60, i32 1408
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49) #12, !srcloc !123
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i50 = getelementptr i8, ptr %buf, i32 1412
  %63 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %add.ptr.i46, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 128
  %add.ptr1.i49.1 = getelementptr i8, ptr %65, i32 1412
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49.1) #12, !srcloc !123
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i50.1 = getelementptr i8, ptr %buf, i32 1416
  %68 = ptrtoint ptr %incdec.ptr.i50 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %incdec.ptr.i50, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 128
  %add.ptr1.i49.2 = getelementptr i8, ptr %70, i32 1416
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49.2) #12, !srcloc !123
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i50.2 = getelementptr i8, ptr %buf, i32 1420
  %73 = ptrtoint ptr %incdec.ptr.i50.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %incdec.ptr.i50.1, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 128
  %add.ptr1.i49.3 = getelementptr i8, ptr %75, i32 1420
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49.3) #12, !srcloc !123
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i50.3 = getelementptr i8, ptr %buf, i32 1424
  %78 = ptrtoint ptr %incdec.ptr.i50.2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %incdec.ptr.i50.2, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 128
  %add.ptr1.i49.4 = getelementptr i8, ptr %80, i32 1424
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49.4) #12, !srcloc !123
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i50.4 = getelementptr i8, ptr %buf, i32 1428
  %83 = ptrtoint ptr %incdec.ptr.i50.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %incdec.ptr.i50.3, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 128
  %add.ptr1.i49.5 = getelementptr i8, ptr %85, i32 1428
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i49.5) #12, !srcloc !123
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %88 = ptrtoint ptr %incdec.ptr.i50.4 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %incdec.ptr.i50.4, align 4
  %add.ptr.i55 = getelementptr i8, ptr %buf, i32 2064
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 128
  %add.ptr1.i58 = getelementptr i8, ptr %90, i32 2064
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58) #12, !srcloc !123
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59 = getelementptr i8, ptr %buf, i32 2068
  %93 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %add.ptr.i55, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 128
  %add.ptr1.i58.1 = getelementptr i8, ptr %95, i32 2068
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.1) #12, !srcloc !123
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.1 = getelementptr i8, ptr %buf, i32 2072
  %98 = ptrtoint ptr %incdec.ptr.i59 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %incdec.ptr.i59, align 4
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 128
  %add.ptr1.i58.2 = getelementptr i8, ptr %100, i32 2072
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.2) #12, !srcloc !123
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.2 = getelementptr i8, ptr %buf, i32 2076
  %103 = ptrtoint ptr %incdec.ptr.i59.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %incdec.ptr.i59.1, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 128
  %add.ptr1.i58.3 = getelementptr i8, ptr %105, i32 2076
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.3) #12, !srcloc !123
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.3 = getelementptr i8, ptr %buf, i32 2080
  %108 = ptrtoint ptr %incdec.ptr.i59.2 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %incdec.ptr.i59.2, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 128
  %add.ptr1.i58.4 = getelementptr i8, ptr %110, i32 2080
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.4) #12, !srcloc !123
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.4 = getelementptr i8, ptr %buf, i32 2084
  %113 = ptrtoint ptr %incdec.ptr.i59.3 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %incdec.ptr.i59.3, align 4
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 128
  %add.ptr1.i58.5 = getelementptr i8, ptr %115, i32 2084
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.5) #12, !srcloc !123
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.5 = getelementptr i8, ptr %buf, i32 2088
  %118 = ptrtoint ptr %incdec.ptr.i59.4 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %incdec.ptr.i59.4, align 4
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 128
  %add.ptr1.i58.6 = getelementptr i8, ptr %120, i32 2088
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.6) #12, !srcloc !123
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.6 = getelementptr i8, ptr %buf, i32 2092
  %123 = ptrtoint ptr %incdec.ptr.i59.5 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %incdec.ptr.i59.5, align 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 128
  %add.ptr1.i58.7 = getelementptr i8, ptr %125, i32 2092
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.7) #12, !srcloc !123
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.7 = getelementptr i8, ptr %buf, i32 2096
  %128 = ptrtoint ptr %incdec.ptr.i59.6 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %incdec.ptr.i59.6, align 4
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 128
  %add.ptr1.i58.8 = getelementptr i8, ptr %130, i32 2096
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.8) #12, !srcloc !123
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.8 = getelementptr i8, ptr %buf, i32 2100
  %133 = ptrtoint ptr %incdec.ptr.i59.7 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %incdec.ptr.i59.7, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 128
  %add.ptr1.i58.9 = getelementptr i8, ptr %135, i32 2100
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.9) #12, !srcloc !123
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.9 = getelementptr i8, ptr %buf, i32 2104
  %138 = ptrtoint ptr %incdec.ptr.i59.8 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %incdec.ptr.i59.8, align 4
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 128
  %add.ptr1.i58.10 = getelementptr i8, ptr %140, i32 2104
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.10) #12, !srcloc !123
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.10 = getelementptr i8, ptr %buf, i32 2108
  %143 = ptrtoint ptr %incdec.ptr.i59.9 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %incdec.ptr.i59.9, align 4
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 128
  %add.ptr1.i58.11 = getelementptr i8, ptr %145, i32 2108
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.11) #12, !srcloc !123
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.11 = getelementptr i8, ptr %buf, i32 2112
  %148 = ptrtoint ptr %incdec.ptr.i59.10 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %incdec.ptr.i59.10, align 4
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 128
  %add.ptr1.i58.12 = getelementptr i8, ptr %150, i32 2112
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.12) #12, !srcloc !123
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.12 = getelementptr i8, ptr %buf, i32 2116
  %153 = ptrtoint ptr %incdec.ptr.i59.11 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %incdec.ptr.i59.11, align 4
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 128
  %add.ptr1.i58.13 = getelementptr i8, ptr %155, i32 2116
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.13) #12, !srcloc !123
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.13 = getelementptr i8, ptr %buf, i32 2120
  %158 = ptrtoint ptr %incdec.ptr.i59.12 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %incdec.ptr.i59.12, align 4
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 128
  %add.ptr1.i58.14 = getelementptr i8, ptr %160, i32 2120
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.14) #12, !srcloc !123
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i59.14 = getelementptr i8, ptr %buf, i32 2124
  %163 = ptrtoint ptr %incdec.ptr.i59.13 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %incdec.ptr.i59.13, align 4
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 128
  %add.ptr1.i58.15 = getelementptr i8, ptr %165, i32 2124
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58.15) #12, !srcloc !123
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %168 = ptrtoint ptr %incdec.ptr.i59.14 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %incdec.ptr.i59.14, align 4
  %add.ptr.i64 = getelementptr i8, ptr %buf, i32 2176
  br label %for.body.i71

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %reg_block_dump.exit45
  %start.addr.08.i65 = phi i32 [ %add.i69, %for.body.i71.for.body.i71_crit_edge ], [ 2176, %reg_block_dump.exit45 ]
  %p.07.i66 = phi ptr [ %incdec.ptr.i68, %for.body.i71.for.body.i71_crit_edge ], [ %add.ptr.i64, %reg_block_dump.exit45 ]
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 128
  %add.ptr1.i67 = getelementptr i8, ptr %170, i32 %start.addr.08.i65
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i67) #12, !srcloc !123
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i68 = getelementptr i32, ptr %p.07.i66, i32 1
  %173 = ptrtoint ptr %p.07.i66 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %p.07.i66, align 4
  %add.i69 = add nuw nsw i32 %start.addr.08.i65, 4
  %cmp.not.i70 = icmp ugt i32 %start.addr.08.i65, 2296
  br i1 %cmp.not.i70, label %reg_block_dump.exit72, label %for.body.i71.for.body.i71_crit_edge

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i71

reg_block_dump.exit72:                            ; preds = %for.body.i71
  %add.ptr.i73 = getelementptr i8, ptr %buf, i32 2432
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 128
  %add.ptr1.i76 = getelementptr i8, ptr %175, i32 2432
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76) #12, !srcloc !123
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i77 = getelementptr i8, ptr %buf, i32 2436
  %178 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %add.ptr.i73, align 4
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 128
  %add.ptr1.i76.1 = getelementptr i8, ptr %180, i32 2436
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76.1) #12, !srcloc !123
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i77.1 = getelementptr i8, ptr %buf, i32 2440
  %183 = ptrtoint ptr %incdec.ptr.i77 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %incdec.ptr.i77, align 4
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 128
  %add.ptr1.i76.2 = getelementptr i8, ptr %185, i32 2440
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76.2) #12, !srcloc !123
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i77.2 = getelementptr i8, ptr %buf, i32 2444
  %188 = ptrtoint ptr %incdec.ptr.i77.1 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %incdec.ptr.i77.1, align 4
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %1, align 128
  %add.ptr1.i76.3 = getelementptr i8, ptr %190, i32 2444
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76.3) #12, !srcloc !123
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i77.3 = getelementptr i8, ptr %buf, i32 2448
  %193 = ptrtoint ptr %incdec.ptr.i77.2 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %incdec.ptr.i77.2, align 4
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 128
  %add.ptr1.i76.4 = getelementptr i8, ptr %195, i32 2448
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76.4) #12, !srcloc !123
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i77.4 = getelementptr i8, ptr %buf, i32 2452
  %198 = ptrtoint ptr %incdec.ptr.i77.3 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %incdec.ptr.i77.3, align 4
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 128
  %add.ptr1.i76.5 = getelementptr i8, ptr %200, i32 2452
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76.5) #12, !srcloc !123
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i77.5 = getelementptr i8, ptr %buf, i32 2456
  %203 = ptrtoint ptr %incdec.ptr.i77.4 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %incdec.ptr.i77.4, align 4
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 128
  %add.ptr1.i76.6 = getelementptr i8, ptr %205, i32 2456
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i76.6) #12, !srcloc !123
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %208 = ptrtoint ptr %incdec.ptr.i77.5 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %incdec.ptr.i77.5, align 4
  %add.ptr.i82 = getelementptr i8, ptr %buf, i32 2560
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 128
  %add.ptr1.i85 = getelementptr i8, ptr %210, i32 2560
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i85) #12, !srcloc !123
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i86 = getelementptr i8, ptr %buf, i32 2564
  %213 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %add.ptr.i82, align 4
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 128
  %add.ptr1.i85.1 = getelementptr i8, ptr %215, i32 2564
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i85.1) #12, !srcloc !123
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %218 = ptrtoint ptr %incdec.ptr.i86 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %incdec.ptr.i86, align 4
  %add.ptr.i91 = getelementptr i8, ptr %buf, i32 3076
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.body.i98.for.body.i98_crit_edge, %reg_block_dump.exit72
  %start.addr.08.i92 = phi i32 [ %add.i96, %for.body.i98.for.body.i98_crit_edge ], [ 3076, %reg_block_dump.exit72 ]
  %p.07.i93 = phi ptr [ %incdec.ptr.i95, %for.body.i98.for.body.i98_crit_edge ], [ %add.ptr.i91, %reg_block_dump.exit72 ]
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 128
  %add.ptr1.i94 = getelementptr i8, ptr %220, i32 %start.addr.08.i92
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i94) #12, !srcloc !123
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  %incdec.ptr.i95 = getelementptr i32, ptr %p.07.i93, i32 1
  %223 = ptrtoint ptr %p.07.i93 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %p.07.i93, align 4
  %add.i96 = add nuw nsw i32 %start.addr.08.i92, 4
  %cmp.not.i97 = icmp ugt i32 %start.addr.08.i92, 3320
  br i1 %cmp.not.i97, label %reg_block_dump.exit99, label %for.body.i98.for.body.i98_crit_edge

for.body.i98.for.body.i98_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i98

reg_block_dump.exit99:                            ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_msglevel(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_msglevel(ptr nocapture noundef readonly %dev, i32 noundef %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %msg_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_eeprom_len(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef %e, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ml_priv, align 8
  %chip_version = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 8, i32 9
  %3 = ptrtoint ptr %chip_version to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chip_version, align 2
  %conv = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, 5157
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 1
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %and = and i32 %7, -4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %e, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %add16 = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add16)
  %cmp17 = icmp ult i32 %and, %add16
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %add3, %for.body.for.body_crit_edge ], [ %and, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %i.018
  %call = call i32 @t1_seeprom_read(ptr noundef %2, i32 noundef %i.018, ptr noundef %arrayidx) #12
  %add3 = add i32 %i.018, 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add = add i32 %13, %11
  %cmp = icmp ult i32 %add3, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa15 = phi i32 [ %7, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %9, %entry.for.end_crit_edge ], [ %13, %for.body.for.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %.lcssa15
  %14 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %.lcssa)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %c, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 3
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_coalesce_usecs1 = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_coalesce_usecs1, align 4
  %sample_interval_usecs = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 6
  %5 = ptrtoint ptr %sample_interval_usecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sample_interval_usecs, align 32
  %rate_sample_interval = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 22
  %7 = ptrtoint ptr %rate_sample_interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate_sample_interval, align 4
  %coalesce_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 7
  %8 = ptrtoint ptr %coalesce_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %coalesce_enable, align 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 10
  %10 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %use_adaptive_rx_coalesce, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %c, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  %params = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %rx_coalesce_usecs1 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 3
  %4 = ptrtoint ptr %rx_coalesce_usecs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_coalesce_usecs1, align 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 10
  %5 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %coalesce_enable = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 7
  %7 = ptrtoint ptr %coalesce_enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %coalesce_enable, align 4
  %rate_sample_interval = getelementptr inbounds %struct.ethtool_coalesce, ptr %c, i32 0, i32 22
  %8 = ptrtoint ptr %rate_sample_interval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate_sample_interval, align 4
  %sample_interval_usecs = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 6
  %10 = ptrtoint ptr %sample_interval_usecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sample_interval_usecs, align 32
  %sge6 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %sge6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sge6, align 8
  %call = tail call i32 @t1_sge_set_coalesce_params(ptr noundef %12, ptr noundef %params) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_sge_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %e, ptr nocapture noundef readnone %kernel_e, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.rhs.i, label %entry.adapter_matches_type.exit_crit_edge

entry.adapter_matches_type.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %adapter_matches_type.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %4 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp4.i = icmp ne i16 %5, 1
  br label %adapter_matches_type.exit

adapter_matches_type.exit:                        ; preds = %land.rhs.i, %entry.adapter_matches_type.exit_crit_edge
  %6 = phi i1 [ true, %entry.adapter_matches_type.exit_crit_edge ], [ %cmp4.i, %land.rhs.i ]
  %not.tobool.not = xor i1 %6, true
  %cond = zext i1 %not.tobool.not to i32
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 1
  %7 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16384, ptr %rx_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 3
  %8 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 4
  %9 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16384, ptr %tx_max_pending, align 4
  %params = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %lnot.ext = zext i1 %6 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 1, i32 %lnot.ext
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 5
  %12 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_pending, align 4
  %arrayidx5 = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 1, i32 %cond
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 7
  %15 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rx_jumbo_pending, align 4
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params, align 32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 8
  %18 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @set_sge_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %e, ptr nocapture noundef readnone %kernel_e, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %land.rhs.i, label %entry.adapter_matches_type.exit_crit_edge

entry.adapter_matches_type.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %adapter_matches_type.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %4 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp4.i = icmp ne i16 %5, 1
  br label %adapter_matches_type.exit

adapter_matches_type.exit:                        ; preds = %land.rhs.i, %entry.adapter_matches_type.exit_crit_edge
  %6 = phi i1 [ true, %entry.adapter_matches_type.exit_crit_edge ], [ %cmp4.i, %land.rhs.i ]
  %not.tobool.not = xor i1 %6, true
  %cond = zext i1 %not.tobool.not to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 5
  %7 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %8)
  %cmp = icmp ugt i32 %8, 16384
  br i1 %cmp, label %adapter_matches_type.exit.cleanup_crit_edge, label %lor.lhs.false

adapter_matches_type.exit.cleanup_crit_edge:      ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %adapter_matches_type.exit
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 6
  %9 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 7
  %11 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %12)
  %cmp3 = icmp ugt i32 %12, 16384
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %e, i32 0, i32 8
  %13 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %14)
  %cmp5 = icmp ugt i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp8 = icmp ult i32 %8, 32
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp11 = icmp ult i32 %12, 32
  %or.cond60 = select i1 %or.cond, i1 true, i1 %cmp11
  br i1 %or.cond60, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false4
  %params = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nports, align 8
  %17 = mul i32 %16, 18
  %mul = add i32 %17, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp14 = icmp ult i32 %14, %mul
  br i1 %cmp14, label %lor.lhs.false12.cleanup_crit_edge, label %if.end

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 16
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lnot.ext = zext i1 %6 to i32
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 1, i32 %lnot.ext
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %8, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_jumbo_pending, align 4
  %arrayidx25 = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 1, i32 %cond
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx25, align 4
  %24 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_pending, align 4
  %26 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %params, align 32
  %27 = load i32, ptr %tx_pending, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 1024)
  %arrayidx37 = getelementptr %struct.adapter, ptr %1, i32 0, i32 8, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %adapter_matches_type.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %adapter_matches_type.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %epause) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %requested_fc = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 6
  %4 = ptrtoint ptr %requested_fc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %requested_fc, align 2
  %6 = lshr i8 %5, 2
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %autoneg, align 4
  %fc = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 7
  %9 = ptrtoint ptr %fc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fc, align 1
  %11 = and i8 %10, 1
  %12 = zext i8 %11 to i32
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %13 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_pause, align 4
  %14 = load i8, ptr %fc, align 1
  %15 = lshr i8 %14, 1
  %.lobit18 = and i8 %15, 1
  %16 = zext i8 %.lobit18 to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %17 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %epause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %link_config = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_config, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %.sink = phi i8 [ 0, %entry.if.end4_crit_edge ], [ 4, %if.else.if.end4_crit_edge ]
  %requested_fc2 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 6
  %8 = ptrtoint ptr %requested_fc2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %requested_fc2, align 2
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %9 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %requested_fc7 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 6
  %11 = ptrtoint ptr %requested_fc7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %requested_fc7, align 2
  %13 = or i8 %12, 1
  store i8 %13, ptr %requested_fc7, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %14 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %requested_fc12 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 6
  %16 = ptrtoint ptr %requested_fc12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %requested_fc12, align 2
  %18 = or i8 %17, 2
  store i8 %18, ptr %requested_fc12, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  %autoneg17 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 8
  %19 = ptrtoint ptr %autoneg17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autoneg17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp19 = icmp eq i8 %20, 1
  br i1 %cmp19, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.end16
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then21.cleanup_crit_edge, label %if.then22

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %phy = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 2
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy, align 4
  %mac = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac, align 4
  %call23 = tail call i32 @t1_link_start(ptr noundef %24, ptr noundef %26, ptr noundef %link_config) #12
  br label %cleanup

if.else25:                                        ; preds = %if.end16
  %requested_fc26 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 6
  %27 = ptrtoint ptr %requested_fc26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %requested_fc26, align 2
  %29 = and i8 %28, 3
  %fc = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 7
  %30 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %fc, align 1
  %state.i59 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %31 = ptrtoint ptr %state.i59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i59, align 4
  %and1.i.i60 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i60)
  %tobool.i61.not = icmp eq i32 %and1.i.i60, 0
  br i1 %tobool.i61.not, label %if.else25.cleanup_crit_edge, label %if.then31

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  %mac32 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %33 = ptrtoint ptr %mac32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mac32, align 4
  %ops = getelementptr inbounds %struct.cmac, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %set_speed_duplex_fc = getelementptr inbounds %struct.cmac_ops, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %set_speed_duplex_fc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_speed_duplex_fc, align 4
  %conv35 = zext i8 %29 to i32
  %call36 = tail call i32 %38(ptr noundef %34, i32 noundef -1, i32 noundef -1, i32 noundef %conv35) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.else25.cleanup_crit_edge, %if.then22, %if.then21.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.else25.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.then21.cleanup_crit_edge ], [ 0, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %data, ptr @stats_strings, i32 1856)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr noundef writeonly %data) #0 align 64 {
entry:
  %ss = alloca %struct.sge_port_stats, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %mac1 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %mac1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ss) #12
  %6 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 4
  %10 = getelementptr inbounds %struct.sge_port_stats, ptr %ss, i32 0, i32 5
  %ops = getelementptr inbounds %struct.cmac, ptr %5, i32 0, i32 2
  %11 = call ptr @memset(ptr %ss, i32 255, i32 48)
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %statistics_update = getelementptr inbounds %struct.cmac_ops, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %statistics_update to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %statistics_update, align 4
  %call = tail call ptr %15(ptr noundef %5, i32 noundef 1) #12
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sge, align 8
  %call2 = tail call ptr @t1_sge_get_intr_counts(ptr noundef %17) #12
  %18 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sge, align 8
  %20 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %if_port, align 2
  %conv = zext i8 %21 to i32
  call void @t1_sge_get_port_stats(ptr noundef %19, i32 noundef %conv, ptr noundef nonnull %ss) #12
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %call, align 8
  %incdec.ptr = getelementptr i64, ptr %data, i32 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %data, align 8
  %TxOctetsBad = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %TxOctetsBad to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %TxOctetsBad, align 8
  %incdec.ptr5 = getelementptr i64, ptr %data, i32 2
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %incdec.ptr, align 8
  %TxUnicastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 2
  %28 = ptrtoint ptr %TxUnicastFramesOK to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %TxUnicastFramesOK, align 8
  %incdec.ptr6 = getelementptr i64, ptr %data, i32 3
  %30 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %incdec.ptr5, align 8
  %TxMulticastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 3
  %31 = ptrtoint ptr %TxMulticastFramesOK to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %TxMulticastFramesOK, align 8
  %incdec.ptr7 = getelementptr i64, ptr %data, i32 4
  %33 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %incdec.ptr6, align 8
  %TxBroadcastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 4
  %34 = ptrtoint ptr %TxBroadcastFramesOK to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %TxBroadcastFramesOK, align 8
  %incdec.ptr8 = getelementptr i64, ptr %data, i32 5
  %36 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %incdec.ptr7, align 8
  %TxPauseFrames = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 5
  %37 = ptrtoint ptr %TxPauseFrames to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %TxPauseFrames, align 8
  %incdec.ptr9 = getelementptr i64, ptr %data, i32 6
  %39 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %incdec.ptr8, align 8
  %TxFramesWithDeferredXmissions = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 6
  %40 = ptrtoint ptr %TxFramesWithDeferredXmissions to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %TxFramesWithDeferredXmissions, align 8
  %incdec.ptr10 = getelementptr i64, ptr %data, i32 7
  %42 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %incdec.ptr9, align 8
  %TxLateCollisions = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 7
  %43 = ptrtoint ptr %TxLateCollisions to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %TxLateCollisions, align 8
  %incdec.ptr11 = getelementptr i64, ptr %data, i32 8
  %45 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %incdec.ptr10, align 8
  %TxTotalCollisions = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 8
  %46 = ptrtoint ptr %TxTotalCollisions to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %TxTotalCollisions, align 8
  %incdec.ptr12 = getelementptr i64, ptr %data, i32 9
  %48 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %incdec.ptr11, align 8
  %TxFramesAbortedDueToXSCollisions = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 9
  %49 = ptrtoint ptr %TxFramesAbortedDueToXSCollisions to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %TxFramesAbortedDueToXSCollisions, align 8
  %incdec.ptr13 = getelementptr i64, ptr %data, i32 10
  %51 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %incdec.ptr12, align 8
  %TxUnderrun = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 10
  %52 = ptrtoint ptr %TxUnderrun to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %TxUnderrun, align 8
  %incdec.ptr14 = getelementptr i64, ptr %data, i32 11
  %54 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %incdec.ptr13, align 8
  %TxLengthErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 11
  %55 = ptrtoint ptr %TxLengthErrors to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %TxLengthErrors, align 8
  %incdec.ptr15 = getelementptr i64, ptr %data, i32 12
  %57 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %incdec.ptr14, align 8
  %TxInternalMACXmitError = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 12
  %58 = ptrtoint ptr %TxInternalMACXmitError to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %TxInternalMACXmitError, align 8
  %incdec.ptr16 = getelementptr i64, ptr %data, i32 13
  %60 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %incdec.ptr15, align 8
  %TxFramesWithExcessiveDeferral = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 13
  %61 = ptrtoint ptr %TxFramesWithExcessiveDeferral to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %TxFramesWithExcessiveDeferral, align 8
  %incdec.ptr17 = getelementptr i64, ptr %data, i32 14
  %63 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %incdec.ptr16, align 8
  %TxFCSErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 14
  %64 = ptrtoint ptr %TxFCSErrors to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %TxFCSErrors, align 8
  %incdec.ptr18 = getelementptr i64, ptr %data, i32 15
  %66 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %incdec.ptr17, align 8
  %TxJumboFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 15
  %67 = ptrtoint ptr %TxJumboFramesOK to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %TxJumboFramesOK, align 8
  %incdec.ptr19 = getelementptr i64, ptr %data, i32 16
  %69 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %incdec.ptr18, align 8
  %TxJumboOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 16
  %70 = ptrtoint ptr %TxJumboOctetsOK to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %TxJumboOctetsOK, align 8
  %incdec.ptr20 = getelementptr i64, ptr %data, i32 17
  %72 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %incdec.ptr19, align 8
  %RxOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 17
  %73 = ptrtoint ptr %RxOctetsOK to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %RxOctetsOK, align 8
  %incdec.ptr21 = getelementptr i64, ptr %data, i32 18
  %75 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %incdec.ptr20, align 8
  %RxOctetsBad = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 18
  %76 = ptrtoint ptr %RxOctetsBad to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %RxOctetsBad, align 8
  %incdec.ptr22 = getelementptr i64, ptr %data, i32 19
  %78 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %incdec.ptr21, align 8
  %RxUnicastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 19
  %79 = ptrtoint ptr %RxUnicastFramesOK to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %RxUnicastFramesOK, align 8
  %incdec.ptr23 = getelementptr i64, ptr %data, i32 20
  %81 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %incdec.ptr22, align 8
  %RxMulticastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 20
  %82 = ptrtoint ptr %RxMulticastFramesOK to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %RxMulticastFramesOK, align 8
  %incdec.ptr24 = getelementptr i64, ptr %data, i32 21
  %84 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %incdec.ptr23, align 8
  %RxBroadcastFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 21
  %85 = ptrtoint ptr %RxBroadcastFramesOK to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %RxBroadcastFramesOK, align 8
  %incdec.ptr25 = getelementptr i64, ptr %data, i32 22
  %87 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %incdec.ptr24, align 8
  %RxPauseFrames = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 22
  %88 = ptrtoint ptr %RxPauseFrames to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %RxPauseFrames, align 8
  %incdec.ptr26 = getelementptr i64, ptr %data, i32 23
  %90 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %incdec.ptr25, align 8
  %RxFCSErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 23
  %91 = ptrtoint ptr %RxFCSErrors to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %RxFCSErrors, align 8
  %incdec.ptr27 = getelementptr i64, ptr %data, i32 24
  %93 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %incdec.ptr26, align 8
  %RxAlignErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 24
  %94 = ptrtoint ptr %RxAlignErrors to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %RxAlignErrors, align 8
  %incdec.ptr28 = getelementptr i64, ptr %data, i32 25
  %96 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %incdec.ptr27, align 8
  %RxSymbolErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 25
  %97 = ptrtoint ptr %RxSymbolErrors to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %RxSymbolErrors, align 8
  %incdec.ptr29 = getelementptr i64, ptr %data, i32 26
  %99 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %incdec.ptr28, align 8
  %RxDataErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 26
  %100 = ptrtoint ptr %RxDataErrors to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %RxDataErrors, align 8
  %incdec.ptr30 = getelementptr i64, ptr %data, i32 27
  %102 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %incdec.ptr29, align 8
  %RxSequenceErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 27
  %103 = ptrtoint ptr %RxSequenceErrors to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %RxSequenceErrors, align 8
  %incdec.ptr31 = getelementptr i64, ptr %data, i32 28
  %105 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %incdec.ptr30, align 8
  %RxRuntErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 28
  %106 = ptrtoint ptr %RxRuntErrors to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %RxRuntErrors, align 8
  %incdec.ptr32 = getelementptr i64, ptr %data, i32 29
  %108 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %incdec.ptr31, align 8
  %RxJabberErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 29
  %109 = ptrtoint ptr %RxJabberErrors to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %RxJabberErrors, align 8
  %incdec.ptr33 = getelementptr i64, ptr %data, i32 30
  %111 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %incdec.ptr32, align 8
  %RxInternalMACRcvError = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 30
  %112 = ptrtoint ptr %RxInternalMACRcvError to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %RxInternalMACRcvError, align 8
  %incdec.ptr34 = getelementptr i64, ptr %data, i32 31
  %114 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %incdec.ptr33, align 8
  %RxInRangeLengthErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 31
  %115 = ptrtoint ptr %RxInRangeLengthErrors to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %RxInRangeLengthErrors, align 8
  %incdec.ptr35 = getelementptr i64, ptr %data, i32 32
  %117 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %incdec.ptr34, align 8
  %RxOutOfRangeLengthField = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 32
  %118 = ptrtoint ptr %RxOutOfRangeLengthField to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %RxOutOfRangeLengthField, align 8
  %incdec.ptr36 = getelementptr i64, ptr %data, i32 33
  %120 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %incdec.ptr35, align 8
  %RxFrameTooLongErrors = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 33
  %121 = ptrtoint ptr %RxFrameTooLongErrors to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %RxFrameTooLongErrors, align 8
  %incdec.ptr37 = getelementptr i64, ptr %data, i32 34
  %123 = ptrtoint ptr %incdec.ptr36 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %incdec.ptr36, align 8
  %RxJumboFramesOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 34
  %124 = ptrtoint ptr %RxJumboFramesOK to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %RxJumboFramesOK, align 8
  %incdec.ptr38 = getelementptr i64, ptr %data, i32 35
  %126 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %incdec.ptr37, align 8
  %RxJumboOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %call, i32 0, i32 35
  %127 = ptrtoint ptr %RxJumboOctetsOK to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %RxJumboOctetsOK, align 8
  %incdec.ptr39 = getelementptr i64, ptr %data, i32 36
  %129 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %incdec.ptr38, align 8
  %130 = ptrtoint ptr %ss to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %ss, align 8
  %incdec.ptr40 = getelementptr i64, ptr %data, i32 37
  %132 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %incdec.ptr39, align 8
  %133 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %6, align 8
  %incdec.ptr41 = getelementptr i64, ptr %data, i32 38
  %135 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %incdec.ptr40, align 8
  %136 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %7, align 8
  %incdec.ptr42 = getelementptr i64, ptr %data, i32 39
  %138 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %incdec.ptr41, align 8
  %139 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %8, align 8
  %incdec.ptr43 = getelementptr i64, ptr %data, i32 40
  %141 = ptrtoint ptr %incdec.ptr42 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %incdec.ptr42, align 8
  %142 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %9, align 8
  %incdec.ptr44 = getelementptr i64, ptr %data, i32 41
  %144 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %incdec.ptr43, align 8
  %145 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %10, align 8
  %incdec.ptr45 = getelementptr i64, ptr %data, i32 42
  %147 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %incdec.ptr44, align 8
  %148 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %call2, align 4
  %conv46 = zext i32 %149 to i64
  %incdec.ptr47 = getelementptr i64, ptr %data, i32 43
  %150 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %conv46, ptr %incdec.ptr45, align 8
  %pure_rsps = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 1
  %151 = ptrtoint ptr %pure_rsps to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pure_rsps, align 4
  %conv48 = zext i32 %152 to i64
  %incdec.ptr49 = getelementptr i64, ptr %data, i32 44
  %153 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv48, ptr %incdec.ptr47, align 8
  %unhandled_irqs = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 2
  %154 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %unhandled_irqs, align 4
  %conv50 = zext i32 %155 to i64
  %incdec.ptr51 = getelementptr i64, ptr %data, i32 45
  %156 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %conv50, ptr %incdec.ptr49, align 8
  %respQ_empty = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 3
  %157 = ptrtoint ptr %respQ_empty to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %respQ_empty, align 4
  %conv52 = zext i32 %158 to i64
  %incdec.ptr53 = getelementptr i64, ptr %data, i32 46
  %159 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %conv52, ptr %incdec.ptr51, align 8
  %respQ_overflow = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 4
  %160 = ptrtoint ptr %respQ_overflow to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %respQ_overflow, align 4
  %conv54 = zext i32 %161 to i64
  %incdec.ptr55 = getelementptr i64, ptr %data, i32 47
  %162 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %conv54, ptr %incdec.ptr53, align 8
  %freelistQ_empty = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 5
  %163 = ptrtoint ptr %freelistQ_empty to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %freelistQ_empty, align 4
  %conv56 = zext i32 %164 to i64
  %incdec.ptr57 = getelementptr i64, ptr %data, i32 48
  %165 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %conv56, ptr %incdec.ptr55, align 8
  %pkt_too_big = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 6
  %166 = ptrtoint ptr %pkt_too_big to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pkt_too_big, align 4
  %conv58 = zext i32 %167 to i64
  %incdec.ptr59 = getelementptr i64, ptr %data, i32 49
  %168 = ptrtoint ptr %incdec.ptr57 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %conv58, ptr %incdec.ptr57, align 8
  %pkt_mismatch = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 7
  %169 = ptrtoint ptr %pkt_mismatch to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pkt_mismatch, align 4
  %conv60 = zext i32 %170 to i64
  %incdec.ptr61 = getelementptr i64, ptr %data, i32 50
  %171 = ptrtoint ptr %incdec.ptr59 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %conv60, ptr %incdec.ptr59, align 8
  %cmdQ_full = getelementptr inbounds %struct.sge_intr_counts, ptr %call2, i32 0, i32 8
  %172 = ptrtoint ptr %cmdQ_full to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cmdQ_full, align 4
  %conv63 = zext i32 %173 to i64
  %incdec.ptr64 = getelementptr i64, ptr %data, i32 51
  %174 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv63, ptr %incdec.ptr61, align 8
  %arrayidx66 = getelementptr %struct.sge_intr_counts, ptr %call2, i32 0, i32 8, i32 1
  %175 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx66, align 4
  %conv67 = zext i32 %176 to i64
  %177 = ptrtoint ptr %incdec.ptr64 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %conv67, ptr %incdec.ptr64, align 8
  %espi = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10
  %178 = ptrtoint ptr %espi to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %espi, align 4
  %tobool.not = icmp eq ptr %179, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr68 = getelementptr i64, ptr %data, i32 52
  %call70 = call ptr @t1_espi_get_intr_counts(ptr noundef nonnull %179) #12
  %DIP2_parity_err = getelementptr inbounds %struct.espi_intr_counts, ptr %call70, i32 0, i32 5
  %180 = ptrtoint ptr %DIP2_parity_err to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %DIP2_parity_err, align 4
  %conv71 = zext i32 %181 to i64
  %incdec.ptr72 = getelementptr i64, ptr %data, i32 53
  %182 = ptrtoint ptr %incdec.ptr68 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %conv71, ptr %incdec.ptr68, align 8
  %183 = ptrtoint ptr %call70 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %call70, align 4
  %conv73 = zext i32 %184 to i64
  %incdec.ptr74 = getelementptr i64, ptr %data, i32 54
  %185 = ptrtoint ptr %incdec.ptr72 to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %conv73, ptr %incdec.ptr72, align 8
  %rx_drops75 = getelementptr inbounds %struct.espi_intr_counts, ptr %call70, i32 0, i32 1
  %186 = ptrtoint ptr %rx_drops75 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rx_drops75, align 4
  %conv76 = zext i32 %187 to i64
  %incdec.ptr77 = getelementptr i64, ptr %data, i32 55
  %188 = ptrtoint ptr %incdec.ptr74 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %conv76, ptr %incdec.ptr74, align 8
  %tx_drops = getelementptr inbounds %struct.espi_intr_counts, ptr %call70, i32 0, i32 2
  %189 = ptrtoint ptr %tx_drops to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tx_drops, align 4
  %conv78 = zext i32 %190 to i64
  %incdec.ptr79 = getelementptr i64, ptr %data, i32 56
  %191 = ptrtoint ptr %incdec.ptr77 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv78, ptr %incdec.ptr77, align 8
  %rx_ovflw = getelementptr inbounds %struct.espi_intr_counts, ptr %call70, i32 0, i32 3
  %192 = ptrtoint ptr %rx_ovflw to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rx_ovflw, align 4
  %conv80 = zext i32 %193 to i64
  %incdec.ptr81 = getelementptr i64, ptr %data, i32 57
  %194 = ptrtoint ptr %incdec.ptr79 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %conv80, ptr %incdec.ptr79, align 8
  %parity_err = getelementptr inbounds %struct.espi_intr_counts, ptr %call70, i32 0, i32 4
  %195 = ptrtoint ptr %parity_err to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %parity_err, align 4
  %conv82 = zext i32 %196 to i64
  %197 = ptrtoint ptr %incdec.ptr81 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %conv82, ptr %incdec.ptr81, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ss) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 58, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %link_config = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3
  %4 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_config, align 4
  %advertising3 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 1
  %6 = ptrtoint ptr %advertising3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %advertising3, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %speed = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 3
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %speed, align 2
  %conv = zext i16 %12 to i32
  %speed5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %speed5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %speed5, align 4
  %duplex = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 5
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %duplex, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %speed10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %speed10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %15, %if.then ], [ -1, %if.else ]
  %17 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %17, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv13 = select i1 %tobool.not, i8 3, i8 0
  %port15 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %port15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv13, ptr %port15, align 1
  %phy = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 2
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy, align 4
  %mdio = getelementptr inbounds %struct.cphy, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mdio, align 4
  %conv16 = trunc i32 %23 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %24 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv16, ptr %phy_address, align 2
  %autoneg = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 8
  %25 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %autoneg, align 4
  %autoneg20 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %27 = ptrtoint ptr %autoneg20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %autoneg20, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %5) #12
  %advertising23 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising23, i32 noundef %7) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %link_config = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #12
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %advertising, align 4, !annotation !117
  %advertising1 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising1) #12
  %5 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %link_config, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %speed5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %speed5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed5, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex, align 4
  %13 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %10, label %if.then3.speed_duplex_to_caps.exit_crit_edge [
    i32 10, label %sw.bb.i
    i32 100, label %sw.bb1.i
    i32 1000, label %if.then3.cleanup43_crit_edge
    i32 10000, label %sw.bb11.i
  ]

if.then3.cleanup43_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.then3.speed_duplex_to_caps.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %speed_duplex_to_caps.exit

sw.bb.i:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  %..i = select i1 %cmp.i, i32 2, i32 1
  br label %speed_duplex_to_caps.exit

sw.bb1.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp2.i = icmp eq i8 %12, 1
  %.18.i = select i1 %cmp2.i, i32 8, i32 4
  br label %speed_duplex_to_caps.exit

sw.bb11.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp12.i = icmp eq i8 %12, 1
  %spec.select.i = select i1 %cmp12.i, i32 4096, i32 0
  br label %speed_duplex_to_caps.exit

speed_duplex_to_caps.exit:                        ; preds = %sw.bb11.i, %sw.bb1.i, %sw.bb.i, %if.then3.speed_duplex_to_caps.exit_crit_edge
  %cap.0.i = phi i32 [ 0, %if.then3.speed_duplex_to_caps.exit_crit_edge ], [ %..i, %sw.bb.i ], [ %.18.i, %sw.bb1.i ], [ %spec.select.i, %sw.bb11.i ]
  %and10 = and i32 %cap.0.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %10)
  %cmp12 = icmp eq i32 %10, 1000
  %or.cond = or i1 %cmp12, %tobool11.not
  br i1 %or.cond, label %speed_duplex_to_caps.exit.cleanup43_crit_edge, label %if.end15

speed_duplex_to_caps.exit.cleanup43_crit_edge:    ; preds = %speed_duplex_to_caps.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.end15:                                         ; preds = %speed_duplex_to_caps.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv16 = trunc i32 %10 to i16
  %requested_speed = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 2
  %14 = ptrtoint ptr %requested_speed to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv16, ptr %requested_speed, align 4
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %duplex, align 4
  %requested_duplex = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 4
  %17 = ptrtoint ptr %requested_duplex to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %requested_duplex, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end
  %18 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %advertising, align 4
  %and21 = and i32 %19, 4159
  store i32 %and21, ptr %advertising, align 4
  %20 = call i32 @llvm.ctpop.i32(i32 %and21), !range !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %tobool23.not = icmp ult i32 %20, 2
  br i1 %tobool23.not, label %if.else.if.end26_crit_edge, label %if.then24

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_config, align 4
  %23 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %advertising, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.else.if.end26_crit_edge
  %24 = ptrtoint ptr %link_config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_config, align 4
  %26 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %advertising, align 4
  %and28 = and i32 %27, %25
  store i32 %and28, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.cleanup43_crit_edge, label %if.end31

if.end26.cleanup43_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %requested_speed32 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 2
  %28 = ptrtoint ptr %requested_speed32 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %requested_speed32, align 4
  %requested_duplex33 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 4
  %29 = ptrtoint ptr %requested_duplex33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %requested_duplex33, align 4
  %30 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %advertising, align 4
  %or = or i32 %31, 64
  br label %if.end35

if.end35:                                         ; preds = %if.end31, %if.end15
  %.sink = phi i32 [ 0, %if.end15 ], [ %or, %if.end31 ]
  %advertising19 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 1
  %32 = ptrtoint ptr %advertising19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %advertising19, align 4
  %33 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %autoneg, align 1
  %autoneg38 = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 3, i32 8
  %35 = ptrtoint ptr %autoneg38 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %autoneg38, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end35.cleanup43_crit_edge, label %if.then40

if.end35.cleanup43_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %phy = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 2
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 4
  %mac = getelementptr %struct.adapter, ptr %1, i32 0, i32 13, i32 %idxprom, i32 1
  %40 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mac, align 4
  %call41 = call i32 @t1_link_start(ptr noundef %39, ptr noundef %41, ptr noundef %link_config) #12
  br label %cleanup43

cleanup43:                                        ; preds = %if.then40, %if.end35.cleanup43_crit_edge, %if.end26.cleanup43_crit_edge, %speed_duplex_to_caps.exit.cleanup43_crit_edge, %if.then3.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.1 = phi i32 [ -95, %entry.cleanup43_crit_edge ], [ -22, %speed_duplex_to_caps.exit.cleanup43_crit_edge ], [ -22, %if.end26.cleanup43_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end35.cleanup43_crit_edge ], [ -22, %if.then3.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #12
  ret i32 %retval.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_seeprom_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_sge_set_coalesce_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t1_sge_get_intr_counts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_sge_get_port_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t1_espi_get_intr_counts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__t1_tpi_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__t1_tpi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bit_bang(ptr noundef %adapter, i32 noundef %bitdata, i32 noundef %nbits) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !117
  %i.011 = add i32 %nbits, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.011)
  %cmp12 = icmp sgt i32 %i.011, -1
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.011, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1(i32 noundef 10737400) #12
  %call = call i32 @__t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #12
  %2 = shl nuw i32 1, %i.013
  %3 = and i32 %2, %bitdata
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %and1 = and i32 %5, -17
  %masksel = select i1 %tobool.not, i32 0, i32 16
  %storemerge = or i32 %and1, %masksel
  store i32 %storemerge, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 10737400) #12
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and2 = and i32 %8, -9
  store i32 %and2, ptr %val, align 4
  %call3 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 10737400) #12
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %or4 = or i32 %11, 8
  store i32 %or4, ptr %val, align 4
  %call5 = call i32 @__t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4) #12
  %i.0 = add i32 %i.013, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__UNIQUE_ID_description353, !1, !"__UNIQUE_ID_description353", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 89, i32 1}
!2 = !{ptr @__UNIQUE_ID_author354, !3, !"__UNIQUE_ID_author354", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 90, i32 1}
!4 = !{ptr @__UNIQUE_ID_file355, !5, !"__UNIQUE_ID_file355", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 91, i32 1}
!6 = !{ptr @__UNIQUE_ID_license356, !5, !"__UNIQUE_ID_license356", i1 false, i1 false}
!7 = !{ptr @__param_dflt_msg_enable, !8, !"__param_dflt_msg_enable", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 95, i32 1}
!9 = !{ptr @__UNIQUE_ID_dflt_msg_enabletype357, !8, !"__UNIQUE_ID_dflt_msg_enabletype357", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_dflt_msg_enable358, !11, !"__UNIQUE_ID_dflt_msg_enable358", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 96, i32 1}
!12 = !{ptr @__param_t1powersave, !13, !"__param_t1powersave", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 105, i32 1}
!14 = !{ptr @__UNIQUE_ID_t1powersavetype359, !13, !"__UNIQUE_ID_t1powersavetype359", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_t1powersave360, !16, !"__UNIQUE_ID_t1powersave360", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 106, i32 1}
!17 = !{ptr @__param_disable_msi, !18, !"__param_disable_msi", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 109, i32 1}
!19 = !{ptr @__UNIQUE_ID_disable_msitype361, !18, !"__UNIQUE_ID_disable_msitype361", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_disable_msi362, !21, !"__UNIQUE_ID_disable_msi362", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 110, i32 1}
!22 = !{ptr @__initcall__kmod_cxgb__363_1329_cxgb_pci_driver_init6, !23, !"__initcall__kmod_cxgb__363_1329_cxgb_pci_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1329, i32 1}
!24 = !{ptr @__exitcall_cxgb_pci_driver_exit, !23, !"__exitcall_cxgb_pci_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_dflt_msg_enable, !8, !"__param_str_dflt_msg_enable", i1 false, i1 false}
!26 = !{ptr @dflt_msg_enable, !27, !"dflt_msg_enable", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 93, i32 12}
!28 = !{ptr @__param_str_t1powersave, !13, !"__param_str_t1powersave", i1 false, i1 false}
!29 = !{ptr @t1powersave, !30, !"t1powersave", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 103, i32 12}
!31 = !{ptr @__param_str_disable_msi, !18, !"__param_str_disable_msi", i1 false, i1 false}
!32 = !{ptr @disable_msi, !33, !"disable_msi", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 108, i32 12}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 128, i32 23}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 130, i32 19}
!38 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 133, i32 26}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 134, i32 26}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 135, i32 26}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 138, i32 23}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 140, i32 10}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 140, i32 19}
!50 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cxgb_pci_driver, !52, !"cxgb_pci_driver", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1322, i32 26}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 958, i32 3}
!55 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @init_one._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @init_one._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 966, i32 3}
!61 = !{ptr @init_one._entry.12, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @init_one._entry_ptr.14, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 972, i32 3}
!65 = !{ptr @init_one._entry.15, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @init_one._entry_ptr.17, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1000, i32 5}
!69 = !{ptr @init_one._entry.18, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @init_one._entry_ptr.20, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @init_one.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1015, i32 4}
!73 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @init_one.__key.22, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1016, i32 4}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_one.__key.24, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1017, i32 4}
!79 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @init_one.__key.26, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1018, i32 4}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @init_one.__key.28, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1020, i32 4}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @init_one.__key.30, !84, !"__key", i1 false, i1 false}
!87 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1091, i32 4}
!90 = !{ptr @init_one._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @init_one._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1105, i32 3}
!94 = !{ptr @init_one._entry.35, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @init_one._entry_ptr.37, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 1111, i32 2}
!98 = !{ptr @init_one._entry.38, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @init_one._entry_ptr.40, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cxgb_netdev_ops, !103, !"cxgb_netdev_ops", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 928, i32 36}
!104 = !{ptr @t1_ethtool_ops, !105, !"t1_ethtool_ops", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 804, i32 33}
!106 = !{ptr @stats_strings, !107, !"stats_strings", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/chelsio/cxgb/cxgb2.c", i32 354, i32 19}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i64 2156946524}
!119 = !{i64 789382, i64 789443}
!120 = !{i64 792114}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 792399}
!123 = !{i64 6755339}
!124 = !{i64 2156947594}
!125 = !{i32 0, i32 8}
