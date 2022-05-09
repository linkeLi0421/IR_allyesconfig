; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/micrel/ksz884x.c_pt.bc'
source_filename = "../drivers/net/ethernet/micrel/ksz884x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.124 = type { [32 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.dev_info = type { ptr, ptr, %struct.ksz_hw, %struct.ksz_shared_mem, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i32, %struct.work_struct, %struct.ksz_timer_info, [3 x %struct.ksz_counter_info], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, i32, i32 }
%struct.ksz_hw = type { ptr, ptr, [2 x %struct.ksz_port_info], [3 x %struct.ksz_port_mib], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ksz_desc_info, %struct.ksz_desc_info, i32, i32, i32, [6 x i8], [6 x i8], [16 x [6 x i8]], i8, i8, i8, i8, [32 x [6 x i8]], [8 x i8], i8, i8, i8, [1 x i8], i32, i32, ptr }
%struct.ksz_port_info = type { i32, i32, i8, i8, i8, i8, ptr }
%struct.ksz_port_mib = type { i8, i8, i8, i8, [34 x i64], [2 x i32] }
%struct.ksz_desc_info = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ksz_shared_mem = type { i32, i32, i32, ptr, ptr }
%struct.ksz_timer_info = type { %struct.timer_list, i32, i32, i32 }
%struct.ksz_counter_info = type { %struct.wait_queue_head, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.122, i32 }
%union.anon.122 = type { ptr }
%struct.ksz_switch = type { [8 x %struct.ksz_mac_table], [16 x %struct.ksz_vlan_table], [3 x %struct.ksz_port_cfg], [64 x i8], [8 x i8], [6 x i8], [6 x i8], i8, i8 }
%struct.ksz_mac_table = type { [6 x i8], i16, i8, i8, i8 }
%struct.ksz_vlan_table = type { i16, i8, i8 }
%struct.ksz_port_cfg = type { i16, i8, i8, [4 x i32], [4 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.platform_info = type { %struct.dev_info, [2 x ptr] }
%struct.ksz_hw_desc = type { %union.desc_stat, %union.desc_buf, i32, i32 }
%union.desc_stat = type { %struct.ksz_desc_rx_stat }
%struct.ksz_desc_rx_stat = type { i32 }
%union.desc_buf = type { %struct.ksz_desc_rx_buf }
%struct.ksz_desc_rx_buf = type { i32 }
%struct.ksz_desc = type { ptr, %struct.ksz_sw_desc, %struct.ksz_dma_buf }
%struct.ksz_sw_desc = type { %union.desc_stat, %union.desc_buf, i32 }
%struct.ksz_dma_buf = type { ptr, i32, i32 }
%struct.ksz_port = type { i8, i8, i8, i8, i32, i32, i32, [4 x i64], ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.105, %union.anon.106 }
%union.anon.105 = type { [16 x i8] }
%union.anon.106 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ethtool_stats = type { i32, i32, [0 x i64] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.120, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.120 = type { [3 x i32], [3 x i32], [3 x i32] }

@__initcall__kmod_ksz884x__344_7158_pci_device_driver_init6 = internal global ptr @pci_device_driver_init, section ".initcall6.init", align 4
@pci_device_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @pcidev_name, ptr @pcidev_table, ptr @pcidev_init, ptr @pcidev_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcidev_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pci_device_driver_exit = internal global ptr @pci_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description345 = internal constant [49 x i8] c"ksz884x.description=KSZ8841/2 PCI network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author346 = internal constant [52 x i8] c"ksz884x.author=Tristram Ha <Tristram.Ha@micrel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [49 x i8] c"ksz884x.file=drivers/net/ethernet/micrel/ksz884x\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [20 x i8] c"ksz884x.license=GPL\00", section ".modinfo", align 1
@__param_str_message = internal constant [16 x i8] c"ksz884x.message\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_message = internal constant %struct.kernel_param { ptr @__param_str_message, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @msg_enable } }, section "__param", align 4
@__UNIQUE_ID_messagetype349 = internal constant [29 x i8] c"ksz884x.parmtype=message:int\00", section ".modinfo", align 1
@__UNIQUE_ID_message350 = internal constant [62 x i8] c"ksz884x.parm=message:Message verbosity level (0=none, 31=all)\00", section ".modinfo", align 1
@__param_str_macaddr = internal constant [16 x i8] c"ksz884x.macaddr\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@macaddr = internal global { ptr, [28 x i8] } { ptr @.str.37, [28 x i8] zeroinitializer }, align 32
@__param_macaddr = internal constant %struct.kernel_param { ptr @__param_str_macaddr, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @macaddr } }, section "__param", align 4
@__UNIQUE_ID_macaddrtype351 = internal constant [31 x i8] c"ksz884x.parmtype=macaddr:charp\00", section ".modinfo", align 1
@__param_str_mac1addr = internal constant [17 x i8] c"ksz884x.mac1addr\00", align 1
@mac1addr = internal global { ptr, [28 x i8] } { ptr @.str.37, [28 x i8] zeroinitializer }, align 32
@__param_mac1addr = internal constant %struct.kernel_param { ptr @__param_str_mac1addr, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mac1addr } }, section "__param", align 4
@__UNIQUE_ID_mac1addrtype352 = internal constant [32 x i8] c"ksz884x.parmtype=mac1addr:charp\00", section ".modinfo", align 1
@__param_str_fast_aging = internal constant [19 x i8] c"ksz884x.fast_aging\00", align 1
@fast_aging = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fast_aging = internal constant %struct.kernel_param { ptr @__param_str_fast_aging, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @fast_aging } }, section "__param", align 4
@__UNIQUE_ID_fast_agingtype353 = internal constant [32 x i8] c"ksz884x.parmtype=fast_aging:int\00", section ".modinfo", align 1
@__param_str_multi_dev = internal constant [18 x i8] c"ksz884x.multi_dev\00", align 1
@multi_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_multi_dev = internal constant %struct.kernel_param { ptr @__param_str_multi_dev, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @multi_dev } }, section "__param", align 4
@__UNIQUE_ID_multi_devtype354 = internal constant [31 x i8] c"ksz884x.parmtype=multi_dev:int\00", section ".modinfo", align 1
@__param_str_stp = internal constant [12 x i8] c"ksz884x.stp\00", align 1
@stp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_stp = internal constant %struct.kernel_param { ptr @__param_str_stp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @stp } }, section "__param", align 4
@__UNIQUE_ID_stptype355 = internal constant [25 x i8] c"ksz884x.parmtype=stp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_macaddr356 = internal constant [33 x i8] c"ksz884x.parm=macaddr:MAC address\00", section ".modinfo", align 1
@__UNIQUE_ID_mac1addr357 = internal constant [41 x i8] c"ksz884x.parm=mac1addr:Second MAC address\00", section ".modinfo", align 1
@__UNIQUE_ID_fast_aging358 = internal constant [35 x i8] c"ksz884x.parm=fast_aging:Fast aging\00", section ".modinfo", align 1
@__UNIQUE_ID_multi_dev359 = internal constant [50 x i8] c"ksz884x.parm=multi_dev:Multiple device interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_stp360 = internal constant [29 x i8] c"ksz884x.parm=stp:STP support\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ksz884x\00", [24 x i8] zeroinitializer }, align 32
@pcidev_name = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"ksz884xp\00", [23 x i8] zeroinitializer }, align 32
@pcidev_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5830, i32 34881, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5830, i32 34882, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pcidev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pcidev_suspend, ptr @pcidev_resume, ptr @pcidev_suspend, ptr @pcidev_resume, ptr @pcidev_suspend, ptr @pcidev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"KSZ884X PCI\00", [20 x i8] zeroinitializer }, align 32
@pcidev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 6892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\011ksz884x: chip not detected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcidev_init\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/micrel/ksz884x.c\00", [58 x i8] zeroinitializer }, align 32
@pcidev_init._entry_ptr = internal global ptr @pcidev_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@version = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"Micrel KSZ884x PCI 1.0.0 (Feb 8, 2010)\00", [57 x i8] zeroinitializer }, align 32
@pcidev_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 6899, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcidev_init._entry_ptr.10 = internal global ptr @pcidev_init._entry.6, section ".printk_index", align 4
@pcidev_init.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 6, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mem = %p; IRQ = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@net_device_present = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcidev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hw_priv->hwlock\00", [47 x i8] zeroinitializer }, align 32
@pcidev_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hw_priv->lock\00", [17 x i8] zeroinitializer }, align 32
@pcidev_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&hw_priv->counter[i].counter\00", [35 x i8] zeroinitializer }, align 32
@pcidev_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&hw_priv->mib_read)\00", [58 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @netdev_init, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @netdev_tx, ptr null, ptr null, ptr null, ptr @netdev_set_rx_mode, ptr @netdev_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @netdev_change_mtu, ptr null, ptr @netdev_tx_timeout, ptr null, ptr null, ptr null, ptr @netdev_query_statistics, ptr null, ptr null, ptr @netdev_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr @netdev_get_regs_len, ptr @netdev_get_regs, ptr @netdev_get_wol, ptr @netdev_set_wol, ptr @netdev_get_msglevel, ptr @netdev_set_msglevel, ptr @netdev_nway_reset, ptr @netdev_get_link, ptr null, ptr @netdev_get_eeprom_len, ptr @netdev_get_eeprom, ptr @netdev_set_eeprom, ptr null, ptr null, ptr @netdev_get_ringparam, ptr null, ptr null, ptr @netdev_get_pauseparam, ptr @netdev_set_pauseparam, ptr null, ptr @netdev_get_strings, ptr null, ptr @netdev_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link_ksettings, ptr @netdev_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ksz_alloc_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 4445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\011ksz884x: Hardware descriptor size not right!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ksz_alloc_mem\00", [18 x i8] zeroinitializer }, align 32
@ksz_alloc_mem._entry_ptr = internal global ptr @ksz_alloc_mem._entry, section ".printk_index", align 4
@ksz_check_desc_num._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 3740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\011ksz884x: Hardware descriptor numbers not right!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ksz_check_desc_num\00", [45 x i8] zeroinitializer }, align 32
@ksz_check_desc_num._entry_ptr = internal global ptr @ksz_check_desc_num._entry, section ".printk_index", align 4
@DEFAULT_MAC_ADDRESS = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\10\A1\88B\01", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@next_jiffies = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksz_init_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&info->timer)\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@netdev_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 5209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016ksz884x: Tx stopped\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdev_intr\00", [20 x i8] zeroinitializer }, align 32
@netdev_intr._entry_ptr = internal global ptr @netdev_intr._entry, section ".printk_index", align 4
@netdev_intr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 5212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016ksz884x: Tx disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@netdev_intr._entry_ptr.33 = internal global ptr @netdev_intr._entry.31, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@hw_add_wol_bcast.mask = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"?", [31 x i8] zeroinitializer }, align 32
@hw_add_wol_bcast.pattern = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@netdev_tx_timeout.last_reset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@netdev_set_wol.net_addr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\C0\A8\01\01", [28 x i8] zeroinitializer }, align 32
@hw_add_wol_ucast.mask = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"?", [31 x i8] zeroinitializer }, align 32
@hw_add_wol_mcast.mask = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"?", [31 x i8] zeroinitializer }, align 32
@__const.hw_add_wol_mcast.pattern = private unnamed_addr constant [6 x i8] c"33\FF\00\00\00", align 1
@hw_add_wol_arp.mask = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?\F0?\00\C0\03", [26 x i8] zeroinitializer }, align 32
@__const.hw_add_wol_arp.pattern = private unnamed_addr constant <{ [22 x i8], [20 x i8] }> <{ [22 x i8] c"\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\08\06\00\01\08\00\06\04\00\01", [20 x i8] zeroinitializer }>, align 1
@eeprom_data = internal global { [64 x i16], [32 x i8] } zeroinitializer, align 32
@ethtool_stats_keys = internal constant { [34 x %struct.anon.124], [256 x i8] } { [34 x %struct.anon.124] [%struct.anon.124 { [32 x i8] c"rx_lo_priority_octets\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_hi_priority_octets\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_undersize_packets\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_oversize_packets\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_symbol_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_mac_ctrl_packets\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_pause_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_bcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_mcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_ucast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_64_or_less_octet_packets\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_65_to_127_octet_packets\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_128_to_255_octet_packets\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_256_to_511_octet_packets\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_512_to_1023_octet_packets\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_1024_to_1522_octet_packets\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_lo_priority_octets\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_hi_priority_octets\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_late_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_pause_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_bcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_mcast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_ucast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_total_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_excessive_collisions\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_single_collisions\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_mult_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [256 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pcidev_suspend.net_addr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\C0\A8\01\01", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 34816, i64 34832]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 100]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 10, i64 100]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"pci_device_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 7150, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"msg_enable\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6652, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [8 x i8] c"macaddr\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6654, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"mac1addr\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6655, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"fast_aging\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6688, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"multi_dev\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6666, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [4 x i8] c"stp\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6681, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 7158, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"pcidev_name\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 7136, i32 13 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"pcidev_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 7138, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"pcidev_pm_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 7148, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6870, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6892, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6897, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1415, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6899, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6900, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"net_device_present\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6765, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6948, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6949, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6952, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6976, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6734, i32 36 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6524, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4445, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3740, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"DEFAULT_MAC_ADDRESS\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1418, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"next_jiffies\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 5228, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4261, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 5395, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 33, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 34, i32 28 }
@___asan_gen_.195 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 35, i32 39 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 5209, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 5212, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 326, i32 6 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3563, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3564, i32 18 }
@___asan_gen_.224 = private unnamed_addr constant [11 x i8] c"last_reset\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 4826, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6004, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6115, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3599, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3581, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 3540, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant [12 x i8] c"eeprom_data\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 5844, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"ethtool_stats_keys\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6344, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [9 x i8] c"net_addr\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 7115, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [41 x i8] c"../drivers/net/ethernet/micrel/ksz884x.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 6654, i32 24 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author346, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_fast_aging358, ptr @__UNIQUE_ID_fast_agingtype353, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__UNIQUE_ID_mac1addr357, ptr @__UNIQUE_ID_mac1addrtype352, ptr @__UNIQUE_ID_macaddr356, ptr @__UNIQUE_ID_macaddrtype351, ptr @__UNIQUE_ID_message350, ptr @__UNIQUE_ID_messagetype349, ptr @__UNIQUE_ID_multi_dev359, ptr @__UNIQUE_ID_multi_devtype354, ptr @__UNIQUE_ID_stp360, ptr @__UNIQUE_ID_stptype355, ptr @__exitcall_pci_device_driver_exit, ptr @__initcall__kmod_ksz884x__344_7158_pci_device_driver_init6, ptr @__param_fast_aging, ptr @__param_mac1addr, ptr @__param_macaddr, ptr @__param_message, ptr @__param_multi_dev, ptr @__param_stp, ptr @ksz_alloc_mem._entry, ptr @ksz_alloc_mem._entry_ptr, ptr @ksz_check_desc_num._entry, ptr @ksz_check_desc_num._entry_ptr, ptr @netdev_intr._entry, ptr @netdev_intr._entry.31, ptr @netdev_intr._entry_ptr, ptr @netdev_intr._entry_ptr.33, ptr @pci_device_driver_exit, ptr @pcidev_init._entry, ptr @pcidev_init._entry.6, ptr @pcidev_init._entry_ptr, ptr @pcidev_init._entry_ptr.10, ptr @pci_device_driver, ptr @msg_enable, ptr @macaddr, ptr @mac1addr, ptr @fast_aging, ptr @multi_dev, ptr @stp, ptr @.str, ptr @pcidev_name, ptr @pcidev_table, ptr @pcidev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @version, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @net_device_present, ptr @pcidev_init.__key, ptr @.str.12, ptr @pcidev_init.__key.13, ptr @.str.14, ptr @pcidev_init.__key.15, ptr @.str.16, ptr @pcidev_init.__key.17, ptr @.str.18, ptr @netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @DEFAULT_MAC_ADDRESS, ptr @next_jiffies, ptr @ksz_init_timer.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sema_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @hw_add_wol_bcast.mask, ptr @hw_add_wol_bcast.pattern, ptr @netdev_tx_timeout.last_reset, ptr @.str.36, ptr @netdev_set_wol.net_addr, ptr @hw_add_wol_ucast.mask, ptr @hw_add_wol_mcast.mask, ptr @hw_add_wol_arp.mask, ptr @eeprom_data, ptr @ethtool_stats_keys, ptr @pcidev_suspend.net_addr, ptr @.str.37], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_device_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac1addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_aging to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_device_present to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz_alloc_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz_check_desc_num._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DEFAULT_MAC_ADDRESS to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz_init_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_intr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_add_wol_bcast.mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_add_wol_bcast.pattern to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_tx_timeout.last_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_set_wol.net_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_add_wol_ucast.mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_add_wol_mcast.mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_add_wol_arp.mask to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_data to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_stats_keys to i32), i32 1088, i32 1344, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_suspend.net_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pci_device_driver, ptr noundef null, ptr noundef nonnull @.str) #22
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @pci_unregister_driver(ptr noundef nonnull @pci_device_driver) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcidev_init(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %banner = alloca [39 x i8], align 1
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %banner) #22
  %0 = call ptr @memset(ptr %banner, i32 255, i32 39)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %sub = sub i32 1, %2
  %add = add i32 %sub, %4
  %cond = select i1 %cmp, i32 0, i32 %add
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19.not = icmp eq i32 %and, 0
  br i1 %cmp19.not, label %if.end21, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %call22 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %cond, ptr noundef nonnull @.str.1, i32 noundef 0) #22
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  tail call void @pci_set_master(ptr noundef %pdev) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1912) #25
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end25.pcidev_init_dev_err_crit_edge, label %if.end29

if.end25.pcidev_init_dev_err_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_dev_err

if.end29:                                         ; preds = %if.end25
  %pdev30 = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pdev30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %pdev30, align 4
  %hw31 = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2
  %call32 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %cond) #22
  %9 = ptrtoint ptr %hw31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call32, ptr %hw31, align 8
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end29.pcidev_init_io_err_crit_edge, label %if.end36

if.end29.pcidev_init_io_err_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_io_err

if.end36:                                         ; preds = %if.end29
  %call37 = tail call fastcc i32 @hw_init(ptr noundef %hw31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end36
  %10 = load i32, ptr @msg_enable, align 4
  %and40 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then39.pcidev_init_alloc_err_crit_edge, label %do.end

if.then39.pcidev_init_alloc_err_crit_edge:        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_alloc_err

do.end:                                           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #24
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #26
  br label %pcidev_init_alloc_err

if.end45:                                         ; preds = %if.end36
  %call46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %banner, i32 noundef 39, ptr noundef nonnull @.str.5, ptr noundef nonnull @version)
  %11 = trunc i32 %call37 to i8
  %conv = add i8 %11, 48
  %arrayidx48 = getelementptr inbounds [39 x i8], ptr %banner, i32 0, i32 13
  %12 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx48, align 1
  %13 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev30, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53, ptr noundef nonnull @.str.7, ptr noundef nonnull %banner) #26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcidev_init.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcidev_init, %if.then61)) #22
          to label %do.end67 [label %if.then61], !srcloc !181

if.then61:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #24
  %15 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev30, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %hw31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw31, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcidev_init.__UNIQUE_ID_ddebug343, ptr noundef %dev63, ptr noundef nonnull @.str.11, ptr noundef %18, i32 noundef %20) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %if.end45
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %dev_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dev_count, align 8
  %addr_list_size = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 22
  %22 = ptrtoint ptr %addr_list_size to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %addr_list_size, align 8
  %mib_cnt = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %mib_cnt, align 4
  %mib_port_cnt = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %mib_port_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call37)
  %cmp68 = icmp eq i32 %call37, 2
  br i1 %cmp68, label %if.then70, label %do.end67.for.body.preheader_crit_edge

do.end67.for.body.preheader_crit_edge:            ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.preheader

if.then70:                                        ; preds = %do.end67
  %25 = load i32, ptr @fast_aging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %if.then70.if.end73_crit_edge, label %if.then72

if.then70.if.end73_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end73

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #24
  %overrides = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 33
  %26 = ptrtoint ptr %overrides to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %overrides, align 4
  %or = or i32 %27, 2
  store i32 %or, ptr %overrides, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.then70.if.end73_crit_edge
  %28 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 34, ptr %mib_cnt, align 4
  %29 = load i32, ptr @multi_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool75.not = icmp eq i32 %29, 0
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.then76

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end79

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #24
  %30 = ptrtoint ptr %dev_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %dev_count, align 8
  %31 = ptrtoint ptr %addr_list_size to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %addr_list_size, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end73.if.end79_crit_edge
  %32 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_count, align 8
  %34 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %mib_port_cnt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i408 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 368) #25
  %ksz_switch = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i408, ptr %ksz_switch, align 4
  %tobool88.not = icmp eq ptr %call7.i.i408, null
  br i1 %tobool88.not, label %if.end79.pcidev_init_alloc_err_crit_edge, label %if.end92

if.end79.pcidev_init_alloc_err_crit_edge:         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_alloc_err

if.end92:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp81 = icmp eq i32 %33, 1
  %spec.select = select i1 %cmp81, i32 2, i32 1
  %37 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %mib_port_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp94413 = icmp sgt i32 %.pr, 0
  br i1 %cmp94413, label %if.end92.for.body.preheader_crit_edge, label %if.end92.for.end_crit_edge

if.end92.for.end_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end92.for.body.preheader_crit_edge:            ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end92.for.body.preheader_crit_edge, %do.end67.for.body.preheader_crit_edge
  %sw.0428 = phi ptr [ %call7.i.i408, %if.end92.for.body.preheader_crit_edge ], [ null, %do.end67.for.body.preheader_crit_edge ]
  %port_count.1426 = phi i32 [ %spec.select, %if.end92.for.body.preheader_crit_edge ], [ 1, %do.end67.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0414 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mib_start = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 %i.0414, i32 3
  %38 = ptrtoint ptr %mib_start to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %mib_start, align 1
  %inc = add nuw nsw i32 %i.0414, 1
  %39 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mib_port_cnt, align 8
  %cmp94 = icmp slt i32 %inc, %40
  br i1 %cmp94, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end92.for.end_crit_edge
  %sw.0427 = phi ptr [ %call7.i.i408, %if.end92.for.end_crit_edge ], [ %sw.0428, %for.body.for.end_crit_edge ]
  %port_count.1425 = phi i32 [ %spec.select, %if.end92.for.end_crit_edge ], [ %port_count.1426, %for.body.for.end_crit_edge ]
  %parent = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 34
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %parent, align 8
  %mtu = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 13
  %42 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1524, ptr %mtu, align 8
  %call97 = call fastcc i32 @ksz_alloc_mem(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %for.end.pcidev_init_mem_err_crit_edge

for.end.pcidev_init_mem_err_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_mem_err

if.end100:                                        ; preds = %for.end
  %43 = load i32, ptr @net_device_present, align 4
  %id102 = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %id102 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %id102, align 8
  %hwlock = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %hwlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @pcidev_init.__key, i16 noundef signext 3) #22
  %lock = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @pcidev_init.__key.13) #22
  %arrayidx115 = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 12, i32 0
  call void @__init_waitqueue_head(ptr noundef %arrayidx115, ptr noundef nonnull @.str.16, ptr noundef nonnull @pcidev_init.__key.15) #22
  %arrayidx115.1 = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 12, i32 1
  call void @__init_waitqueue_head(ptr noundef %arrayidx115.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @pcidev_init.__key.15) #22
  %arrayidx115.2 = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 12, i32 2
  call void @__init_waitqueue_head(ptr noundef %arrayidx115.2, ptr noundef nonnull @.str.16, ptr noundef nonnull @pcidev_init.__key.15) #22
  %45 = load ptr, ptr @macaddr, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %47)
  %cmp124.not = icmp eq i8 %47, 58
  br i1 %cmp124.not, label %if.end100.if.end127_crit_edge, label %if.then126

if.end100.if.end127_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end127

if.then126:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @get_mac_addr(ptr noundef nonnull %call7.i.i, ptr noundef %45, i32 noundef 0)
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end100.if.end127_crit_edge
  call fastcc void @hw_read_addr(ptr noundef %hw31)
  %48 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp129 = icmp sgt i32 %49, 1
  br i1 %cmp129, label %if.then131, label %if.end127.if.end140_crit_edge

if.end127.if.end140_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end140

if.then131:                                       ; preds = %if.end127
  %other_addr = getelementptr inbounds %struct.ksz_switch, ptr %sw.0427, i32 0, i32 6
  %override_addr = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 20
  %50 = call ptr @memcpy(ptr %other_addr, ptr %override_addr, i32 6)
  call fastcc void @read_other_addr(ptr noundef %hw31)
  %51 = load ptr, ptr @mac1addr, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %53)
  %cmp136.not = icmp eq i8 %53, 58
  br i1 %cmp136.not, label %if.then131.if.end140_crit_edge, label %if.then138

if.then131.if.end140_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end140

if.then138:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @get_mac_addr(ptr noundef %call7.i.i, ptr noundef %51, i32 noundef 1)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then131.if.end140_crit_edge, %if.end127.if.end140_crit_edge
  %tx_cfg.i = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 9
  %54 = ptrtoint ptr %tx_cfg.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 134217735, ptr %tx_cfg.i, align 4
  %rx_cfg.i = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 10
  %all_multi.i = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 25
  %55 = ptrtoint ptr %all_multi.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %all_multi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 134414419, i32 134414451
  %57 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.store.select.i, ptr %rx_cfg.i, align 8
  %promiscuous.i = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 24
  %58 = ptrtoint ptr %promiscuous.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %promiscuous.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool6.not.i = icmp eq i8 %59, 0
  br i1 %tobool6.not.i, label %if.end140.hw_setup.exit_crit_edge, label %if.then7.i

if.end140.hw_setup.exit_crit_edge:                ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_setup.exit

if.then7.i:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #24
  %or9.i = or i32 %spec.store.select.i, 4
  %60 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or9.i, ptr %rx_cfg.i, align 8
  br label %hw_setup.exit

hw_setup.exit:                                    ; preds = %if.then7.i, %if.end140.hw_setup.exit_crit_edge
  %ksz_switch141 = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %ksz_switch141 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ksz_switch141, align 4
  %tobool142.not = icmp eq ptr %62, null
  br i1 %tobool142.not, label %if.else, label %if.then143

if.then143:                                       ; preds = %hw_setup.exit
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @sw_setup(ptr noundef %hw31)
  br label %do.body145

if.else:                                          ; preds = %hw_setup.exit
  call void @__sanitizer_cov_trace_pc() #24
  %wol_support = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 18
  %63 = ptrtoint ptr %wol_support to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 63, ptr %wol_support, align 4
  %wol_enable = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 17
  %64 = ptrtoint ptr %wol_enable to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %wol_enable, align 8
  br label %do.body145

do.body145:                                       ; preds = %if.else, %if.then143
  %mib_read = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 10
  call void @__init_work(ptr noundef %mib_read, i32 noundef 0) #22
  %65 = ptrtoint ptr %mib_read to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -64, ptr %mib_read, align 4
  %lockdep_map = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @pcidev_init.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %entry150 = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %entry150 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %entry150, ptr %entry150, align 8
  %prev.i = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %entry150, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 10, i32 2
  %68 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @mib_read_work, ptr %func, align 8
  %mib_timer_info = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 11
  %max.i = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 11, i32 2
  %69 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %max.i, align 4
  %period1.i = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 11, i32 3
  %70 = ptrtoint ptr %period1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 50, ptr %period1.i, align 8
  call void @init_timer_key(ptr noundef %mib_timer_info, ptr noundef nonnull @mib_monitor, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @ksz_init_timer.__key) #22
  %71 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp156418 = icmp sgt i32 %72, 0
  br i1 %cmp156418, label %for.body158.lr.ph, label %do.body145.for.end227_crit_edge

do.body145.for.end227_crit_edge:                  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end227

for.body158.lr.ph:                                ; preds = %do.body145
  %add193 = add i32 %cond, -1
  %irq195 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %73 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %74 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %other_addr205 = getelementptr inbounds %struct.ksz_switch, ptr %sw.0427, i32 0, i32 6
  %add.ptr.i409 = getelementptr %struct.ksz_switch, ptr %sw.0427, i32 0, i32 6, i32 4
  %override_addr209 = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 20
  %add.ptr1.i411 = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 20, i32 4
  %75 = getelementptr inbounds i8, ptr %addr, i32 4
  br label %for.body158

for.body158:                                      ; preds = %if.end224.for.body158_crit_edge, %for.body158.lr.ph
  %indvars.iv = phi i32 [ %port_count.1425, %for.body158.lr.ph ], [ %indvars.iv.next, %if.end224.for.body158_crit_edge ]
  %i.2419 = phi i32 [ 0, %for.body158.lr.ph ], [ %inc226, %if.end224.for.body158_crit_edge ]
  %call159 = call ptr @alloc_etherdev_mqs(i32 noundef 240, i32 noundef 1, i32 noundef 1) #22
  %tobool160.not = icmp eq ptr %call159, null
  br i1 %tobool160.not, label %for.body158.pcidev_init_reg_err_crit_edge, label %if.end162

for.body158.pcidev_init_reg_err_crit_edge:        ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_reg_err

if.end162:                                        ; preds = %for.body158
  %parent165 = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 133, i32 1
  %76 = ptrtoint ptr %parent165 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dev1, ptr %parent165, align 8
  %arrayidx166 = getelementptr %struct.platform_info, ptr %call7.i.i, i32 0, i32 1, i32 %i.2419
  %77 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call159, ptr %arrayidx166, align 4
  %add.ptr.i = getelementptr i8, ptr %call159, i32 2304
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %add.ptr.i, align 8
  %79 = load i32, ptr @net_device_present, align 4
  %inc168 = add i32 %79, 1
  store i32 %inc168, ptr @net_device_present, align 4
  %id169 = getelementptr i8, ptr %call159, i32 2484
  %80 = ptrtoint ptr %id169 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %id169, align 4
  %port_cnt = getelementptr i8, ptr %call159, i32 2324
  %81 = ptrtoint ptr %port_cnt to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %port_count.1425, ptr %port_cnt, align 4
  %mib_port_cnt171 = getelementptr i8, ptr %call159, i32 2320
  %82 = ptrtoint ptr %mib_port_cnt171 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %port_count.1425, ptr %mib_port_cnt171, align 8
  %first_port = getelementptr i8, ptr %call159, i32 2316
  %83 = ptrtoint ptr %first_port to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %i.2419, ptr %first_port, align 4
  %flow_ctrl = getelementptr i8, ptr %call159, i32 2315
  %84 = ptrtoint ptr %flow_ctrl to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %flow_ctrl, align 1
  %hw172 = getelementptr i8, ptr %call159, i32 2360
  %85 = ptrtoint ptr %hw172 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %hw31, ptr %hw172, align 8
  %arrayidx174 = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 %i.2419
  %linked = getelementptr i8, ptr %call159, i32 2364
  %86 = ptrtoint ptr %linked to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx174, ptr %linked, align 4
  br label %for.body178

for.body178:                                      ; preds = %for.body178.for.body178_crit_edge, %if.end162
  %pi.0417 = phi i32 [ %i.2419, %if.end162 ], [ %inc189, %for.body178.for.body178_crit_edge ]
  %conv179 = trunc i32 %pi.0417 to i8
  %arrayidx181 = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 %pi.0417
  %port_id = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 %pi.0417, i32 5
  %87 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv179, ptr %port_id, align 1
  %pdev184 = getelementptr %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 %pi.0417, i32 6
  %88 = ptrtoint ptr %pdev184 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call159, ptr %pdev184, align 4
  %89 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %arrayidx181, align 8
  %inc189 = add nuw i32 %pi.0417, 1
  %exitcond.not = icmp eq i32 %inc189, %indvars.iv
  br i1 %exitcond.not, label %for.end190, label %for.body178.for.body178_crit_edge

for.body178.for.body178_crit_edge:                ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body178

for.end190:                                       ; preds = %for.body178
  %port170 = getelementptr i8, ptr %call159, i32 2312
  %90 = ptrtoint ptr %hw31 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw31, align 8
  %92 = ptrtoint ptr %91 to i32
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 4
  %93 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %mem_start, align 4
  %sub194 = add i32 %add193, %92
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 3
  %94 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub194, ptr %mem_end, align 8
  %95 = ptrtoint ptr %irq195 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq195, align 4
  %irq196 = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 64
  %97 = ptrtoint ptr %irq196 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %irq196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2419)
  %cmp197 = icmp eq i32 %i.2419, 0
  br i1 %cmp197, label %if.then199, label %if.else203

if.then199:                                       ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #24
  call void @dev_addr_mod(ptr noundef %call159, i32 noundef 0, ptr noundef %override_addr209, i32 noundef 6) #22
  br label %if.end220

if.else203:                                       ; preds = %for.end190
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #22
  %98 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 -1, ptr %75, align 4
  %99 = ptrtoint ptr %other_addr205 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %other_addr205, align 4
  %101 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %addr, align 4
  %102 = ptrtoint ptr %add.ptr.i409 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i409, align 2
  %104 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %73, align 4
  %105 = ptrtoint ptr %override_addr209 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %override_addr209, align 4
  %xor.i = xor i32 %106, %100
  %107 = ptrtoint ptr %add.ptr1.i411 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %add.ptr1.i411, align 2
  %xor37.i = xor i16 %108, %103
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then212, label %if.else203.if.end218_crit_edge

if.else203.if.end218_crit_edge:                   ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end218

if.then212:                                       ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #24
  %109 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %first_port, align 4
  %111 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %74, align 1
  %113 = trunc i32 %110 to i8
  %conv217 = add i8 %112, %113
  store i8 %conv217, ptr %74, align 1
  br label %if.end218

if.end218:                                        ; preds = %if.then212, %if.else203.if.end218_crit_edge
  call void @dev_addr_mod(ptr noundef %call159, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #22
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #22
  br label %if.end220

if.end220:                                        ; preds = %if.end218, %if.then199
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 16
  %114 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 44
  %115 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 30
  %116 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 60, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call159, i32 0, i32 31
  %117 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1894, ptr %max_mtu, align 4
  %call221 = call i32 @register_netdev(ptr noundef nonnull %call159) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end224, label %if.end220.pcidev_init_reg_err_crit_edge

if.end220.pcidev_init_reg_err_crit_edge:          ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_reg_err

if.end224:                                        ; preds = %if.end220
  call fastcc void @port_set_power_saving(ptr noundef %port170, i32 noundef 1)
  %inc226 = add nuw nsw i32 %i.2419, 1
  %118 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dev_count, align 8
  %cmp156 = icmp slt i32 %inc226, %119
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %cmp156, label %if.end224.for.body158_crit_edge, label %if.end224.for.end227_crit_edge

if.end224.for.end227_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end227

if.end224.for.body158_crit_edge:                  ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body158

for.end227:                                       ; preds = %if.end224.for.end227_crit_edge, %do.body145.for.end227_crit_edge
  %120 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev30, align 4
  %call229 = call ptr @pci_dev_get(ptr noundef %121) #22
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %122 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

pcidev_init_reg_err:                              ; preds = %if.end220.pcidev_init_reg_err_crit_edge, %for.body158.pcidev_init_reg_err_crit_edge
  %123 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp232420 = icmp sgt i32 %124, 0
  br i1 %cmp232420, label %pcidev_init_reg_err.for.body234_crit_edge, label %pcidev_init_reg_err.pcidev_init_mem_err_crit_edge

pcidev_init_reg_err.pcidev_init_mem_err_crit_edge: ; preds = %pcidev_init_reg_err
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_mem_err

pcidev_init_reg_err.for.body234_crit_edge:        ; preds = %pcidev_init_reg_err
  br label %for.body234

for.body234:                                      ; preds = %for.inc244.for.body234_crit_edge, %pcidev_init_reg_err.for.body234_crit_edge
  %i.3421 = phi i32 [ %inc245, %for.inc244.for.body234_crit_edge ], [ 0, %pcidev_init_reg_err.for.body234_crit_edge ]
  %arrayidx236 = getelementptr %struct.platform_info, ptr %call7.i.i, i32 0, i32 1, i32 %i.3421
  %125 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx236, align 4
  %tobool237.not = icmp eq ptr %126, null
  br i1 %tobool237.not, label %for.body234.for.inc244_crit_edge, label %if.then238

for.body234.for.inc244_crit_edge:                 ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc244

if.then238:                                       ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @netdev_free(ptr noundef nonnull %126)
  %127 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %arrayidx236, align 4
  br label %for.inc244

for.inc244:                                       ; preds = %if.then238, %for.body234.for.inc244_crit_edge
  %inc245 = add nuw nsw i32 %i.3421, 1
  %128 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dev_count, align 8
  %cmp232 = icmp slt i32 %inc245, %129
  br i1 %cmp232, label %for.inc244.for.body234_crit_edge, label %for.inc244.pcidev_init_mem_err_crit_edge

for.inc244.pcidev_init_mem_err_crit_edge:         ; preds = %for.inc244
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcidev_init_mem_err

for.inc244.for.body234_crit_edge:                 ; preds = %for.inc244
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body234

pcidev_init_mem_err:                              ; preds = %for.inc244.pcidev_init_mem_err_crit_edge, %pcidev_init_reg_err.pcidev_init_mem_err_crit_edge, %for.end.pcidev_init_mem_err_crit_edge
  call fastcc void @ksz_free_mem(ptr noundef nonnull %call7.i.i)
  %ksz_switch247 = getelementptr inbounds %struct.dev_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %ksz_switch247 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ksz_switch247, align 4
  call void @kfree(ptr noundef %131) #22
  br label %pcidev_init_alloc_err

pcidev_init_alloc_err:                            ; preds = %pcidev_init_mem_err, %if.end79.pcidev_init_alloc_err_crit_edge, %do.end, %if.then39.pcidev_init_alloc_err_crit_edge
  %result.0 = phi i32 [ -12, %pcidev_init_mem_err ], [ -12, %if.end79.pcidev_init_alloc_err_crit_edge ], [ -19, %do.end ], [ -19, %if.then39.pcidev_init_alloc_err_crit_edge ]
  %132 = ptrtoint ptr %hw31 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw31, align 8
  call void @iounmap(ptr noundef %133) #22
  br label %pcidev_init_io_err

pcidev_init_io_err:                               ; preds = %pcidev_init_alloc_err, %if.end29.pcidev_init_io_err_crit_edge
  %result.1 = phi i32 [ %result.0, %pcidev_init_alloc_err ], [ -12, %if.end29.pcidev_init_io_err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #22
  br label %pcidev_init_dev_err

pcidev_init_dev_err:                              ; preds = %pcidev_init_io_err, %if.end25.pcidev_init_dev_err_crit_edge
  %result.2 = phi i32 [ %result.1, %pcidev_init_io_err ], [ -12, %if.end25.pcidev_init_dev_err_crit_edge ]
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %cond) #22
  br label %cleanup

cleanup:                                          ; preds = %pcidev_init_dev_err, %for.end227, %if.end21.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.2, %pcidev_init_dev_err ], [ 0, %for.end227 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %banner) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcidev_exit(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %sub = sub i32 1, %3
  %add = add i32 %sub, %5
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %cond) #22
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp938 = icmp sgt i32 %7, 0
  br i1 %cmp938, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx10 = getelementptr %struct.platform_info, ptr %1, i32 0, i32 1, i32 %i.039
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then:                                          ; preds = %for.body
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 115
  %10 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %watchdog_timeo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.netdev_free.exit_crit_edge, label %if.then.i

if.then.netdev_free.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %netdev_free.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @unregister_netdev(ptr noundef nonnull %9) #22
  br label %netdev_free.exit

netdev_free.exit:                                 ; preds = %if.then.i, %if.then.netdev_free.exit_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %9) #22
  br label %for.inc

for.inc:                                          ; preds = %netdev_free.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %12 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_count, align 8
  %cmp9 = icmp slt i32 %inc, %13
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %hw = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %for.end.if.end18_crit_edge, label %if.then15

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @iounmap(ptr noundef nonnull %15) #22
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.end.if.end18_crit_edge
  tail call fastcc void @ksz_free_mem(ptr noundef %1)
  %ksz_switch = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ksz_switch, align 4
  tail call void @kfree(ptr noundef %17) #22
  %pdev20 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev20, align 4
  tail call void @pci_dev_put(ptr noundef %19) #22
  tail call void @kfree(ptr noundef %1) #22
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_init(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !182
  tail call void @arm_heavy_mb() #22
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 528
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #22, !srcloc !183
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1024
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #22, !srcloc !184
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !185
  %6 = and i16 %5, -240
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %entry.cleanup_crit_edge [
    i16 -30704, label %if.end15
    i16 -30720, label %if.end15.thread
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end15:                                         ; preds = %entry
  %8 = and i16 %5, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp17 = icmp eq i16 %8, 0
  br i1 %cmp17, label %if.end15.cleanup.sink.split_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split

if.end15.thread:                                  ; preds = %entry
  %9 = and i16 %5, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp1737 = icmp eq i16 %9, 0
  br i1 %cmp1737, label %if.end15.thread.cleanup.sink.split_crit_edge, label %if.end15.thread.cleanup_crit_edge

if.end15.thread.cleanup_crit_edge:                ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end15.thread.cleanup.sink.split_crit_edge:     ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.thread.cleanup.sink.split_crit_edge, %if.end15.cleanup.sink.split_crit_edge
  %.sink42 = phi i32 [ 2, %if.end15.thread.cleanup.sink.split_crit_edge ], [ 6, %if.end15.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 2, %if.end15.thread.cleanup.sink.split_crit_edge ], [ 1, %if.end15.cleanup.sink.split_crit_edge ]
  %features = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 32
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features, align 8
  %or41 = or i32 %11, %.sink42
  store i32 %or41, ptr %features, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.thread.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end15.cleanup_crit_edge ], [ 2, %if.end15.thread.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksz_alloc_mem(ptr noundef %adapter) unnamed_addr #2 align 64 {
if.end15:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 5
  %0 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %alloc, align 4
  %alloc2 = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 5
  %1 = ptrtoint ptr %alloc2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %alloc2, align 4
  %tx_int_cnt = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 16
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14
  %tx_desc_info = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15
  %tx_int_mask = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 17
  %2 = ptrtoint ptr %tx_int_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %tx_int_mask, align 4
  %3 = ptrtoint ptr %tx_int_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tx_int_cnt, align 8
  %size = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %size, align 8
  %size18 = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 4
  %5 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %size18, align 8
  %6 = load i32, ptr %alloc, align 4
  %and26.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool.not27.i = icmp eq i32 %and26.i, 0
  br i1 %tobool.not27.i, label %if.end15.while.body.i_crit_edge, label %if.end15.while.body5.preheader.i_crit_edge

if.end15.while.body5.preheader.i_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body5.preheader.i

if.end15.while.body.i_crit_edge:                  ; preds = %if.end15
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end15.while.body.i_crit_edge
  %alloc.029.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %6, %if.end15.while.body.i_crit_edge ]
  %shift.028.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end15.while.body.i_crit_edge ]
  %inc.i = add i32 %shift.028.i, 1
  %shr.i = ashr i32 %alloc.029.i, 1
  %7 = and i32 %alloc.029.i, 2
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp.not.i = icmp ne i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp2.i = icmp slt i32 %inc.i, 2
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %while.end.i.while.body5.preheader.i_crit_edge, label %while.end.i.ksz_check_desc_num.exit_crit_edge

while.end.i.ksz_check_desc_num.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_check_desc_num.exit

while.end.i.while.body5.preheader.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body5.preheader.i

while.body5.preheader.i:                          ; preds = %while.end.i.while.body5.preheader.i_crit_edge, %if.end15.while.body5.preheader.i_crit_edge
  %shift.0.lcssa4047.i = phi i32 [ 0, %if.end15.while.body5.preheader.i_crit_edge ], [ %inc.i, %while.end.i.while.body5.preheader.i_crit_edge ]
  %alloc.0.lcssa4146.i = phi i32 [ %6, %if.end15.while.body5.preheader.i_crit_edge ], [ %shr.i, %while.end.i.while.body5.preheader.i_crit_edge ]
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #26
  br label %while.body5.i

while.body5.i:                                    ; preds = %while.body5.i.while.body5.i_crit_edge, %while.body5.preheader.i
  %alloc.133.i = phi i32 [ %shr7.i, %while.body5.i.while.body5.i_crit_edge ], [ %alloc.0.lcssa4146.i, %while.body5.preheader.i ]
  %shift.132.i = phi i32 [ %inc6.i, %while.body5.i.while.body5.i_crit_edge ], [ %shift.0.lcssa4047.i, %while.body5.preheader.i ]
  %inc6.i = add i32 %shift.132.i, 1
  %shr7.i = ashr i32 %alloc.133.i, 1
  %tobool4.not.i = icmp ult i32 %alloc.133.i, 2
  br i1 %tobool4.not.i, label %while.end8.i, label %while.body5.i.while.body5.i_crit_edge

while.body5.i.while.body5.i_crit_edge:            ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body5.i

while.end8.i:                                     ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #24
  %8 = tail call i32 @llvm.smax.i32(i32 %inc6.i, i32 2) #22
  %shl.i = shl nuw i32 1, %8
  %9 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl.i, ptr %alloc, align 4
  br label %ksz_check_desc_num.exit

ksz_check_desc_num.exit:                          ; preds = %while.end8.i, %while.end.i.ksz_check_desc_num.exit_crit_edge
  %10 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc, align 4
  %sub.i = add i32 %11, -1
  %mask.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 9
  %12 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i, ptr %mask.i, align 4
  %13 = ptrtoint ptr %alloc2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alloc2, align 4
  %and26.i49 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i49)
  %tobool.not27.i50 = icmp eq i32 %and26.i49, 0
  br i1 %tobool.not27.i50, label %ksz_check_desc_num.exit.while.body.i58_crit_edge, label %ksz_check_desc_num.exit.while.body5.preheader.i68_crit_edge

ksz_check_desc_num.exit.while.body5.preheader.i68_crit_edge: ; preds = %ksz_check_desc_num.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body5.preheader.i68

ksz_check_desc_num.exit.while.body.i58_crit_edge: ; preds = %ksz_check_desc_num.exit
  br label %while.body.i58

while.body.i58:                                   ; preds = %while.body.i58.while.body.i58_crit_edge, %ksz_check_desc_num.exit.while.body.i58_crit_edge
  %alloc.029.i53 = phi i32 [ %shr.i56, %while.body.i58.while.body.i58_crit_edge ], [ %14, %ksz_check_desc_num.exit.while.body.i58_crit_edge ]
  %shift.028.i54 = phi i32 [ %inc.i55, %while.body.i58.while.body.i58_crit_edge ], [ 0, %ksz_check_desc_num.exit.while.body.i58_crit_edge ]
  %inc.i55 = add i32 %shift.028.i54, 1
  %shr.i56 = ashr i32 %alloc.029.i53, 1
  %15 = and i32 %alloc.029.i53, 2
  %tobool.not.i57 = icmp eq i32 %15, 0
  br i1 %tobool.not.i57, label %while.body.i58.while.body.i58_crit_edge, label %while.end.i62

while.body.i58.while.body.i58_crit_edge:          ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body.i58

while.end.i62:                                    ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i56)
  %cmp.not.i59 = icmp ne i32 %shr.i56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i55)
  %cmp2.i60 = icmp slt i32 %inc.i55, 2
  %or.cond.i61 = select i1 %cmp.not.i59, i1 true, i1 %cmp2.i60
  br i1 %or.cond.i61, label %while.end.i62.while.body5.preheader.i68_crit_edge, label %while.end.i62.ksz_check_desc_num.exit80_crit_edge

while.end.i62.ksz_check_desc_num.exit80_crit_edge: ; preds = %while.end.i62
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_check_desc_num.exit80

while.end.i62.while.body5.preheader.i68_crit_edge: ; preds = %while.end.i62
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body5.preheader.i68

while.body5.preheader.i68:                        ; preds = %while.end.i62.while.body5.preheader.i68_crit_edge, %ksz_check_desc_num.exit.while.body5.preheader.i68_crit_edge
  %shift.0.lcssa4047.i66 = phi i32 [ 0, %ksz_check_desc_num.exit.while.body5.preheader.i68_crit_edge ], [ %inc.i55, %while.end.i62.while.body5.preheader.i68_crit_edge ]
  %alloc.0.lcssa4146.i67 = phi i32 [ %14, %ksz_check_desc_num.exit.while.body5.preheader.i68_crit_edge ], [ %shr.i56, %while.end.i62.while.body5.preheader.i68_crit_edge ]
  %call.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #26
  br label %while.body5.i74

while.body5.i74:                                  ; preds = %while.body5.i74.while.body5.i74_crit_edge, %while.body5.preheader.i68
  %alloc.133.i69 = phi i32 [ %shr7.i72, %while.body5.i74.while.body5.i74_crit_edge ], [ %alloc.0.lcssa4146.i67, %while.body5.preheader.i68 ]
  %shift.132.i70 = phi i32 [ %inc6.i71, %while.body5.i74.while.body5.i74_crit_edge ], [ %shift.0.lcssa4047.i66, %while.body5.preheader.i68 ]
  %inc6.i71 = add i32 %shift.132.i70, 1
  %shr7.i72 = ashr i32 %alloc.133.i69, 1
  %tobool4.not.i73 = icmp ult i32 %alloc.133.i69, 2
  br i1 %tobool4.not.i73, label %while.end8.i77, label %while.body5.i74.while.body5.i74_crit_edge

while.body5.i74.while.body5.i74_crit_edge:        ; preds = %while.body5.i74
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body5.i74

while.end8.i77:                                   ; preds = %while.body5.i74
  call void @__sanitizer_cov_trace_pc() #24
  %16 = tail call i32 @llvm.smax.i32(i32 %inc6.i71, i32 2) #22
  %shl.i76 = shl nuw i32 1, %16
  %17 = ptrtoint ptr %alloc2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl.i76, ptr %alloc2, align 4
  br label %ksz_check_desc_num.exit80

ksz_check_desc_num.exit80:                        ; preds = %while.end8.i77, %while.end.i62.ksz_check_desc_num.exit80_crit_edge
  %18 = ptrtoint ptr %alloc2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alloc2, align 4
  %sub.i78 = add i32 %19, -1
  %mask.i79 = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 9
  %20 = ptrtoint ptr %mask.i79 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i78, ptr %mask.i79, align 4
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 8
  %23 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alloc, align 4
  %mul.i = mul i32 %24, %22
  %25 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size18, align 8
  %mul6.i = mul i32 %19, %26
  %add.i = add i32 %mul.i, 16
  %add7.i = add i32 %add.i, %mul6.i
  %desc_pool.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3
  %alloc_size.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add7.i, ptr %alloc_size.i, align 4
  %pdev.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 1
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add7.i, ptr noundef %desc_pool.i, i32 noundef 3264, i32 noundef 0) #22
  %alloc_virt.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %alloc_virt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %alloc_virt.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %ksz_check_desc_num.exit80
  call void @__sanitizer_cov_trace_pc() #24
  %31 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %alloc_size.i, align 4
  br label %ksz_alloc_desc.exit.thread

if.end.i:                                         ; preds = %ksz_check_desc_num.exit80
  %32 = ptrtoint ptr %call.i.i to i32
  %rem.i = and i32 %32, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i81 = icmp eq i32 %rem.i, 0
  %sub.i82 = sub nuw nsw i32 16, %rem.i
  %spec.select.i = select i1 %tobool.not.i81, i32 0, i32 %sub.i82
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %spec.select.i
  %virt.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %virt.i, align 8
  %34 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_pool.i, align 8
  %add26.i = add i32 %35, %spec.select.i
  %phys.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add26.i, ptr %phys.i, align 8
  %ring_virt.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 2
  %37 = ptrtoint ptr %ring_virt.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i, ptr %ring_virt.i, align 8
  %ring_phys.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 3
  %38 = ptrtoint ptr %ring_phys.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add26.i, ptr %ring_phys.i, align 4
  %39 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %alloc, align 4
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 8
  %mul38.i = mul i32 %42, %40
  %add.ptr41.i = getelementptr i8, ptr %add.ptr.i, i32 %mul38.i
  %ring_virt43.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 2
  %43 = ptrtoint ptr %ring_virt43.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr41.i, ptr %ring_virt43.i, align 8
  %add46.i = add i32 %mul38.i, %add26.i
  %ring_phys48.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 3
  %44 = ptrtoint ptr %ring_phys48.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add46.i, ptr %ring_phys48.i, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 28) #22
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !186

kcalloc.exit.thread.i.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %47 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rx_desc_info, align 4
  br label %ksz_alloc_desc.exit.thread

if.end7.i.i.i.i:                                  ; preds = %if.end.i
  %48 = extractvalue { i32, i1 } %45, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #27
  %49 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call8.i.i.i.i, ptr %rx_desc_info, align 4
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.ksz_alloc_desc.exit.thread_crit_edge, label %if.end.i.i

if.end7.i.i.i.i.ksz_alloc_desc.exit.thread_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_alloc_desc.exit.thread

if.end.i.i:                                       ; preds = %if.end7.i.i.i.i
  %50 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp1.i.i.i = icmp sgt i32 %51, 0
  br i1 %cmp1.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end.i.i.if.end53.i_crit_edge

if.end.i.i.if.end53.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %52 = ptrtoint ptr %ring_virt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring_virt.i, align 4
  %54 = ptrtoint ptr %ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ring_phys.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %cur.05.i.i.i = phi ptr [ %call8.i.i.i.i, %for.body.lr.ph.i.i.i ], [ %incdec.ptr1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %desc.04.i.i.i = phi ptr [ %53, %for.body.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %phys.03.i.i.i = phi i32 [ %55, %for.body.lr.ph.i.i.i ], [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %i.02.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr %struct.ksz_hw_desc, ptr %desc.04.i.i.i, i32 1
  %56 = ptrtoint ptr %cur.05.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %desc.04.i.i.i, ptr %cur.05.i.i.i, align 4
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size, align 4
  %add.i.i.i = add i32 %58, %phys.03.i.i.i
  %incdec.ptr1.i.i.i = getelementptr %struct.ksz_desc, ptr %cur.05.i.i.i, i32 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #22
  %next.i.i.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %desc.04.i.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %next.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %61 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %alloc, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %62
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.if.end53.i_crit_edge

for.body.i.i.i.if.end53.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i.i

if.end53.i:                                       ; preds = %for.body.i.i.i.if.end53.i_crit_edge, %if.end.i.i.if.end53.i_crit_edge
  %previous.0.lcssa.i.i.i = phi ptr [ null, %if.end.i.i.if.end53.i_crit_edge ], [ %cur.05.i.i.i, %for.body.i.i.i.if.end53.i_crit_edge ]
  %63 = ptrtoint ptr %ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ring_phys.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #22
  %66 = ptrtoint ptr %previous.0.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %previous.0.lcssa.i.i.i, align 4
  %next5.i.i.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %next5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %next5.i.i.i, align 4
  %buf.i.i.i = getelementptr inbounds %struct.ksz_desc, ptr %previous.0.lcssa.i.i.i, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load.i.i.i = load i32, ptr %buf.i.i.i, align 4
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 33554432
  store i32 %bf.set.i.i.i, ptr %buf.i.i.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %bf.set.i.i.i) #22
  %71 = ptrtoint ptr %previous.0.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %previous.0.lcssa.i.i.i, align 4
  %buf9.i.i.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %buf9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %buf9.i.i.i, align 4
  %74 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %alloc, align 4
  %avail.i.i.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 6
  %76 = ptrtoint ptr %avail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %avail.i.i.i, align 4
  %next11.i.i.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 8
  %77 = ptrtoint ptr %next11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %next11.i.i.i, align 4
  %last.i.i.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 7
  %78 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %last.i.i.i, align 4
  %79 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_desc_info, align 4
  %cur13.i.i.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 1
  %81 = ptrtoint ptr %cur13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %cur13.i.i.i, align 4
  %82 = ptrtoint ptr %alloc2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %alloc2, align 4
  %84 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %83, i32 28) #22
  %85 = extractvalue { i32, i1 } %84, 1
  br i1 %85, label %kcalloc.exit.thread.i92.i, label %if.end7.i.i.i124.i, !prof !186

kcalloc.exit.thread.i92.i:                        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #24
  %86 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %tx_desc_info, align 4
  br label %ksz_alloc_desc.exit.thread

if.end7.i.i.i124.i:                               ; preds = %if.end53.i
  %87 = extractvalue { i32, i1 } %84, 0
  %call8.i.i.i123.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %87, i32 noundef 3520) #27
  %88 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call8.i.i.i123.i, ptr %tx_desc_info, align 4
  %tobool.not.i126.i = icmp eq ptr %call8.i.i.i123.i, null
  br i1 %tobool.not.i126.i, label %if.end7.i.i.i124.i.ksz_alloc_desc.exit.thread_crit_edge, label %if.end.i131.i

if.end7.i.i.i124.i.ksz_alloc_desc.exit.thread_crit_edge: ; preds = %if.end7.i.i.i124.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_alloc_desc.exit.thread

if.end.i131.i:                                    ; preds = %if.end7.i.i.i124.i
  %89 = ptrtoint ptr %alloc2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %alloc2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp1.i.i130.i = icmp sgt i32 %90, 0
  br i1 %cmp1.i.i130.i, label %for.body.lr.ph.i.i134.i, label %if.end.i131.i..loopexit_crit_edge

if.end.i131.i..loopexit_crit_edge:                ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %.loopexit

for.body.lr.ph.i.i134.i:                          ; preds = %if.end.i131.i
  %91 = ptrtoint ptr %ring_virt43.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ring_virt43.i, align 4
  %93 = ptrtoint ptr %ring_phys48.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ring_phys48.i, align 4
  br label %for.body.i.i145.i

for.body.i.i145.i:                                ; preds = %for.body.i.i145.i.for.body.i.i145.i_crit_edge, %for.body.lr.ph.i.i134.i
  %cur.05.i.i135.i = phi ptr [ %call8.i.i.i123.i, %for.body.lr.ph.i.i134.i ], [ %incdec.ptr1.i.i141.i, %for.body.i.i145.i.for.body.i.i145.i_crit_edge ]
  %desc.04.i.i136.i = phi ptr [ %92, %for.body.lr.ph.i.i134.i ], [ %incdec.ptr.i.i139.i, %for.body.i.i145.i.for.body.i.i145.i_crit_edge ]
  %phys.03.i.i137.i = phi i32 [ %94, %for.body.lr.ph.i.i134.i ], [ %add.i.i140.i, %for.body.i.i145.i.for.body.i.i145.i_crit_edge ]
  %i.02.i.i138.i = phi i32 [ 0, %for.body.lr.ph.i.i134.i ], [ %inc.i.i143.i, %for.body.i.i145.i.for.body.i.i145.i_crit_edge ]
  %incdec.ptr.i.i139.i = getelementptr %struct.ksz_hw_desc, ptr %desc.04.i.i136.i, i32 1
  %95 = ptrtoint ptr %cur.05.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %desc.04.i.i136.i, ptr %cur.05.i.i135.i, align 4
  %96 = ptrtoint ptr %size18 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size18, align 4
  %add.i.i140.i = add i32 %97, %phys.03.i.i137.i
  %incdec.ptr1.i.i141.i = getelementptr %struct.ksz_desc, ptr %cur.05.i.i135.i, i32 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %add.i.i140.i) #22
  %next.i.i142.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %desc.04.i.i136.i, i32 0, i32 3
  %99 = ptrtoint ptr %next.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %next.i.i142.i, align 4
  %inc.i.i143.i = add nuw nsw i32 %i.02.i.i138.i, 1
  %100 = ptrtoint ptr %alloc2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %alloc2, align 4
  %cmp.i.i144.i = icmp slt i32 %inc.i.i143.i, %101
  br i1 %cmp.i.i144.i, label %for.body.i.i145.i.for.body.i.i145.i_crit_edge, label %for.body.i.i145.i..loopexit_crit_edge

for.body.i.i145.i..loopexit_crit_edge:            ; preds = %for.body.i.i145.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %.loopexit

for.body.i.i145.i.for.body.i.i145.i_crit_edge:    ; preds = %for.body.i.i145.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i145.i

.loopexit:                                        ; preds = %for.body.i.i145.i..loopexit_crit_edge, %if.end.i131.i..loopexit_crit_edge
  %previous.0.lcssa.i.i146.i = phi ptr [ null, %if.end.i131.i..loopexit_crit_edge ], [ %cur.05.i.i135.i, %for.body.i.i145.i..loopexit_crit_edge ]
  %102 = ptrtoint ptr %ring_phys48.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ring_phys48.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #22
  %105 = ptrtoint ptr %previous.0.lcssa.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %previous.0.lcssa.i.i146.i, align 4
  %next5.i.i147.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %next5.i.i147.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %104, ptr %next5.i.i147.i, align 4
  %buf.i.i148.i = getelementptr inbounds %struct.ksz_desc, ptr %previous.0.lcssa.i.i146.i, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %buf.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load.i.i149.i = load i32, ptr %buf.i.i148.i, align 4
  %bf.set.i.i150.i = or i32 %bf.load.i.i149.i, 33554432
  store i32 %bf.set.i.i150.i, ptr %buf.i.i148.i, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %bf.set.i.i150.i) #22
  %110 = ptrtoint ptr %previous.0.lcssa.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %previous.0.lcssa.i.i146.i, align 4
  %buf9.i.i151.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %buf9.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %109, ptr %buf9.i.i151.i, align 4
  %113 = ptrtoint ptr %alloc2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %alloc2, align 4
  %avail.i.i152.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 6
  %115 = ptrtoint ptr %avail.i.i152.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %avail.i.i152.i, align 4
  %next11.i.i153.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 8
  %116 = ptrtoint ptr %next11.i.i153.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %next11.i.i153.i, align 4
  %last.i.i154.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 7
  %117 = ptrtoint ptr %last.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %last.i.i154.i, align 4
  %118 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_desc_info, align 4
  %cur13.i.i155.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 1
  %120 = ptrtoint ptr %cur13.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %cur13.i.i155.i, align 4
  br label %ksz_alloc_desc.exit.thread

ksz_alloc_desc.exit.thread:                       ; preds = %.loopexit, %if.end7.i.i.i124.i.ksz_alloc_desc.exit.thread_crit_edge, %kcalloc.exit.thread.i92.i, %if.end7.i.i.i.i.ksz_alloc_desc.exit.thread_crit_edge, %kcalloc.exit.thread.i.i, %if.then.i
  %121 = phi i32 [ 0, %.loopexit ], [ 1, %if.then.i ], [ 1, %if.end7.i.i.i.i.ksz_alloc_desc.exit.thread_crit_edge ], [ 1, %kcalloc.exit.thread.i.i ], [ 1, %if.end7.i.i.i124.i.ksz_alloc_desc.exit.thread_crit_edge ], [ 1, %kcalloc.exit.thread.i92.i ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_mac_addr(ptr nocapture noundef %hw_priv, ptr nocapture noundef readonly %macaddr, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp19 = icmp eq i32 %port, 0
  %ksz_switch = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 1
  %id37 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 6
  %arrayidx27 = getelementptr %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 20, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %entry
  %num.096 = phi i32 [ 0, %entry ], [ %num.4, %if.end46.while.body_crit_edge ]
  %got_num.095 = phi i32 [ 0, %entry ], [ %got_num.4, %if.end46.while.body_crit_edge ]
  %j.093 = phi i32 [ 0, %entry ], [ %j.2, %if.end46.while.body_crit_edge ]
  %i.092 = phi i32 [ 0, %entry ], [ %inc47, %if.end46.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %macaddr, i32 %i.092
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %while.body
  %call = tail call i32 @hex_to_bin(i8 noundef zeroext %1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp2 = icmp sgt i32 %call, -1
  br i1 %cmp2, label %if.end15, label %if.else

if.else:                                          ; preds = %if.then
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %3)
  %cmp5 = icmp eq i8 %3, 58
  br i1 %cmp5, label %if.else.if.then18_crit_edge, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end56

if.else.if.then18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then18

if.else10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %got_num.095)
  %tobool11.not = icmp eq i32 %got_num.095, 0
  br i1 %tobool11.not, label %if.else10.if.end56_crit_edge, label %if.else10.if.then18_crit_edge

if.else10.if.then18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then18

if.else10.if.end56_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end56

if.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %mul = shl i32 %num.096, 4
  %add = add i32 %call, %mul
  br label %if.end46

if.then18:                                        ; preds = %if.else10.if.then18_crit_edge, %if.else.if.then18_crit_edge
  %conv22 = trunc i32 %num.096 to i8
  br i1 %cmp19, label %if.then21, label %if.else31

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx23 = getelementptr %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 20, i32 %j.093
  %4 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv22, ptr %arrayidx23, align 1
  br label %if.end45

if.else31:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #24
  %5 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ksz_switch, align 4
  %arrayidx35 = getelementptr %struct.ksz_switch, ptr %6, i32 0, i32 6, i32 %j.093
  %7 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv22, ptr %arrayidx35, align 1
  %8 = load ptr, ptr %ksz_switch, align 4
  %arrayidx41 = getelementptr %struct.ksz_switch, ptr %8, i32 0, i32 6, i32 5
  br label %if.end45

if.end45:                                         ; preds = %if.else31, %if.then21
  %arrayidx41.sink100 = phi ptr [ %arrayidx41, %if.else31 ], [ %arrayidx27, %if.then21 ]
  %9 = ptrtoint ptr %id37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink99 = load i32, ptr %id37, align 8
  %10 = ptrtoint ptr %arrayidx41.sink100 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx41.sink100, align 1
  %12 = trunc i32 %.sink99 to i8
  %conv44 = add i8 %11, %12
  store i8 %conv44, ptr %arrayidx41.sink100, align 1
  %j.1 = add nsw i32 %j.093, 1
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end15
  %j.2 = phi i32 [ %j.1, %if.end45 ], [ %j.093, %if.end15 ]
  %got_num.4 = phi i32 [ 0, %if.end45 ], [ 1, %if.end15 ]
  %num.4 = phi i32 [ 0, %if.end45 ], [ %add, %if.end15 ]
  %inc47 = add i32 %i.092, 1
  %cmp = icmp slt i32 %j.2, 6
  br i1 %cmp, label %if.end46.while.body_crit_edge, label %while.end

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

while.end:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %j.2)
  %cmp48 = icmp eq i32 %j.2, 6
  %or.cond = and i1 %cmp19, %cmp48
  br i1 %or.cond, label %if.then53, label %while.end.if.end56_crit_edge

while.end.if.end56_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end56

if.then53:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #24
  %mac_override = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 23
  %13 = ptrtoint ptr %mac_override to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %mac_override, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %while.end.if.end56_crit_edge, %if.else10.if.end56_crit_edge, %if.else.if.end56_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_read_addr(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 512
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !188
  %arrayidx = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 19, i32 5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr1.1 = getelementptr i8, ptr %5, i32 513
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.1) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !188
  %arrayidx.1 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 19, i32 4
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx.1, align 1
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr1.2 = getelementptr i8, ptr %9, i32 514
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.2) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !188
  %arrayidx.2 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 19, i32 3
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx.2, align 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr1.3 = getelementptr i8, ptr %13, i32 515
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.3) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !188
  %arrayidx.3 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 19, i32 2
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx.3, align 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr1.4 = getelementptr i8, ptr %17, i32 516
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.4) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !188
  %arrayidx.4 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx.4, align 1
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %add.ptr1.5 = getelementptr i8, ptr %21, i32 517
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.5) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !188
  %arrayidx.5 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 19, i32 0
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.5, align 1
  %mac_override = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 23
  %24 = ptrtoint ptr %mac_override to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mac_override, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then:                                          ; preds = %entry
  %override_addr = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 20
  %26 = call ptr @memcpy(ptr %override_addr, ptr %arrayidx.5, i32 6)
  %27 = ptrtoint ptr %override_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %override_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %empty_addr.exit, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

empty_addr.exit:                                  ; preds = %if.then
  %arrayidx.i = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp1.i.not = icmp eq i16 %30, 0
  br i1 %cmp1.i.not, label %if.then9, label %empty_addr.exit.if.end17_crit_edge

empty_addr.exit.if.end17_crit_edge:               ; preds = %empty_addr.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then9:                                         ; preds = %empty_addr.exit
  call void @__sanitizer_cov_trace_pc() #24
  %31 = call ptr @memcpy(ptr %arrayidx.5, ptr @DEFAULT_MAC_ADDRESS, i32 6)
  %32 = call ptr @memcpy(ptr %override_addr, ptr @DEFAULT_MAC_ADDRESS, i32 6)
  %id = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 6
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 8
  %arrayidx15 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 5
  %35 = trunc i32 %34 to i8
  %conv16 = add i8 %35, 1
  %36 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv16, ptr %arrayidx15, align 1
  tail call fastcc void @hw_set_addr(ptr noundef %hw)
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %empty_addr.exit.if.end17_crit_edge, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_other_addr(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %ksz_switch = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ksz_switch, align 4
  %call = tail call fastcc zeroext i16 @eeprom_read(ptr noundef %hw, i8 noundef zeroext 9)
  %call.1 = tail call fastcc zeroext i16 @eeprom_read(ptr noundef %hw, i8 noundef zeroext 10)
  %call.2 = tail call fastcc zeroext i16 @eeprom_read(ptr noundef %hw, i8 noundef zeroext 11)
  %2 = zext i16 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %call, label %entry.if.then_crit_edge [
    i16 0, label %lor.lhs.false
    i16 -1, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.1)
  %tobool5.not = icmp eq i16 %call.1, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.2)
  %tobool9.not = icmp eq i16 %call.2, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv15 = trunc i16 %call to i8
  %other_addr = getelementptr inbounds %struct.ksz_switch, ptr %1, i32 0, i32 6
  %arrayidx16 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 6, i32 5
  %3 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv15, ptr %arrayidx16, align 1
  %4 = lshr i16 %call, 8
  %conv19 = trunc i16 %4 to i8
  %arrayidx21 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv19, ptr %arrayidx21, align 2
  %conv23 = trunc i16 %call.1 to i8
  %arrayidx25 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv23, ptr %arrayidx25, align 1
  %7 = lshr i16 %call.1, 8
  %conv29 = trunc i16 %7 to i8
  %arrayidx31 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv29, ptr %arrayidx31, align 2
  %conv33 = trunc i16 %call.2 to i8
  %arrayidx35 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv33, ptr %arrayidx35, align 1
  %10 = lshr i16 %call.2, 8
  %conv39 = trunc i16 %10 to i8
  %11 = ptrtoint ptr %other_addr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv39, ptr %other_addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sw_setup(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1030
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !189
  %3 = or i16 %2, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !190
  tail call void @arm_heavy_mb() #22
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr4.i = getelementptr i8, ptr %5, i32 1030
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %3) #22, !srcloc !183
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr8.i = getelementptr i8, ptr %7, i32 1026
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !191
  %overrides.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 33
  %9 = ptrtoint ptr %overrides.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %overrides.i, align 4
  %11 = and i16 %8, -264
  %12 = or i16 %11, 261
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #22
  %14 = trunc i32 %10 to i16
  %15 = shl i16 %14, 8
  %16 = and i16 %15, 512
  %data.0.i = or i16 %16, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !192
  tail call void @arm_heavy_mb() #22
  %17 = tail call i16 @llvm.bswap.i16(i16 %data.0.i) #22
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr31.i = getelementptr i8, ptr %19, i32 1026
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31.i, i16 %17) #22, !srcloc !183
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %add.ptr35.i = getelementptr i8, ptr %21, i32 1028
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !193
  %23 = or i16 %22, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !194
  tail call void @arm_heavy_mb() #22
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add.ptr46.i = getelementptr i8, ptr %25, i32 1028
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr46.i, i16 %23) #22, !srcloc !183
  %ksz_switch.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ksz_switch.i, align 4
  %broad_per.i = getelementptr inbounds %struct.ksz_switch, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %broad_per.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %broad_per.i, align 4
  %29 = load ptr, ptr %ksz_switch.i, align 4
  %broad_per2.i = getelementptr inbounds %struct.ksz_switch, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %broad_per2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %broad_per2.i, align 4
  %conv.i.i = zext i8 %31 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 9969
  %div.i.i = udiv i32 %mul.i.i, 100
  %32 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 2047) #22
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 1030
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #22, !srcloc !184
  %36 = lshr i16 %35, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !195
  %37 = and i16 %36, 248
  %and5.i.i = shl nuw nsw i32 %32, 8
  %shr.i.i = lshr i32 %32, 8
  %or.i.i = or i32 %and5.i.i, %shr.i.i
  %38 = trunc i32 %or.i.i to i16
  %conv9.i.i = or i16 %37, %38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !196
  tail call void @arm_heavy_mb() #22
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i) #22
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %41, i32 1030
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 %39) #22, !srcloc !183
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 1280
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %45 = and i16 %44, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %47, i32 1280
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i.i, i16 %45) #22, !srcloc !183
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.1.i = getelementptr i8, ptr %49, i32 1312
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.1.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %51 = and i16 %50, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i.1.i = getelementptr i8, ptr %53, i32 1312
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i.1.i, i16 %51) #22, !srcloc !183
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.2.i = getelementptr i8, ptr %55, i32 1344
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.2.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %57 = and i16 %56, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i.2.i = getelementptr i8, ptr %59, i32 1344
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i.2.i, i16 %57) #22, !srcloc !183
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %61, i32 1028
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !199
  %63 = or i16 %62, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !200
  tail call void @arm_heavy_mb() #22
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %65, i32 1028
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %63) #22, !srcloc !183
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 8
  %add.ptr.i.i18 = getelementptr i8, ptr %67, i32 1030
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i18) #22, !srcloc !184
  %69 = lshr i16 %68, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !195
  %70 = and i16 %69, 248
  %conv9.i.i19 = or i16 %70, -7165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !196
  tail call void @arm_heavy_mb() #22
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i19) #22
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 8
  %add.ptr11.i.i20 = getelementptr i8, ptr %73, i32 1030
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i20, i16 %71) #22, !srcloc !183
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 8
  %add.ptr.i1.i = getelementptr i8, ptr %75, i32 1030
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i1.i) #22, !srcloc !184
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !201
  %conv.i.i21 = zext i16 %77 to i32
  %and.i.i = shl nuw nsw i32 %conv.i.i21, 8
  %shl.i.i = and i32 %and.i.i, 1792
  %78 = lshr i32 %conv.i.i21, 8
  %or.i.i22 = or i32 %shl.i.i, %78
  %mul.i.i23 = mul nuw nsw i32 %or.i.i22, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i22)
  %cmp.not.i.i = icmp eq i32 %or.i.i22, 0
  %cond.in.v.i.i = select i1 %cmp.not.i.i, i32 -4984, i32 4984
  %cond.in.i.i = add nsw i32 %cond.in.v.i.i, %mul.i.i23
  %cond.i.i = sdiv i32 %cond.in.i.i, 9969
  %conv13.i.i = trunc i32 %cond.i.i to i8
  %79 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ksz_switch.i, align 4
  %broad_per.i25 = getelementptr inbounds %struct.ksz_switch, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %broad_per.i25 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv13.i.i, ptr %broad_per.i25, align 4
  %82 = load ptr, ptr %ksz_switch.i, align 4
  %broad_per.i27 = getelementptr inbounds %struct.ksz_switch, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %broad_per.i27 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %broad_per.i27, align 4
  %conv.i.i28 = zext i8 %84 to i32
  %mul.i.i29 = mul nuw nsw i32 %conv.i.i28, 9969
  %div.i.i30 = udiv i32 %mul.i.i29, 100
  %85 = tail call i32 @llvm.umin.i32(i32 %div.i.i30, i32 2047) #22
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 8
  %add.ptr.i.i31 = getelementptr i8, ptr %87, i32 1030
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i31) #22, !srcloc !184
  %89 = lshr i16 %88, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !195
  %90 = and i16 %89, 248
  %and5.i.i32 = shl nuw nsw i32 %85, 8
  %shr.i.i33 = lshr i32 %85, 8
  %or.i.i34 = or i32 %and5.i.i32, %shr.i.i33
  %91 = trunc i32 %or.i.i34 to i16
  %conv9.i.i35 = or i16 %90, %91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !196
  tail call void @arm_heavy_mb() #22
  %92 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i35) #22
  %93 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw, align 8
  %add.ptr11.i.i36 = getelementptr i8, ptr %94, i32 1030
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i36, i16 %92) #22, !srcloc !183
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %96, i32 1280
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %98 = or i16 %97, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %99 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i = getelementptr i8, ptr %100, i32 1280
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i, i16 %98) #22, !srcloc !183
  %101 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ksz_switch.i, align 4
  %broad_per.i27.1 = getelementptr inbounds %struct.ksz_switch, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %broad_per.i27.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %broad_per.i27.1, align 4
  %conv.i.i28.1 = zext i8 %104 to i32
  %mul.i.i29.1 = mul nuw nsw i32 %conv.i.i28.1, 9969
  %div.i.i30.1 = udiv i32 %mul.i.i29.1, 100
  %105 = tail call i32 @llvm.umin.i32(i32 %div.i.i30.1, i32 2047) #22
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 8
  %add.ptr.i.i31.1 = getelementptr i8, ptr %107, i32 1030
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i31.1) #22, !srcloc !184
  %109 = lshr i16 %108, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !195
  %110 = and i16 %109, 248
  %and5.i.i32.1 = shl nuw nsw i32 %105, 8
  %shr.i.i33.1 = lshr i32 %105, 8
  %or.i.i34.1 = or i32 %and5.i.i32.1, %shr.i.i33.1
  %111 = trunc i32 %or.i.i34.1 to i16
  %conv9.i.i35.1 = or i16 %110, %111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !196
  tail call void @arm_heavy_mb() #22
  %112 = tail call i16 @llvm.bswap.i16(i16 %conv9.i.i35.1) #22
  %113 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw, align 8
  %add.ptr11.i.i36.1 = getelementptr i8, ptr %114, i32 1030
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i36.1, i16 %112) #22, !srcloc !183
  %115 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %116, i32 1312
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %118 = or i16 %117, -32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %119 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i.1 = getelementptr i8, ptr %120, i32 1312
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i.1, i16 %118) #22, !srcloc !183
  %121 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ksz_switch.i, align 4
  %p_802_1p.i = getelementptr inbounds %struct.ksz_switch, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %p_802_1p.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %p_802_1p.i, align 4
  %arrayidx2.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 4, i32 1
  %124 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 4, i32 2
  %125 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %arrayidx4.i, align 2
  %arrayidx6.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 4, i32 3
  %126 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 4, i32 4
  %127 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 2, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 4, i32 5
  %128 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 2, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 4, i32 6
  %129 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 3, ptr %arrayidx12.i, align 2
  %arrayidx14.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 4, i32 7
  %130 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 3, ptr %arrayidx14.i, align 1
  %uglygep.i = getelementptr i8, ptr %122, i32 280
  %131 = call ptr @memset(ptr %uglygep.i, i32 0, i32 64)
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %entry
  %port.065.i = phi i32 [ %inc24.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %entry ]
  %mul.i.i.i.i = shl i32 %port.065.i, 5
  %add.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 1280
  %132 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.i38 = getelementptr i8, ptr %133, i32 %add.i.i.i.i
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i38) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %135 = and i16 %134, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i.i39 = getelementptr i8, ptr %137, i32 %add.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i.i39, i16 %135) #22, !srcloc !183
  %138 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i54.i = getelementptr i8, ptr %139, i32 %add.i.i.i.i
  %140 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i54.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %141 = and i16 %140, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %142 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i55.i = getelementptr i8, ptr %143, i32 %add.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i55.i, i16 %141) #22, !srcloc !183
  %144 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i58.i = getelementptr i8, ptr %145, i32 %add.i.i.i.i
  %146 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i58.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %147 = and i16 %146, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %148 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i59.i = getelementptr i8, ptr %149, i32 %add.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i59.i, i16 %147) #22, !srcloc !183
  %add1.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 1282
  %150 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i61.i = getelementptr i8, ptr %151, i32 %add1.i.i.i.i
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i61.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %153 = and i16 %152, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i62.i = getelementptr i8, ptr %155, i32 %add1.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i62.i, i16 %153) #22, !srcloc !183
  %port_prio.i = getelementptr %struct.ksz_switch, ptr %122, i32 0, i32 2, i32 %port.065.i, i32 2
  %156 = ptrtoint ptr %port_prio.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %port_prio.i, align 1
  %157 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ksz_switch.i, align 4
  %port_prio.i.i = getelementptr %struct.ksz_switch, ptr %158, i32 0, i32 2, i32 %port.065.i, i32 2
  %159 = ptrtoint ptr %port_prio.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %port_prio.i.i, align 1
  %160 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i40 = getelementptr i8, ptr %161, i32 %add.i.i.i.i
  %162 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i40) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %163 = and i16 %162, -6145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %164 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw, align 8
  %add.ptr.i3.i.i = getelementptr i8, ptr %165, i32 %add.i.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i3.i.i, i16 %163) #22, !srcloc !183
  %inc24.i = add nuw nsw i32 %port.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 3
  br i1 %exitcond.not.i, label %sw_init_prio.exit, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body18.i

sw_init_prio.exit:                                ; preds = %for.body18.i
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw, align 8
  %add.ptr.i.i63.i = getelementptr i8, ptr %167, i32 1030
  %168 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i63.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !199
  %169 = and i16 %168, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !200
  tail call void @arm_heavy_mb() #22
  %170 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw, align 8
  %add.ptr8.i.i.i = getelementptr i8, ptr %171, i32 1030
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i.i, i16 %169) #22, !srcloc !183
  %172 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i41 = getelementptr i8, ptr %173, i32 1282
  %174 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i41) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %175 = and i16 %174, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %176 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.i42 = getelementptr i8, ptr %177, i32 1282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.i42, i16 %175) #22, !srcloc !183
  %178 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw, align 8
  %add.ptr.i.i10.i = getelementptr i8, ptr %179, i32 1282
  %180 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i10.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %181 = and i16 %180, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %182 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i11.i = getelementptr i8, ptr %183, i32 1282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i11.i, i16 %181) #22, !srcloc !183
  %184 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hw, align 8
  %add.ptr.i.i14.i = getelementptr i8, ptr %185, i32 1282
  %186 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i14.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %187 = and i16 %186, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %188 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i15.i = getelementptr i8, ptr %189, i32 1282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i15.i, i16 %187) #22, !srcloc !183
  %190 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.1.i = getelementptr i8, ptr %191, i32 1314
  %192 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.1.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %193 = and i16 %192, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %194 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.1.i = getelementptr i8, ptr %195, i32 1314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.1.i, i16 %193) #22, !srcloc !183
  %196 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw, align 8
  %add.ptr.i.i10.1.i = getelementptr i8, ptr %197, i32 1314
  %198 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i10.1.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %199 = and i16 %198, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %200 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i11.1.i = getelementptr i8, ptr %201, i32 1314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i11.1.i, i16 %199) #22, !srcloc !183
  %202 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hw, align 8
  %add.ptr.i.i14.1.i = getelementptr i8, ptr %203, i32 1314
  %204 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i14.1.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %205 = and i16 %204, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %206 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i15.1.i = getelementptr i8, ptr %207, i32 1314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i15.1.i, i16 %205) #22, !srcloc !183
  %208 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.2.i = getelementptr i8, ptr %209, i32 1346
  %210 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.2.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %211 = and i16 %210, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %212 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.2.i = getelementptr i8, ptr %213, i32 1346
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i.2.i, i16 %211) #22, !srcloc !183
  %214 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hw, align 8
  %add.ptr.i.i10.2.i = getelementptr i8, ptr %215, i32 1346
  %216 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i10.2.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %217 = and i16 %216, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %218 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i11.2.i = getelementptr i8, ptr %219, i32 1346
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i11.2.i, i16 %217) #22, !srcloc !183
  %220 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hw, align 8
  %add.ptr.i.i14.2.i = getelementptr i8, ptr %221, i32 1346
  %222 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i14.2.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %223 = and i16 %222, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %224 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i15.2.i = getelementptr i8, ptr %225, i32 1346
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i15.2.i, i16 %223) #22, !srcloc !183
  %226 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %hw, align 8
  %add.ptr.i.i16.i = getelementptr i8, ptr %227, i32 1028
  %228 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i16.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !199
  %229 = and i16 %228, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !200
  tail call void @arm_heavy_mb() #22
  %230 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hw, align 8
  %add.ptr8.i.i.i43 = getelementptr i8, ptr %231, i32 1028
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i.i43, i16 %229) #22, !srcloc !183
  %232 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ksz_switch.i, align 4
  %arrayidx7.i = getelementptr %struct.ksz_switch, ptr %233, i32 0, i32 2, i32 0, i32 3, i32 0
  %234 = call ptr @memset(ptr %arrayidx7.i, i32 0, i32 32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !204
  tail call void @arm_heavy_mb() #22
  %235 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hw, align 8
  %add.ptr.i.i45 = getelementptr i8, ptr %236, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 0) #22, !srcloc !205
  %arrayidx7.123.i = getelementptr %struct.ksz_switch, ptr %233, i32 0, i32 2, i32 1, i32 3, i32 0
  %237 = call ptr @memset(ptr %arrayidx7.123.i, i32 0, i32 32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !204
  tail call void @arm_heavy_mb() #22
  %238 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hw, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %239, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 0) #22, !srcloc !205
  %arrayidx7.225.i = getelementptr %struct.ksz_switch, ptr %233, i32 0, i32 2, i32 2, i32 3, i32 0
  %240 = call ptr @memset(ptr %arrayidx7.225.i, i32 0, i32 32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !204
  tail call void @arm_heavy_mb() #22
  %241 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hw, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %242, i32 1352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 0) #22, !srcloc !205
  %243 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ksz_switch.i, align 4
  %intr_blocked.i.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 13
  %intr_mask.i.i.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %intr_set.i.i.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %sw_r_vlan_table.exit.i.for.body.i_crit_edge, %sw_init_prio.exit
  %entry1.033.i = phi i32 [ 0, %sw_init_prio.exit ], [ %inc.i, %sw_r_vlan_table.exit.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %entry1.033.i to i16
  %arrayidx.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 1, i32 %entry1.033.i
  %fid.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 1, i32 %entry1.033.i, i32 1
  %member.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 1, i32 %entry1.033.i, i32 2
  %245 = or i16 %conv.i, 5120
  %246 = ptrtoint ptr %intr_blocked.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %intr_blocked.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool.not.i.i.i.i = icmp eq i32 %247, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i.hw_block_intr.exit.i.i.i_crit_edge

for.body.i.hw_block_intr.exit.i.i.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_block_intr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %248 = ptrtoint ptr %intr_mask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %intr_mask.i.i.i.i.i, align 4
  %250 = ptrtoint ptr %intr_blocked.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %intr_blocked.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %251 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %252, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 0) #22, !srcloc !205
  %253 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hw, align 8
  %add.ptr2.i.i.i.i.i = getelementptr i8, ptr %254, i32 40
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i.i) #22, !srcloc !207
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %257 = ptrtoint ptr %intr_set.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %intr_set.i.i.i.i.i, align 8
  %258 = ptrtoint ptr %intr_blocked.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %intr_blocked.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %phi.cmp.i.i.i = icmp eq i32 %259, 0
  br label %hw_block_intr.exit.i.i.i

hw_block_intr.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %for.body.i.hw_block_intr.exit.i.i.i_crit_edge
  %interrupt.0.i.i.i.i = phi i1 [ true, %for.body.i.hw_block_intr.exit.i.i.i_crit_edge ], [ %phi.cmp.i.i.i, %if.then.i.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !209
  tail call void @arm_heavy_mb() #22
  %260 = tail call i16 @llvm.bswap.i16(i16 %245) #22
  %261 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i47 = getelementptr i8, ptr %262, i32 1184
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i47, i16 %260) #22, !srcloc !183
  %263 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hw, align 8
  %add.ptr6.i.i.i = getelementptr i8, ptr %264, i32 1184
  %265 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !210
  %266 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %hw, align 8
  %add.ptr14.i.i.i = getelementptr i8, ptr %267, i32 1192
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i.i) #22, !srcloc !207
  %269 = tail call i32 @llvm.bswap.i32(i32 %268) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !211
  br i1 %interrupt.0.i.i.i.i, label %hw_block_intr.exit.i.i.i.sw_r_table.exit.i.i_crit_edge, label %if.then.i3.i.i.i

hw_block_intr.exit.i.i.i.sw_r_table.exit.i.i_crit_edge: ; preds = %hw_block_intr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw_r_table.exit.i.i

if.then.i3.i.i.i:                                 ; preds = %hw_block_intr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %270 = ptrtoint ptr %intr_blocked.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %intr_blocked.i.i.i.i, align 4
  %271 = ptrtoint ptr %intr_mask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %intr_mask.i.i.i.i.i, align 4
  %273 = ptrtoint ptr %intr_set.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %intr_set.i.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %274 = tail call i32 @llvm.bswap.i32(i32 %272) #22
  %275 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %276, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i, i32 %274) #22, !srcloc !205
  br label %sw_r_table.exit.i.i

sw_r_table.exit.i.i:                              ; preds = %if.then.i3.i.i.i, %hw_block_intr.exit.i.i.i.sw_r_table.exit.i.i_crit_edge
  %and.i.i48 = and i32 %269, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.not.i.i = icmp eq i32 %and.i.i48, 0
  br i1 %tobool.not.i.i, label %sw_r_table.exit.i.i.sw_r_vlan_table.exit.i_crit_edge, label %if.then.i.i

sw_r_table.exit.i.i.sw_r_vlan_table.exit.i_crit_edge: ; preds = %sw_r_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw_r_vlan_table.exit.i

if.then.i.i:                                      ; preds = %sw_r_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %277 = trunc i32 %269 to i16
  %conv.i.i49 = and i16 %277, 4095
  %278 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %conv.i.i49, ptr %arrayidx.i, align 2
  %and2.i.i = lshr i32 %269, 12
  %279 = trunc i32 %and2.i.i to i8
  %conv3.i.i = and i8 %279, 15
  %280 = ptrtoint ptr %fid.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv3.i.i, ptr %fid.i, align 1
  %and4.i.i = lshr i32 %269, 16
  %281 = trunc i32 %and4.i.i to i8
  %conv6.i.i = and i8 %281, 7
  %282 = ptrtoint ptr %member.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %conv6.i.i, ptr %member.i, align 1
  br label %sw_r_vlan_table.exit.i

sw_r_vlan_table.exit.i:                           ; preds = %if.then.i.i, %sw_r_table.exit.i.i.sw_r_vlan_table.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %entry1.033.i, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i50, label %sw_init_vlan.exit, label %sw_r_vlan_table.exit.i.for.body.i_crit_edge

sw_r_vlan_table.exit.i.for.body.i_crit_edge:      ; preds = %sw_r_vlan_table.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

sw_init_vlan.exit:                                ; preds = %sw_r_vlan_table.exit.i
  %arrayidx10.i51 = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 2, i32 0
  %283 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %hw, align 8
  %add.ptr.i.i52 = getelementptr i8, ptr %284, i32 1284
  %285 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i52) #22, !srcloc !184
  %286 = tail call i16 @llvm.bswap.i16(i16 %285) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !213
  %287 = ptrtoint ptr %arrayidx10.i51 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %286, ptr %arrayidx10.i51, align 2
  %member14.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 2, i32 0, i32 1
  %288 = ptrtoint ptr %member14.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 7, ptr %member14.i, align 2
  %arrayidx10.1.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 2, i32 1
  %289 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hw, align 8
  %add.ptr.i.1.i53 = getelementptr i8, ptr %290, i32 1316
  %291 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1.i53) #22, !srcloc !184
  %292 = tail call i16 @llvm.bswap.i16(i16 %291) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !213
  %293 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 %292, ptr %arrayidx10.1.i, align 2
  %member14.1.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 2, i32 1, i32 1
  %294 = ptrtoint ptr %member14.1.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 7, ptr %member14.1.i, align 2
  %arrayidx10.2.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 2, i32 2
  %295 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %hw, align 8
  %add.ptr.i.2.i54 = getelementptr i8, ptr %296, i32 1348
  %297 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.2.i54) #22, !srcloc !184
  %298 = tail call i16 @llvm.bswap.i16(i16 %297) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !213
  %299 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %298, ptr %arrayidx10.2.i, align 2
  %member14.2.i = getelementptr %struct.ksz_switch, ptr %244, i32 0, i32 2, i32 2, i32 1
  %300 = ptrtoint ptr %member14.2.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 7, ptr %member14.2.i, align 2
  %features = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 32
  %301 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %features, align 8
  %and = and i32 %302, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw_init_vlan.exit.if.end_crit_edge, label %if.then

sw_init_vlan.exit.if.end_crit_edge:               ; preds = %sw_init_vlan.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %sw_init_vlan.exit
  call void @__sanitizer_cov_trace_pc() #24
  %303 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %ksz_switch.i, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 1, ptr %304, align 2
  %arrayidx4.i56 = getelementptr [6 x i8], ptr %304, i32 0, i32 1
  %306 = ptrtoint ptr %arrayidx4.i56 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 -128, ptr %arrayidx4.i56, align 1
  %arrayidx6.i57 = getelementptr [6 x i8], ptr %304, i32 0, i32 2
  %307 = ptrtoint ptr %arrayidx6.i57 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 -62, ptr %arrayidx6.i57, align 2
  %arrayidx8.i58 = getelementptr [6 x i8], ptr %304, i32 0, i32 3
  %308 = ptrtoint ptr %arrayidx8.i58 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 0, ptr %arrayidx8.i58, align 1
  %arrayidx10.i59 = getelementptr [6 x i8], ptr %304, i32 0, i32 4
  %309 = ptrtoint ptr %arrayidx10.i59 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %arrayidx10.i59, align 2
  %arrayidx12.i60 = getelementptr [6 x i8], ptr %304, i32 0, i32 5
  %310 = ptrtoint ptr %arrayidx12.i60 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %arrayidx12.i60, align 1
  %ports.i = getelementptr inbounds %struct.ksz_mac_table, ptr %304, i32 0, i32 3
  %311 = ptrtoint ptr %ports.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 4, ptr %ports.i, align 1
  %override.i = getelementptr inbounds %struct.ksz_mac_table, ptr %304, i32 0, i32 4
  %312 = ptrtoint ptr %override.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %bf.load.i = load i8, ptr %override.i, align 2
  %bf.set15.i = or i8 %bf.load.i, -96
  store i8 %bf.set15.i, ptr %override.i, align 2
  %bf.lshr26.i = lshr i8 %bf.load.i, 6
  %bf.clear27.i = and i8 %bf.lshr26.i, 1
  %conv28.i = zext i8 %bf.clear27.i to i32
  %fid.i61 = getelementptr inbounds %struct.ksz_mac_table, ptr %304, i32 0, i32 2
  %313 = ptrtoint ptr %fid.i61 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %fid.i61, align 2
  tail call fastcc void @sw_w_sta_mac_table(ptr noundef %hw, i16 noundef zeroext 0, ptr noundef %304, i8 noundef zeroext 4, i32 noundef 1, i32 noundef 1, i32 noundef %conv28.i, i8 noundef zeroext %314) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %sw_init_vlan.exit.if.end_crit_edge
  %315 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hw, align 8
  %add.ptr.i62 = getelementptr i8, ptr %316, i32 1026
  %317 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i62) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !214
  %318 = and i16 %317, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %318)
  %cmp.i.not = icmp eq i16 %318, 48
  br i1 %cmp.i.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %319 = ptrtoint ptr %overrides.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %overrides.i, align 4
  %or = or i32 %320, 1
  store i32 %or, ptr %overrides.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %dev_count.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 4
  %321 = ptrtoint ptr %dev_count.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %dev_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %322)
  %cmp1.i = icmp sgt i32 %322, 1
  %323 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %hw, align 8
  %add.ptr.i.i67 = getelementptr i8, ptr %324, i32 1282
  %325 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i67) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  %326 = and i8 %325, -8
  %or19.i.i = or i8 %326, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !215
  tail call void @arm_heavy_mb() #22
  %327 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %328, i32 1282
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i, i8 %or19.i.i) #22, !srcloc !216
  %329 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ksz_switch.i, align 4
  %member10.i.i = getelementptr %struct.ksz_switch, ptr %330, i32 0, i32 2, i32 0, i32 1
  %331 = ptrtoint ptr %member10.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 5, ptr %member10.i.i, align 2
  %332 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i68 = getelementptr i8, ptr %333, i32 1282
  %334 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i68) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %335 = and i16 %334, -8
  %336 = or i16 %335, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %337 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %hw, align 8
  %add.ptr.i53.i.i = getelementptr i8, ptr %338, i32 1282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i.i, i16 %336) #22, !srcloc !183
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  %or19.i5.i = or i8 %325, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !215
  tail call void @arm_heavy_mb() #22
  %339 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %hw, align 8
  %add.ptr9.i6.i = getelementptr i8, ptr %340, i32 1282
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i6.i, i8 %or19.i5.i) #22, !srcloc !216
  %341 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ksz_switch.i, align 4
  %member10.i8.i = getelementptr %struct.ksz_switch, ptr %342, i32 0, i32 2, i32 0, i32 1
  %343 = ptrtoint ptr %member10.i8.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 7, ptr %member10.i8.i, align 2
  %344 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %hw, align 8
  %add.ptr.i.i11.i = getelementptr i8, ptr %345, i32 1282
  %346 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i11.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %347 = and i16 %346, -8
  %348 = or i16 %347, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %349 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %hw, align 8
  %add.ptr.i53.i12.i = getelementptr i8, ptr %350, i32 1282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i12.i, i16 %348) #22, !srcloc !183
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.then.i ], [ 3, %if.else.i ]
  %351 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i.i = getelementptr %struct.ksz_switch, ptr %352, i32 0, i32 2, i32 0, i32 5
  %353 = ptrtoint ptr %stp_state.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %.sink.i, ptr %stp_state.i.i, align 4
  %354 = ptrtoint ptr %dev_count.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %dev_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %355)
  %cmp1.i.1 = icmp sgt i32 %355, 1
  %356 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %hw, align 8
  %add.ptr.i.i67.1 = getelementptr i8, ptr %357, i32 1314
  %358 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i67.1) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  br i1 %cmp1.i.1, label %if.then.i.1, label %if.else.i.1

if.else.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  %or19.i5.i.1 = or i8 %358, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !215
  tail call void @arm_heavy_mb() #22
  %359 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %hw, align 8
  %add.ptr9.i6.i.1 = getelementptr i8, ptr %360, i32 1314
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i6.i.1, i8 %or19.i5.i.1) #22, !srcloc !216
  %361 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ksz_switch.i, align 4
  %member10.i8.i.1 = getelementptr %struct.ksz_switch, ptr %362, i32 0, i32 2, i32 1, i32 1
  %363 = ptrtoint ptr %member10.i8.i.1 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 7, ptr %member10.i8.i.1, align 2
  %364 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %hw, align 8
  %add.ptr.i.i11.i.1 = getelementptr i8, ptr %365, i32 1314
  %366 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i11.i.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %367 = and i16 %366, -8
  %368 = or i16 %367, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %369 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %hw, align 8
  %add.ptr.i53.i12.i.1 = getelementptr i8, ptr %370, i32 1314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i12.i.1, i16 %368) #22, !srcloc !183
  br label %for.inc.i.1

if.then.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  %371 = and i8 %358, -8
  %or19.i.i.1 = or i8 %371, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !215
  tail call void @arm_heavy_mb() #22
  %372 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %hw, align 8
  %add.ptr9.i.i.1 = getelementptr i8, ptr %373, i32 1314
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i.1, i8 %or19.i.i.1) #22, !srcloc !216
  %374 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %ksz_switch.i, align 4
  %member10.i.i.1 = getelementptr %struct.ksz_switch, ptr %375, i32 0, i32 2, i32 1, i32 1
  %376 = ptrtoint ptr %member10.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 6, ptr %member10.i.i.1, align 2
  %377 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i68.1 = getelementptr i8, ptr %378, i32 1314
  %379 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i68.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %380 = and i16 %379, -8
  %381 = or i16 %380, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %382 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %hw, align 8
  %add.ptr.i53.i.i.1 = getelementptr i8, ptr %383, i32 1314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i.i.1, i16 %381) #22, !srcloc !183
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then.i.1, %if.else.i.1
  %.sink.i.1 = phi i32 [ 0, %if.then.i.1 ], [ 3, %if.else.i.1 ]
  %384 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i.i.1 = getelementptr %struct.ksz_switch, ptr %385, i32 0, i32 2, i32 1, i32 5
  %386 = ptrtoint ptr %stp_state.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %.sink.i.1, ptr %stp_state.i.i.1, align 4
  %387 = ptrtoint ptr %dev_count.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %dev_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %388)
  %cmp3.i = icmp sgt i32 %388, 1
  %389 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %hw, align 8
  %add.ptr.i.i15.i = getelementptr i8, ptr %390, i32 1346
  %391 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i15.i) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  br i1 %cmp3.i, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #24
  %392 = or i16 %391, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %393 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %hw, align 8
  %add.ptr.i53.i16.i = getelementptr i8, ptr %394, i32 1346
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i16.i, i16 %392) #22, !srcloc !183
  br label %sw_enable.exit

if.else6.i:                                       ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #24
  %395 = and i16 %391, -8
  %396 = or i16 %395, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %397 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %hw, align 8
  %add.ptr.i53.i20.i = getelementptr i8, ptr %398, i32 1346
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i20.i, i16 %396) #22, !srcloc !183
  br label %sw_enable.exit

sw_enable.exit:                                   ; preds = %if.else6.i, %if.then5.i
  %.sink26.i = phi i32 [ 3, %if.else6.i ], [ 5, %if.then5.i ]
  %399 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i22.i = getelementptr %struct.ksz_switch, ptr %400, i32 0, i32 2, i32 2, i32 5
  %401 = ptrtoint ptr %stp_state.i22.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %.sink26.i, ptr %stp_state.i22.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !217
  tail call void @arm_heavy_mb() #22
  %402 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %hw, align 8
  %add.ptr.i69 = getelementptr i8, ptr %403, i32 1024
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i69, i16 256) #22, !srcloc !183
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mib_read_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %work, i32 -1540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  store i32 %0, ptr @next_jiffies, align 4
  %mib_port_cnt = getelementptr i8, ptr %work, i32 -620
  %1 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mib_port_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp75 = icmp sgt i32 %2, 0
  br i1 %cmp75, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %port_mib = getelementptr i8, ptr %work, i32 -1500
  %counter = getelementptr i8, ptr %work, i32 104
  %mib_cnt.i = getelementptr i8, ptr %work, i32 -624
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.ksz_port_mib], ptr %port_mib, i32 0, i32 %i.076
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx2 = getelementptr [3 x %struct.ksz_counter_info], ptr %counter, i32 0, i32 %i.076
  %read = getelementptr inbounds %struct.ksz_counter_info, ptr %arrayidx2, i32 0, i32 2
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %arrayidx.i = getelementptr %struct.ksz_hw, ptr %hw1, i32 0, i32 3, i32 %i.076
  %mib_start.i = getelementptr %struct.ksz_hw, ptr %hw1, i32 0, i32 3, i32 %i.076, i32 3
  %7 = ptrtoint ptr %mib_start.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mib_start.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp.i = icmp ult i8 %8, 32
  br i1 %cmp.i, label %while.condthread-pre-split.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

while.condthread-pre-split.i:                     ; preds = %if.then
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr.i = load i8, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.pr.i)
  %cmp31.i = icmp ult i8 %.pr.i, 32
  br i1 %cmp31.i, label %while.condthread-pre-split.i.while.body.i_crit_edge, label %while.condthread-pre-split.i.if.end.i_crit_edge

while.condthread-pre-split.i.if.end.i_crit_edge:  ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

while.condthread-pre-split.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.condthread-pre-split.i.while.body.i_crit_edge
  %10 = phi i8 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %.pr.i, %while.condthread-pre-split.i.while.body.i_crit_edge ]
  %conv2.i = zext i8 %10 to i32
  %conv6.i = zext i8 %10 to i16
  %arrayidx8.i = getelementptr %struct.ksz_hw, ptr %hw1, i32 0, i32 3, i32 %i.076, i32 4, i32 %conv2.i
  tail call fastcc void @port_r_mib_cnt(ptr noundef %hw1, i32 noundef %i.076, i16 noundef zeroext %conv6.i, ptr noundef %arrayidx8.i) #22
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 8
  %inc.i = add i8 %12, 1
  store i8 %inc.i, ptr %arrayidx.i, align 8
  %cmp3.i = icmp ult i8 %inc.i, 32
  br i1 %cmp3.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %while.condthread-pre-split.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %13 = ptrtoint ptr %mib_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mib_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp10.i = icmp sgt i32 %14, 32
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i.port_r_cnt.exit_crit_edge

if.end.i.port_r_cnt.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %port_r_cnt.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %dropped.i = getelementptr %struct.ksz_hw, ptr %hw1, i32 0, i32 3, i32 %i.076, i32 5
  %arrayidx14.i = getelementptr %struct.ksz_hw, ptr %hw1, i32 0, i32 3, i32 %i.076, i32 4, i32 32
  tail call fastcc void @port_r_mib_pkt(ptr noundef %hw1, i32 noundef %i.076, ptr noundef %dropped.i, ptr noundef %arrayidx14.i) #22
  br label %port_r_cnt.exit

port_r_cnt.exit:                                  ; preds = %if.then12.i, %if.end.i.port_r_cnt.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i, align 8
  %arrayidx8 = getelementptr [3 x %struct.ksz_counter_info], ptr %counter, i32 0, i32 %i.076
  %read9 = getelementptr inbounds %struct.ksz_counter_info, ptr %arrayidx8, i32 0, i32 2
  %16 = ptrtoint ptr %read9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %read9, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp12 = icmp eq i8 %18, 0
  br i1 %cmp12, label %if.then14, label %port_r_cnt.exit.for.inc_crit_edge

port_r_cnt.exit.for.inc_crit_edge:                ; preds = %port_r_cnt.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then14:                                        ; preds = %port_r_cnt.exit
  call void @__sanitizer_cov_trace_pc() #24
  %19 = ptrtoint ptr %read9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %read9, align 4
  tail call void @__wake_up(ptr noundef %arrayidx8, i32 noundef 1, i32 noundef 1, ptr noundef null) #22
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.ksz_counter_info, ptr %arrayidx2, i32 0, i32 1
  %21 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %time, align 4
  %sub = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp24 = icmp sgt i32 %sub, -1
  br i1 %cmp24, label %if.then26, label %if.else39

if.then26:                                        ; preds = %if.else
  %state = getelementptr inbounds %struct.ksz_port_mib, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp28 = icmp eq i8 %24, 0
  br i1 %cmp28, label %if.then30, label %if.then26.if.end34_crit_edge

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end34

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #24
  %25 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %read, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then26.if.end34_crit_edge
  %26 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mib_port_cnt, align 8
  %mul = mul i32 %27, 100
  %28 = load i32, ptr @next_jiffies, align 4
  %add = add i32 %28, %mul
  store i32 %add, ptr @next_jiffies, align 4
  %29 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %time, align 4
  br label %for.inc

if.else39:                                        ; preds = %if.else
  %link_down = getelementptr inbounds %struct.ksz_port_mib, ptr %arrayidx, i32 0, i32 1
  %30 = ptrtoint ptr %link_down to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %link_down, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool40.not = icmp eq i8 %31, 0
  br i1 %tobool40.not, label %if.else39.for.inc_crit_edge, label %if.then41

if.else39.for.inc_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then41:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #24
  %32 = ptrtoint ptr %link_down to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %link_down, align 1
  %33 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %read, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %if.else39.for.inc_crit_edge, %if.end34, %if.then14, %port_r_cnt.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %34 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mib_port_cnt, align 8
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mib_monitor(ptr noundef %t) #2 align 64 {
entry:
  %data.i17 = alloca i16, align 2
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %mib_read = getelementptr i8, ptr %t, i32 -44
  tail call void @mib_read_work(ptr noundef %mib_read)
  %pme_wait = getelementptr i8, ptr %t, i32 304
  %0 = ptrtoint ptr %pme_wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pme_wait, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then2, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.then2:                                         ; preds = %if.then
  %pdev1.i = getelementptr i8, ptr %t, i32 -1588
  %3 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #22
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %data.i, align 2, !annotation !218
  %pm_cap.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 32
  %6 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_cap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then2.hw_clr_wol_pme_status.exit_crit_edge, label %if.end.i

if.then2.hw_clr_wol_pme_status.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_clr_wol_pme_status.exit

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #24
  %conv.i = zext i8 %7 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %data.i) #22
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data.i, align 2
  %10 = or i16 %9, -32768
  store i16 %10, ptr %data.i, align 2
  %11 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_cap.i, align 1
  %conv6.i = zext i8 %12 to i32
  %add7.i = add nuw nsw i32 %conv6.i, 4
  %call8.i = call i32 @pci_write_config_word(ptr noundef %4, i32 noundef %add7.i, i16 noundef zeroext %10) #22
  br label %hw_clr_wol_pme_status.exit

hw_clr_wol_pme_status.exit:                       ; preds = %if.end.i, %if.then2.hw_clr_wol_pme_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #22
  %13 = ptrtoint ptr %pme_wait to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pme_wait, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %pdev1.i18 = getelementptr i8, ptr %t, i32 -1588
  %14 = ptrtoint ptr %pdev1.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev1.i18, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i17) #22
  %16 = ptrtoint ptr %data.i17 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %data.i17, align 2, !annotation !218
  %pm_cap.i19 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 32
  %17 = ptrtoint ptr %pm_cap.i19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pm_cap.i19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i20 = icmp eq i8 %18, 0
  br i1 %tobool.not.i20, label %hw_chk_wol_pme_status.exit.thread, label %hw_chk_wol_pme_status.exit

hw_chk_wol_pme_status.exit.thread:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i17) #22
  br label %if.end9

hw_chk_wol_pme_status.exit:                       ; preds = %if.else
  %conv.i21 = zext i8 %18 to i32
  %add.i22 = add nuw nsw i32 %conv.i21, 4
  %call.i23 = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef %add.i22, ptr noundef nonnull %data.i17) #22
  %19 = ptrtoint ptr %data.i17 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data.i17, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i17) #22
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool5.not = icmp sgt i16 %20, -1
  br i1 %tobool5.not, label %hw_chk_wol_pme_status.exit.if.end9_crit_edge, label %if.then6

hw_chk_wol_pme_status.exit.if.end9_crit_edge:     ; preds = %hw_chk_wol_pme_status.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.then6:                                         ; preds = %hw_chk_wol_pme_status.exit
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 200
  %22 = ptrtoint ptr %pme_wait to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %pme_wait, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %hw_chk_wol_pme_status.exit.if.end9_crit_edge, %hw_chk_wol_pme_status.exit.thread, %hw_clr_wol_pme_status.exit, %if.then.if.end9_crit_edge
  %cnt.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 1
  %23 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cnt.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %cnt.i, align 4
  %max.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 2
  %25 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp sgt i32 %26, 0
  br i1 %cmp.i, label %if.then.i, label %if.else7.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %26)
  %cmp3.i = icmp slt i32 %inc.i, %26
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %period.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 3
  %28 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %period.i, align 4
  %add.i25 = add i32 %29, %27
  %expires.i = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %30 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i25, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %t) #22
  br label %ksz_update_timer.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %31 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %max.i, align 4
  br label %ksz_update_timer.exit

if.else7.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9.i = icmp slt i32 %26, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.else7.i.ksz_update_timer.exit_crit_edge

if.else7.i.ksz_update_timer.exit_crit_edge:       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_update_timer.exit

if.then10.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %period11.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 3
  %33 = ptrtoint ptr %period11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %period11.i, align 4
  %add12.i = add i32 %34, %32
  %expires14.i = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %35 = ptrtoint ptr %expires14.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add12.i, ptr %expires14.i, align 4
  call void @add_timer(ptr noundef %t) #22
  br label %ksz_update_timer.exit

ksz_update_timer.exit:                            ; preds = %if.then10.i, %if.else7.i.ksz_update_timer.exit_crit_edge, %if.else.i, %if.then4.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_set_power_saving(ptr nocapture noundef readonly %port, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %port_cnt = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %first_port = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not.i = icmp eq i32 %enable, 0
  %masksel = select i1 %tobool.not.i, i16 0, i16 2048
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.09 = phi i32 [ %5, %for.body.lr.ph ], [ %inc2, %for.body.for.body_crit_edge ]
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul.i = shl i32 %p.09, 5
  %add1.i = add i32 %mul.i, 1298
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add1.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %9 = and i16 %8, -9
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %data.0.i = or i16 %10, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %11 = tail call i16 @llvm.bswap.i16(i16 %data.0.i) #22
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %add.ptr9.i = getelementptr i8, ptr %13, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 %11) #22, !srcloc !183
  %inc = add nuw nsw i32 %i.08, 1
  %inc2 = add i32 %p.09, 1
  %14 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_cnt, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netdev_free(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %0 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %watchdog_timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @unregister_netdev(ptr noundef %dev) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @free_netdev(ptr noundef %dev) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksz_free_mem(ptr nocapture noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_desc_info = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15
  %alloc.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 5
  %0 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.i = icmp sgt i32 %1, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %entry.ksz_free_buffers.exit_crit_edge

entry.ksz_free_buffers.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_free_buffers.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %2 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_desc_info, align 4
  %pdev.i.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %desc.08.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %dma_buf1.i = getelementptr inbounds %struct.ksz_desc, ptr %desc.08.i, i32 0, i32 2
  %4 = ptrtoint ptr %dma_buf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_buf1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %6 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dma.i.i = getelementptr inbounds %struct.ksz_desc, ptr %desc.08.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.ksz_desc, ptr %desc.08.i, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #22
  %12 = ptrtoint ptr %dma_buf1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_buf1.i, align 4
  tail call void @consume_skb(ptr noundef %13) #22
  %14 = ptrtoint ptr %dma_buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma_buf1.i, align 4
  %15 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dma.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ksz_desc, ptr %desc.08.i, i32 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %16 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alloc.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.ksz_free_buffers.exit_crit_edge

if.end.i.ksz_free_buffers.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_free_buffers.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

ksz_free_buffers.exit:                            ; preds = %if.end.i.ksz_free_buffers.exit_crit_edge, %entry.ksz_free_buffers.exit_crit_edge
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14
  %alloc.i6 = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 5
  %18 = ptrtoint ptr %alloc.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alloc.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.i7 = icmp sgt i32 %19, 0
  br i1 %cmp6.i7, label %for.body.lr.ph.i9, label %ksz_free_buffers.exit.ksz_free_buffers.exit23_crit_edge

ksz_free_buffers.exit.ksz_free_buffers.exit23_crit_edge: ; preds = %ksz_free_buffers.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_free_buffers.exit23

for.body.lr.ph.i9:                                ; preds = %ksz_free_buffers.exit
  %20 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_desc_info, align 4
  %pdev.i.i8 = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 1
  br label %for.body.i14

for.body.i14:                                     ; preds = %if.end.i22.for.body.i14_crit_edge, %for.body.lr.ph.i9
  %desc.08.i10 = phi ptr [ %21, %for.body.lr.ph.i9 ], [ %incdec.ptr.i19, %if.end.i22.for.body.i14_crit_edge ]
  %i.07.i11 = phi i32 [ 0, %for.body.lr.ph.i9 ], [ %inc.i20, %if.end.i22.for.body.i14_crit_edge ]
  %dma_buf1.i12 = getelementptr inbounds %struct.ksz_desc, ptr %desc.08.i10, i32 0, i32 2
  %22 = ptrtoint ptr %dma_buf1.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_buf1.i12, align 4
  %tobool.not.i13 = icmp eq ptr %23, null
  br i1 %tobool.not.i13, label %for.body.i14.if.end.i22_crit_edge, label %if.then.i18

for.body.i14.if.end.i22_crit_edge:                ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i22

if.then.i18:                                      ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #24
  %24 = ptrtoint ptr %pdev.i.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i.i8, align 4
  %dev.i.i15 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %dma.i.i16 = getelementptr inbounds %struct.ksz_desc, ptr %desc.08.i10, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %dma.i.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma.i.i16, align 4
  %len.i.i17 = getelementptr inbounds %struct.ksz_desc, ptr %desc.08.i10, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %len.i.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i17, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i15, i32 noundef %27, i32 noundef %29, i32 noundef 2, i32 noundef 0) #22
  %30 = ptrtoint ptr %dma_buf1.i12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_buf1.i12, align 4
  tail call void @consume_skb(ptr noundef %31) #22
  %32 = ptrtoint ptr %dma_buf1.i12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dma_buf1.i12, align 4
  %33 = ptrtoint ptr %dma.i.i16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dma.i.i16, align 4
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i18, %for.body.i14.if.end.i22_crit_edge
  %incdec.ptr.i19 = getelementptr %struct.ksz_desc, ptr %desc.08.i10, i32 1
  %inc.i20 = add nuw nsw i32 %i.07.i11, 1
  %34 = ptrtoint ptr %alloc.i6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %alloc.i6, align 4
  %cmp.i21 = icmp slt i32 %inc.i20, %35
  br i1 %cmp.i21, label %if.end.i22.for.body.i14_crit_edge, label %if.end.i22.ksz_free_buffers.exit23_crit_edge

if.end.i22.ksz_free_buffers.exit23_crit_edge:     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_free_buffers.exit23

if.end.i22.for.body.i14_crit_edge:                ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i14

ksz_free_buffers.exit23:                          ; preds = %if.end.i22.ksz_free_buffers.exit23_crit_edge, %ksz_free_buffers.exit.ksz_free_buffers.exit23_crit_edge
  %ring_virt.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 2
  %36 = ptrtoint ptr %ring_virt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ring_virt.i, align 8
  %ring_virt2.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 2
  %37 = ptrtoint ptr %ring_virt2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ring_virt2.i, align 8
  %ring_phys.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 3
  %38 = ptrtoint ptr %ring_phys.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ring_phys.i, align 4
  %ring_phys5.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 15, i32 3
  %39 = ptrtoint ptr %ring_phys5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ring_phys5.i, align 4
  %alloc_virt.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %alloc_virt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %alloc_virt.i, align 4
  %tobool.not.i24 = icmp eq ptr %41, null
  br i1 %tobool.not.i24, label %ksz_free_buffers.exit23.ksz_free_desc.exit_crit_edge, label %if.then.i25

ksz_free_buffers.exit23.ksz_free_desc.exit_crit_edge: ; preds = %ksz_free_buffers.exit23
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_free_desc.exit

if.then.i25:                                      ; preds = %ksz_free_buffers.exit23
  call void @__sanitizer_cov_trace_pc() #24
  %desc_pool.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3
  %pdev.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 1
  %42 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %alloc_size.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %alloc_size.i, align 4
  %46 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %desc_pool.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %45, ptr noundef nonnull %41, i32 noundef %47, i32 noundef 0) #22
  br label %ksz_free_desc.exit

ksz_free_desc.exit:                               ; preds = %if.then.i25, %ksz_free_buffers.exit23.ksz_free_desc.exit_crit_edge
  %alloc_size11.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %alloc_size11.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %alloc_size11.i, align 4
  %49 = ptrtoint ptr %alloc_virt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %alloc_virt.i, align 4
  %50 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_desc_info, align 8
  tail call void @kfree(ptr noundef %51) #22
  %52 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rx_desc_info, align 8
  %53 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_desc_info, align 8
  tail call void @kfree(ptr noundef %54) #22
  %55 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %tx_desc_info, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_set_addr(ptr nocapture noundef readonly %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !219
  tail call void @arm_heavy_mb() #22
  %arrayidx = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %1) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !219
  tail call void @arm_heavy_mb() #22
  %arrayidx.1 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 4
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr1.1 = getelementptr i8, ptr %7, i32 513
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.1, i8 %5) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !219
  tail call void @arm_heavy_mb() #22
  %arrayidx.2 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr1.2 = getelementptr i8, ptr %11, i32 514
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.2, i8 %9) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !219
  tail call void @arm_heavy_mb() #22
  %arrayidx.3 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr1.3 = getelementptr i8, ptr %15, i32 515
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.3, i8 %13) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !219
  tail call void @arm_heavy_mb() #22
  %arrayidx.4 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr1.4 = getelementptr i8, ptr %19, i32 516
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.4, i8 %17) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !219
  tail call void @arm_heavy_mb() #22
  %arrayidx.5 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 0
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5, align 1
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr1.5 = getelementptr i8, ptr %23, i32 517
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.5, i8 %21) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !220
  tail call void @arm_heavy_mb() #22
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 1137
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %25) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !221
  tail call void @arm_heavy_mb() #22
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.4, align 1
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr7.i = getelementptr i8, ptr %31, i32 1136
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %29) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !220
  tail call void @arm_heavy_mb() #22
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.3, align 1
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr1.1.i = getelementptr i8, ptr %35, i32 1139
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.1.i, i8 %33) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !221
  tail call void @arm_heavy_mb() #22
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.2, align 1
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 8
  %add.ptr8.1.i = getelementptr i8, ptr %39, i32 1138
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.1.i, i8 %37) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !220
  tail call void @arm_heavy_mb() #22
  %40 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.1, align 1
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 8
  %add.ptr1.2.i = getelementptr i8, ptr %43, i32 1141
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.2.i, i8 %41) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !221
  tail call void @arm_heavy_mb() #22
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 8
  %add.ptr8.2.i = getelementptr i8, ptr %47, i32 1140
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.2.i, i8 %45) #22, !srcloc !216
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @eeprom_read(ptr noundef %hw, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 530
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %3 = or i16 %2, 4352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr5.i = getelementptr i8, ptr %5, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %3) #22, !srcloc !183
  tail call fastcc void @spi_reg(ptr noundef %hw, i8 noundef zeroext 2, i8 noundef zeroext %reg)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %temp.013.i = phi i16 [ 0, %entry ], [ %conv2.i, %for.body.i.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ 15, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 530
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %9 = or i16 %8, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %11, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i, i16 %9) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 858992) #22
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %14, i32 530
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i8.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %16 = and i16 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  %shl.i = shl nuw i32 1, %i.012.i
  %17 = trunc i32 %shl.i to i16
  %18 = select i1 %tobool.not.i, i16 0, i16 %17
  %conv2.i = or i16 %18, %temp.013.i
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %20, i32 530
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %22 = and i16 %21, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %add.ptr5.i10.i = getelementptr i8, ptr %24, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i10.i, i16 %22) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 858992) #22
  %dec.i = add nsw i32 %i.012.i, -1
  %cmp.not.i = icmp eq i32 %i.012.i, 0
  br i1 %cmp.not.i, label %spi_r.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

spi_r.exit:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %add.ptr.i4 = getelementptr i8, ptr %27, i32 530
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %29 = and i16 %28, -4353
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr5.i5 = getelementptr i8, ptr %31, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i5, i16 %29) #22, !srcloc !183
  ret i16 %conv2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_reg(ptr noundef readonly %hw, i8 noundef zeroext %data, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 530
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %3 = or i16 %2, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr5.i = getelementptr i8, ptr %5, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %3) #22, !srcloc !183
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 530
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %9 = or i16 %8, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %11, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i, i16 %9) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 858992) #22
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %14, i32 530
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %16 = and i16 %15, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr5.i3.i = getelementptr i8, ptr %18, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i3.i, i16 %16) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 858992) #22
  %conv = zext i8 %data to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %add.ptr.i30 = getelementptr i8, ptr %21, i32 530
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %23 = or i16 %22, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add.ptr5.i29 = getelementptr i8, ptr %25, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i29, i16 %23) #22, !srcloc !183
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %26 = and i16 %22, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %add.ptr5.i31 = getelementptr i8, ptr %28, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i31, i16 %26) #22, !srcloc !183
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %add.ptr.i.i32 = getelementptr i8, ptr %30, i32 530
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i32) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %32 = or i16 %31, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr5.i.i33 = getelementptr i8, ptr %34, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i33, i16 %32) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 858992) #22
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 8
  %add.ptr.i2.i34 = getelementptr i8, ptr %37, i32 530
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i34) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %39 = and i16 %38, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %add.ptr5.i3.i35 = getelementptr i8, ptr %41, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i3.i35, i16 %39) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 858992) #22
  %and.1 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 8
  %add.ptr.i30.1 = getelementptr i8, ptr %44, i32 530
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30.1) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  br i1 %tobool.not.1, label %cond.false.1, label %cond.true.1

cond.true.1:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  %46 = or i16 %45, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 8
  %add.ptr5.i29.1 = getelementptr i8, ptr %48, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i29.1, i16 %46) #22, !srcloc !183
  br label %cond.end.1

cond.false.1:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  %49 = and i16 %45, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 8
  %add.ptr5.i31.1 = getelementptr i8, ptr %51, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i31.1, i16 %49) #22, !srcloc !183
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.false.1, %cond.true.1
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 8
  %add.ptr.i.i32.1 = getelementptr i8, ptr %53, i32 530
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i32.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %55 = or i16 %54, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 8
  %add.ptr5.i.i33.1 = getelementptr i8, ptr %57, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i33.1, i16 %55) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 858992) #22
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 8
  %add.ptr.i2.i34.1 = getelementptr i8, ptr %60, i32 530
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i34.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %62 = and i16 %61, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %63 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw, align 8
  %add.ptr5.i3.i35.1 = getelementptr i8, ptr %64, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i3.i35.1, i16 %62) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 858992) #22
  %conv5 = zext i8 %reg to i32
  br label %for.body4

for.body4:                                        ; preds = %cond.end11.for.body4_crit_edge, %cond.end.1
  %i.147 = phi i32 [ 5, %cond.end.1 ], [ %dec13, %cond.end11.for.body4_crit_edge ]
  %shl6 = shl nuw i32 1, %i.147
  %and7 = and i32 %shl6, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 8
  %add.ptr.i39 = getelementptr i8, ptr %67, i32 530
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i39) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  br i1 %tobool8.not, label %cond.false10, label %cond.true9

cond.true9:                                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #24
  %69 = or i16 %68, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 8
  %add.ptr5.i38 = getelementptr i8, ptr %71, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i38, i16 %69) #22, !srcloc !183
  br label %cond.end11

cond.false10:                                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #24
  %72 = and i16 %68, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 8
  %add.ptr5.i41 = getelementptr i8, ptr %74, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i41, i16 %72) #22, !srcloc !183
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 8
  %add.ptr.i.i42 = getelementptr i8, ptr %76, i32 530
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i42) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %78 = or i16 %77, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 8
  %add.ptr5.i.i43 = getelementptr i8, ptr %80, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i43, i16 %78) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 858992) #22
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 8
  %add.ptr.i2.i44 = getelementptr i8, ptr %83, i32 530
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i44) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %85 = and i16 %84, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 8
  %add.ptr5.i3.i45 = getelementptr i8, ptr %87, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i3.i45, i16 %85) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 858992) #22
  %dec13 = add nsw i32 %i.147, -1
  %cmp2.not = icmp eq i32 %i.147, 0
  br i1 %cmp2.not, label %for.end14, label %cond.end11.for.body4_crit_edge

cond.end11.for.body4_crit_edge:                   ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body4

for.end14:                                        ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sw_w_sta_mac_table(ptr nocapture noundef %hw, i16 noundef zeroext %addr, ptr nocapture noundef readonly %mac_addr, i8 noundef zeroext %ports, i32 noundef %override, i32 noundef %valid, i32 noundef %use_fid, i8 noundef zeroext %fid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %mac_addr, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx4 = getelementptr i8, ptr %mac_addr, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %arrayidx8 = getelementptr i8, ptr %mac_addr, i32 5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %8 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_addr, align 1
  %conv12 = zext i8 %9 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %arrayidx14 = getelementptr i8, ptr %mac_addr, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %or16 = or i32 %shl13, %conv15
  %conv17 = zext i8 %ports to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %or19 = or i32 %or16, %shl18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %override)
  %tobool.not = icmp eq i32 %override, 0
  %or20 = or i32 %or19, 1048576
  %spec.select = select i1 %tobool.not, i32 %or19, i32 %or20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_fid)
  %tobool21.not = icmp eq i32 %use_fid, 0
  %conv24 = zext i8 %fid to i32
  %shl25 = shl nuw nsw i32 %conv24, 22
  %or23 = or i32 %shl25, %spec.select
  %or26 = or i32 %or23, 2097152
  %data_hi.1 = select i1 %tobool21.not, i32 %spec.select, i32 %or26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid)
  %tobool28.not = icmp eq i32 %valid, 0
  %or30 = or i32 %data_hi.1, 524288
  %data_hi.2 = select i1 %tobool28.not, i32 %data_hi.1, i32 %or30
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %conv5 = zext i8 %5 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  %intr_blocked.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 13
  %12 = ptrtoint ptr %intr_blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_blocked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.hw_block_intr.exit.i_crit_edge

entry.hw_block_intr.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_block_intr.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %intr_mask.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %14 = ptrtoint ptr %intr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr_mask.i.i.i, align 4
  %16 = ptrtoint ptr %intr_blocked.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %intr_blocked.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #22, !srcloc !205
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %20, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #22, !srcloc !207
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %intr_set.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  %23 = ptrtoint ptr %intr_set.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %intr_set.i.i.i, align 8
  %24 = ptrtoint ptr %intr_blocked.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intr_blocked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %phi.cmp.i = icmp eq i32 %25, 0
  br label %hw_block_intr.exit.i

hw_block_intr.exit.i:                             ; preds = %if.then.i.i, %entry.hw_block_intr.exit.i_crit_edge
  %interrupt.0.i.i = phi i1 [ true, %entry.hw_block_intr.exit.i_crit_edge ], [ %phi.cmp.i, %if.then.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !227
  tail call void @arm_heavy_mb() #22
  %26 = tail call i32 @llvm.bswap.i32(i32 %data_hi.2) #22
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 1188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !228
  tail call void @arm_heavy_mb() #22
  %29 = tail call i32 @llvm.bswap.i32(i32 %or10) #22
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr7.i = getelementptr i8, ptr %31, i32 1192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %29) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !229
  tail call void @arm_heavy_mb() #22
  %32 = tail call i16 @llvm.bswap.i16(i16 %addr) #22
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr12.i = getelementptr i8, ptr %34, i32 1184
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i, i16 %32) #22, !srcloc !183
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 8
  %add.ptr15.i = getelementptr i8, ptr %36, i32 1184
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr15.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !230
  br i1 %interrupt.0.i.i, label %hw_block_intr.exit.i.sw_w_table_64.exit_crit_edge, label %if.then.i3.i

hw_block_intr.exit.i.sw_w_table_64.exit_crit_edge: ; preds = %hw_block_intr.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw_w_table_64.exit

if.then.i3.i:                                     ; preds = %hw_block_intr.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  %38 = ptrtoint ptr %intr_blocked.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %intr_blocked.i.i, align 4
  %intr_mask.i.i2.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %39 = ptrtoint ptr %intr_mask.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %intr_mask.i.i2.i, align 4
  %intr_set.i.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  %41 = ptrtoint ptr %intr_set.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %intr_set.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %42 = tail call i32 @llvm.bswap.i32(i32 %40) #22
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %44, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %42) #22, !srcloc !205
  br label %sw_w_table_64.exit

sw_w_table_64.exit:                               ; preds = %if.then.i3.i, %hw_block_intr.exit.i.sw_w_table_64.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_r_mib_cnt(ptr nocapture noundef %hw, i32 noundef %port, i16 noundef zeroext %addr, ptr nocapture noundef %cnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %port.tr = trunc i32 %port to i16
  %0 = shl i16 %port.tr, 5
  %conv1 = add i16 %0, %addr
  %intr_blocked.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 13
  %1 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %intr_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.hw_block_intr.exit_crit_edge

entry.hw_block_intr.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_block_intr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %intr_mask.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intr_mask.i.i, align 4
  %5 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %intr_blocked.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #22, !srcloc !205
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #22, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %intr_set.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  %12 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %intr_set.i.i, align 8
  %13 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_blocked.i, align 4
  br label %hw_block_intr.exit

hw_block_intr.exit:                               ; preds = %if.then.i, %entry.hw_block_intr.exit_crit_edge
  %interrupt.0.i = phi i32 [ 0, %entry.hw_block_intr.exit_crit_edge ], [ %14, %if.then.i ]
  %15 = or i16 %conv1, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !231
  tail call void @arm_heavy_mb() #22
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 1184
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %16) #22, !srcloc !183
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr6 = getelementptr i8, ptr %20, i32 1184
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !232
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %timeout.039, -1
  %cmp = icmp ugt i32 %timeout.039, 1
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %hw_block_intr.exit
  %timeout.039 = phi i32 [ 100, %hw_block_intr.exit ], [ %dec, %for.cond.for.body_crit_edge ]
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr15 = getelementptr i8, ptr %23, i32 1192
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #22, !srcloc !207
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !233
  %and = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool20.not = icmp sgt i32 %25, -1
  br i1 %tobool20.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %26 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cnt, align 8
  %add22 = add i64 %27, 1073741824
  store i64 %add22, ptr %cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %and23 = and i32 %25, 1073741823
  %conv24 = zext i32 %and23 to i64
  %28 = ptrtoint ptr %cnt to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cnt, align 8
  %add25 = add i64 %29, %conv24
  store i64 %add25, ptr %cnt, align 8
  br label %for.end

for.end:                                          ; preds = %if.end, %for.cond.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interrupt.0.i)
  %tobool.not.i36 = icmp eq i32 %interrupt.0.i, 0
  br i1 %tobool.not.i36, label %for.end.hw_restore_intr.exit_crit_edge, label %if.then.i38

for.end.hw_restore_intr.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_restore_intr.exit

if.then.i38:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  %30 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %intr_blocked.i, align 4
  %intr_mask.i.i37 = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %31 = ptrtoint ptr %intr_mask.i.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intr_mask.i.i37, align 4
  %intr_set.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  %33 = ptrtoint ptr %intr_set.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %intr_set.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #22
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %34) #22, !srcloc !205
  br label %hw_restore_intr.exit

hw_restore_intr.exit:                             ; preds = %if.then.i38, %for.end.hw_restore_intr.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_r_mib_pkt(ptr nocapture noundef %hw, i32 noundef %port, ptr nocapture noundef %last, ptr nocapture noundef %cnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %port, 259
  %intr_blocked.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 13
  %intr_mask.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %intr_set.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  %add29 = add i32 %port, 256
  br label %do.body

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %entry
  %index.0 = phi i32 [ %add, %entry ], [ %sub27, %if.end25.do.body_crit_edge ]
  %cnt.addr.0 = phi ptr [ %cnt, %entry ], [ %incdec.ptr26, %if.end25.do.body_crit_edge ]
  %last.addr.0 = phi ptr [ %last, %entry ], [ %incdec.ptr, %if.end25.do.body_crit_edge ]
  %0 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body.hw_block_intr.exit_crit_edge

do.body.hw_block_intr.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_block_intr.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %2 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_mask.i.i, align 4
  %4 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %intr_blocked.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #22, !srcloc !205
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #22, !srcloc !207
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %11 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %intr_set.i.i, align 8
  %12 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_blocked.i, align 4
  br label %hw_block_intr.exit

hw_block_intr.exit:                               ; preds = %if.then.i, %do.body.hw_block_intr.exit_crit_edge
  %interrupt.0.i = phi i32 [ 0, %do.body.hw_block_intr.exit_crit_edge ], [ %13, %if.then.i ]
  %14 = trunc i32 %index.0 to i16
  %conv2 = or i16 %14, 7168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !234
  tail call void @arm_heavy_mb() #22
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 1184
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %15) #22, !srcloc !183
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr6 = getelementptr i8, ptr %19, i32 1184
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !235
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr14 = getelementptr i8, ptr %22, i32 1192
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #22, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interrupt.0.i)
  %tobool.not.i52 = icmp eq i32 %interrupt.0.i, 0
  br i1 %tobool.not.i52, label %hw_block_intr.exit.hw_restore_intr.exit_crit_edge, label %if.then.i54

hw_block_intr.exit.hw_restore_intr.exit_crit_edge: ; preds = %hw_block_intr.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_restore_intr.exit

if.then.i54:                                      ; preds = %hw_block_intr.exit
  call void @__sanitizer_cov_trace_pc() #24
  %24 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %intr_blocked.i, align 4
  %25 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_mask.i.i, align 4
  %27 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %intr_set.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %28 = tail call i32 @llvm.bswap.i32(i32 %26) #22
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %28) #22, !srcloc !205
  br label %hw_restore_intr.exit

hw_restore_intr.exit:                             ; preds = %if.then.i54, %hw_block_intr.exit.hw_restore_intr.exit_crit_edge
  %31 = and i32 %23, -65536
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %last.addr.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last.addr.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not = icmp eq i32 %32, %34
  br i1 %cmp.not, label %hw_restore_intr.exit.if.end25_crit_edge, label %if.then

hw_restore_intr.exit.if.end25_crit_edge:          ; preds = %hw_restore_intr.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end25

if.then:                                          ; preds = %hw_restore_intr.exit
  call void @__sanitizer_cov_trace_pc() #24
  %35 = ptrtoint ptr %last.addr.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %last.addr.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp19 = icmp ult i32 %32, %34
  %add22 = or i32 %32, 65536
  %spec.select = select i1 %cmp19, i32 %add22, i32 %32
  %sub = sub i32 %spec.select, %34
  %conv23 = zext i32 %sub to i64
  %36 = ptrtoint ptr %cnt.addr.0 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cnt.addr.0, align 8
  %add24 = add i64 %37, %conv23
  store i64 %add24, ptr %cnt.addr.0, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then, %hw_restore_intr.exit.if.end25_crit_edge
  %incdec.ptr = getelementptr i32, ptr %last.addr.0, i32 1
  %incdec.ptr26 = getelementptr i64, ptr %cnt.addr.0, i32 1
  %sub27 = add i32 %index.0, -3
  %cmp30.not = icmp slt i32 %sub27, %add29
  br i1 %cmp30.not, label %do.end32, label %if.end25.do.body_crit_edge

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_init(ptr noundef %dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %monitor_timer_info = getelementptr i8, ptr %dev, i32 2368
  %max.i = getelementptr i8, ptr %dev, i32 2420
  %0 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max.i, align 4
  %period1.i = getelementptr i8, ptr %dev, i32 2424
  %1 = ptrtoint ptr %period1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 50, ptr %period1.i, align 4
  tail call void @init_timer_key(ptr noundef %monitor_timer_info, ptr noundef nonnull @dev_monitor, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @ksz_init_timer.__key) #22
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50, ptr %watchdog_timeo, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %3 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1099511627795, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features, align 16
  %or3 = or i64 %5, 1099511627795
  store i64 %or3, ptr %features, align 16
  %proc_sem = getelementptr i8, ptr %dev, i32 2428
  %wait_list1.i = getelementptr i8, ptr %dev, i32 2476
  %6 = ptrtoint ptr %proc_sem to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %proc_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2432
  %7 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2436
  %8 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2440
  %9 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2444
  %10 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2456
  %11 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.27, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2460
  %12 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2461
  %13 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2462
  %14 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2472
  %15 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %16 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr i8, ptr %dev, i32 2480
  %17 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %mii_if = getelementptr i8, ptr %dev, i32 2488
  %phy_id_mask = getelementptr i8, ptr %dev, i32 2496
  %18 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %dev, i32 2500
  %19 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %reg_num_mask, align 4
  %dev6 = getelementptr i8, ptr %dev, i32 2508
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev6, align 4
  %mdio_read = getelementptr i8, ptr %dev, i32 2512
  %21 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %dev, i32 2516
  %22 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %first_port = getelementptr i8, ptr %dev, i32 2316
  %23 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_port, align 4
  %add = add i32 %24, 1
  %25 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %mii_if, align 8
  %26 = load i32, ptr @msg_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %26)
  %cmp1.i = icmp ugt i32 %26, 31
  br i1 %cmp1.i, label %entry.netif_msg_init.exit_crit_edge, label %if.end.i

entry.netif_msg_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2.i = icmp eq i32 %26, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %notmask.i = shl nsw i32 -1, %26
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %entry.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 7, %entry.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %dev, i32 2524
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_open(ptr noundef %dev) #2 align 64 {
entry:
  %data.i120 = alloca i16, align 2
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %port2 = getelementptr i8, ptr %dev, i32 2312
  %multicast = getelementptr i8, ptr %dev, i32 2532
  %2 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %multicast, align 4
  %promiscuous = getelementptr i8, ptr %dev, i32 2536
  %3 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %promiscuous, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %4 = call ptr @memset(ptr %stats, i32 0, i32 92)
  %counter = getelementptr i8, ptr %dev, i32 2328
  %5 = call ptr @memset(ptr %counter, i32 0, i32 32)
  %opened = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %1, align 8
  %irq.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @netdev_intr, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %rx_tasklet.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 15
  tail call void @tasklet_setup(ptr noundef %rx_tasklet.i, ptr noundef nonnull @rx_proc_task) #22
  %tx_tasklet.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 16
  tail call void @tasklet_setup(ptr noundef %tx_tasklet.i, ptr noundef nonnull @tx_proc_task) #22
  %promiscuous.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 24
  %11 = ptrtoint ptr %promiscuous.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %promiscuous.i, align 2
  %all_multi.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 25
  %12 = ptrtoint ptr %all_multi.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %all_multi.i, align 1
  %multi_list_size.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 28
  %13 = ptrtoint ptr %multi_list_size.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %multi_list_size.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !237
  tail call void @arm_heavy_mb() #22
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %15, i32 534
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26.i, i16 256) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !238
  tail call void @arm_heavy_mb() #22
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %27, i32 534
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i, i16 0) #22, !srcloc !183
  %ring_phys.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 3
  %28 = ptrtoint ptr %ring_phys.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_phys.i, align 4
  %ring_phys4.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 3
  %30 = ptrtoint ptr %ring_phys4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ring_phys4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !239
  tail call void @arm_heavy_mb() #22
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #22
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw1, align 8
  %add.ptr.i27.i = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %32) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !240
  tail call void @arm_heavy_mb() #22
  %35 = tail call i32 @llvm.bswap.i32(i32 %31) #22
  %36 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw1, align 8
  %add.ptr4.i28.i = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i28.i, i32 %35) #22, !srcloc !205
  tail call fastcc void @hw_set_addr(ptr noundef %hw1) #22
  %ksz_switch.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %ksz_switch.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ksz_switch.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end8.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end8.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %41, i32 1028
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i29.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !241
  %features.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %43 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %features.i.i, align 8
  %45 = and i16 %42, -1025
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #22
  %47 = trunc i32 %44 to i16
  %48 = lshr i16 %47, 2
  %49 = and i16 %48, 4
  %data.0.i.i = or i16 %49, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !242
  tail call void @arm_heavy_mb() #22
  %50 = tail call i16 @llvm.bswap.i16(i16 %data.0.i.i) #22
  %51 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw1, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %52, i32 1028
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i.i, i16 %50) #22, !srcloc !183
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.i.i, %if.end.i.if.end8.i.i_crit_edge
  %features9.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %53 = ptrtoint ptr %features9.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %features9.i.i, align 8
  %and10.i.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %rx_cfg15.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %55 = ptrtoint ptr %rx_cfg15.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_cfg15.i.i, align 8
  br i1 %tobool11.not.i.i, label %if.else14.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %or13.i.i = or i32 %56, 8
  %57 = ptrtoint ptr %rx_cfg15.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or13.i.i, ptr %rx_cfg15.i.i, align 8
  %dev_rcv.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %dev_rcv.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @dev_rcv_special, ptr %dev_rcv.i.i, align 4
  br label %prepare_hardware.exit

if.else14.i.i:                                    ; preds = %if.end8.i.i
  %and16.i.i = and i32 %56, -9
  %59 = ptrtoint ptr %rx_cfg15.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and16.i.i, ptr %rx_cfg15.i.i, align 8
  %dev_count.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %dev_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i.i = icmp sgt i32 %61, 1
  %dev_rcv19.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 6
  br i1 %cmp.i.i, label %if.then18.i.i, label %if.else20.i.i

if.then18.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %62 = ptrtoint ptr %dev_rcv19.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @port_rcv_packets, ptr %dev_rcv19.i.i, align 4
  br label %prepare_hardware.exit

if.else20.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %63 = ptrtoint ptr %dev_rcv19.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dev_rcv_packets, ptr %dev_rcv19.i.i, align 4
  br label %prepare_hardware.exit

prepare_hardware.exit:                            ; preds = %if.else20.i.i, %if.then18.i.i, %if.then12.i.i
  tail call fastcc void @ksz_init_rx_buffers(ptr noundef %1) #22
  %mib_port_cnt = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 8
  %64 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mib_port_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp159 = icmp sgt i32 %65, 0
  br i1 %cmp159, label %for.body.lr.ph, label %prepare_hardware.exit.for.end_crit_edge

prepare_hardware.exit.for.end_crit_edge:          ; preds = %prepare_hardware.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %prepare_hardware.exit
  %mib_cnt.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 7
  br label %for.body

for.body:                                         ; preds = %port_init_cnt.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %port_init_cnt.exit.for.body_crit_edge ]
  %66 = load i32, ptr @next_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %67)
  %cmp6 = icmp ult i32 %66, %67
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %68, 200
  br label %if.end9

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %add8 = add i32 %66, 100
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %storemerge = phi i32 [ %add8, %if.else ], [ %add, %if.then7 ]
  store i32 %storemerge, ptr @next_jiffies, align 4
  %time = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %i.0160, i32 1
  %69 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %storemerge, ptr %time, align 4
  %state = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %i.0160, i32 2
  %70 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %state, align 2
  %arrayidx.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %i.0160
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx.i, align 8
  %mib_start.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %i.0160, i32 3
  %72 = ptrtoint ptr %mib_start.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mib_start.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %73)
  %cmp.i = icmp ult i8 %73, 32
  br i1 %cmp.i, label %if.end9.do.body.i_crit_edge, label %if.end9.if.end.i117_crit_edge

if.end9.if.end.i117_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i117

if.end9.do.body.i_crit_edge:                      ; preds = %if.end9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end9.do.body.i_crit_edge
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i, align 8
  %conv3.i = zext i8 %75 to i16
  %idxprom.i = zext i8 %75 to i32
  %arrayidx5.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %i.0160, i32 4, i32 %idxprom.i
  tail call fastcc void @port_r_mib_cnt(ptr noundef %hw1, i32 noundef %i.0160, i16 noundef zeroext %conv3.i, ptr noundef %arrayidx5.i) #22
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i, align 8
  %inc.i = add i8 %77, 1
  store i8 %inc.i, ptr %arrayidx.i, align 8
  %cmp9.i = icmp ult i8 %inc.i, 32
  br i1 %cmp9.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.if.end.i117_crit_edge

do.body.i.if.end.i117_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i117

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body.i

if.end.i117:                                      ; preds = %do.body.i.if.end.i117_crit_edge, %if.end9.if.end.i117_crit_edge
  %78 = ptrtoint ptr %mib_cnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mib_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %79)
  %cmp11.i = icmp sgt i32 %79, 32
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i117.port_init_cnt.exit_crit_edge

if.end.i117.port_init_cnt.exit_crit_edge:         ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #24
  br label %port_init_cnt.exit

if.then13.i:                                      ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #24
  %dropped.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %i.0160, i32 5
  %arrayidx15.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %i.0160, i32 4, i32 32
  tail call fastcc void @port_r_mib_pkt(ptr noundef %hw1, i32 noundef %i.0160, ptr noundef %dropped.i, ptr noundef %arrayidx15.i) #22
  br label %port_init_cnt.exit

port_init_cnt.exit:                               ; preds = %if.then13.i, %if.end.i117.port_init_cnt.exit_crit_edge
  %counter17.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %i.0160, i32 4
  %80 = call ptr @memset(ptr %counter17.i, i32 0, i32 272)
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx.i, align 8
  %inc = add nuw nsw i32 %i.0160, 1
  %82 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mib_port_cnt, align 8
  %cmp = icmp slt i32 %inc, %83
  br i1 %cmp, label %port_init_cnt.exit.for.body_crit_edge, label %port_init_cnt.exit.for.end_crit_edge

port_init_cnt.exit.for.end_crit_edge:             ; preds = %port_init_cnt.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

port_init_cnt.exit.for.body_crit_edge:            ; preds = %port_init_cnt.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %port_init_cnt.exit.for.end_crit_edge, %prepare_hardware.exit.for.end_crit_edge
  %84 = ptrtoint ptr %ksz_switch.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ksz_switch.i.i, align 4
  %tobool12.not = icmp eq ptr %85, null
  br i1 %tobool12.not, label %if.else17, label %if.then13

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  %state16 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 2, i32 2
  %86 = ptrtoint ptr %state16 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %state16, align 2
  br label %if.end20

if.else17:                                        ; preds = %for.end
  tail call fastcc void @hw_set_wol_frame(ptr noundef %hw1, i32 noundef 2, i32 noundef 1, ptr noundef nonnull @hw_add_wol_bcast.mask, i32 noundef 6, ptr noundef nonnull @hw_add_wol_bcast.pattern) #22
  %pdev1.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 1
  %87 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #22
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %data.i, align 2, !annotation !218
  %pm_cap.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 32
  %90 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pm_cap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i118 = icmp eq i8 %91, 0
  br i1 %tobool.not.i118, label %if.else17.hw_cfg_wol_pme.exit_crit_edge, label %if.end.i119

if.else17.hw_cfg_wol_pme.exit_crit_edge:          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_cfg_wol_pme.exit

if.end.i119:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #24
  %conv.i = zext i8 %91 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %88, i32 noundef %add.i, ptr noundef nonnull %data.i) #22
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %data.i, align 2
  %94 = and i16 %93, -260
  store i16 %94, ptr %data.i, align 2
  %95 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %pm_cap.i, align 1
  %conv14.i = zext i8 %96 to i32
  %add15.i = add nuw nsw i32 %conv14.i, 4
  %call16.i = call i32 @pci_write_config_word(ptr noundef %88, i32 noundef %add15.i, i16 noundef zeroext %94) #22
  br label %hw_cfg_wol_pme.exit

hw_cfg_wol_pme.exit:                              ; preds = %if.end.i119, %if.else17.hw_cfg_wol_pme.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #22
  %97 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i120) #22
  %99 = ptrtoint ptr %data.i120 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -1, ptr %data.i120, align 2, !annotation !218
  %pm_cap.i122 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 32
  %100 = ptrtoint ptr %pm_cap.i122 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pm_cap.i122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i123 = icmp eq i8 %101, 0
  br i1 %tobool.not.i123, label %hw_cfg_wol_pme.exit.hw_clr_wol_pme_status.exit_crit_edge, label %if.end.i127

hw_cfg_wol_pme.exit.hw_clr_wol_pme_status.exit_crit_edge: ; preds = %hw_cfg_wol_pme.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_clr_wol_pme_status.exit

if.end.i127:                                      ; preds = %hw_cfg_wol_pme.exit
  call void @__sanitizer_cov_trace_pc() #24
  %conv.i124 = zext i8 %101 to i32
  %add.i125 = add nuw nsw i32 %conv.i124, 4
  %call.i126 = call i32 @pci_read_config_word(ptr noundef %98, i32 noundef %add.i125, ptr noundef nonnull %data.i120) #22
  %102 = ptrtoint ptr %data.i120 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %data.i120, align 2
  %104 = or i16 %103, -32768
  store i16 %104, ptr %data.i120, align 2
  %105 = ptrtoint ptr %pm_cap.i122 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %pm_cap.i122, align 1
  %conv6.i = zext i8 %106 to i32
  %add7.i = add nuw nsw i32 %conv6.i, 4
  %call8.i = call i32 @pci_write_config_word(ptr noundef %98, i32 noundef %add7.i, i16 noundef zeroext %104) #22
  br label %hw_clr_wol_pme_status.exit

hw_clr_wol_pme_status.exit:                       ; preds = %if.end.i127, %hw_cfg_wol_pme.exit.hw_clr_wol_pme_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i120) #22
  br label %if.end20

if.end20:                                         ; preds = %hw_clr_wol_pme_status.exit, %if.then13, %entry.if.end20_crit_edge
  %hw1.i128 = getelementptr i8, ptr %dev, i32 2360
  %107 = ptrtoint ptr %hw1.i128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw1.i128, align 8
  %port_cnt.i = getelementptr i8, ptr %dev, i32 2324
  %109 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp7.i = icmp sgt i32 %110, 0
  %first_port.i = getelementptr i8, ptr %dev, i32 2316
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %if.end20.for.end31_crit_edge

if.end20.for.end31_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end31

for.body.lr.ph.i:                                 ; preds = %if.end20
  %111 = ptrtoint ptr %first_port.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %first_port.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.09.i = phi i32 [ %112, %for.body.lr.ph.i ], [ %inc2.i, %for.body.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i130, %for.body.i.for.body.i_crit_edge ]
  %mul.i.i = shl i32 %p.09.i, 5
  %add1.i.i = add i32 %mul.i.i, 1298
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %108, align 8
  %add.ptr.i.i129 = getelementptr i8, ptr %114, i32 %add1.i.i
  %115 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i129) #22, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %116 = and i16 %115, -9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  call void @arm_heavy_mb() #22
  %117 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %108, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %118, i32 %add1.i.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i, i16 %116) #22, !srcloc !183
  %inc.i130 = add nuw nsw i32 %i.08.i, 1
  %inc2.i = add i32 %p.09.i, 1
  %119 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port_cnt.i, align 4
  %cmp.i131 = icmp slt i32 %inc.i130, %120
  br i1 %cmp.i131, label %for.body.i.for.body.i_crit_edge, label %port_set_power_saving.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

port_set_power_saving.exit:                       ; preds = %for.body.i
  %first_port = getelementptr i8, ptr %dev, i32 2316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp22163 = icmp sgt i32 %120, 0
  br i1 %cmp22163, label %for.body23.preheader, label %port_set_power_saving.exit.for.end31_crit_edge

port_set_power_saving.exit.for.end31_crit_edge:   ; preds = %port_set_power_saving.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end31

for.body23.preheader:                             ; preds = %port_set_power_saving.exit
  %121 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %first_port, align 4
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.preheader
  %p.0165 = phi i32 [ %inc30, %for.body23.for.body23_crit_edge ], [ %122, %for.body23.preheader ]
  %i.1164 = phi i32 [ %inc29, %for.body23.for.body23_crit_edge ], [ 0, %for.body23.preheader ]
  %arrayidx24 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 2, i32 %p.0165
  %partner = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 2, i32 %p.0165, i32 4
  %123 = ptrtoint ptr %partner to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %partner, align 2
  %124 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %arrayidx24, align 8
  %inc29 = add nuw nsw i32 %i.1164, 1
  %inc30 = add i32 %p.0165, 1
  %125 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port_cnt.i, align 4
  %cmp22 = icmp slt i32 %inc29, %126
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end31_crit_edge

for.body23.for.end31_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end31

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body23

for.end31:                                        ; preds = %for.body23.for.end31_crit_edge, %port_set_power_saving.exit.for.end31_crit_edge, %if.end20.for.end31_crit_edge
  %first_port168 = phi ptr [ %first_port, %port_set_power_saving.exit.for.end31_crit_edge ], [ %first_port.i, %if.end20.for.end31_crit_edge ], [ %first_port, %for.body23.for.end31_crit_edge ]
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %127 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp32 = icmp sgt i32 %128, 1
  br i1 %cmp32, label %if.then33, label %for.end31.if.end40_crit_edge

for.end31.if.end40_crit_edge:                     ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end40

if.then33:                                        ; preds = %for.end31
  %129 = ptrtoint ptr %first_port168 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %first_port168, align 4
  %mul.i.i132 = shl i32 %130, 5
  %add1.i.i133 = add i32 %mul.i.i132, 1282
  %131 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i134 = getelementptr i8, ptr %132, i32 %add1.i.i133
  %133 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i134) #22, !srcloc !184
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %134 = or i16 %133, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  call void @arm_heavy_mb() #22
  %135 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw1, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %136, i32 %add1.i.i133
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i, i16 %134) #22, !srcloc !183
  %ksz_switch.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %137 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i = getelementptr %struct.ksz_switch, ptr %138, i32 0, i32 2, i32 %130, i32 5
  %139 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 5, ptr %stp_state.i, align 4
  %140 = ptrtoint ptr %first_port168 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %first_port168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp36 = icmp sgt i32 %141, 0
  br i1 %cmp36, label %if.then37, label %if.then33.if.end40_crit_edge

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end40

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #24
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %142 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_addr, align 64
  call fastcc void @hw_add_addr(ptr noundef %hw1, ptr noundef %143)
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then33.if.end40_crit_edge, %for.end31.if.end40_crit_edge
  call fastcc void @port_get_link_speed(ptr noundef %port2)
  %force_link = getelementptr i8, ptr %dev, i32 2314
  %144 = ptrtoint ptr %force_link to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %force_link, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool41.not = icmp eq i8 %145, 0
  br i1 %tobool41.not, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.end40
  %146 = ptrtoint ptr %hw1.i128 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw1.i128, align 8
  %148 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp50.i = icmp sgt i32 %149, 0
  br i1 %cmp50.i, label %for.body.lr.ph.i138, label %if.then42.if.end44_crit_edge

if.then42.if.end44_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

for.body.lr.ph.i138:                              ; preds = %if.then42
  %150 = ptrtoint ptr %first_port168 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %first_port168, align 4
  %speed.i = getelementptr i8, ptr %dev, i32 2313
  br label %for.body.i141

for.body.i141:                                    ; preds = %if.end34.i.for.body.i141_crit_edge, %for.body.lr.ph.i138
  %p.052.i = phi i32 [ %151, %for.body.lr.ph.i138 ], [ %inc35.i, %if.end34.i.for.body.i141_crit_edge ]
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i138 ], [ %inc.i143, %if.end34.i.for.body.i141_crit_edge ]
  %mul.i = shl i32 %p.052.i, 4
  %add.i139 = add i32 %mul.i, 1232
  %152 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %147, align 8
  %add.ptr.i.i140 = getelementptr i8, ptr %153, i32 %add.i139
  %154 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i140) #22, !srcloc !184
  %155 = call i16 @llvm.bswap.i16(i16 %154) #22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !243
  %156 = and i16 %155, -4097
  %157 = ptrtoint ptr %speed.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %speed.i, align 1
  %159 = zext i8 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %158, label %for.body.i141.if.end16.i_crit_edge [
    i8 10, label %if.then.i
    i8 100, label %if.then13.i142
  ]

for.body.i141.if.end16.i_crit_edge:               ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end16.i

if.then.i:                                        ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #24
  %160 = and i16 %155, -12289
  br label %if.end16.i

if.then13.i142:                                   ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #24
  %161 = or i16 %156, 8192
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i142, %if.then.i, %for.body.i141.if.end16.i_crit_edge
  %data.0.i = phi i16 [ %156, %for.body.i141.if.end16.i_crit_edge ], [ %161, %if.then13.i142 ], [ %160, %if.then.i ]
  %162 = ptrtoint ptr %port2 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %port2, align 8
  %164 = zext i8 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %163, label %if.end16.i.if.end34.i_crit_edge [
    i8 1, label %if.then20.i
    i8 2, label %if.then29.i
  ]

if.end16.i.if.end34.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end34.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #24
  %165 = and i16 %data.0.i, -257
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #24
  %166 = or i16 %data.0.i, 256
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.then20.i, %if.end16.i.if.end34.i_crit_edge
  %data.1.i = phi i16 [ %data.0.i, %if.end16.i.if.end34.i_crit_edge ], [ %166, %if.then29.i ], [ %165, %if.then20.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !244
  call void @arm_heavy_mb() #22
  %167 = call i16 @llvm.bswap.i16(i16 %data.1.i) #22
  %168 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %147, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %169, i32 %add.i139
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i46.i, i16 %167) #22, !srcloc !183
  %inc.i143 = add nuw nsw i32 %i.051.i, 1
  %inc35.i = add i32 %p.052.i, 1
  %170 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port_cnt.i, align 4
  %cmp.i144 = icmp slt i32 %inc.i143, %171
  br i1 %cmp.i144, label %if.end34.i.for.body.i141_crit_edge, label %if.end34.i.if.end44_crit_edge

if.end34.i.if.end44_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

if.end34.i.for.body.i141_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i141

if.else43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #24
  call fastcc void @port_set_link_speed(ptr noundef %port2)
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.end34.i.if.end44_crit_edge, %if.then42.if.end44_crit_edge
  %172 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool46.not = icmp eq i32 %173, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  %intr_mask.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %174 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 -402653184, ptr %intr_mask.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !245
  call void @arm_heavy_mb() #22
  %tx_cfg.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 9
  %175 = ptrtoint ptr %tx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tx_cfg.i.i, align 4
  %177 = call i32 @llvm.bswap.i32(i32 %176) #22
  %178 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw1, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #22, !srcloc !205
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !246
  call void @arm_heavy_mb() #22
  %rx_cfg.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %180 = ptrtoint ptr %rx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %rx_cfg.i.i, align 8
  %182 = call i32 @llvm.bswap.i32(i32 %181) #22
  %183 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i145 = getelementptr i8, ptr %184, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145, i32 %182) #22, !srcloc !205
  %185 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %intr_mask.i, align 4
  %or.i.i = or i32 %186, 33554432
  store i32 %or.i.i, ptr %intr_mask.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !247
  call void @arm_heavy_mb() #22
  %187 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw1, align 8
  %add.ptr4.i.i146 = getelementptr i8, ptr %188, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i146, i32 16777216) #22, !srcloc !205
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !248
  call void @arm_heavy_mb() #22
  %189 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %190, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2) #22, !srcloc !205
  %rx_stop.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 30
  %191 = ptrtoint ptr %rx_stop.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %rx_stop.i.i, align 2
  %inc.i.i = add i8 %192, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i.i)
  %cmp.i.i147 = icmp eq i8 %inc.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i147, i8 2, i8 %inc.i.i
  %193 = ptrtoint ptr %rx_stop.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %spec.select.i.i, ptr %rx_stop.i.i, align 2
  %enabled.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 29
  %194 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %enabled.i, align 1
  %intr_blocked.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 13
  %195 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %intr_blocked.i, align 4
  %196 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %intr_mask.i, align 4
  %intr_set.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %198 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %intr_set.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  call void @arm_heavy_mb() #22
  %199 = call i32 @llvm.bswap.i32(i32 %197) #22
  %200 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i149 = getelementptr i8, ptr %201, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i149, i32 %199) #22, !srcloc !205
  %mib_port_cnt48 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 8
  %202 = ptrtoint ptr %mib_port_cnt48 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %mib_port_cnt48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool49.not = icmp eq i32 %203, 0
  br i1 %tobool49.not, label %if.then47.if.end53_crit_edge, label %if.then50

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #24
  %mib_timer_info = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 11
  %period = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 11, i32 3
  %204 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %period, align 8
  %cnt.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 11, i32 1
  %206 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %cnt.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %207 = load volatile i32, ptr @jiffies, align 128
  %add.i150 = add i32 %207, %205
  %expires.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 11, i32 0, i32 1
  %208 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add.i150, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %mib_timer_info) #22
  %max.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 11, i32 2
  %209 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 -1, ptr %max.i, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then47.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %210 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %opened, align 4
  %inc55 = add i32 %211, 1
  store i32 %inc55, ptr %opened, align 4
  %monitor_timer_info = getelementptr i8, ptr %dev, i32 2368
  %period57 = getelementptr i8, ptr %dev, i32 2424
  %212 = ptrtoint ptr %period57 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %period57, align 8
  %cnt.i151 = getelementptr i8, ptr %dev, i32 2416
  %214 = ptrtoint ptr %cnt.i151 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %cnt.i151, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %215 = load volatile i32, ptr @jiffies, align 128
  %add.i152 = add i32 %215, %213
  %expires.i153 = getelementptr i8, ptr %dev, i32 2376
  %216 = ptrtoint ptr %expires.i153 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %add.i152, ptr %expires.i153, align 4
  call void @add_timer(ptr noundef %monitor_timer_info) #22
  %max.i154 = getelementptr i8, ptr %dev, i32 2420
  %217 = ptrtoint ptr %max.i154 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1, ptr %max.i154, align 4
  %linked = getelementptr i8, ptr %dev, i32 2364
  %218 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %linked, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  %media_state = getelementptr i8, ptr %dev, i32 2528
  %222 = ptrtoint ptr %media_state to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %media_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp.i155 = icmp eq i32 %221, 0
  br i1 %cmp.i155, label %if.then.i156, label %if.else.i

if.then.i156:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #24
  call void @netif_carrier_on(ptr noundef %dev) #22
  br label %do.body.i158

if.else.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #24
  call void @netif_carrier_off(ptr noundef %dev) #22
  br label %do.body.i158

do.body.i158:                                     ; preds = %if.else.i, %if.then.i156
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2524
  %223 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %224, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i157 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i157, label %do.body.i158.set_media_state.exit_crit_edge, label %if.then2.i

do.body.i158.set_media_state.exit_crit_edge:      ; preds = %do.body.i158
  call void @__sanitizer_cov_trace_pc() #24
  br label %set_media_state.exit

if.then2.i:                                       ; preds = %do.body.i158
  call void @__sanitizer_cov_trace_pc() #24
  %225 = ptrtoint ptr %media_state to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %media_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp4.i = icmp eq i32 %226, 0
  %cond.i = select i1 %cmp4.i, ptr @.str.25, ptr @.str.26
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond.i) #26
  br label %set_media_state.exit

set_media_state.exit:                             ; preds = %if.then2.i, %do.body.i158.set_media_state.exit_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %227 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %228, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #22
  br label %cleanup

cleanup:                                          ; preds = %set_media_state.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_media_state.exit ], [ %call.i.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw2 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #22
  %max.i = getelementptr i8, ptr %dev, i32 2420
  %4 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.ksz_stop_timer.exit_crit_edge, label %if.then.i

entry.ksz_stop_timer.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_stop_timer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %monitor_timer_info = getelementptr i8, ptr %dev, i32 2368
  %6 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %max.i, align 4
  %call.i = tail call i32 @del_timer_sync(ptr noundef %monitor_timer_info) #22
  br label %ksz_stop_timer.exit

ksz_stop_timer.exit:                              ; preds = %if.then.i, %entry.ksz_stop_timer.exit_crit_edge
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %if.then, label %ksz_stop_timer.exit.if.end14_crit_edge

ksz_stop_timer.exit.if.end14_crit_edge:           ; preds = %ksz_stop_timer.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.then:                                          ; preds = %ksz_stop_timer.exit
  %first_port = getelementptr i8, ptr %dev, i32 2316
  %9 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first_port, align 4
  %mul.i.i = shl i32 %10, 5
  %add1.i.i = add i32 %mul.i.i, 1282
  %11 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw2, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add1.i.i
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %14 = and i16 %13, -8
  %15 = or i16 %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %16 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw2, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %17, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i, i16 %15) #22, !srcloc !183
  %ksz_switch.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i = getelementptr %struct.ksz_switch, ptr %19, i32 0, i32 2, i32 %10, i32 5
  %20 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %stp_state.i, align 4
  %features = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features, align 8
  %and = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end14_crit_edge, label %if.then3

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.then3:                                         ; preds = %if.then
  %23 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_port, align 4
  %shl = shl nuw i32 1, %24
  %25 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ksz_switch.i, align 4
  %member = getelementptr inbounds %struct.ksz_switch, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %member to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %member, align 1
  %conv = zext i8 %28 to i32
  %and5 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then3.if.end14_crit_edge, label %if.then7

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #24
  %29 = trunc i32 %shl to i8
  %30 = xor i8 %29, -1
  %conv12 = and i8 %28, %30
  %31 = ptrtoint ptr %member to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12, ptr %member, align 1
  tail call fastcc void @bridge_change(ptr noundef %hw2)
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.then3.if.end14_crit_edge, %if.then.if.end14_crit_edge, %ksz_stop_timer.exit.if.end14_crit_edge
  %first_port15 = getelementptr i8, ptr %dev, i32 2316
  %32 = ptrtoint ptr %first_port15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %first_port15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16 = icmp sgt i32 %33, 0
  br i1 %cmp16, label %if.then18, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  %addr_list_size.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 22
  %34 = ptrtoint ptr %addr_list_size.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %addr_list_size.i, align 8
  %conv.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp2.not.i = icmp eq i8 %35, 0
  br i1 %cmp2.not.i, label %if.then18.if.end20_crit_edge, label %for.body.lr.ph.i

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20

for.body.lr.ph.i:                                 ; preds = %if.then18
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %37, i32 4
  %40 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 21, i32 %i.03.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %xor.i.i = xor i32 %43, %39
  %add.ptr.i.i80 = getelementptr i8, ptr %arrayidx.i, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i.i80, align 2
  %xor37.i.i = xor i16 %45, %41
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i82, label %for.inc.i

if.then.i82:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %46 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !249
  tail call void @arm_heavy_mb() #22
  %47 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw2, align 8
  %mul.i = shl i32 %i.03.i, 3
  %add.ptr.i81 = getelementptr i8, ptr %48, i32 %mul.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i81, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #22, !srcloc !205
  br label %if.end20

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end20_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.inc.i.if.end20_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20

if.end20:                                         ; preds = %for.inc.i.if.end20_crit_edge, %if.then.i82, %if.then18.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %wol_enable = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 17
  %49 = ptrtoint ptr %wol_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wol_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool21.not = icmp eq i32 %50, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  %hw1.i = getelementptr i8, ptr %dev, i32 2360
  %51 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw1.i, align 8
  %port_cnt.i = getelementptr i8, ptr %dev, i32 2324
  %53 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp7.i = icmp sgt i32 %54, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i83, label %if.then22.if.end23_crit_edge

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

for.body.lr.ph.i83:                               ; preds = %if.then22
  %55 = ptrtoint ptr %first_port15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %first_port15, align 4
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.body.i88.for.body.i88_crit_edge, %for.body.lr.ph.i83
  %p.09.i = phi i32 [ %56, %for.body.lr.ph.i83 ], [ %inc2.i, %for.body.i88.for.body.i88_crit_edge ]
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i83 ], [ %inc.i87, %for.body.i88.for.body.i88_crit_edge ]
  %mul.i.i84 = shl i32 %p.09.i, 5
  %add1.i.i85 = add i32 %mul.i.i84, 1298
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %52, align 8
  %add.ptr.i.i86 = getelementptr i8, ptr %58, i32 %add1.i.i85
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i86) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %60 = or i16 %59, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %52, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %62, i32 %add1.i.i85
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i, i16 %60) #22, !srcloc !183
  %inc.i87 = add nuw nsw i32 %i.08.i, 1
  %inc2.i = add i32 %p.09.i, 1
  %63 = ptrtoint ptr %port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i87, %64
  br i1 %cmp.i, label %for.body.i88.for.body.i88_crit_edge, label %for.body.i88.if.end23_crit_edge

for.body.i88.if.end23_crit_edge:                  ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

for.body.i88.for.body.i88_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i88

if.end23:                                         ; preds = %for.body.i88.if.end23_crit_edge, %if.then22.if.end23_crit_edge, %if.end20.if.end23_crit_edge
  %multicast = getelementptr i8, ptr %dev, i32 2532
  %65 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %multicast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool24.not = icmp eq i32 %66, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #24
  %all_multi = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 25
  %67 = ptrtoint ptr %all_multi to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %all_multi, align 1
  %dec = add i8 %68, -1
  store i8 %dec, ptr %all_multi, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %promiscuous = getelementptr i8, ptr %dev, i32 2536
  %69 = ptrtoint ptr %promiscuous to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %promiscuous, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool27.not = icmp eq i32 %70, 0
  br i1 %tobool27.not, label %if.end26.if.end31_crit_edge, label %if.then28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  %promiscuous29 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 24
  %71 = ptrtoint ptr %promiscuous29 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %promiscuous29, align 2
  %dec30 = add i8 %72, -1
  store i8 %dec30, ptr %promiscuous29, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %opened = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 14
  %73 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %opened, align 4
  %dec32 = add i32 %74, -1
  store i32 %dec32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec32)
  %tobool34.not = icmp eq i32 %dec32, 0
  br i1 %tobool34.not, label %if.then35, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

if.then35:                                        ; preds = %if.end31
  %max.i89 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 11, i32 2
  %75 = ptrtoint ptr %max.i89 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i90 = icmp eq i32 %76, 0
  br i1 %tobool.not.i90, label %if.then35.ksz_stop_timer.exit93_crit_edge, label %if.then.i92

if.then35.ksz_stop_timer.exit93_crit_edge:        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_stop_timer.exit93

if.then.i92:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #24
  %mib_timer_info = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 11
  %77 = ptrtoint ptr %max.i89 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %max.i89, align 4
  %call.i91 = tail call i32 @del_timer_sync(ptr noundef %mib_timer_info) #22
  br label %ksz_stop_timer.exit93

ksz_stop_timer.exit93:                            ; preds = %if.then.i92, %if.then35.ksz_stop_timer.exit93_crit_edge
  %mib_read = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 10
  %call36 = tail call zeroext i1 @flush_work(ptr noundef %mib_read) #22
  %intr_mask.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %78 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %intr_mask.i, align 4
  %intr_blocked.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 13
  %80 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %intr_blocked.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %81 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw2, align 8
  %add.ptr.i94 = getelementptr i8, ptr %82, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 0) #22, !srcloc !205
  %83 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw2, align 8
  %add.ptr2.i = getelementptr i8, ptr %84, i32 40
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #22, !srcloc !207
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %intr_set.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %87 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %intr_set.i, align 8
  %rx_stop.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 30
  %88 = ptrtoint ptr %rx_stop.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %rx_stop.i.i, align 2
  %89 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw2, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %90, i32 40
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #22, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !250
  %92 = and i32 %91, -3
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #22
  %94 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %intr_set.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !251
  tail call void @arm_heavy_mb() #22
  %95 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %intr_set.i, align 8
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #22
  %98 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw2, align 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %99, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %97) #22, !srcloc !205
  %100 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %intr_mask.i, align 4
  %and.i.i.i.i = and i32 %101, -33554433
  store i32 %and.i.i.i.i, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !252
  tail call void @arm_heavy_mb() #22
  %rx_cfg.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %102 = ptrtoint ptr %rx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_cfg.i.i, align 8
  %and.i.i = and i32 %103, -2
  %104 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #22
  %105 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw2, align 8
  %add.ptr.i.i95 = getelementptr i8, ptr %106, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 %104) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !253
  tail call void @arm_heavy_mb() #22
  %tx_cfg.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 9
  %107 = ptrtoint ptr %tx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_cfg.i.i, align 4
  %and.i3.i = and i32 %108, -2
  %109 = tail call i32 @llvm.bswap.i32(i32 %and.i3.i) #22
  %110 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #22, !srcloc !205
  %enabled.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 29
  %112 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %enabled.i, align 1
  tail call fastcc void @hw_clr_multicast(ptr noundef %hw2)
  tail call void @msleep(i32 noundef 20) #22
  %rx_tasklet = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 15
  tail call void @tasklet_kill(ptr noundef %rx_tasklet) #22
  %tx_tasklet = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 16
  tail call void @tasklet_kill(ptr noundef %tx_tasklet) #22
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %113 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 8
  %call38 = tail call ptr @free_irq(i32 noundef %114, ptr noundef %116) #22
  tail call fastcc void @transmit_cleanup(ptr noundef %1, i32 noundef 0)
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14
  %117 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_desc_info, align 4
  %cur.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 1
  %119 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %cur.i, align 4
  %alloc.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 5
  %120 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %alloc.i, align 4
  %avail.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 6
  %122 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %avail.i, align 4
  %next.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 8
  %123 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %next.i, align 4
  %last.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 7
  %124 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %last.i, align 4
  %tx_desc_info = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15
  %125 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_desc_info, align 4
  %cur.i96 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 1
  %127 = ptrtoint ptr %cur.i96 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %cur.i96, align 4
  %alloc.i97 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 5
  %128 = ptrtoint ptr %alloc.i97 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %alloc.i97, align 4
  %avail.i98 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 6
  %130 = ptrtoint ptr %avail.i98 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %avail.i98, align 4
  %next.i99 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 8
  %131 = ptrtoint ptr %next.i99 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %next.i99, align 4
  %last.i100 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 7
  %132 = ptrtoint ptr %last.i100 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %last.i100, align 4
  %features39 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %133 = ptrtoint ptr %features39 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %features39, align 8
  %and40 = and i32 %134, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %ksz_stop_timer.exit93.if.end44_crit_edge, label %if.then42

ksz_stop_timer.exit93.if.end44_crit_edge:         ; preds = %ksz_stop_timer.exit93
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

if.then42:                                        ; preds = %ksz_stop_timer.exit93
  %ksz_switch.i101 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  br label %for.body.i106

for.body.i106:                                    ; preds = %for.body.i106.for.body.i106_crit_edge, %if.then42
  %i.014.i = phi i32 [ 0, %if.then42 ], [ %inc.i104, %for.body.i106.for.body.i106_crit_edge ]
  %135 = ptrtoint ptr %ksz_switch.i101 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ksz_switch.i101, align 4
  %arrayidx.i102 = getelementptr [8 x %struct.ksz_mac_table], ptr %136, i32 0, i32 %i.014.i
  %conv.i103 = trunc i32 %i.014.i to i16
  %ports.i = getelementptr [8 x %struct.ksz_mac_table], ptr %136, i32 0, i32 %i.014.i, i32 3
  %137 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ports.i, align 1
  %override.i = getelementptr [8 x %struct.ksz_mac_table], ptr %136, i32 0, i32 %i.014.i, i32 4
  %139 = ptrtoint ptr %override.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load.i = load i8, ptr %override.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %conv2.i = zext i8 %bf.lshr.i to i32
  %bf.lshr4.i = lshr i8 %bf.load.i, 6
  %bf.clear.i = and i8 %bf.lshr4.i, 1
  %conv5.i = zext i8 %bf.clear.i to i32
  %fid.i = getelementptr [8 x %struct.ksz_mac_table], ptr %136, i32 0, i32 %i.014.i, i32 2
  %140 = ptrtoint ptr %fid.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %fid.i, align 2
  tail call fastcc void @sw_w_sta_mac_table(ptr noundef %hw2, i16 noundef zeroext %conv.i103, ptr noundef %arrayidx.i102, i8 noundef zeroext %138, i32 noundef %conv2.i, i32 noundef 0, i32 noundef %conv5.i, i8 noundef zeroext %141) #22
  %inc.i104 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i105 = icmp eq i32 %inc.i104, 8
  br i1 %exitcond.not.i105, label %for.body.i106.if.end44_crit_edge, label %for.body.i106.for.body.i106_crit_edge

for.body.i106.for.body.i106_crit_edge:            ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i106

for.body.i106.if.end44_crit_edge:                 ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

if.end44:                                         ; preds = %for.body.i106.if.end44_crit_edge, %ksz_stop_timer.exit93.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %features = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end24

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %5)
  %cmp = icmp ult i32 %5, 49
  br i1 %cmp, label %if.then2, label %if.then.if.end24_crit_edge

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end24

if.then2:                                         ; preds = %if.then
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %sub.ptr.sub)
  %cmp4 = icmp sgt i32 %sub.ptr.sub, 49
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx = getelementptr i8, ptr %9, i32 %5
  %sub = sub nuw nsw i32 50, %5
  %10 = call ptr @memset(ptr %arrayidx, i32 0, i32 %sub)
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50, ptr %len, align 4
  br label %if.end24

if.else:                                          ; preds = %if.then2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 50, i32 noundef 2592) #22
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.else.cleanup62_crit_edge, label %if.end

if.else.cleanup62_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup62

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %data13 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data13, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %18 = call ptr @memcpy(ptr %13, ptr %15, i32 %17)
  %19 = load ptr, ptr %data13, align 4
  %20 = load i32, ptr %len, align 4
  %arrayidx18 = getelementptr i8, ptr %19, i32 %20
  %sub20 = sub i32 50, %20
  %21 = call ptr @memset(ptr %arrayidx18, i32 0, i32 %sub20)
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 50, ptr %len21, align 4
  %23 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = getelementptr inbounds %struct.anon.44, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %26, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol.i, align 8
  %protocol1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %protocol1.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %31 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %ip_summed2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %32 = and i16 %bf.load.i, 1536
  %33 = ptrtoint ptr %ip_summed2.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load3.i = load i16, ptr %ip_summed2.i, align 8
  %bf.clear4.i = and i16 %bf.load3.i, -1537
  %bf.set.i = or i16 %bf.clear4.i, %32
  store i16 %bf.set.i, ptr %ip_summed2.i, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %37, align 8
  %39 = load ptr, ptr %data13, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %conv1.i.i = add i16 %conv.i.i.i, 14
  %42 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv1.i.i, ptr %network_header.i.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #22
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then5, %if.then.if.end24_crit_edge, %entry.if.end24_crit_edge
  %skb.addr.2 = phi ptr [ %skb, %entry.if.end24_crit_edge ], [ %skb, %if.then.if.end24_crit_edge ], [ %call.i, %if.end ], [ %skb, %if.then5 ]
  %hwlock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %hwlock) #22
  %end.i112 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 17
  %43 = ptrtoint ptr %end.i112 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i112, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %46 to i32
  %add = add nuw nsw i32 %conv, 1
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 6
  %avail.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 6
  %47 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %avail.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i = icmp slt i32 %48, 2
  br i1 %cmp.i, label %if.end24.unlock.sink.split_crit_edge, label %if.end.i

if.end24.unlock.sink.split_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlock.sink.split

if.end.i:                                         ; preds = %if.end24
  %49 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len26, align 4
  %tx_desc_info.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15
  %cur.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 1
  %51 = ptrtoint ptr %tx_desc_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_desc_info.i, align 4
  %next.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 8
  %53 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %next.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ksz_desc, ptr %52, i32 %54
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.i.i, ptr %cur.i, align 4
  %inc.i.i = add i32 %54, 1
  %mask.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 9
  %56 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %57, %inc.i.i
  store i32 %and.i.i, ptr %next.i.i, align 4
  %dec.i.i = add nsw i32 %48, -1
  %58 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dec.i.i, ptr %avail.i, align 4
  %buf.i.i = getelementptr %struct.ksz_desc, ptr %52, i32 %54, i32 1, i32 1
  %59 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf.i.i, align 4
  %and3.i.i = and i32 %60, 67106816
  store i32 %and3.i.i, ptr %buf.i.i, align 4
  %61 = load ptr, ptr %cur.i, align 4
  %buf.i = getelementptr inbounds %struct.ksz_desc, ptr %61, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load.i113 = load i32, ptr %buf.i, align 4
  %bf.set.i114 = or i32 %bf.load.i113, 1073741824
  store i32 %bf.set.i114, ptr %buf.i, align 4
  %tx_int_cnt.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 16
  %63 = ptrtoint ptr %tx_int_cnt.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_int_cnt.i, align 8
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr %tx_int_cnt.i, align 8
  %tx_size.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 18
  %65 = ptrtoint ptr %tx_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_size.i, align 8
  %add.i = add i32 %66, %50
  store i32 %add.i, ptr %tx_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 51999, i32 %add.i)
  %cmp6.i = icmp sgt i32 %add.i, 51999
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %tx_int_mask.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 17
  %67 = ptrtoint ptr %tx_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_int_mask.i, align 4
  %add8.i = add i32 %68, 1
  %69 = ptrtoint ptr %tx_int_cnt.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add8.i, ptr %tx_int_cnt.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %70 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %avail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv)
  %cmp13.i.not = icmp sgt i32 %71, %conv
  br i1 %cmp13.i.not, label %hw_alloc_pkt.exit, label %if.end10.i.if.then29_crit_edge

if.end10.i.if.then29_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then29

hw_alloc_pkt.exit:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool28.not = icmp eq i32 %71, 0
  br i1 %tobool28.not, label %hw_alloc_pkt.exit.unlock.sink.split_crit_edge, label %hw_alloc_pkt.exit.if.then29_crit_edge

hw_alloc_pkt.exit.if.then29_crit_edge:            ; preds = %hw_alloc_pkt.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then29

hw_alloc_pkt.exit.unlock.sink.split_crit_edge:    ; preds = %hw_alloc_pkt.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlock.sink.split

if.then29:                                        ; preds = %hw_alloc_pkt.exit.if.then29_crit_edge, %if.end10.i.if.then29_crit_edge
  %retval.0.i159 = phi i32 [ %71, %hw_alloc_pkt.exit.if.then29_crit_edge ], [ 1, %if.end10.i.if.then29_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i159, i32 %conv)
  %cmp30.not = icmp sgt i32 %retval.0.i159, %conv
  br i1 %cmp30.not, label %lor.lhs.false, label %if.then29.if.then38_crit_edge

if.then29.if.then38_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.then29
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 15
  %72 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load = load i16, ptr %ip_summed, align 8
  %73 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %73)
  %cmp33 = icmp eq i16 %73, 1536
  br i1 %cmp33, label %land.lhs.true, label %lor.lhs.false.if.end54_crit_edge

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end54

land.lhs.true:                                    ; preds = %lor.lhs.false
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 15, i32 0, i32 18
  %74 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %75)
  %cmp36 = icmp eq i16 %75, -31011
  br i1 %cmp36, label %land.lhs.true.if.then38_crit_edge, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end54

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true.if.then38_crit_edge, %if.then29.if.then38_crit_edge
  %76 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len26, align 4
  %call.i115 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %77, i32 noundef 2592) #22
  %tobool42.not = icmp eq ptr %call.i115, null
  br i1 %tobool42.not, label %if.then38.unlock_crit_edge, label %cleanup51.thread

if.then38.unlock_crit_edge:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlock

cleanup51.thread:                                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #24
  %data45 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 19
  %78 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data45, align 4
  tail call void @skb_copy_and_csum_dev(ptr noundef %skb.addr.2, ptr noundef %79) #22
  %ip_summed46 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 15
  %80 = ptrtoint ptr %ip_summed46 to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load47 = load i16, ptr %ip_summed46, align 8
  %bf.clear48 = and i16 %bf.load47, -1537
  store i16 %bf.clear48, ptr %ip_summed46, align 8
  %81 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len26, align 4
  %len50 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 6
  %83 = ptrtoint ptr %len50 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %len50, align 4
  %84 = getelementptr inbounds %struct.anon.44, ptr %skb.addr.2, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %87 = getelementptr inbounds %struct.anon.44, ptr %call.i115, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %87, align 8
  %protocol.i116 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 15, i32 0, i32 18
  %89 = ptrtoint ptr %protocol.i116 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %protocol.i116, align 8
  %protocol1.i117 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 15, i32 0, i32 18
  %91 = ptrtoint ptr %protocol1.i117 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %protocol1.i117, align 8
  %bf.load.i119 = load i16, ptr %ip_summed46, align 8
  %ip_summed2.i120 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 15
  %92 = and i16 %bf.load.i119, 1536
  %93 = ptrtoint ptr %ip_summed2.i120 to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load3.i121 = load i16, ptr %ip_summed2.i120, align 8
  %bf.clear4.i122 = and i16 %bf.load3.i121, -1537
  %bf.set.i123 = or i16 %bf.clear4.i122, %92
  store i16 %bf.set.i123, ptr %ip_summed2.i120, align 8
  %94 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 15, i32 0, i32 5
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %97 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 15, i32 0, i32 5
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %96, ptr %97, align 8
  %99 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data45, align 4
  %head.i.i.i125 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 18
  %101 = ptrtoint ptr %head.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %head.i.i.i125, align 8
  %sub.ptr.lhs.cast.i.i.i126 = ptrtoint ptr %100 to i32
  %sub.ptr.rhs.cast.i.i.i127 = ptrtoint ptr %102 to i32
  %sub.ptr.sub.i.i.i128 = sub i32 %sub.ptr.lhs.cast.i.i.i126, %sub.ptr.rhs.cast.i.i.i127
  %conv.i.i.i129 = trunc i32 %sub.ptr.sub.i.i.i128 to i16
  %network_header.i.i.i130 = getelementptr inbounds %struct.sk_buff, ptr %call.i115, i32 0, i32 15, i32 0, i32 20
  %conv1.i.i131 = add i16 %conv.i.i.i129, 14
  %103 = ptrtoint ptr %network_header.i.i.i130 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv1.i.i131, ptr %network_header.i.i.i130, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.addr.2, i32 noundef 0) #22
  br label %if.end54

if.end54:                                         ; preds = %cleanup51.thread, %land.lhs.true.if.end54_crit_edge, %lor.lhs.false.if.end54_crit_edge
  %skb.addr.3 = phi ptr [ %skb.addr.2, %land.lhs.true.if.end54_crit_edge ], [ %skb.addr.2, %lor.lhs.false.if.end54_crit_edge ], [ %call.i115, %cleanup51.thread ]
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i, align 8
  %tx_desc_info.i132 = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 15
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 17
  %106 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %109 to i32
  %dev_count.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 4
  %110 = ptrtoint ptr %dev_count.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dev_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp.i133 = icmp sgt i32 %111, 1
  br i1 %cmp.i133, label %if.then.i, label %if.end54.if.end.i135_crit_edge

if.end54.if.end.i135_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i135

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #24
  %first_port.i = getelementptr i8, ptr %dev, i32 2316
  %112 = ptrtoint ptr %first_port.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %first_port.i, align 4
  %shl.i = shl nuw i32 1, %113
  %dst_ports.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 5
  %114 = ptrtoint ptr %dst_ports.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shl.i, ptr %dst_ports.i, align 4
  br label %if.end.i135

if.end.i135:                                      ; preds = %if.then.i, %if.end54.if.end.i135_crit_edge
  %len4.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 6
  %115 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len4.i, align 4
  %cur.i134 = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 15, i32 1
  %117 = ptrtoint ptr %cur.i134 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cur.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i135
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 7
  %119 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %116, %120
  %len8.i = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 2, i32 2
  %121 = ptrtoint ptr %len8.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub.i.i, ptr %len8.i, align 4
  %pdev.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 1
  %122 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 19
  %124 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %125) #22
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then6.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !254

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev9.i) #22
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44, i32 3
  %126 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %128 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev9.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %129, %if.end.i.i.i ], [ %127, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #22
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @debug_dma_map_single(ptr noundef %dev9.i, ptr noundef %125, i32 noundef %sub.i.i) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %130 = load ptr, ptr @mem_map, align 4
  %131 = ptrtoint ptr %125 to i32
  %sub.i97.i = add i32 %131, 1073741824
  %shr.i.i = lshr i32 %sub.i97.i, 12
  %add.ptr.i98.i = getelementptr %struct.page, ptr %130, i32 %shr.i.i
  %and.i.i136 = and i32 %131, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev9.i, ptr noundef %add.ptr.i98.i, i32 noundef %and.i.i136, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #22
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %dma.i = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 2, i32 1
  %132 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %retval.0.i.i, ptr %dma.i, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #22
  %134 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %118, align 4
  %addr1.i.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %133, ptr %addr1.i.i, align 4
  %137 = ptrtoint ptr %len8.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len8.i, align 4
  %buf.i.i137 = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %buf.i.i137 to i32
  call void @__asan_load4_noabort(i32 %139)
  %bf.load.i.i = load i32, ptr %buf.i.i137, align 4
  %bf.value.i.i = and i32 %138, 2047
  %bf.clear.i.i = and i32 %bf.load.i.i, -2048
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.value.i.i
  store i32 %bf.set.i.i, ptr %buf.i.i137, align 4
  %next.i.i138 = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 15, i32 8
  %mask.i.i139 = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 15, i32 9
  %avail.i.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 15, i32 6
  %tx_int_cnt.i140 = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 16
  br label %do.body.i

do.body.i:                                        ; preds = %release_desc.exit.i, %dma_map_single_attrs.exit.i
  %frag.0.i = phi i32 [ 0, %dma_map_single_attrs.exit.i ], [ %inc26.i, %release_desc.exit.i ]
  %140 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %141, i32 0, i32 12, i32 %frag.0.i
  %142 = ptrtoint ptr %tx_desc_info.i132 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tx_desc_info.i132, align 4
  %144 = ptrtoint ptr %next.i.i138 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %next.i.i138, align 4
  %arrayidx.i.i141 = getelementptr %struct.ksz_desc, ptr %143, i32 %145
  %inc.i.i142 = add i32 %145, 1
  %146 = ptrtoint ptr %mask.i.i139 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mask.i.i139, align 4
  %and.i100.i = and i32 %147, %inc.i.i142
  store i32 %and.i100.i, ptr %next.i.i138, align 4
  %148 = ptrtoint ptr %avail.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %avail.i.i, align 4
  %dec.i.i143 = add i32 %149, -1
  store i32 %dec.i.i143, ptr %avail.i.i, align 4
  %buf.i101.i = getelementptr %struct.ksz_desc, ptr %143, i32 %145, i32 1, i32 1
  %150 = ptrtoint ptr %buf.i101.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %buf.i101.i, align 4
  %and3.i.i144 = and i32 %151, 67106816
  store i32 %and3.i.i144, ptr %buf.i101.i, align 4
  %152 = ptrtoint ptr %tx_int_cnt.i140 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tx_int_cnt.i140, align 8
  %inc.i145 = add i32 %153, 1
  store i32 %inc.i145, ptr %tx_int_cnt.i140, align 8
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %141, i32 0, i32 12, i32 %frag.0.i, i32 1
  %154 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %bv_len.i.i, align 4
  %len17.i = getelementptr %struct.ksz_desc, ptr %143, i32 %145, i32 2, i32 2
  %156 = ptrtoint ptr %len17.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %len17.i, align 4
  %157 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdev.i, align 4
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44
  %159 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i, align 4
  %call1.i.i = tail call ptr @page_address(ptr noundef %160) #22
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %141, i32 0, i32 12, i32 %frag.0.i, i32 2
  %161 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %call1.i.i, i32 %162
  %163 = ptrtoint ptr %len17.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len17.i, align 4
  %call.i103.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i102.i) #22
  br i1 %call.i103.i, label %land.rhs.i105.i, label %if.end39.i118.i

land.rhs.i105.i:                                  ; preds = %do.body.i
  %.b1.i104.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i104.i, label %land.rhs.i105.i.dma_map_single_attrs.exit120.i_crit_edge, label %if.then.i109.i, !prof !254

land.rhs.i105.i.dma_map_single_attrs.exit120.i_crit_edge: ; preds = %land.rhs.i105.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dma_map_single_attrs.exit120.i

if.then.i109.i:                                   ; preds = %land.rhs.i105.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i106.i = tail call ptr @dev_driver_string(ptr noundef %dev19.i) #22
  %init_name.i.i107.i = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44, i32 3
  %165 = ptrtoint ptr %init_name.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %init_name.i.i107.i, align 8
  %tobool.not.i.i108.i = icmp eq ptr %166, null
  br i1 %tobool.not.i.i108.i, label %if.end.i.i110.i, label %if.then.i109.i.dev_name.exit.i112.i_crit_edge

if.then.i109.i.dev_name.exit.i112.i_crit_edge:    ; preds = %if.then.i109.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_name.exit.i112.i

if.end.i.i110.i:                                  ; preds = %if.then.i109.i
  call void @__sanitizer_cov_trace_pc() #24
  %167 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev19.i, align 4
  br label %dev_name.exit.i112.i

dev_name.exit.i112.i:                             ; preds = %if.end.i.i110.i, %if.then.i109.i.dev_name.exit.i112.i_crit_edge
  %retval.0.i.i111.i = phi ptr [ %168, %if.end.i.i110.i ], [ %166, %if.then.i109.i.dev_name.exit.i112.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i106.i, ptr noundef %retval.0.i.i111.i) #22
  br label %dma_map_single_attrs.exit120.i

if.end39.i118.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @debug_dma_map_single(ptr noundef %dev19.i, ptr noundef %add.ptr.i102.i, i32 noundef %164) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %169 = load ptr, ptr @mem_map, align 4
  %170 = ptrtoint ptr %add.ptr.i102.i to i32
  %sub.i113.i = add i32 %170, 1073741824
  %shr.i114.i = lshr i32 %sub.i113.i, 12
  %add.ptr.i115.i = getelementptr %struct.page, ptr %169, i32 %shr.i114.i
  %and.i116.i = and i32 %170, 4095
  %call41.i117.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev19.i, ptr noundef %add.ptr.i115.i, i32 noundef %and.i116.i, i32 noundef %164, i32 noundef 1, i32 noundef 0) #22
  br label %dma_map_single_attrs.exit120.i

dma_map_single_attrs.exit120.i:                   ; preds = %if.end39.i118.i, %dev_name.exit.i112.i, %land.rhs.i105.i.dma_map_single_attrs.exit120.i_crit_edge
  %retval.0.i119.i = phi i32 [ %call41.i117.i, %if.end39.i118.i ], [ -1, %dev_name.exit.i112.i ], [ -1, %land.rhs.i105.i.dma_map_single_attrs.exit120.i_crit_edge ]
  %dma23.i = getelementptr %struct.ksz_desc, ptr %143, i32 %145, i32 2, i32 1
  %171 = ptrtoint ptr %dma23.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %retval.0.i119.i, ptr %dma23.i, align 4
  %172 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i119.i) #22
  %173 = ptrtoint ptr %arrayidx.i.i141 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i.i141, align 4
  %addr1.i121.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %addr1.i121.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %172, ptr %addr1.i121.i, align 4
  %176 = ptrtoint ptr %len17.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %len17.i, align 4
  %178 = ptrtoint ptr %buf.i101.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %bf.load.i123.i = load i32, ptr %buf.i101.i, align 4
  %bf.value.i124.i = and i32 %177, 2047
  %bf.clear.i125.i = and i32 %bf.load.i123.i, -2048
  %bf.set.i126.i = or i32 %bf.clear.i125.i, %bf.value.i124.i
  store i32 %bf.set.i126.i, ptr %buf.i101.i, align 4
  %inc26.i = add i32 %frag.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc26.i, i32 %conv.i)
  %cmp27.i = icmp eq i32 %inc26.i, %conv.i
  br i1 %cmp27.i, label %do.end.i, label %if.end30.i

if.end30.i:                                       ; preds = %dma_map_single_attrs.exit120.i
  %sw.i.i = getelementptr %struct.ksz_desc, ptr %143, i32 %145, i32 1
  %179 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %bf.load.i127.i = load i32, ptr %sw.i.i, align 4
  %bf.set.i128.i = or i32 %bf.load.i127.i, -2147483648
  store i32 %bf.set.i128.i, ptr %sw.i.i, align 4
  %buf_size.i.i = getelementptr %struct.ksz_desc, ptr %143, i32 %145, i32 1, i32 2
  %180 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %buf_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %bf.set.i126.i)
  %cmp.not.i.i = icmp eq i32 %181, %bf.set.i126.i
  br i1 %cmp.not.i.i, label %if.end30.i.release_desc.exit.i_crit_edge, label %if.then.i130.i

if.end30.i.release_desc.exit.i_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_desc.exit.i

if.then.i130.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #24
  %182 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %bf.set.i126.i, ptr %buf_size.i.i, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %bf.set.i126.i) #22
  %184 = ptrtoint ptr %arrayidx.i.i141 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i.i141, align 4
  %buf9.i.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %183, ptr %buf9.i.i, align 4
  br label %release_desc.exit.i

release_desc.exit.i:                              ; preds = %if.then.i130.i, %if.end30.i.release_desc.exit.i_crit_edge
  %187 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sw.i.i, align 4
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #22
  %190 = ptrtoint ptr %arrayidx.i.i141 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i.i141, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %189, ptr %191, align 4
  br label %do.body.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit120.i
  %193 = ptrtoint ptr %cur.i134 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %arrayidx.i.i141, ptr %cur.i134, align 4
  %sw.i131.i = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 1
  %194 = ptrtoint ptr %sw.i131.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %bf.load.i132.i = load i32, ptr %sw.i131.i, align 4
  %bf.set.i133.i = or i32 %bf.load.i132.i, -2147483648
  store i32 %bf.set.i133.i, ptr %sw.i131.i, align 4
  %buf_size.i134.i = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 1, i32 2
  %195 = ptrtoint ptr %buf_size.i134.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %buf_size.i134.i, align 4
  %197 = ptrtoint ptr %buf.i.i137 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %buf.i.i137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %198)
  %cmp.not.i136.i = icmp eq i32 %196, %198
  br i1 %cmp.not.i136.i, label %do.end.i.release_desc.exit139.i_crit_edge, label %if.then.i138.i

do.end.i.release_desc.exit139.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_desc.exit139.i

if.then.i138.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %199 = ptrtoint ptr %buf_size.i134.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %buf_size.i134.i, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %198) #22
  %201 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %118, align 4
  %buf9.i137.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %buf9.i137.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %200, ptr %buf9.i137.i, align 4
  br label %release_desc.exit139.i

release_desc.exit139.i:                           ; preds = %if.then.i138.i, %do.end.i.release_desc.exit139.i_crit_edge
  %204 = ptrtoint ptr %sw.i131.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %sw.i131.i, align 4
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #22
  %207 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %118, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %206, ptr %208, align 4
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end.i135
  %len32.i = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 2, i32 2
  %210 = ptrtoint ptr %len32.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %116, ptr %len32.i, align 4
  %pdev33.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 1
  %211 = ptrtoint ptr %pdev33.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pdev33.i, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 44
  %data35.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 19
  %213 = ptrtoint ptr %data35.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %data35.i, align 4
  %call.i140.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %214) #22
  br i1 %call.i140.i, label %land.rhs.i142.i, label %if.end39.i155.i

land.rhs.i142.i:                                  ; preds = %if.else.i
  %.b1.i141.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i141.i, label %land.rhs.i142.i.dma_map_single_attrs.exit157.i_crit_edge, label %if.then.i146.i, !prof !254

land.rhs.i142.i.dma_map_single_attrs.exit157.i_crit_edge: ; preds = %land.rhs.i142.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dma_map_single_attrs.exit157.i

if.then.i146.i:                                   ; preds = %land.rhs.i142.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i143.i = tail call ptr @dev_driver_string(ptr noundef %dev34.i) #22
  %init_name.i.i144.i = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 44, i32 3
  %215 = ptrtoint ptr %init_name.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %init_name.i.i144.i, align 8
  %tobool.not.i.i145.i = icmp eq ptr %216, null
  br i1 %tobool.not.i.i145.i, label %if.end.i.i147.i, label %if.then.i146.i.dev_name.exit.i149.i_crit_edge

if.then.i146.i.dev_name.exit.i149.i_crit_edge:    ; preds = %if.then.i146.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_name.exit.i149.i

if.end.i.i147.i:                                  ; preds = %if.then.i146.i
  call void @__sanitizer_cov_trace_pc() #24
  %217 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev34.i, align 4
  br label %dev_name.exit.i149.i

dev_name.exit.i149.i:                             ; preds = %if.end.i.i147.i, %if.then.i146.i.dev_name.exit.i149.i_crit_edge
  %retval.0.i.i148.i = phi ptr [ %218, %if.end.i.i147.i ], [ %216, %if.then.i146.i.dev_name.exit.i149.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i143.i, ptr noundef %retval.0.i.i148.i) #22
  br label %dma_map_single_attrs.exit157.i

if.end39.i155.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @debug_dma_map_single(ptr noundef %dev34.i, ptr noundef %214, i32 noundef %116) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %219 = load ptr, ptr @mem_map, align 4
  %220 = ptrtoint ptr %214 to i32
  %sub.i150.i = add i32 %220, 1073741824
  %shr.i151.i = lshr i32 %sub.i150.i, 12
  %add.ptr.i152.i = getelementptr %struct.page, ptr %219, i32 %shr.i151.i
  %and.i153.i = and i32 %220, 4095
  %call41.i154.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev34.i, ptr noundef %add.ptr.i152.i, i32 noundef %and.i153.i, i32 noundef %116, i32 noundef 1, i32 noundef 0) #22
  br label %dma_map_single_attrs.exit157.i

dma_map_single_attrs.exit157.i:                   ; preds = %if.end39.i155.i, %dev_name.exit.i149.i, %land.rhs.i142.i.dma_map_single_attrs.exit157.i_crit_edge
  %retval.0.i156.i = phi i32 [ %call41.i154.i, %if.end39.i155.i ], [ -1, %dev_name.exit.i149.i ], [ -1, %land.rhs.i142.i.dma_map_single_attrs.exit157.i_crit_edge ]
  %dma38.i = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 2, i32 1
  %221 = ptrtoint ptr %dma38.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %retval.0.i156.i, ptr %dma38.i, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i156.i) #22
  %223 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %118, align 4
  %addr1.i158.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %addr1.i158.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %222, ptr %addr1.i158.i, align 4
  %226 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %len32.i, align 4
  %buf.i159.i = getelementptr inbounds %struct.ksz_desc, ptr %118, i32 0, i32 1, i32 1
  %228 = ptrtoint ptr %buf.i159.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %bf.load.i160.i = load i32, ptr %buf.i159.i, align 4
  %bf.value.i161.i = and i32 %227, 2047
  %bf.clear.i162.i = and i32 %bf.load.i160.i, -2048
  %bf.set.i163.i = or i32 %bf.clear.i162.i, %bf.value.i161.i
  store i32 %bf.set.i163.i, ptr %buf.i159.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %dma_map_single_attrs.exit157.i, %release_desc.exit139.i
  %desc.0.i = phi ptr [ %118, %dma_map_single_attrs.exit157.i ], [ %arrayidx.i.i141, %release_desc.exit139.i ]
  %ip_summed.i146 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 15
  %229 = ptrtoint ptr %ip_summed.i146 to i32
  call void @__asan_load2_noabort(i32 %229)
  %bf.load.i147 = load i16, ptr %ip_summed.i146, align 8
  %230 = and i16 %bf.load.i147, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %230)
  %cmp43.i = icmp eq i16 %230, 1536
  br i1 %cmp43.i, label %if.then45.i, label %if.end41.i.if.end53.i_crit_edge

if.end41.i.if.end53.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #24
  %buf.i148 = getelementptr inbounds %struct.ksz_desc, ptr %desc.0.i, i32 0, i32 1, i32 1
  %231 = ptrtoint ptr %buf.i148 to i32
  call void @__asan_load4_noabort(i32 %231)
  %bf.load46.i = load i32, ptr %buf.i148, align 4
  %bf.set52.i = or i32 %bf.load46.i, 201326592
  store i32 %bf.set52.i, ptr %buf.i148, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then45.i, %if.end41.i.if.end53.i_crit_edge
  %dma_buf.0.i = getelementptr inbounds %struct.ksz_desc, ptr %desc.0.i, i32 0, i32 2
  %232 = ptrtoint ptr %dma_buf.0.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %skb.addr.3, ptr %dma_buf.0.i, align 4
  %233 = ptrtoint ptr %cur.i134 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %cur.i134, align 4
  %buf.i164.i = getelementptr inbounds %struct.ksz_desc, ptr %234, i32 0, i32 1, i32 1
  %235 = ptrtoint ptr %buf.i164.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %bf.load.i165.i = load i32, ptr %buf.i164.i, align 4
  %bf.set.i166.i = or i32 %bf.load.i165.i, 536870912
  store i32 %bf.set.i166.i, ptr %buf.i164.i, align 4
  %tx_int_cnt.i.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 16
  %236 = ptrtoint ptr %tx_int_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %tx_int_cnt.i.i, align 8
  %tx_int_mask.i.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 17
  %238 = ptrtoint ptr %tx_int_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %tx_int_mask.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %239)
  %cmp.i.i = icmp sgt i32 %237, %239
  br i1 %cmp.i.i, label %if.then.i167.i, label %if.end53.i.if.end.i.i_crit_edge

if.end53.i.if.end.i.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

if.then.i167.i:                                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #24
  %bf.set6.i.i = or i32 %bf.load.i165.i, -1610612736
  %240 = ptrtoint ptr %buf.i164.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %bf.set6.i.i, ptr %buf.i164.i, align 4
  %241 = ptrtoint ptr %tx_int_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %tx_int_cnt.i.i, align 8
  %tx_size.i.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 18
  %242 = ptrtoint ptr %tx_size.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %tx_size.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i167.i, %if.end53.i.if.end.i.i_crit_edge
  %dst_ports.i.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2, i32 5
  %243 = ptrtoint ptr %dst_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %dst_ports.i.i, align 4
  %245 = ptrtoint ptr %buf.i164.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %bf.load10.i.i = load i32, ptr %buf.i164.i, align 4
  %bf.value.i168.i = shl i32 %244, 20
  %bf.shl.i.i = and i32 %bf.value.i168.i, 15728640
  %bf.clear11.i.i = and i32 %bf.load10.i.i, -15728641
  %bf.set12.i.i = or i32 %bf.clear11.i.i, %bf.shl.i.i
  store i32 %bf.set12.i.i, ptr %buf.i164.i, align 4
  %sw.i.i.i = getelementptr inbounds %struct.ksz_desc, ptr %234, i32 0, i32 1
  %246 = ptrtoint ptr %sw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %bf.load.i.i.i = load i32, ptr %sw.i.i.i, align 4
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, -2147483648
  store i32 %bf.set.i.i.i, ptr %sw.i.i.i, align 4
  %buf_size.i.i.i = getelementptr inbounds %struct.ksz_desc, ptr %234, i32 0, i32 1, i32 2
  %247 = ptrtoint ptr %buf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %buf_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %bf.set12.i.i)
  %cmp.not.i.i.i = icmp eq i32 %248, %bf.set12.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.send_packet.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.send_packet.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %send_packet.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %249 = ptrtoint ptr %buf_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %bf.set12.i.i, ptr %buf_size.i.i.i, align 4
  %250 = tail call i32 @llvm.bswap.i32(i32 %bf.set12.i.i) #22
  %251 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %234, align 4
  %buf9.i.i.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %buf9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %250, ptr %buf9.i.i.i, align 4
  br label %send_packet.exit

send_packet.exit:                                 ; preds = %if.then.i.i.i, %if.end.i.i.send_packet.exit_crit_edge
  %hw1.i = getelementptr inbounds %struct.dev_info, ptr %105, i32 0, i32 2
  %254 = ptrtoint ptr %sw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %sw.i.i.i, align 4
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #22
  %257 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %234, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %256, ptr %258, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !255
  tail call void @arm_heavy_mb() #22
  %260 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i169.i = getelementptr i8, ptr %261, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169.i, i32 0) #22, !srcloc !205
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %262 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %tx_packets.i, align 4
  %inc55.i = add i32 %263, 1
  store i32 %inc55.i, ptr %tx_packets.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %264 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %tx_bytes.i, align 4
  %add.i149 = add i32 %265, %116
  store i32 %add.i149, ptr %tx_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i159, i32 %add)
  %cmp55.not = icmp sgt i32 %retval.0.i159, %add
  br i1 %cmp55.not, label %send_packet.exit.unlock_crit_edge, label %send_packet.exit.unlock.sink.split_crit_edge

send_packet.exit.unlock.sink.split_crit_edge:     ; preds = %send_packet.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlock.sink.split

send_packet.exit.unlock_crit_edge:                ; preds = %send_packet.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlock

unlock.sink.split:                                ; preds = %send_packet.exit.unlock.sink.split_crit_edge, %hw_alloc_pkt.exit.unlock.sink.split_crit_edge, %if.end24.unlock.sink.split_crit_edge
  %rc.2.ph = phi i32 [ 0, %send_packet.exit.unlock.sink.split_crit_edge ], [ 16, %if.end24.unlock.sink.split_crit_edge ], [ 16, %hw_alloc_pkt.exit.unlock.sink.split_crit_edge ]
  %_tx.i.i150 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %266 = ptrtoint ptr %_tx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %_tx.i.i150, align 128
  %state.i.i151 = getelementptr inbounds %struct.netdev_queue, ptr %267, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i151) #22
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %send_packet.exit.unlock_crit_edge, %if.then38.unlock_crit_edge
  %rc.2 = phi i32 [ 0, %send_packet.exit.unlock_crit_edge ], [ 16, %if.then38.unlock_crit_edge ], [ %rc.2.ph, %unlock.sink.split ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %hwlock) #22
  br label %cleanup62

cleanup62:                                        ; preds = %unlock, %if.else.cleanup62_crit_edge
  %retval.2 = phi i32 [ %rc.2, %unlock ], [ 16, %if.else.cleanup62_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 512
  %and3 = and i32 %3, 256
  %promiscuous1.i = getelementptr i8, ptr %dev, i32 2536
  %4 = ptrtoint ptr %promiscuous1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %promiscuous1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and3)
  %cmp.not.i = icmp eq i32 %5, %and3
  br i1 %cmp.not.i, label %entry.dev_set_promiscuous.exit_crit_edge, label %if.then.i

entry.dev_set_promiscuous.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_set_promiscuous.exit

if.then.i:                                        ; preds = %entry
  %promiscuous2.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 24
  %6 = ptrtoint ptr %promiscuous2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %promiscuous2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not.i = icmp eq i32 %and3, 0
  %storemerge.v.i = select i1 %tobool.not.i, i8 -1, i8 1
  %storemerge.i = add i8 %7, %storemerge.v.i
  %8 = ptrtoint ptr %promiscuous2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge.i, ptr %promiscuous2.i, align 2
  %9 = ptrtoint ptr %promiscuous1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and3, ptr %promiscuous1.i, align 8
  %10 = load i8, ptr %promiscuous2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp8.i = icmp ult i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp11.i = icmp ult i8 %7, 2
  %or.cond.i = select i1 %cmp8.i, i1 %cmp11.i, i1 false
  br i1 %or.cond.i, label %if.then13.i, label %if.then.i.if.end15.i_crit_edge

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.then.i
  %rx_stop.i.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 30
  %11 = ptrtoint ptr %rx_stop.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rx_stop.i.i.i, align 2
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #22, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !250
  %15 = and i32 %14, -3
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #22
  %intr_set.i.i.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %17 = ptrtoint ptr %intr_set.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %intr_set.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !251
  tail call void @arm_heavy_mb() #22
  %18 = ptrtoint ptr %intr_set.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intr_set.i.i.i.i, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #22
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1, align 8
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 %20) #22, !srcloc !205
  %intr_mask.i.i.i.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %23 = ptrtoint ptr %intr_mask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_mask.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %24, -33554433
  store i32 %and.i.i.i.i.i, ptr %intr_mask.i.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !252
  tail call void @arm_heavy_mb() #22
  %rx_cfg.i.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %25 = ptrtoint ptr %rx_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_cfg.i.i.i, align 8
  %and.i.i.i = and i32 %26, -2
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #22
  %28 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %27) #22, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %30 = ptrtoint ptr %rx_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_cfg.i.i.i, align 8
  %and.i.i = and i32 %31, -5
  %masksel.i.i = select i1 %tobool.not.i.i, i32 0, i32 4
  %storemerge.i.i = or i32 %and.i.i, %masksel.i.i
  store i32 %storemerge.i.i, ptr %rx_cfg.i.i.i, align 8
  %enabled.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 29
  %32 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool2.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool2.not.i.i, label %if.then13.i.if.end15.i_crit_edge, label %if.then3.i.i

if.then13.i.if.end15.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.i

if.then3.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !246
  tail call void @arm_heavy_mb() #22
  %34 = ptrtoint ptr %rx_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_cfg.i.i.i, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #22
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw1, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %36) #22, !srcloc !205
  %39 = ptrtoint ptr %intr_mask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %intr_mask.i.i.i.i.i, align 4
  %or.i.i.i = or i32 %40, 33554432
  store i32 %or.i.i.i, ptr %intr_mask.i.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !247
  tail call void @arm_heavy_mb() #22
  %41 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw1, align 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 16777216) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !248
  tail call void @arm_heavy_mb() #22
  %43 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i11.i.i = getelementptr i8, ptr %44, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i.i, i32 2) #22, !srcloc !205
  %45 = ptrtoint ptr %rx_stop.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rx_stop.i.i.i, align 2
  %inc.i.i.i = add i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i.i.i)
  %cmp.i.i.i = icmp eq i8 %inc.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i8 2, i8 %inc.i.i.i
  %47 = ptrtoint ptr %rx_stop.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select.i.i.i, ptr %rx_stop.i.i.i, align 2
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then3.i.i, %if.then13.i.if.end15.i_crit_edge, %if.then.i.if.end15.i_crit_edge
  %features.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %48 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %features.i, align 8
  %and.i = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp ne i32 %and.i, 0
  %50 = and i1 %tobool.not.i, %tobool16.not.i
  br i1 %50, label %land.lhs.true19.i, label %if.end15.i.dev_set_promiscuous.exit_crit_edge

if.end15.i.dev_set_promiscuous.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_set_promiscuous.exit

land.lhs.true19.i:                                ; preds = %if.end15.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %51 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %priv_flags.i.i, align 16
  %and.i52.i = and i64 %52, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i52.i)
  %tobool.i.not.i = icmp eq i64 %and.i52.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true19.i.dev_set_promiscuous.exit_crit_edge, label %if.then21.i

land.lhs.true19.i.dev_set_promiscuous.exit_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_set_promiscuous.exit

if.then21.i:                                      ; preds = %land.lhs.true19.i
  %ksz_switch.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ksz_switch.i, align 4
  %first_port.i = getelementptr i8, ptr %dev, i32 2316
  %55 = ptrtoint ptr %first_port.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %first_port.i, align 4
  %mul.i.i.i = shl i32 %56, 5
  %add1.i.i.i = add i32 %mul.i.i.i, 1282
  %57 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i53.i = getelementptr i8, ptr %58, i32 %add1.i.i.i
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i53.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %60 = and i16 %59, -8
  %61 = or i16 %60, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %62 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw1, align 8
  %add.ptr.i53.i.i = getelementptr i8, ptr %63, i32 %add1.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i.i, i16 %61) #22, !srcloc !183
  %64 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i.i = getelementptr %struct.ksz_switch, ptr %65, i32 0, i32 2, i32 %56, i32 5
  %66 = ptrtoint ptr %stp_state.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %stp_state.i.i, align 4
  %shl.i = shl nuw i32 1, %56
  %member.i = getelementptr inbounds %struct.ksz_switch, ptr %54, i32 0, i32 8
  %67 = ptrtoint ptr %member.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %member.i, align 1
  %conv23.i = zext i8 %68 to i32
  %and24.i = and i32 %shl.i, %conv23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then21.i.dev_set_promiscuous.exit_crit_edge, label %if.then26.i

if.then21.i.dev_set_promiscuous.exit_crit_edge:   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_set_promiscuous.exit

if.then26.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #24
  %69 = trunc i32 %shl.i to i8
  %70 = xor i8 %69, -1
  %conv30.i = and i8 %68, %70
  %71 = ptrtoint ptr %member.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv30.i, ptr %member.i, align 1
  tail call fastcc void @bridge_change(ptr noundef %hw1) #22
  br label %dev_set_promiscuous.exit

dev_set_promiscuous.exit:                         ; preds = %if.then26.i, %if.then21.i.dev_set_promiscuous.exit_crit_edge, %land.lhs.true19.i.dev_set_promiscuous.exit_crit_edge, %if.end15.i.dev_set_promiscuous.exit_crit_edge, %entry.dev_set_promiscuous.exit_crit_edge
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %72 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp = icmp sgt i32 %73, 1
  br i1 %cmp, label %if.then, label %dev_set_promiscuous.exit.if.end_crit_edge

dev_set_promiscuous.exit.if.end_crit_edge:        ; preds = %dev_set_promiscuous.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %dev_set_promiscuous.exit
  call void @__sanitizer_cov_trace_pc() #24
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags, align 8
  %and6 = and i32 %75, 4096
  %or = or i32 %and6, %and
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_set_promiscuous.exit.if.end_crit_edge
  %multicast.0 = phi i32 [ %or, %if.then ], [ %and, %dev_set_promiscuous.exit.if.end_crit_edge ]
  %multicast1.i = getelementptr i8, ptr %dev, i32 2532
  %76 = ptrtoint ptr %multicast1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %multicast1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %multicast.0)
  %cmp.not.i97 = icmp eq i32 %77, %multicast.0
  br i1 %cmp.not.i97, label %if.end.dev_set_multicast.exit_crit_edge, label %if.then.i104

if.end.dev_set_multicast.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_set_multicast.exit

if.then.i104:                                     ; preds = %if.end
  %all_multi2.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 25
  %78 = ptrtoint ptr %all_multi2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %all_multi2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %multicast.0)
  %tobool.not.i98 = icmp eq i32 %multicast.0, 0
  %storemerge.v.i99 = select i1 %tobool.not.i98, i8 -1, i8 1
  %storemerge.i100 = add i8 %79, %storemerge.v.i99
  %80 = ptrtoint ptr %all_multi2.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %storemerge.i100, ptr %all_multi2.i, align 1
  %81 = ptrtoint ptr %multicast1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %multicast.0, ptr %multicast1.i, align 4
  %82 = load i8, ptr %all_multi2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp8.i101 = icmp ult i8 %82, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp11.i102 = icmp ult i8 %79, 2
  %or.cond.i103 = select i1 %cmp8.i101, i1 %cmp11.i102, i1 false
  br i1 %or.cond.i103, label %if.then13.i105, label %if.then.i104.dev_set_multicast.exit_crit_edge

if.then.i104.dev_set_multicast.exit_crit_edge:    ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_set_multicast.exit

if.then13.i105:                                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @hw_set_multicast(ptr noundef %hw1, i8 noundef zeroext %82) #22
  br label %dev_set_multicast.exit

dev_set_multicast.exit:                           ; preds = %if.then13.i105, %if.then.i104.dev_set_multicast.exit_crit_edge, %if.end.dev_set_multicast.exit_crit_edge
  %83 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp9 = icmp sgt i32 %84, 1
  br i1 %cmp9, label %dev_set_multicast.exit.cleanup56_crit_edge, label %if.end11

dev_set_multicast.exit.cleanup56_crit_edge:       ; preds = %dev_set_multicast.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup56

if.end11:                                         ; preds = %dev_set_multicast.exit
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 8
  %and13 = and i32 %86, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.end11.if.else_crit_edge, label %land.lhs.true

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true:                                    ; preds = %if.end11
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %87 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp14 = icmp eq i32 %88, 0
  br i1 %cmp14, label %land.lhs.true.if.else_crit_edge, label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %88)
  %cmp18 = icmp sgt i32 %88, 32
  br i1 %cmp18, label %if.then19, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then15
  %89 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %89)
  %ha.0106 = load ptr, ptr %mc, align 4
  %cmp31.not107 = icmp eq ptr %ha.0106, %mc
  br i1 %cmp31.not107, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.if.end36_crit_edge

for.cond.preheader.if.end36_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end36

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.then19:                                        ; preds = %if.then15
  %multi_list_size = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 28
  %90 = ptrtoint ptr %multi_list_size to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %multi_list_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %91)
  %cmp20.not = icmp eq i8 %91, 32
  br i1 %cmp20.not, label %if.then19.cleanup56_crit_edge, label %if.then22

if.then19.cleanup56_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup56

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #24
  %92 = ptrtoint ptr %multi_list_size to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 32, ptr %multi_list_size, align 4
  %all_multi = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 25
  %93 = ptrtoint ptr %all_multi to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %all_multi, align 1
  %inc = add i8 %94, 1
  store i8 %inc, ptr %all_multi, align 1
  tail call fastcc void @hw_set_multicast(ptr noundef %hw1, i8 noundef zeroext %inc)
  br label %cleanup56

if.end36:                                         ; preds = %if.end36.if.end36_crit_edge, %for.cond.preheader.if.end36_crit_edge
  %ha.0109 = phi ptr [ %ha.0, %if.end36.if.end36_crit_edge ], [ %ha.0106, %for.cond.preheader.if.end36_crit_edge ]
  %i.0108 = phi i32 [ %inc37, %if.end36.if.end36_crit_edge ], [ 0, %for.cond.preheader.if.end36_crit_edge ]
  %inc37 = add nuw nsw i32 %i.0108, 1
  %arrayidx = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 26, i32 %i.0108
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0109, i32 0, i32 2
  %95 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %96 = ptrtoint ptr %ha.0109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %ha.0 = load ptr, ptr %ha.0109, align 4
  %cmp31.not = icmp eq ptr %ha.0, %mc
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.0108)
  %cmp33 = icmp ugt i32 %i.0108, 30
  %or.cond = select i1 %cmp31.not, i1 true, i1 %cmp33
  br i1 %or.cond, label %for.end.loopexit, label %if.end36.if.end36_crit_edge

if.end36.if.end36_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end36

for.end.loopexit:                                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #24
  %phi.cast = trunc i32 %inc37 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %multi_list_size45 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 28
  %97 = ptrtoint ptr %multi_list_size45 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %i.0.lcssa, ptr %multi_list_size45, align 4
  tail call fastcc void @hw_set_grp_addr(ptr noundef %hw1)
  br label %cleanup56

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end11.if.else_crit_edge
  %multi_list_size46 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 28
  %98 = ptrtoint ptr %multi_list_size46 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %multi_list_size46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %99)
  %cmp48 = icmp eq i8 %99, 32
  br i1 %cmp48, label %if.then50, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %all_multi51 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 25
  %100 = ptrtoint ptr %all_multi51 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %all_multi51, align 1
  %dec = add i8 %101, -1
  store i8 %dec, ptr %all_multi51, align 1
  tail call fastcc void @hw_set_multicast(ptr noundef %hw1, i8 noundef zeroext %dec)
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.else.if.end53_crit_edge
  %102 = ptrtoint ptr %multi_list_size46 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %multi_list_size46, align 4
  tail call fastcc void @hw_clr_multicast(ptr noundef %hw1)
  br label %cleanup56

cleanup56:                                        ; preds = %if.end53, %for.end, %if.then22, %if.then19.cleanup56_crit_edge, %dev_set_multicast.exit.cleanup56_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %first_port = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %addr_list_size.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 22
  %4 = ptrtoint ptr %addr_list_size.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_list_size.i, align 8
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 0
  br i1 %cmp2.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 4
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 21, i32 %i.03.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %xor.i.i = xor i32 %13, %9
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %15, %11
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  %16 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !249
  tail call void @arm_heavy_mb() #22
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 8
  %mul.i = shl i32 %i.03.i, 3
  %add.ptr.i27 = getelementptr i8, ptr %18, i32 %mul.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i27, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #22, !srcloc !205
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %mac_override = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 23
  %19 = ptrtoint ptr %mac_override to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %mac_override, align 1
  %override_addr = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 20
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %override_addr, ptr %sa_data, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.inc.i.if.end_crit_edge, %if.then.i, %if.then.if.end_crit_edge
  %sa_data4 = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data4, i32 noundef 6) #22
  %intr_blocked.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 13
  %21 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %intr_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then.i29, label %if.end.hw_block_intr.exit_crit_edge

if.end.hw_block_intr.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_block_intr.exit

if.then.i29:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %intr_mask.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %23 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_mask.i.i, align 4
  %25 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %intr_blocked.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i28 = getelementptr i8, ptr %27, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28, i32 0) #22, !srcloc !205
  %28 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw1, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %29, i32 40
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #22, !srcloc !207
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %intr_set.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %32 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %intr_set.i.i, align 8
  %33 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_blocked.i, align 4
  br label %hw_block_intr.exit

hw_block_intr.exit:                               ; preds = %if.then.i29, %if.end.hw_block_intr.exit_crit_edge
  %interrupt.0.i = phi i32 [ 0, %if.end.hw_block_intr.exit_crit_edge ], [ %34, %if.then.i29 ]
  %35 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %first_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp9 = icmp sgt i32 %36, 0
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %hw_block_intr.exit
  call void @__sanitizer_cov_trace_pc() #24
  %dev_addr11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr11, align 64
  tail call fastcc void @hw_add_addr(ptr noundef %hw1, ptr noundef %38)
  br label %if.end14

if.else13:                                        ; preds = %hw_block_intr.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @hw_set_addr(ptr noundef %hw1)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interrupt.0.i)
  %tobool.not.i30 = icmp eq i32 %interrupt.0.i, 0
  br i1 %tobool.not.i30, label %if.end14.hw_restore_intr.exit_crit_edge, label %if.then.i32

if.end14.hw_restore_intr.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_restore_intr.exit

if.then.i32:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  %39 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %intr_blocked.i, align 4
  %intr_mask.i.i31 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %40 = ptrtoint ptr %intr_mask.i.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intr_mask.i.i31, align 4
  %intr_set.i.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %42 = ptrtoint ptr %intr_set.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %intr_set.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %43 = tail call i32 @llvm.bswap.i32(i32 %41) #22
  %44 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %43) #22, !srcloc !205
  br label %hw_restore_intr.exit

hw_restore_intr.exit:                             ; preds = %if.then.i32, %if.end14.hw_restore_intr.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr noundef %dev, ptr nocapture noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %proc_sem = getelementptr i8, ptr %dev, i32 2428
  %call4 = tail call i32 @down_interruptible(ptr noundef %proc_sem) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %if.end.sw.bb5_crit_edge
    i32 35145, label %sw.bb17
  ]

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb5

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %id = getelementptr i8, ptr %dev, i32 2484
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %if.end.sw.bb5_crit_edge
  %6 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ifr_ifru.i, align 2
  %conv7 = zext i16 %7 to i32
  %id8 = getelementptr i8, ptr %dev, i32 2484
  %8 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7)
  %cmp.not = icmp eq i32 %9, %conv7
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb5
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %10 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %11)
  %cmp11 = icmp ugt i16 %11, 5
  br i1 %cmp11, label %lor.lhs.false.sw.epilog_crit_edge, label %if.else

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  %linked = getelementptr i8, ptr %dev, i32 2364
  %12 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %linked, align 4
  %port_id = getelementptr inbounds %struct.ksz_port_info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id, align 1
  %conv14 = zext i8 %15 to i32
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %mul.i = shl nuw nsw i32 %conv14, 4
  %conv.i = zext i16 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, 1232
  %add1.i = add nuw nsw i32 %add.i, %mul.i
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 8
  %add.ptr.i61 = getelementptr i8, ptr %17, i32 %add1.i
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i61) #22, !srcloc !184
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !256
  %20 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %val_out, align 2
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %call18 = tail call zeroext i1 @capable(i32 noundef 12) #22
  br i1 %call18, label %if.else20, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.else20:                                        ; preds = %sw.bb17
  %21 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ifr_ifru.i, align 2
  %conv22 = zext i16 %22 to i32
  %id23 = getelementptr i8, ptr %dev, i32 2484
  %23 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv22)
  %cmp24.not = icmp eq i32 %24, %conv22
  br i1 %cmp24.not, label %lor.lhs.false26, label %if.else20.sw.epilog_crit_edge

if.else20.sw.epilog_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

lor.lhs.false26:                                  ; preds = %if.else20
  %reg_num27 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %25 = ptrtoint ptr %reg_num27 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %reg_num27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %26)
  %cmp29 = icmp ugt i16 %26, 5
  br i1 %cmp29, label %lor.lhs.false26.sw.epilog_crit_edge, label %if.else32

lor.lhs.false26.sw.epilog_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

if.else32:                                        ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #24
  %linked33 = getelementptr i8, ptr %dev, i32 2364
  %27 = ptrtoint ptr %linked33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %linked33, align 4
  %port_id34 = getelementptr inbounds %struct.ksz_port_info, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %port_id34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port_id34, align 1
  %conv35 = zext i8 %30 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %val_in, align 2
  %mul.i62 = shl nuw nsw i32 %conv35, 4
  %conv.i64 = zext i16 %26 to i32
  %add.i63 = add nuw nsw i32 %conv.i64, 1232
  %add1.i65 = add nuw nsw i32 %add.i63, %mul.i62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !257
  tail call void @arm_heavy_mb() #22
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #22
  %34 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw1, align 8
  %add.ptr.i66 = getelementptr i8, ptr %35, i32 %add1.i65
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i66, i16 %33) #22, !srcloc !183
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else32, %lor.lhs.false26.sw.epilog_crit_edge, %if.else20.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.else, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %if.else32 ], [ 0, %if.else ], [ -5, %lor.lhs.false.sw.epilog_crit_edge ], [ -5, %sw.bb5.sw.epilog_crit_edge ], [ -1, %sw.bb17.sw.epilog_crit_edge ], [ -5, %lor.lhs.false26.sw.epilog_crit_edge ], [ -5, %if.else20.sw.epilog_crit_edge ], [ -95, %if.end.sw.epilog_crit_edge ]
  tail call void @up(ptr noundef %proc_sem) #22
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %sw.epilog ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %cmp5.not = icmp eq ptr %7, %dev
  br i1 %cmp5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %add9 = add i32 %new_mtu, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522, i32 %add9)
  %cmp10 = icmp sgt i32 %add9, 1522
  %features = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 8
  %and = and i32 %9, -17
  %masksel = select i1 %cmp10, i32 16, i32 0
  %and.sink = or i32 %and, %masksel
  %hw_mtu.0 = select i1 %cmp10, i32 1916, i32 1524
  store i32 %and.sink, ptr %features, align 8
  %mtu = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %hw_mtu.0, ptr %mtu, align 8
  %mtu16 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %11 = ptrtoint ptr %mtu16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_mtu, ptr %mtu16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_tx_timeout(ptr nocapture noundef readonly %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @netdev_tx_timeout.last_reset, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %5 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %watchdog_timeo, align 4
  %add = add i32 %6, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, -1
  br i1 %cmp2, label %if.end4.thread, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

if.end4.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  store i32 %8, ptr @netdev_tx_timeout.last_reset, align 4
  br label %if.end24

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  store i32 %9, ptr @netdev_tx_timeout.last_reset, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4.if.end24_crit_edge, label %if.then5

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end24

if.then5:                                         ; preds = %if.end4
  %intr_mask.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %10 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_mask.i, align 4
  %intr_blocked.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 13
  %12 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %intr_blocked.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 8
  %add.ptr.i56 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #22, !srcloc !205
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1, align 8
  %add.ptr2.i = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #22, !srcloc !207
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %intr_set.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %19 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %intr_set.i, align 8
  %rx_stop.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 30
  %20 = ptrtoint ptr %rx_stop.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %rx_stop.i.i, align 2
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 40
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #22, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !250
  %24 = and i32 %23, -3
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #22
  %26 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %intr_set.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !251
  tail call void @arm_heavy_mb() #22
  %27 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %intr_set.i, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #22
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw1, align 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %31, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %29) #22, !srcloc !205
  %32 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intr_mask.i, align 4
  %and.i.i.i.i = and i32 %33, -33554433
  store i32 %and.i.i.i.i, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !252
  tail call void @arm_heavy_mb() #22
  %rx_cfg.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %34 = ptrtoint ptr %rx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_cfg.i.i, align 8
  %and.i.i = and i32 %35, -2
  %36 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #22
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %36) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !253
  tail call void @arm_heavy_mb() #22
  %tx_cfg.i.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 9
  %39 = ptrtoint ptr %tx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_cfg.i.i, align 4
  %and.i3.i = and i32 %40, -2
  %41 = tail call i32 @llvm.bswap.i32(i32 %and.i3.i) #22
  %42 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #22, !srcloc !205
  %enabled.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 29
  %44 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %enabled.i, align 1
  tail call fastcc void @transmit_cleanup(ptr noundef nonnull %1, i32 noundef 0)
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14
  %45 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_desc_info, align 4
  %cur.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 1
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %cur.i, align 4
  %alloc.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 5
  %48 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %alloc.i, align 4
  %avail.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 6
  %50 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %avail.i, align 4
  %next.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 8
  %51 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %next.i, align 4
  %last.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 7
  %52 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %last.i, align 4
  %tx_desc_info = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15
  %53 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_desc_info, align 4
  %cur.i57 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 1
  %55 = ptrtoint ptr %cur.i57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %cur.i57, align 4
  %alloc.i58 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 5
  %56 = ptrtoint ptr %alloc.i58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %alloc.i58, align 4
  %avail.i59 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 6
  %58 = ptrtoint ptr %avail.i59 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %avail.i59, align 4
  %next.i60 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 8
  %59 = ptrtoint ptr %next.i60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %next.i60, align 4
  %last.i61 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 7
  %60 = ptrtoint ptr %last.i61 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %last.i61, align 4
  tail call fastcc void @ksz_init_rx_buffers(ptr noundef nonnull %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !237
  tail call void @arm_heavy_mb() #22
  %61 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw1, align 8
  %add.ptr.i62 = getelementptr i8, ptr %62, i32 534
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i62, i16 256) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !238
  tail call void @arm_heavy_mb() #22
  %73 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw1, align 8
  %add.ptr4.i = getelementptr i8, ptr %74, i32 534
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 0) #22, !srcloc !183
  %ring_phys = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 3
  %75 = ptrtoint ptr %ring_phys to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ring_phys, align 4
  %ring_phys8 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 3
  %77 = ptrtoint ptr %ring_phys8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ring_phys8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !239
  tail call void @arm_heavy_mb() #22
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #22
  %80 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw1, align 8
  %add.ptr.i63 = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %79) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !240
  tail call void @arm_heavy_mb() #22
  %82 = tail call i32 @llvm.bswap.i32(i32 %78) #22
  %83 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw1, align 8
  %add.ptr4.i64 = getelementptr i8, ptr %84, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i64, i32 %82) #22, !srcloc !205
  tail call fastcc void @hw_set_addr(ptr noundef %hw1)
  %all_multi = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 25
  %85 = ptrtoint ptr %all_multi to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %all_multi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool9.not = icmp eq i8 %86, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @hw_set_multicast(ptr noundef %hw1, i8 noundef zeroext %86)
  br label %if.end15

if.else:                                          ; preds = %if.then5
  %multi_list_size = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 28
  %87 = ptrtoint ptr %multi_list_size to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %multi_list_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool12.not = icmp eq i8 %88, 0
  br i1 %tobool12.not, label %if.else.if.end15_crit_edge, label %if.then13

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @hw_set_grp_addr(ptr noundef %hw1)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else.if.end15_crit_edge, %if.then10
  %89 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp17 = icmp sgt i32 %90, 1
  br i1 %cmp17, label %if.end15.for.body.i_crit_edge, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 21, i32 %i.014.i
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i.i = icmp eq i32 %92, 0
  br i1 %cmp.i.i, label %empty_addr.exit.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else.i

empty_addr.exit.i:                                ; preds = %for.body.i
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp1.i.not.i = icmp eq i16 %94, 0
  br i1 %cmp1.i.not.i, label %do.body.i, label %empty_addr.exit.i.if.else.i_crit_edge

empty_addr.exit.i.if.else.i_crit_edge:            ; preds = %empty_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else.i

do.body.i:                                        ; preds = %empty_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !258
  tail call void @arm_heavy_mb() #22
  %95 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw1, align 8
  %mul.i = shl i32 %i.014.i, 3
  %add.ptr.i65 = getelementptr i8, ptr %96, i32 132
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i65, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #22, !srcloc !205
  br label %for.inc.i

if.else.i:                                        ; preds = %empty_addr.exit.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i, align 1
  %conv.i.i = zext i8 %98 to i32
  %arrayidx.1.i.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %99 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %100 to i32
  %arrayidx7.i.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %101 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %102 to i32
  %arrayidx7.1.i.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %103 = ptrtoint ptr %arrayidx7.1.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx7.1.i.i, align 1
  %conv8.1.i.i = zext i8 %104 to i32
  %105 = shl nuw nsw i32 %conv8.i.i, 16
  %106 = shl nuw nsw i32 %conv8.1.i.i, 8
  %shl6.2.i.i = or i32 %106, %105
  %arrayidx7.2.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %107 = ptrtoint ptr %arrayidx7.2.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx7.2.i.i, align 1
  %conv8.2.i.i = zext i8 %108 to i32
  %or9.2.i.i = or i32 %shl6.2.i.i, %conv8.2.i.i
  %shl6.3.i.i = shl nuw i32 %or9.2.i.i, 8
  %arrayidx7.3.i.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %109 = ptrtoint ptr %arrayidx7.3.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx7.3.i.i, align 1
  %conv8.3.i.i = zext i8 %110 to i32
  %or9.3.i.i = or i32 %shl6.3.i.i, %conv8.3.i.i
  %shl.1.i.i = shl nuw nsw i32 %conv.i.i, 8
  %or.1.i.i = or i32 %shl.1.i.i, %conv.1.i.i
  %or1.i.i = or i32 %or.1.i.i, -2147483648
  %mul.i.i = shl i32 %i.014.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !259
  tail call void @arm_heavy_mb() #22
  %111 = tail call i32 @llvm.bswap.i32(i32 %or9.3.i.i) #22
  %112 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i66 = getelementptr i8, ptr %113, i32 128
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr.i.i66, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %111) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !260
  tail call void @arm_heavy_mb() #22
  %114 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #22
  %115 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw1, align 8
  %add.ptr18.i.i = getelementptr i8, ptr %116, i32 132
  %add.ptr19.i.i = getelementptr i8, ptr %add.ptr18.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 %114) #22, !srcloc !205
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %do.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.cond.preheader, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.cond.preheader:                               ; preds = %for.inc.i
  %ksz_switch.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %117 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i68 = getelementptr i8, ptr %118, i32 1282
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %120 = and i16 %119, -8
  %121 = or i16 %120, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %122 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw1, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %123, i32 1282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i, i16 %121) #22, !srcloc !183
  %124 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i = getelementptr %struct.ksz_switch, ptr %125, i32 0, i32 2, i32 0, i32 5
  %126 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %stp_state.i, align 4
  %pdev = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 2, i32 0, i32 6
  %127 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.cond.preheader.if.end22_crit_edge, label %if.then21

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end22

if.then21:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  %131 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i71 = getelementptr i8, ptr %132, i32 1282
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i71) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %134 = or i16 %133, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %135 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw1, align 8
  %add.ptr.i53.i72 = getelementptr i8, ptr %136, i32 1282
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i72, i16 %134) #22, !srcloc !183
  %137 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i74 = getelementptr %struct.ksz_switch, ptr %138, i32 0, i32 2, i32 0, i32 5
  %139 = ptrtoint ptr %stp_state.i74 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 5, ptr %stp_state.i74, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.cond.preheader.if.end22_crit_edge
  %140 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i68.1 = getelementptr i8, ptr %141, i32 1314
  %142 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i68.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %143 = and i16 %142, -8
  %144 = or i16 %143, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %145 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw1, align 8
  %add.ptr.i53.i.1 = getelementptr i8, ptr %146, i32 1314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i.1, i16 %144) #22, !srcloc !183
  %147 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i.1 = getelementptr %struct.ksz_switch, ptr %148, i32 0, i32 2, i32 1, i32 5
  %149 = ptrtoint ptr %stp_state.i.1 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %stp_state.i.1, align 4
  %pdev.1 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 2, i32 1, i32 6
  %150 = ptrtoint ptr %pdev.1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pdev.1, align 4
  %state.i.1 = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %state.i.1, align 4
  %and1.i.i.1 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.1)
  %tobool.i.not.1 = icmp eq i32 %and1.i.i.1, 0
  br i1 %tobool.i.not.1, label %if.end22.if.end23_crit_edge, label %if.then21.1

if.end22.if.end23_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

if.then21.1:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #24
  %154 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i71.1 = getelementptr i8, ptr %155, i32 1314
  %156 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i71.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %157 = or i16 %156, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %158 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw1, align 8
  %add.ptr.i53.i72.1 = getelementptr i8, ptr %159, i32 1314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i72.1, i16 %157) #22, !srcloc !183
  %160 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ksz_switch.i, align 4
  %stp_state.i74.1 = getelementptr %struct.ksz_switch, ptr %161, i32 0, i32 2, i32 1, i32 5
  %162 = ptrtoint ptr %stp_state.i74.1 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 5, ptr %stp_state.i74.1, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21.1, %if.end22.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !245
  tail call void @arm_heavy_mb() #22
  %163 = ptrtoint ptr %tx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %tx_cfg.i.i, align 4
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #22
  %166 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !246
  tail call void @arm_heavy_mb() #22
  %168 = ptrtoint ptr %rx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rx_cfg.i.i, align 8
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #22
  %171 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i77 = getelementptr i8, ptr %172, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77, i32 %170) #22, !srcloc !205
  %173 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %intr_mask.i, align 4
  %or.i.i = or i32 %174, 33554432
  store i32 %or.i.i, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !247
  tail call void @arm_heavy_mb() #22
  %175 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw1, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %176, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 16777216) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !248
  tail call void @arm_heavy_mb() #22
  %177 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i.i78 = getelementptr i8, ptr %178, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i78, i32 2) #22, !srcloc !205
  %179 = ptrtoint ptr %rx_stop.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %rx_stop.i.i, align 2
  %inc.i.i = add i8 %180, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i.i)
  %cmp.i.i80 = icmp eq i8 %inc.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i80, i8 2, i8 %inc.i.i
  %181 = ptrtoint ptr %rx_stop.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %spec.select.i.i, ptr %rx_stop.i.i, align 2
  %182 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %enabled.i, align 1
  %183 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %intr_blocked.i, align 4
  %184 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %intr_mask.i, align 4
  %186 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %intr_set.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %187 = tail call i32 @llvm.bswap.i32(i32 %185) #22
  %188 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i84 = getelementptr i8, ptr %189, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 %187) #22, !srcloc !205
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end4.if.end24_crit_edge, %if.end4.thread
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %190 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %192 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %191, i32 0, i32 12
  %193 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %192)
  %cmp.not.i.i = icmp eq i32 %194, %192
  br i1 %cmp.not.i.i, label %if.end24.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end24.netif_trans_update.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #24
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #24
  %195 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile i32 %192, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end24.netif_trans_update.exit_crit_edge
  %196 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %197) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @netdev_query_statistics(ptr noundef %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx = getelementptr i8, ptr %dev, i32 2352
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %3 to i32
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %4 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rx_errors, align 8
  %arrayidx4 = getelementptr i8, ptr %dev, i32 2344
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx4, align 8
  %conv5 = trunc i64 %6 to i32
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %7 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %tx_errors, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %8 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %multicast, align 8
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %9 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %collisions, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %10 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_length_errors, align 8
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %11 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_crc_errors, align 8
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %12 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_frame_errors, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %13 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_window_errors, align 8
  %mib_port_cnt = getelementptr i8, ptr %dev, i32 2320
  %14 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mib_port_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp94 = icmp sgt i32 %15, 0
  br i1 %cmp94, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %first_port = getelementptr i8, ptr %dev, i32 2316
  %16 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_port, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %p.096 = phi i32 [ %inc62, %for.body.for.body_crit_edge ], [ %17, %for.body.preheader ]
  %i.095 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx16 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 12
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx16, align 8
  %conv17 = trunc i64 %19 to i32
  %20 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %multicast, align 8
  %add = add i32 %21, %conv17
  store i32 %add, ptr %multicast, align 8
  %arrayidx21 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 28
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx21, align 8
  %conv22 = trunc i64 %23 to i32
  %24 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %collisions, align 4
  %add25 = add i32 %25, %conv22
  store i32 %add25, ptr %collisions, align 4
  %arrayidx27 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 3
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx29, align 8
  %add30 = add i64 %29, %27
  %arrayidx32 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 4
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx32, align 8
  %add33 = add i64 %add30, %31
  %arrayidx35 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 5
  %32 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx35, align 8
  %add36 = add i64 %add33, %33
  %conv37 = trunc i64 %add36 to i32
  %34 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_length_errors, align 8
  %add40 = add i32 %35, %conv37
  store i32 %add40, ptr %rx_length_errors, align 8
  %arrayidx42 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 7
  %36 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx42, align 8
  %conv43 = trunc i64 %37 to i32
  %38 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_crc_errors, align 8
  %add46 = add i32 %39, %conv43
  store i32 %add46, ptr %rx_crc_errors, align 8
  %arrayidx48 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 8
  %40 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx48, align 8
  %arrayidx50 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 6
  %42 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx50, align 8
  %add51 = add i64 %43, %41
  %conv52 = trunc i64 %add51 to i32
  %44 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_frame_errors, align 4
  %add55 = add i32 %45, %conv52
  store i32 %add55, ptr %rx_frame_errors, align 4
  %arrayidx57 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.096, i32 4, i32 22
  %46 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx57, align 8
  %conv58 = trunc i64 %47 to i32
  %48 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_window_errors, align 8
  %add61 = add i32 %49, %conv58
  store i32 %add61, ptr %tx_window_errors, align 8
  %inc = add nuw nsw i32 %i.095, 1
  %inc62 = add i32 %p.096, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_netpoll(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %intr_mask.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_mask.i, align 4
  %intr_blocked.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 13
  %4 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %intr_blocked.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr.i4 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #22, !srcloc !205
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr2.i = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #22, !srcloc !207
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %intr_set.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %11 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %intr_set.i, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @netdev_intr(i32 noundef %13, ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #22
  %and = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %rx_cfg2 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %rx_cfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_cfg2, align 8
  %and3 = and i32 %3, -196609
  %masksel = select i1 %tobool.not, i32 0, i32 196608
  %and3.sink = or i32 %and3, %masksel
  store i32 %and3.sink, ptr %rx_cfg2, align 8
  %enabled = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 29
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !261
  tail call void @arm_heavy_mb() #22
  %rx_cfg6 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %6 = ptrtoint ptr %rx_cfg6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_cfg6, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #22, !srcloc !205
  br label %if.end7

if.end7:                                          ; preds = %do.body, %entry.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_monitor(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -64
  %dev1 = getelementptr i8, ptr %t, i32 140
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %features = getelementptr inbounds %struct.dev_info, ptr %3, i32 0, i32 2, i32 32
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %port3 = getelementptr i8, ptr %t, i32 -56
  tail call fastcc void @port_get_link_speed(ptr noundef %port3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %media_state.i = getelementptr i8, ptr %t, i32 160
  %6 = ptrtoint ptr %media_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %media_state.i, align 8
  %linked.i = getelementptr i8, ptr %t, i32 -4
  %8 = ptrtoint ptr %linked.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %linked.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.not.i = icmp eq i32 %7, %11
  br i1 %cmp.not.i, label %if.end.update_link.exit_crit_edge, label %if.then.i

if.end.update_link.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %update_link.exit

if.then.i:                                        ; preds = %if.end
  %12 = ptrtoint ptr %media_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %media_state.i, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i.update_link.exit_crit_edge, label %if.then4.i

if.then.i.update_link.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %update_link.exit

if.then4.i:                                       ; preds = %if.then.i
  %media_state1.i.i = getelementptr i8, ptr %1, i32 2528
  %15 = ptrtoint ptr %media_state1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %media_state1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netif_carrier_on(ptr noundef %1) #22
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netif_carrier_off(ptr noundef %1) #22
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %msg_enable.i.i = getelementptr i8, ptr %1, i32 2524
  %17 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.update_link.exit_crit_edge, label %if.then2.i.i

do.body.i.i.update_link.exit_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %update_link.exit

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %19 = ptrtoint ptr %media_state1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %media_state1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp4.i.i = icmp eq i32 %20, 0
  %cond.i.i = select i1 %cmp4.i.i, ptr @.str.25, ptr @.str.26
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond.i.i) #26
  br label %update_link.exit

update_link.exit:                                 ; preds = %if.then2.i.i, %do.body.i.i.update_link.exit_crit_edge, %if.then.i.update_link.exit_crit_edge, %if.end.update_link.exit_crit_edge
  %cnt.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 1
  %21 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cnt.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %cnt.i, align 4
  %max.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 2
  %23 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp sgt i32 %24, 0
  br i1 %cmp.i, label %if.then.i9, label %if.else7.i

if.then.i9:                                       ; preds = %update_link.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %24)
  %cmp3.i = icmp slt i32 %inc.i, %24
  br i1 %cmp3.i, label %if.then4.i10, label %if.else.i

if.then4.i10:                                     ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %period.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 3
  %26 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period.i, align 4
  %add.i = add i32 %27, %25
  %expires.i = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %28 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %t) #22
  br label %ksz_update_timer.exit

if.else.i:                                        ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #24
  %29 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %max.i, align 4
  br label %ksz_update_timer.exit

if.else7.i:                                       ; preds = %update_link.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9.i = icmp slt i32 %24, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.else7.i.ksz_update_timer.exit_crit_edge

if.else7.i.ksz_update_timer.exit_crit_edge:       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %ksz_update_timer.exit

if.then10.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %period11.i = getelementptr inbounds %struct.ksz_timer_info, ptr %t, i32 0, i32 3
  %31 = ptrtoint ptr %period11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period11.i, align 4
  %add12.i = add i32 %32, %30
  %expires14.i = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %33 = ptrtoint ptr %expires14.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add12.i, ptr %expires14.i, align 4
  tail call void @add_timer(ptr noundef %t) #22
  br label %ksz_update_timer.exit

ksz_update_timer.exit:                            ; preds = %if.then10.i, %if.else7.i.ksz_update_timer.exit_crit_edge, %if.else.i, %if.then4.i10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr i8, ptr %dev, i32 2360
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 8
  %linked = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %linked, align 4
  %port_id = getelementptr inbounds %struct.ksz_port_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 1
  %conv = zext i8 %5 to i32
  %conv3 = shl i32 %reg_num, 1
  %mul.i = shl nuw nsw i32 %conv, 4
  %conv.i = and i32 %conv3, 65534
  %add.i = add nuw nsw i32 %conv.i, 1232
  %add1.i = add nuw nsw i32 %add.i, %mul.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 %add1.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i6) #22, !srcloc !184
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !256
  %conv4 = zext i16 %9 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg_num, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw2 = getelementptr i8, ptr %dev, i32 2360
  %0 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw2, align 8
  %port_cnt = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %first_port = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_port, align 4
  %conv = shl i32 %reg_num, 1
  %conv3 = trunc i32 %val to i16
  %conv.i = and i32 %conv, 65534
  %add.i = add nuw nsw i32 %conv.i, 1232
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv3) #22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pi.012 = phi i32 [ %5, %for.body.lr.ph ], [ %inc4, %for.body.for.body_crit_edge ]
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul.i = shl i32 %pi.012, 4
  %add1.i = add i32 %add.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !257
  tail call void @arm_heavy_mb() #22
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr.i9 = getelementptr i8, ptr %8, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9, i16 %6) #22, !srcloc !183
  %inc = add nuw nsw i32 %i.011, 1
  %inc4 = add i32 %pi.012, 1
  %9 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_cnt, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_get_link_speed(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %intr_blocked.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.hw_block_intr.exit_crit_edge

entry.hw_block_intr.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_block_intr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %intr_mask.i.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_mask.i.i, align 4
  %6 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %intr_blocked.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !206
  tail call void @arm_heavy_mb() #22
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #22, !srcloc !205
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #22, !srcloc !207
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !208
  %intr_set.i.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %intr_set.i.i, align 8
  %14 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr_blocked.i, align 4
  br label %hw_block_intr.exit

hw_block_intr.exit:                               ; preds = %if.then.i, %entry.hw_block_intr.exit_crit_edge
  %interrupt.0.i = phi i32 [ 0, %entry.hw_block_intr.exit_crit_edge ], [ %15, %if.then.i ]
  %port_cnt = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 6
  %16 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp150 = icmp sgt i32 %17, 0
  br i1 %cmp150, label %for.body.lr.ph, label %hw_block_intr.exit.if.end68_crit_edge

hw_block_intr.exit.if.end68_crit_edge:            ; preds = %hw_block_intr.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end68

for.body.lr.ph:                                   ; preds = %hw_block_intr.exit
  %first_port = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 4
  %18 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %first_port, align 4
  %overrides.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 33
  %force_link.i = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 2
  %ksz_switch.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 1
  %rx_cfg1.i.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 10
  %tx_cfg2.i.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 9
  %enabled.i.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 29
  %features.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.0153 = phi i32 [ %19, %for.body.lr.ph ], [ %inc59, %for.inc.for.body_crit_edge ]
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %linked.0151 = phi ptr [ null, %for.body.lr.ph ], [ %linked.3, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 2, i32 %p.0153
  %mul.i = shl i32 %p.0153, 5
  %add1.i = add i32 %mul.i, 1298
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 %add1.i
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #22, !srcloc !184
  %23 = lshr i16 %22, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %add1.i121 = add i32 %mul.i, 1300
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr.i122 = getelementptr i8, ptr %25, i32 %add1.i121
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i122) #22, !srcloc !184
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %28 = trunc i16 %27 to i8
  %conv2 = and i8 %28, 96
  %conv3 = trunc i16 %23 to i8
  %advertised = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 2, i32 %p.0153, i32 3
  %29 = ptrtoint ptr %advertised to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %advertised, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %conv3)
  %cmp6 = icmp eq i8 %30, %conv3
  br i1 %cmp6, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %partner = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 2, i32 %p.0153, i32 4
  %31 = ptrtoint ptr %partner to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %partner, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv2, i8 %32)
  %cmp10 = icmp eq i8 %conv2, %32
  br i1 %cmp10, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %33 = ptrtoint ptr %advertised to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3, ptr %advertised, align 1
  %partner13 = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 2, i32 %p.0153, i32 4
  %34 = ptrtoint ptr %partner13 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv2, ptr %partner13, align 2
  %35 = and i16 %27, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not = icmp eq i16 %35, 0
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  %tobool17.not = icmp eq ptr %linked.0151, null
  %spec.select = select i1 %tobool17.not, ptr %arrayidx, ptr %linked.0151
  %tx_rate = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 2, i32 %p.0153, i32 1
  %36 = and i16 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool22.not = icmp eq i16 %36, 0
  %spec.store.select118 = select i1 %tobool22.not, i32 100000, i32 1000000
  %37 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.store.select118, ptr %tx_rate, align 4
  %duplex = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 2, i32 %p.0153, i32 2
  %38 = and i16 %27, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool28.not = icmp eq i16 %38, 0
  %spec.store.select = select i1 %tobool28.not, i8 1, i8 2
  %39 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %spec.store.select, ptr %duplex, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp32.not = icmp eq i32 %41, 0
  br i1 %cmp32.not, label %if.then16.if.end53_crit_edge, label %if.then34

if.then16.if.end53_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then34:                                        ; preds = %if.then16
  %mul.i123 = shl i32 %p.0153, 4
  %add1.i125 = add i32 %mul.i123, 1240
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr.i126 = getelementptr i8, ptr %43, i32 %add1.i125
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i126) #22, !srcloc !184
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !256
  %add1.i129 = add i32 %mul.i123, 1242
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %add.ptr.i130 = getelementptr i8, ptr %47, i32 %add1.i129
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i130) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !256
  %49 = ptrtoint ptr %overrides.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %overrides.i, align 4
  %and.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i131 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i131, label %if.end.i, label %if.then34.determine_flow_ctrl.exit_crit_edge

if.then34.determine_flow_ctrl.exit_crit_edge:     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #24
  br label %determine_flow_ctrl.exit

if.end.i:                                         ; preds = %if.then34
  %51 = tail call i16 @llvm.bswap.i16(i16 %48) #22
  %52 = ptrtoint ptr %force_link.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %force_link.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool1.not.i = icmp ne i8 %53, 0
  %spec.select.i = zext i1 %tobool1.not.i to i32
  %conv.i = zext i16 %51 to i32
  %and4.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else20.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %conv7.i = zext i16 %45 to i32
  %and8.i = and i32 %conv7.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then6.i.if.end32.i_crit_edge

if.then6.i.if.end32.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end32.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #24
  %and12.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  %and15.i = and i32 %conv7.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and15.i)
  %cmp.i = icmp eq i32 %and15.i, 2048
  %or.cond.i = and i1 %cmp.i, %tobool13.not.i
  %spec.select44.i = select i1 %or.cond.i, i32 1, i32 %spec.select.i
  br label %if.end32.i

if.else20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %and22.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp ne i32 %and22.i, 0
  %54 = and i16 %45, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %54)
  %cmp27.i = icmp eq i16 %54, 3072
  %or.cond43.i = and i1 %cmp27.i, %tobool23.not.i
  %spec.select45.i = select i1 %or.cond43.i, i32 1, i32 %spec.select.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else20.i, %if.else.i, %if.then6.i.if.end32.i_crit_edge
  %rx.1.i = phi i32 [ 1, %if.then6.i.if.end32.i_crit_edge ], [ %spec.select.i, %if.else.i ], [ %spec.select45.i, %if.else20.i ]
  %tx.1.i = phi i32 [ 1, %if.then6.i.if.end32.i_crit_edge ], [ %spec.select44.i, %if.else.i ], [ %spec.select.i, %if.else20.i ]
  %55 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ksz_switch.i, align 4
  %tobool33.not.i = icmp eq ptr %56, null
  br i1 %tobool33.not.i, label %if.then34.i, label %if.end32.i.if.then36_crit_edge

if.end32.i.if.then36_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then36

if.then34.i:                                      ; preds = %if.end32.i
  %57 = ptrtoint ptr %rx_cfg1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_cfg1.i.i, align 8
  %59 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_cfg2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx.1.i)
  %tobool.not.i.i = icmp eq i32 %rx.1.i, 0
  %and.i.i = and i32 %58, -513
  %masksel.i.i = select i1 %tobool.not.i.i, i32 0, i32 512
  %storemerge.i.i = or i32 %and.i.i, %masksel.i.i
  %61 = ptrtoint ptr %rx_cfg1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge.i.i, ptr %rx_cfg1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx.1.i)
  %tobool5.not.i.i = icmp eq i32 %tx.1.i, 0
  %and11.i.i = and i32 %60, -513
  %masksel43.i.i = select i1 %tobool5.not.i.i, i32 0, i32 512
  %storemerge42.i.i = or i32 %and11.i.i, %masksel43.i.i
  %62 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %storemerge42.i.i, ptr %tx_cfg2.i.i, align 4
  %63 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool13.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool13.not.i.i, label %if.then34.i.determine_flow_ctrl.exit_crit_edge, label %if.then14.i.i

if.then34.i.determine_flow_ctrl.exit_crit_edge:   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %determine_flow_ctrl.exit

if.then14.i.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %storemerge.i.i)
  %cmp.not.i.i = icmp eq i32 %58, %storemerge.i.i
  br i1 %cmp.not.i.i, label %if.then14.i.i.if.end18.i.i_crit_edge, label %do.body.i.i

if.then14.i.i.if.end18.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18.i.i

do.body.i.i:                                      ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !262
  tail call void @arm_heavy_mb() #22
  %65 = ptrtoint ptr %rx_cfg1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_cfg1.i.i, align 8
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #22
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %add.ptr.i.i132 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i132, i32 %67) #22, !srcloc !205
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %do.body.i.i, %if.then14.i.i.if.end18.i.i_crit_edge
  %70 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_cfg2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %71)
  %cmp20.not.i.i = icmp eq i32 %60, %71
  br i1 %cmp20.not.i.i, label %if.end18.i.i.determine_flow_ctrl.exit_crit_edge, label %do.body22.i.i

if.end18.i.i.determine_flow_ctrl.exit_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %determine_flow_ctrl.exit

do.body22.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !263
  tail call void @arm_heavy_mb() #22
  %72 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_cfg2.i.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #22
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #22, !srcloc !205
  br label %determine_flow_ctrl.exit

determine_flow_ctrl.exit:                         ; preds = %do.body22.i.i, %if.end18.i.i.determine_flow_ctrl.exit_crit_edge, %if.then34.i.determine_flow_ctrl.exit_crit_edge, %if.then34.determine_flow_ctrl.exit_crit_edge
  %77 = ptrtoint ptr %ksz_switch.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load ptr, ptr %ksz_switch.i, align 4
  %tobool35.not = icmp eq ptr %.pr, null
  br i1 %tobool35.not, label %determine_flow_ctrl.exit.if.end41_crit_edge, label %determine_flow_ctrl.exit.if.then36_crit_edge

determine_flow_ctrl.exit.if.then36_crit_edge:     ; preds = %determine_flow_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then36

determine_flow_ctrl.exit.if.end41_crit_edge:      ; preds = %determine_flow_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end41

if.then36:                                        ; preds = %determine_flow_ctrl.exit.if.then36_crit_edge, %if.end32.i.if.then36_crit_edge
  %78 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp39.not = icmp eq i8 %79, 1
  %add1.i.i = add i32 %mul.i, 1282
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  %add.ptr.i.i133 = getelementptr i8, ptr %81, i32 %add1.i.i
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i133) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !197
  %83 = and i16 %82, -9
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #22
  %masksel.i = select i1 %cmp39.not, i16 2048, i16 0
  %data.0.i.i = or i16 %84, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !198
  tail call void @arm_heavy_mb() #22
  %85 = tail call i16 @llvm.bswap.i16(i16 %data.0.i.i) #22
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %87, i32 %add1.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i, i16 %85) #22, !srcloc !183
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %determine_flow_ctrl.exit.if.end41_crit_edge
  %88 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %features.i, align 8
  %and.i135 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136 = icmp eq i32 %and.i135, 0
  br i1 %tobool.not.i136, label %if.end41.if.end53_crit_edge, label %land.lhs.true.i

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.lhs.true.i:                                  ; preds = %if.end41
  %90 = ptrtoint ptr %overrides.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %overrides.i, align 4
  %and1.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i139, label %land.lhs.true.i.if.end53_crit_edge

land.lhs.true.i.if.end53_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then.i139:                                     ; preds = %land.lhs.true.i
  %92 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_cfg2.i.i, align 4
  %94 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp.i138 = icmp eq i8 %95, 1
  br i1 %cmp.i138, label %if.then4.i, label %if.then.i139.if.end.i140_crit_edge

if.then.i139.if.end.i140_crit_edge:               ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i140

if.then4.i:                                       ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #24
  %and6.i = and i32 %93, -513
  %96 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and6.i, ptr %tx_cfg2.i.i, align 4
  br label %if.end.i140

if.end.i140:                                      ; preds = %if.then4.i, %if.then.i139.if.end.i140_crit_edge
  %97 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %enabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool8.not.i = icmp eq i8 %98, 0
  br i1 %tobool8.not.i, label %if.end.i140.if.end53_crit_edge, label %land.lhs.true9.i

if.end.i140.if.end53_crit_edge:                   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.lhs.true9.i:                                 ; preds = %if.end.i140
  %99 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_cfg2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %100)
  %cmp11.not.i = icmp eq i32 %93, %100
  br i1 %cmp11.not.i, label %land.lhs.true9.i.if.end53_crit_edge, label %do.body.i

land.lhs.true9.i.if.end53_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

do.body.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !264
  tail call void @arm_heavy_mb() #22
  %101 = ptrtoint ptr %tx_cfg2.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_cfg2.i.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #22
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #22, !srcloc !205
  br label %if.end53

if.else:                                          ; preds = %if.end
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp45.not = icmp eq i32 %107, 1
  br i1 %cmp45.not, label %if.else.if.end53_crit_edge, label %if.then47

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %link_down = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 3, i32 %p.0153, i32 1
  %108 = ptrtoint ptr %link_down to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %link_down, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.else.if.end53_crit_edge, %do.body.i, %land.lhs.true9.i.if.end53_crit_edge, %if.end.i140.if.end53_crit_edge, %land.lhs.true.i.if.end53_crit_edge, %if.end41.if.end53_crit_edge, %if.then16.if.end53_crit_edge
  %storemerge = phi i32 [ 0, %if.then16.if.end53_crit_edge ], [ 1, %if.then47 ], [ 1, %if.else.if.end53_crit_edge ], [ 0, %if.end41.if.end53_crit_edge ], [ 0, %land.lhs.true.i.if.end53_crit_edge ], [ 0, %if.end.i140.if.end53_crit_edge ], [ 0, %land.lhs.true9.i.if.end53_crit_edge ], [ 0, %do.body.i ]
  %linked.2 = phi ptr [ %spec.select, %if.then16.if.end53_crit_edge ], [ %linked.0151, %if.then47 ], [ %linked.0151, %if.else.if.end53_crit_edge ], [ %spec.select, %if.end41.if.end53_crit_edge ], [ %spec.select, %land.lhs.true.i.if.end53_crit_edge ], [ %spec.select, %if.end.i140.if.end53_crit_edge ], [ %spec.select, %land.lhs.true9.i.if.end53_crit_edge ], [ %spec.select, %do.body.i ]
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %storemerge, ptr %arrayidx, align 4
  %conv55 = trunc i32 %storemerge to i8
  %state58 = getelementptr %struct.ksz_hw, ptr %1, i32 0, i32 3, i32 %p.0153, i32 2
  %110 = ptrtoint ptr %state58 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv55, ptr %state58, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end53, %land.lhs.true.for.inc_crit_edge
  %linked.3 = phi ptr [ %linked.0151, %land.lhs.true.for.inc_crit_edge ], [ %linked.2, %if.end53 ]
  %inc = add nuw nsw i32 %i.0152, 1
  %inc59 = add i32 %p.0153, 1
  %111 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port_cnt, align 4
  %cmp = icmp slt i32 %inc, %112
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool60.not = icmp eq ptr %linked.3, null
  br i1 %tobool60.not, label %for.end.if.end68_crit_edge, label %land.lhs.true61

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end68

land.lhs.true61:                                  ; preds = %for.end
  %linked62 = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 9
  %113 = ptrtoint ptr %linked62 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %linked62, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp64 = icmp eq i32 %116, 1
  br i1 %cmp64, label %if.then66, label %land.lhs.true61.if.end68_crit_edge

land.lhs.true61.if.end68_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end68

if.then66:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #24
  %117 = ptrtoint ptr %linked62 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %linked.3, ptr %linked62, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %land.lhs.true61.if.end68_crit_edge, %for.end.if.end68_crit_edge, %hw_block_intr.exit.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interrupt.0.i)
  %tobool.not.i141 = icmp eq i32 %interrupt.0.i, 0
  br i1 %tobool.not.i141, label %if.end68.hw_restore_intr.exit_crit_edge, label %if.then.i143

if.end68.hw_restore_intr.exit_crit_edge:          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_restore_intr.exit

if.then.i143:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #24
  %118 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %intr_blocked.i, align 4
  %intr_mask.i.i142 = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 11
  %119 = ptrtoint ptr %intr_mask.i.i142 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %intr_mask.i.i142, align 4
  %intr_set.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %1, i32 0, i32 12
  %121 = ptrtoint ptr %intr_set.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %intr_set.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %122 = tail call i32 @llvm.bswap.i32(i32 %120) #22
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %124, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %122) #22, !srcloc !205
  br label %hw_restore_intr.exit

hw_restore_intr.exit:                             ; preds = %if.then.i143, %if.end68.hw_restore_intr.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_add_addr(ptr nocapture noundef %hw, ptr nocapture noundef readonly %mac_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %override_addr = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 20
  %0 = ptrtoint ptr %override_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %override_addr, align 4
  %2 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %3, %1
  %add.ptr.i = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %7, %5
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %addr_list_size = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 22
  %8 = ptrtoint ptr %addr_list_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_list_size, align 8
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp12.not = icmp eq i8 %9, 0
  br i1 %cmp12.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.014 = phi i32 [ %j.1, %if.end5.for.body_crit_edge ], [ 16, %for.cond.preheader.for.body_crit_edge ]
  %i.013 = phi i32 [ %inc, %if.end5.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 21, i32 %i.013
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %xor.i1 = xor i32 %11, %3
  %add.ptr.i2 = getelementptr i8, ptr %arrayidx, i32 4
  %12 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i2, align 2
  %xor37.i4 = xor i16 %13, %7
  %xor3.i5 = zext i16 %xor37.i4 to i32
  %or.i6 = or i32 %xor.i1, %xor3.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6)
  %cmp.i7 = icmp eq i32 %or.i6, 0
  br i1 %cmp.i7, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.014)
  %cmp6 = icmp eq i32 %j.014, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i8 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1.i.not = icmp eq i16 %13, 0
  %or.cond = select i1 %cmp.i8, i1 %cmp1.i.not, i1 false
  %spec.select = select i1 %or.cond, i32 %i.013, i32 16
  %j.1 = select i1 %cmp6, i32 %spec.select, i32 %j.014
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.1)
  %cmp14 = icmp slt i32 %j.1, 16
  br i1 %cmp14, label %if.then16, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx18 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 21, i32 %j.1
  %14 = call ptr @memcpy(ptr %arrayidx18, ptr %mac_addr, i32 6)
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  %conv.i = zext i8 %16 to i32
  %arrayidx.1.i = getelementptr i8, ptr %arrayidx18, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %18 to i32
  %arrayidx7.i = getelementptr i8, ptr %arrayidx18, i32 2
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %20 to i32
  %arrayidx7.1.i = getelementptr i8, ptr %arrayidx18, i32 3
  %21 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx7.1.i, align 1
  %conv8.1.i = zext i8 %22 to i32
  %23 = shl nuw nsw i32 %conv8.i, 16
  %24 = shl nuw nsw i32 %conv8.1.i, 8
  %shl6.2.i = or i32 %24, %23
  %arrayidx7.2.i = getelementptr i8, ptr %arrayidx18, i32 4
  %25 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx7.2.i, align 1
  %conv8.2.i = zext i8 %26 to i32
  %or9.2.i = or i32 %shl6.2.i, %conv8.2.i
  %shl6.3.i = shl nuw i32 %or9.2.i, 8
  %arrayidx7.3.i = getelementptr i8, ptr %arrayidx18, i32 5
  %27 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx7.3.i, align 1
  %conv8.3.i = zext i8 %28 to i32
  %or9.3.i = or i32 %shl6.3.i, %conv8.3.i
  %shl.1.i = shl nuw nsw i32 %conv.i, 8
  %or.1.i = or i32 %shl.1.i, %conv.1.i
  %or1.i = or i32 %or.1.i, -2147483648
  %mul.i = shl i32 %j.1, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !259
  tail call void @arm_heavy_mb() #22
  %29 = tail call i32 @llvm.bswap.i32(i32 %or9.3.i) #22
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr.i9 = getelementptr i8, ptr %31, i32 %mul.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %29) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !260
  tail call void @arm_heavy_mb() #22
  %32 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #22
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr18.i = getelementptr i8, ptr %34, i32 %mul.i
  %add.ptr19.i = getelementptr i8, ptr %add.ptr18.i, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %32) #22, !srcloc !205
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_set_link_speed(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %port_cnt = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp88 = icmp sgt i32 %3, 0
  br i1 %cmp88, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %first_port = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_port, align 4
  %flow_ctrl.i = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 3
  %speed = getelementptr inbounds %struct.ksz_port, ptr %port, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.090 = phi i32 [ %5, %for.body.lr.ph ], [ %inc59, %for.inc.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul.i = shl i32 %p.090, 5
  %add1.i = add i32 %mul.i, 1298
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add1.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #22, !srcloc !184
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %add1.i76 = add i32 %mul.i, 1300
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i77 = getelementptr i8, ptr %11, i32 %add1.i76
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i77) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !265
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 %9
  %14 = and i16 %9, -160
  %15 = ptrtoint ptr %flow_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flow_ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cond.i = icmp eq i8 %16, 1
  %masksel.i = select i1 %cond.i, i16 16, i16 0
  %17 = or i16 %14, %masksel.i
  %18 = or i16 %17, 143
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %speed, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %20, label %for.body.if.end29thread-pre-split_crit_edge [
    i8 0, label %lor.lhs.false
    i8 10, label %if.then16
    i8 100, label %if.then24
  ]

for.body.if.end29thread-pre-split_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29thread-pre-split

lor.lhs.false:                                    ; preds = %for.body
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not = icmp eq i8 %23, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end49_crit_edge, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end49

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %24 = or i16 %17, 131
  br label %if.end29thread-pre-split

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %25 = or i16 %17, 140
  br label %if.end29thread-pre-split

if.end29thread-pre-split:                         ; preds = %if.then24, %if.then16, %for.body.if.end29thread-pre-split_crit_edge
  %data.0.ph = phi i16 [ %24, %if.then16 ], [ %25, %if.then24 ], [ %18, %for.body.if.end29thread-pre-split_crit_edge ]
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr = load i8, ptr %port, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %lor.lhs.false.if.end29_crit_edge
  %27 = phi i8 [ %.pr, %if.end29thread-pre-split ], [ %23, %lor.lhs.false.if.end29_crit_edge ]
  %data.0 = phi i16 [ %data.0.ph, %if.end29thread-pre-split ], [ %18, %lor.lhs.false.if.end29_crit_edge ]
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %27, label %if.end29.if.end49_crit_edge [
    i8 1, label %if.then34
    i8 2, label %if.then43
  ]

if.end29.if.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end49

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  %29 = and i16 %data.0, -11
  br label %if.end49

if.then43:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  %30 = and i16 %data.0, -6
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.then34, %if.end29.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge
  %data.1 = phi i16 [ %18, %lor.lhs.false.if.end49_crit_edge ], [ %data.0, %if.end29.if.end49_crit_edge ], [ %30, %if.then43 ], [ %29, %if.then34 ]
  call void @__sanitizer_cov_trace_cmp2(i16 %data.1, i16 %spec.select)
  %cmp52.not = icmp eq i16 %data.1, %spec.select
  br i1 %cmp52.not, label %if.end49.for.inc_crit_edge, label %if.then54

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #24
  %31 = or i16 %data.1, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #22
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr.i81 = getelementptr i8, ptr %34, i32 %add1.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i81, i16 %32) #22, !srcloc !183
  br label %for.inc

for.inc:                                          ; preds = %if.then54, %if.end49.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.089, 1
  %inc59 = add i32 %p.090, 1
  %35 = ptrtoint ptr %port_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_cnt, align 4
  %cmp = icmp slt i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_intr(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %hwlock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %hwlock) #22
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 8
  %add.ptr.i100 = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #22, !srcloc !207
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !266
  %intr_set.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_set.i, align 8
  %and.i = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !248
  tail call void @arm_heavy_mb() #22
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #22
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 8
  %add.ptr.i101 = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %8) #22, !srcloc !205
  %intr_mask = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 11
  %11 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intr_mask, align 4
  %and = and i32 %12, %and.i
  %and3 = and i32 %and, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.if.end8_crit_edge, label %if.then7, !prof !254

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  %13 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_mask, align 4
  %and.i102 = and i32 %14, -1342177281
  store i32 %and.i102, ptr %intr_mask, align 4
  %tx_tasklet = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 16
  tail call fastcc void @tasklet_schedule(ptr noundef %tx_tasklet)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body.if.end8_crit_edge
  %and9 = and i32 %and, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %if.then17, !prof !186

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18

if.then17:                                        ; preds = %if.end8
  %15 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intr_mask, align 4
  %and.i104 = and i32 %16, -536870913
  store i32 %and.i104, ptr %intr_mask, align 4
  %state.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 15, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then17.if.end18_crit_edge

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #24
  %rx_tasklet = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 15
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #22
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %if.then17.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %and19 = and i32 %and, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end28_crit_edge, label %if.then27, !prof !254

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end28

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #24
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %17 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_fifo_errors, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %rx_fifo_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !267
  tail call void @arm_heavy_mb() #22
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1, align 8
  %add.ptr.i105 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 16777216) #22, !srcloc !205
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end18.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and)
  %tobool30.not = icmp sgt i32 %and, -1
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then37, !prof !254

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end39

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #24
  %port38 = getelementptr i8, ptr %dev_id, i32 2312
  %features = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 32
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features, align 8
  %or = or i32 %22, 1
  store i32 %or, ptr %features, align 8
  tail call fastcc void @port_get_link_speed(ptr noundef %port38)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end28.if.end39_crit_edge
  %and40 = and i32 %and, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end49, label %if.then48, !prof !254

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @handle_rx_stop(ptr noundef %hw1)
  br label %do.end77

if.end49:                                         ; preds = %if.end39
  %and50 = and i32 %and, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.do.end77_crit_edge, label %if.then58, !prof !254

if.end49.do.end77_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end77

if.then58:                                        ; preds = %if.end49
  %23 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_mask, align 4
  %and60 = and i32 %24, -67108865
  store i32 %and60, ptr %intr_mask, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #26
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1, align 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #22, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !268
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool67.not = icmp eq i32 %28, 0
  br i1 %tobool67.not, label %do.end71, label %if.then58.do.end77_crit_edge

if.then58.do.end77_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end77

do.end71:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #24
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #26
  br label %do.end77

do.end77:                                         ; preds = %do.end71, %if.then58.do.end77_crit_edge, %if.end49.do.end77_crit_edge, %if.then48
  %intr_blocked.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 13
  %29 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %intr_blocked.i, align 4
  %30 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %intr_mask, align 4
  %32 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %intr_set.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %33 = tail call i32 @llvm.bswap.i32(i32 %31) #22
  %34 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %33) #22, !srcloc !205
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end77 ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %hwlock) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_proc_task(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %t, i32 -1832
  %enabled = getelementptr i8, ptr %t, i32 -483
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -1840
  %dev_rcv = getelementptr i8, ptr %t, i32 -308
  %2 = ptrtoint ptr %dev_rcv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_rcv, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  tail call void @arm_heavy_mb() #22
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 8
  br i1 %tobool2.not, label %if.then6, label %if.else, !prof !186

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #22, !srcloc !205
  %hwlock = getelementptr i8, ptr %t, i32 -444
  tail call void @_raw_spin_lock_irq(ptr noundef %hwlock) #22
  tail call fastcc void @hw_turn_on_intr(ptr noundef %hw1, i32 noundef 671088640)
  tail call void @_raw_spin_unlock_irq(ptr noundef %hwlock) #22
  br label %cleanup

if.else:                                          ; preds = %if.end
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 32) #22, !srcloc !205
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__tasklet_schedule(ptr noundef %t) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_proc_task(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1864
  %hw1 = getelementptr i8, ptr %t, i32 -1856
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !248
  tail call void @arm_heavy_mb() #22
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 80) #22, !srcloc !205
  tail call fastcc void @transmit_cleanup(ptr noundef %add.ptr, i32 noundef 1) #22
  %dev_count.i = getelementptr i8, ptr %t, i32 -952
  %2 = ptrtoint ptr %dev_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.i = icmp sgt i32 %3, 0
  br i1 %cmp10.i, label %entry.for.body.i_crit_edge, label %entry.tx_done.exit_crit_edge

entry.tx_done.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %tx_done.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %port.011.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %pdev.i = getelementptr %struct.dev_info, ptr %add.ptr, i32 0, i32 2, i32 2, i32 %port.011.i, i32 6
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netif_tx_wake_queue(ptr noundef %9) #22
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %port.011.i, 1
  %12 = ptrtoint ptr %dev_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_count.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.tx_done.exit_crit_edge

if.end.i.tx_done.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %tx_done.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

tx_done.exit:                                     ; preds = %if.end.i.tx_done.exit_crit_edge, %entry.tx_done.exit_crit_edge
  %hwlock = getelementptr i8, ptr %t, i32 -468
  tail call void @_raw_spin_lock_irq(ptr noundef %hwlock) #22
  %intr_mask.i = getelementptr i8, ptr %t, i32 -924
  %14 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr_mask.i, align 4
  %or.i = or i32 %15, 1073741824
  store i32 %or.i, ptr %intr_mask.i, align 4
  %intr_blocked.i = getelementptr i8, ptr %t, i32 -916
  %16 = ptrtoint ptr %intr_blocked.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_blocked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then.i7, label %tx_done.exit.hw_turn_on_intr.exit_crit_edge

tx_done.exit.hw_turn_on_intr.exit_crit_edge:      ; preds = %tx_done.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_turn_on_intr.exit

if.then.i7:                                       ; preds = %tx_done.exit
  call void @__sanitizer_cov_trace_pc() #24
  %intr_set.i.i = getelementptr i8, ptr %t, i32 -920
  %18 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %intr_set.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #22
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #22, !srcloc !205
  br label %hw_turn_on_intr.exit

hw_turn_on_intr.exit:                             ; preds = %if.then.i7, %tx_done.exit.hw_turn_on_intr.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %hwlock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksz_init_rx_buffers(ptr nocapture noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14
  %alloc = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 5
  %0 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp62 = icmp sgt i32 %1, 0
  br i1 %cmp62, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %last.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 7
  %mask.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 9
  %avail.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 2, i32 14, i32 6
  %mtu = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 13
  %pdev.i = getelementptr inbounds %struct.dev_info, ptr %adapter, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %release_desc.exit.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %release_desc.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_desc_info, align 4
  %4 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last.i, align 4
  %arrayidx.i = getelementptr %struct.ksz_desc, ptr %3, i32 %5
  %inc.i = add i32 %5, 1
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %7, %inc.i
  store i32 %and.i, ptr %last.i, align 4
  %8 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %avail.i, align 4
  %buf.i = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 1, i32 1
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf.i, align 4
  %and3.i = and i32 %11, -2048
  store i32 %and3.i, ptr %buf.i, align 4
  %dma_buf3 = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 2
  %12 = ptrtoint ptr %dma_buf3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_buf3, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body.if.end.thread_crit_edge, label %land.lhs.true

for.body.if.end.thread_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.thread

land.lhs.true:                                    ; preds = %for.body
  %len = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 2, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp4.not = icmp eq i32 %15, %17
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %dma.i = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 2, i32 1
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma.i, align 4
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %21, i32 noundef %23, i32 noundef 2, i32 noundef 0) #22
  %24 = ptrtoint ptr %dma_buf3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_buf3, align 4
  tail call void @consume_skb(ptr noundef %25) #22
  %26 = ptrtoint ptr %dma_buf3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dma_buf3, align 4
  %27 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dma.i, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then, %for.body.if.end.thread_crit_edge
  %28 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu, align 8
  %len657 = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 2, i32 2
  %30 = ptrtoint ptr %len657 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %len657, align 4
  br label %if.then9

if.end:                                           ; preds = %land.lhs.true
  %31 = ptrtoint ptr %dma_buf3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %dma_buf3, align 4
  %32 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mtu, align 8
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %len, align 4
  %tobool8.not = icmp eq ptr %.pr, null
  br i1 %tobool8.not, label %if.end.if.then9_crit_edge, label %if.end12thread-pre-split

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then9

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.thread
  %len660 = phi ptr [ %len657, %if.end.thread ], [ %len, %if.end.if.then9_crit_edge ]
  %35 = phi i32 [ %29, %if.end.thread ], [ %33, %if.end.if.then9_crit_edge ]
  %call.i = tail call ptr @__alloc_skb(i32 noundef %35, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #22
  %36 = ptrtoint ptr %dma_buf3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %dma_buf3, align 4
  br label %if.end12

if.end12thread-pre-split:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %37 = ptrtoint ptr %dma_buf3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr61 = load ptr, ptr %dma_buf3, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.then9
  %38 = phi ptr [ %.pr61, %if.end12thread-pre-split ], [ %call.i, %if.then9 ]
  %len659 = phi ptr [ %len, %if.end12thread-pre-split ], [ %len660, %if.then9 ]
  %tobool14.not = icmp eq ptr %38, null
  br i1 %tobool14.not, label %if.end12.if.end23_crit_edge, label %land.lhs.true15

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

land.lhs.true15:                                  ; preds = %if.end12
  %dma = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 2, i32 1
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not = icmp eq i32 %40, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true15.if.end23_crit_edge

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true15
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i, align 8
  %45 = ptrtoint ptr %len659 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len659, align 4
  %call.i45 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %44) #22
  br i1 %call.i45, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then17
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !254

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #22
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44, i32 3
  %47 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %50, %if.end.i.i ], [ %48, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #22
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %44, i32 noundef %46) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %44 to i32
  %sub.i = add i32 %52, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %51, i32 %shr.i
  %and.i46 = and i32 %52, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i46, i32 noundef %46, i32 noundef 2, i32 noundef 0) #22
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %53 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i, ptr %dma, align 4
  br label %if.end23

if.end23:                                         ; preds = %dma_map_single_attrs.exit, %land.lhs.true15.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %dma24 = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 2, i32 1
  %54 = ptrtoint ptr %dma24 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma24, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #22
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %addr1.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %addr1.i, align 4
  %60 = ptrtoint ptr %len659 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len659, align 4
  %62 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load.i = load i32, ptr %buf.i, align 4
  %bf.value.i = and i32 %61, 2047
  %bf.clear.i = and i32 %bf.load.i, -2048
  %bf.set.i = or i32 %bf.clear.i, %bf.value.i
  store i32 %bf.set.i, ptr %buf.i, align 4
  %sw.i = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 1
  %63 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load.i48 = load i32, ptr %sw.i, align 4
  %bf.set.i49 = or i32 %bf.load.i48, -2147483648
  store i32 %bf.set.i49, ptr %sw.i, align 4
  %buf_size.i = getelementptr %struct.ksz_desc, ptr %3, i32 %5, i32 1, i32 2
  %64 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %bf.set.i)
  %cmp.not.i = icmp eq i32 %65, %bf.set.i
  br i1 %cmp.not.i, label %if.end23.release_desc.exit_crit_edge, label %if.then.i51

if.end23.release_desc.exit_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_desc.exit

if.then.i51:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #24
  %66 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %bf.set.i, ptr %buf_size.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %bf.set.i) #22
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %buf9.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %buf9.i, align 4
  br label %release_desc.exit

release_desc.exit:                                ; preds = %if.then.i51, %if.end23.release_desc.exit_crit_edge
  %71 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sw.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #22
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %75, align 4
  %inc = add nuw nsw i32 %i.063, 1
  %77 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %alloc, align 4
  %cmp = icmp slt i32 %inc, %78
  br i1 %cmp, label %release_desc.exit.for.body_crit_edge, label %release_desc.exit.for.end_crit_edge

release_desc.exit.for.end_crit_edge:              ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

release_desc.exit.for.body_crit_edge:             ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %release_desc.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %t) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__tasklet_schedule(ptr noundef %t) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_rx_stop(ptr nocapture noundef %hw) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %rx_stop = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 30
  %0 = ptrtoint ptr %rx_stop to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_stop, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %1, label %if.then6 [
    i8 0, label %if.then
    i8 1, label %if.else15
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %intr_mask = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %3 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intr_mask, align 4
  %and = and i32 %4, -33554433
  store i32 %and, ptr %intr_mask, align 4
  br label %if.end18

if.then6:                                         ; preds = %entry
  %enabled = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 29
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then6.if.else11_crit_edge, label %land.lhs.true

if.then6.if.else11_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else11

land.lhs.true:                                    ; preds = %if.then6
  %rx_cfg = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 10
  %7 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_cfg, align 8
  %and8 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.else11_crit_edge, label %if.then10

land.lhs.true.if.else11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !246
  tail call void @arm_heavy_mb() #22
  %9 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_cfg, align 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #22
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #22, !srcloc !205
  %intr_mask.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %14 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr_mask.i, align 4
  %or.i = or i32 %15, 33554432
  store i32 %or.i, ptr %intr_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !247
  tail call void @arm_heavy_mb() #22
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr4.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16777216) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !248
  tail call void @arm_heavy_mb() #22
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2) #22, !srcloc !205
  %20 = ptrtoint ptr %rx_stop to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_stop, align 2
  %inc.i = add i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i8 2, i8 %inc.i
  %22 = ptrtoint ptr %rx_stop to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select.i, ptr %rx_stop, align 2
  br label %if.end18

if.else11:                                        ; preds = %land.lhs.true.if.else11_crit_edge, %if.then6.if.else11_crit_edge
  %intr_mask12 = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %23 = ptrtoint ptr %intr_mask12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_mask12, align 4
  %and13 = and i32 %24, -33554433
  store i32 %and13, ptr %intr_mask12, align 4
  %25 = ptrtoint ptr %rx_stop to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %rx_stop, align 2
  br label %if.end18

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %26 = ptrtoint ptr %rx_stop to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %rx_stop, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.else11, %if.then10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_turn_on_intr(ptr nocapture noundef %hw, i32 noundef %bit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mask = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mask, align 4
  %or = or i32 %1, %bit
  store i32 %or, ptr %intr_mask, align 4
  %intr_blocked = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 13
  %2 = ptrtoint ptr %intr_blocked to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %intr_set.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  %4 = ptrtoint ptr %intr_set.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %intr_set.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !212
  tail call void @arm_heavy_mb() #22
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #22
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #22, !srcloc !205
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @transmit_cleanup(ptr noundef %hw_priv, i32 noundef %normal) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_desc_info = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 15
  %hwlock = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %hwlock) #22
  %last2 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 15, i32 7
  %avail = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 15, i32 6
  %alloc = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 15, i32 5
  %0 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avail, align 4
  %2 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp43 = icmp slt i32 %1, %3
  br i1 %cmp43, label %while.body.lr.ph, label %while.end.thread

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @_raw_spin_unlock_irq(ptr noundef %hwlock) #22
  br label %if.end21

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %last2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %normal)
  %tobool3.not = icmp eq i32 %normal, 0
  %pdev = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 1
  %mask = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 15, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %dev.046 = phi ptr [ null, %while.body.lr.ph ], [ %dev.1, %if.end14.while.body_crit_edge ]
  %last.044 = phi i32 [ %5, %while.body.lr.ph ], [ %and, %if.end14.while.body_crit_edge ]
  %6 = ptrtoint ptr %tx_desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_desc_info, align 4
  %arrayidx = getelementptr %struct.ksz_desc, ptr %7, i32 %last.044
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not = icmp sgt i32 %12, -1
  br i1 %tobool.not, label %while.body.if.end6_crit_edge, label %if.then

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6

if.then:                                          ; preds = %while.body
  br i1 %tobool3.not, label %if.else, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %bf.clear.i = and i32 %12, 2147483647
  %13 = tail call i32 @llvm.bswap.i32(i32 %bf.clear.i) #22
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %9, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %while.body.if.end6_crit_edge
  %dma_buf7 = getelementptr %struct.ksz_desc, ptr %7, i32 %last.044, i32 2
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %dma = getelementptr %struct.ksz_desc, ptr %7, i32 %last.044, i32 2, i32 1
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  %len = getelementptr %struct.ksz_desc, ptr %7, i32 %last.044, i32 2, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev8, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #22
  %21 = ptrtoint ptr %dma_buf7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_buf7, align 4
  %tobool9.not = icmp eq ptr %22, null
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %if.then10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  %23 = getelementptr inbounds %struct.anon.44, ptr %22, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %22, i32 noundef 1) #22
  %26 = ptrtoint ptr %dma_buf7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dma_buf7, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %dev.1 = phi ptr [ %25, %if.then10 ], [ %dev.046, %if.end6.if.end14_crit_edge ]
  %inc = add i32 %last.044, 1
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask, align 4
  %and = and i32 %28, %inc
  %29 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %avail, align 4
  %inc16 = add i32 %30, 1
  store i32 %inc16, ptr %avail, align 4
  %31 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alloc, align 4
  %cmp = icmp slt i32 %inc16, %32
  br i1 %cmp, label %if.end14.while.body_crit_edge, label %if.end14.while.end_crit_edge

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %if.then.while.end_crit_edge
  %last.0.lcssa = phi i32 [ %and, %if.end14.while.end_crit_edge ], [ %last.044, %if.then.while.end_crit_edge ]
  %dev.0.lcssa = phi ptr [ %dev.1, %if.end14.while.end_crit_edge ], [ %dev.046, %if.then.while.end_crit_edge ]
  %33 = ptrtoint ptr %last2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %last.0.lcssa, ptr %last2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %hwlock) #22
  %tobool19.not = icmp eq ptr %dev.0.lcssa, null
  br i1 %tobool19.not, label %while.end.if.end21_crit_edge, label %if.then20

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21

if.then20:                                        ; preds = %while.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev.0.lcssa, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 12
  %37 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i.i = icmp eq i32 %38, %36
  br i1 %cmp.not.i.i, label %if.then20.if.end21_crit_edge, label %do.body5.i.i

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21

do.body5.i.i:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #24
  %39 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %36, ptr %trans_start.i.i, align 16
  br label %if.end21

if.end21:                                         ; preds = %do.body5.i.i, %if.then20.if.end21_crit_edge, %while.end.if.end21_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_rcv_special(ptr nocapture noundef %hw_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14
  %alloc = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 5
  %0 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc, align 4
  %next2 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 8
  %2 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not74 = icmp eq i32 %1, 0
  br i1 %tobool.not74, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pdev = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 2, i32 0, i32 6
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 4
  %mask = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 9
  br label %while.body

while.body:                                       ; preds = %release_desc.exit.while.body_crit_edge, %while.body.lr.ph
  %dec78.in = phi i32 [ %1, %while.body.lr.ph ], [ %dec78, %release_desc.exit.while.body_crit_edge ]
  %next.077 = phi i32 [ %3, %while.body.lr.ph ], [ %and40, %release_desc.exit.while.body_crit_edge ]
  %received.076 = phi i32 [ 0, %while.body.lr.ph ], [ %received.1, %release_desc.exit.while.body_crit_edge ]
  %dev.075 = phi ptr [ %5, %while.body.lr.ph ], [ %dev.2, %release_desc.exit.while.body_crit_edge ]
  %dec78 = add i32 %dec78.in, -1
  %6 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_desc_info, align 4
  %arrayidx3 = getelementptr %struct.ksz_desc, ptr %7, i32 %next.077
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool4.not = icmp sgt i32 %12, -1
  br i1 %tobool4.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

if.end:                                           ; preds = %while.body
  %13 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp sgt i32 %14, 1
  br i1 %cmp, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %bf.lshr7 = lshr i32 %12, 20
  %bf.clear = and i32 %bf.lshr7, 15
  %sub = add nsw i32 %bf.clear, -1
  %pdev10 = getelementptr %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 2, i32 %sub, i32 6
  %15 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev10, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then5.release_packet_crit_edge, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then5.release_packet_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_packet

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %dev.1 = phi ptr [ %16, %if.then5.if.end13_crit_edge ], [ %dev.075, %if.end.if.end13_crit_edge ]
  %19 = and i32 %12, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %19)
  %.not = icmp eq i32 %19, 1610612736
  br i1 %.not, label %if.then22, label %if.end13.release_packet_crit_edge

if.end13.release_packet_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_packet

if.then22:                                        ; preds = %if.end13
  %20 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  %and = and i32 %12, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %and)
  %cmp27 = icmp eq i32 %and, 262144
  %or.cond72 = or i1 %tobool26.not, %cmp27
  br i1 %or.cond72, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #24
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %12, 0
  %call30 = tail call fastcc i32 @rx_proc(ptr noundef %dev.1, ptr noundef %hw1, ptr noundef %arrayidx3, [1 x i32] %.fca.0.insert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %inc = zext i1 %tobool31.not to i32
  %spec.select = add i32 %received.076, %inc
  br label %release_packet

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx35 = getelementptr i8, ptr %dev.1, i32 2352
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx35, align 8
  %inc36 = add i64 %22, 1
  store i64 %inc36, ptr %arrayidx35, align 8
  br label %release_packet

release_packet:                                   ; preds = %if.else, %if.then28, %if.end13.release_packet_crit_edge, %if.then5.release_packet_crit_edge
  %dev.2 = phi ptr [ %16, %if.then5.release_packet_crit_edge ], [ %dev.1, %if.else ], [ %dev.1, %if.end13.release_packet_crit_edge ], [ %dev.1, %if.then28 ]
  %received.1 = phi i32 [ %received.076, %if.then5.release_packet_crit_edge ], [ %received.076, %if.else ], [ %received.076, %if.end13.release_packet_crit_edge ], [ %spec.select, %if.then28 ]
  %sw.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.077, i32 1
  %23 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %sw.i, align 4
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %sw.i, align 4
  %buf_size.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.077, i32 1, i32 2
  %24 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size.i, align 4
  %buf.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.077, i32 1, i32 1
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i = icmp eq i32 %25, %27
  br i1 %cmp.not.i, label %release_packet.release_desc.exit_crit_edge, label %if.then.i

release_packet.release_desc.exit_crit_edge:       ; preds = %release_packet
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_desc.exit

if.then.i:                                        ; preds = %release_packet
  call void @__sanitizer_cov_trace_pc() #24
  %28 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %buf_size.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %27) #22
  %30 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx3, align 4
  %buf9.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %buf9.i, align 4
  br label %release_desc.exit

release_desc.exit:                                ; preds = %if.then.i, %release_packet.release_desc.exit_crit_edge
  %33 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sw.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #22
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx3, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %37, align 4
  %inc39 = add i32 %next.077, 1
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask, align 4
  %and40 = and i32 %40, %inc39
  %tobool.not = icmp eq i32 %dec78, 0
  br i1 %tobool.not, label %release_desc.exit.while.end_crit_edge, label %release_desc.exit.while.body_crit_edge

release_desc.exit.while.body_crit_edge:           ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

release_desc.exit.while.end_crit_edge:            ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.end:                                        ; preds = %release_desc.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %received.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %received.076, %while.body.while.end_crit_edge ], [ %received.1, %release_desc.exit.while.end_crit_edge ]
  %next.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %next.077, %while.body.while.end_crit_edge ], [ %and40, %release_desc.exit.while.end_crit_edge ]
  %41 = ptrtoint ptr %next2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %next.0.lcssa, ptr %next2, align 4
  ret i32 %received.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_rcv_packets(ptr nocapture noundef %hw_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14
  %alloc = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 5
  %0 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc, align 4
  %next2 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 8
  %2 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not59 = icmp eq i32 %1, 0
  br i1 %tobool.not59, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pdev = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 2, i32 0, i32 6
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 4
  %mask = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 9
  br label %while.body

while.body:                                       ; preds = %release_desc.exit.while.body_crit_edge, %while.body.lr.ph
  %dec63.in = phi i32 [ %1, %while.body.lr.ph ], [ %dec63, %release_desc.exit.while.body_crit_edge ]
  %received.062 = phi i32 [ 0, %while.body.lr.ph ], [ %received.1, %release_desc.exit.while.body_crit_edge ]
  %dev.061 = phi ptr [ %5, %while.body.lr.ph ], [ %dev.2, %release_desc.exit.while.body_crit_edge ]
  %next.060 = phi i32 [ %3, %while.body.lr.ph ], [ %and, %release_desc.exit.while.body_crit_edge ]
  %dec63 = add i32 %dec63.in, -1
  %6 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_desc_info, align 4
  %arrayidx3 = getelementptr %struct.ksz_desc, ptr %7, i32 %next.060
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool4.not = icmp sgt i32 %12, -1
  br i1 %tobool4.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

if.end:                                           ; preds = %while.body
  %13 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp sgt i32 %14, 1
  br i1 %cmp, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %bf.lshr7 = lshr i32 %12, 20
  %bf.clear = and i32 %bf.lshr7, 15
  %sub = add nsw i32 %bf.clear, -1
  %pdev10 = getelementptr %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 2, i32 %sub, i32 6
  %15 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev10, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then5.release_packet_crit_edge, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end13

if.then5.release_packet_crit_edge:                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_packet

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %dev.1 = phi ptr [ %16, %if.then5.if.end13_crit_edge ], [ %dev.061, %if.end.if.end13_crit_edge ]
  %19 = and i32 %12, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %19)
  %.not = icmp eq i32 %19, 1610612736
  br i1 %.not, label %if.then22, label %if.end13.release_packet_crit_edge

if.end13.release_packet_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_packet

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %12, 0
  %call24 = tail call fastcc i32 @rx_proc(ptr noundef %dev.1, ptr noundef %hw1, ptr noundef %arrayidx3, [1 x i32] %.fca.0.insert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %inc = zext i1 %tobool25.not to i32
  %spec.select = add i32 %received.062, %inc
  br label %release_packet

release_packet:                                   ; preds = %if.then22, %if.end13.release_packet_crit_edge, %if.then5.release_packet_crit_edge
  %dev.2 = phi ptr [ %16, %if.then5.release_packet_crit_edge ], [ %dev.1, %if.end13.release_packet_crit_edge ], [ %dev.1, %if.then22 ]
  %received.1 = phi i32 [ %received.062, %if.then5.release_packet_crit_edge ], [ %received.062, %if.end13.release_packet_crit_edge ], [ %spec.select, %if.then22 ]
  %sw.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.060, i32 1
  %20 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %sw.i, align 4
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %sw.i, align 4
  %buf_size.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.060, i32 1, i32 2
  %21 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_size.i, align 4
  %buf.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.060, i32 1, i32 1
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not.i = icmp eq i32 %22, %24
  br i1 %cmp.not.i, label %release_packet.release_desc.exit_crit_edge, label %if.then.i

release_packet.release_desc.exit_crit_edge:       ; preds = %release_packet
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_desc.exit

if.then.i:                                        ; preds = %release_packet
  call void @__sanitizer_cov_trace_pc() #24
  %25 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %buf_size.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %24) #22
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3, align 4
  %buf9.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %buf9.i, align 4
  br label %release_desc.exit

release_desc.exit:                                ; preds = %if.then.i, %release_packet.release_desc.exit_crit_edge
  %30 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sw.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #22
  %33 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx3, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %34, align 4
  %inc29 = add i32 %next.060, 1
  %36 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask, align 4
  %and = and i32 %37, %inc29
  %tobool.not = icmp eq i32 %dec63, 0
  br i1 %tobool.not, label %release_desc.exit.while.end_crit_edge, label %release_desc.exit.while.body_crit_edge

release_desc.exit.while.body_crit_edge:           ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

release_desc.exit.while.end_crit_edge:            ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.end:                                        ; preds = %release_desc.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %next.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %next.060, %while.body.while.end_crit_edge ], [ %and, %release_desc.exit.while.end_crit_edge ]
  %received.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %received.062, %while.body.while.end_crit_edge ], [ %received.1, %release_desc.exit.while.end_crit_edge ]
  %38 = ptrtoint ptr %next2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %next.0.lcssa, ptr %next2, align 4
  ret i32 %received.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_rcv_packets(ptr nocapture noundef %hw_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2
  %pdev = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 2, i32 0, i32 6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %rx_desc_info = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14
  %alloc = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 5
  %2 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc, align 4
  %next2 = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 8
  %4 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not36 = icmp eq i32 %3, 0
  br i1 %tobool.not36, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mask = getelementptr inbounds %struct.dev_info, ptr %hw_priv, i32 0, i32 2, i32 14, i32 9
  br label %while.body

while.body:                                       ; preds = %release_desc.exit.while.body_crit_edge, %while.body.lr.ph
  %dec39.in = phi i32 [ %3, %while.body.lr.ph ], [ %dec39, %release_desc.exit.while.body_crit_edge ]
  %received.038 = phi i32 [ 0, %while.body.lr.ph ], [ %received.1, %release_desc.exit.while.body_crit_edge ]
  %next.037 = phi i32 [ %5, %while.body.lr.ph ], [ %and, %release_desc.exit.while.body_crit_edge ]
  %dec39 = add i32 %dec39.in, -1
  %6 = ptrtoint ptr %rx_desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_desc_info, align 4
  %arrayidx3 = getelementptr %struct.ksz_desc, ptr %7, i32 %next.037
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool4.not = icmp sgt i32 %12, -1
  br i1 %tobool4.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

if.end:                                           ; preds = %while.body
  %13 = and i32 %12, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %13)
  %.not = icmp eq i32 %13, 1610612736
  br i1 %.not, label %if.then12, label %if.end.release_packet_crit_edge

if.end.release_packet_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_packet

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %12, 0
  %call = tail call fastcc i32 @rx_proc(ptr noundef %1, ptr noundef %hw1, ptr noundef %arrayidx3, [1 x i32] %.fca.0.insert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  %inc = zext i1 %tobool14.not to i32
  %spec.select = add i32 %received.038, %inc
  br label %release_packet

release_packet:                                   ; preds = %if.then12, %if.end.release_packet_crit_edge
  %received.1 = phi i32 [ %received.038, %if.end.release_packet_crit_edge ], [ %spec.select, %if.then12 ]
  %sw.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.037, i32 1
  %14 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %sw.i, align 4
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %sw.i, align 4
  %buf_size.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.037, i32 1, i32 2
  %15 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_size.i, align 4
  %buf.i = getelementptr %struct.ksz_desc, ptr %7, i32 %next.037, i32 1, i32 1
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i = icmp eq i32 %16, %18
  br i1 %cmp.not.i, label %release_packet.release_desc.exit_crit_edge, label %if.then.i

release_packet.release_desc.exit_crit_edge:       ; preds = %release_packet
  call void @__sanitizer_cov_trace_pc() #24
  br label %release_desc.exit

if.then.i:                                        ; preds = %release_packet
  call void @__sanitizer_cov_trace_pc() #24
  %19 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %buf_size.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #22
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3, align 4
  %buf9.i = getelementptr inbounds %struct.ksz_hw_desc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %buf9.i, align 4
  br label %release_desc.exit

release_desc.exit:                                ; preds = %if.then.i, %release_packet.release_desc.exit_crit_edge
  %24 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sw.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #22
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %28, align 4
  %inc18 = add i32 %next.037, 1
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask, align 4
  %and = and i32 %31, %inc18
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %release_desc.exit.while.end_crit_edge, label %release_desc.exit.while.body_crit_edge

release_desc.exit.while.body_crit_edge:           ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

release_desc.exit.while.end_crit_edge:            ; preds = %release_desc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.end:                                        ; preds = %release_desc.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %next.0.lcssa = phi i32 [ %5, %entry.while.end_crit_edge ], [ %next.037, %while.body.while.end_crit_edge ], [ %and, %release_desc.exit.while.end_crit_edge ]
  %received.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %received.038, %while.body.while.end_crit_edge ], [ %received.1, %release_desc.exit.while.end_crit_edge ]
  %32 = ptrtoint ptr %next2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %next.0.lcssa, ptr %next2, align 4
  ret i32 %received.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rx_proc(ptr noundef %dev, ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %desc, [1 x i32] %status.coerce) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %status.coerce.fca.0.extract = extractvalue [1 x i32] %status.coerce, 0
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %bf.clear = and i32 %status.coerce.fca.0.extract, 2047
  %sub = add nsw i32 %bf.clear, -4
  %pdev = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dma = getelementptr inbounds %struct.ksz_desc, ptr %desc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev3, i32 noundef %5, i32 noundef %bf.clear, i32 noundef 2) #22
  %add4 = add nsw i32 %bf.clear, -2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add4, i32 noundef 2592) #22
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %6 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_buf2 = getelementptr inbounds %struct.ksz_desc, ptr %desc, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i36, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %12 = ptrtoint ptr %dma_buf2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_buf2, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call.i37 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub) #22
  %16 = call ptr @memcpy(ptr %call.i37, ptr %15, i32 %sub)
  %call8 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #22
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call8, ptr %protocol, align 8
  %rx_cfg = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 10
  %18 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_cfg, align 8
  %and = and i32 %19, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.then10:                                        ; preds = %if.end
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i24.i = and i32 %sub.ptr.sub.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %call8)
  %cmp.i = icmp eq i16 %call8, -32512
  br i1 %cmp.i, label %if.then.i, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i24.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tot_len.i, align 2
  %conv1.i.i = add i16 %conv.i.i, 4
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv1.i.i, ptr %network_header.i.i, align 4
  %conv.i27.i = zext i16 %conv1.i.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then10.if.end.i_crit_edge
  %protocol.0.i = phi i16 [ %26, %if.then.i ], [ %call8, %if.then10.if.end.i_crit_edge ]
  %28 = phi i32 [ %conv.i27.i, %if.then.i ], [ %conv.i24.i, %if.then10.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %protocol.0.i)
  %cmp5.i = icmp eq i16 %protocol.0.i, 2048
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.if.end11_crit_edge

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.then7.i:                                       ; preds = %if.end.i
  %29 = getelementptr i8, ptr %23, i32 %28
  %protocol8.i = getelementptr inbounds %struct.iphdr, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %protocol8.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protocol8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %31)
  %cmp10.i = icmp eq i8 %31, 6
  br i1 %cmp10.i, label %if.then12.i, label %if.then7.i.if.end11_crit_edge

if.then7.i.if.end11_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #24
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %32 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then12.i, %if.then7.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %stats12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %33 = ptrtoint ptr %stats12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stats12, align 8
  %inc13 = add i32 %34, 1
  store i32 %inc13, ptr %stats12, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %35 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_bytes, align 8
  %add15 = add i32 %36, %sub
  store i32 %add15, ptr %rx_bytes, align 8
  %call16 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_set_wol_frame(ptr nocapture noundef readonly %hw, i32 noundef %i, i32 noundef %mask_size, ptr nocapture noundef readonly %mask, i32 noundef %frame_size, ptr nocapture noundef readonly %pattern) unnamed_addr #2 align 64 {
entry:
  %data = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #22
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  %mul = shl i32 %mask_size, 3
  %1 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %frame_size)
  %mul5 = shl i32 %i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !269
  tail call void @arm_heavy_mb() #22
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 548
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %mul5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !270
  tail call void @arm_heavy_mb() #22
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr11 = getelementptr i8, ptr %5, i32 552
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 %mul5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #22, !srcloc !205
  br label %do.body13.outer

do.body13.outer:                                  ; preds = %do.cond36.do.body13.outer_crit_edge, %entry
  %from.0.ph = phi i32 [ %from.1, %do.cond36.do.body13.outer_crit_edge ], [ 0, %entry ]
  %len.0.ph = phi i32 [ %len.1, %do.cond36.do.body13.outer_crit_edge ], [ 0, %entry ]
  %to.0.ph = phi i32 [ %to.2, %do.cond36.do.body13.outer_crit_edge ], [ 0, %entry ]
  %val.0.ph = phi i8 [ %val.1, %do.cond36.do.body13.outer_crit_edge ], [ 0, %entry ]
  %bits.0.ph = phi i32 [ %bits.1, %do.cond36.do.body13.outer_crit_edge ], [ 0, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits.0.ph)
  %tobool.not159 = icmp eq i32 %bits.0.ph, 0
  br i1 %tobool.not159, label %do.body13.outer.if.else_crit_edge, label %if.then14

do.body13.outer.if.else_crit_edge:                ; preds = %do.body13.outer
  br label %if.else

if.then14:                                        ; preds = %do.body13.outer
  %6 = and i8 %val.0.ph, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool15.not = icmp eq i8 %6, 0
  br i1 %tobool15.not, label %if.then14.if.end18_crit_edge, label %if.then16

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx = getelementptr i8, ptr %pattern, i32 %from.0.ph
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %inc = add i32 %to.0.ph, 1
  %arrayidx17 = getelementptr [64 x i8], ptr %data, i32 0, i32 %to.0.ph
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then14.if.end18_crit_edge
  %to.1 = phi i32 [ %inc, %if.then16 ], [ %to.0.ph, %if.then14.if.end18_crit_edge ]
  %10 = lshr i8 %val.0.ph, 1
  %inc21 = add nsw i32 %from.0.ph, 1
  %dec = add i32 %bits.0.ph, -1
  br label %do.cond36

if.else:                                          ; preds = %do.cond36.thread.if.else_crit_edge, %do.body13.outer.if.else_crit_edge
  %len.0161 = phi i32 [ %inc30, %do.cond36.thread.if.else_crit_edge ], [ %len.0.ph, %do.body13.outer.if.else_crit_edge ]
  %from.0160 = phi i32 [ %add, %do.cond36.thread.if.else_crit_edge ], [ %from.0.ph, %do.body13.outer.if.else_crit_edge ]
  %arrayidx22 = getelementptr i8, ptr %mask, i32 %len.0161
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx22, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !271
  tail call void @arm_heavy_mb() #22
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr27 = getelementptr i8, ptr %14, i32 548
  %add.ptr28 = getelementptr i8, ptr %add.ptr27, i32 %mul5
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %len.0161
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 %12) #22, !srcloc !216
  %inc30 = add i32 %len.0161, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool31.not = icmp eq i8 %12, 0
  br i1 %tobool31.not, label %do.cond36.thread, label %if.else.do.cond36_crit_edge

if.else.do.cond36_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.cond36

do.cond36:                                        ; preds = %if.else.do.cond36_crit_edge, %if.end18
  %from.1 = phi i32 [ %inc21, %if.end18 ], [ %from.0160, %if.else.do.cond36_crit_edge ]
  %len.1 = phi i32 [ %len.0.ph, %if.end18 ], [ %inc30, %if.else.do.cond36_crit_edge ]
  %to.2 = phi i32 [ %to.1, %if.end18 ], [ %to.0.ph, %if.else.do.cond36_crit_edge ]
  %val.1 = phi i8 [ %10, %if.end18 ], [ %12, %if.else.do.cond36_crit_edge ]
  %bits.1 = phi i32 [ %dec, %if.end18 ], [ 8, %if.else.do.cond36_crit_edge ]
  %cmp37 = icmp slt i32 %from.1, %1
  br i1 %cmp37, label %do.cond36.do.body13.outer_crit_edge, label %do.end39

do.cond36.do.body13.outer_crit_edge:              ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body13.outer

do.cond36.thread:                                 ; preds = %if.else
  %add = add i32 %from.0160, 8
  %cmp37137 = icmp slt i32 %add, %1
  br i1 %cmp37137, label %do.cond36.thread.if.else_crit_edge, label %do.cond36.thread.cond.end_crit_edge

do.cond36.thread.cond.end_crit_edge:              ; preds = %do.cond36.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

do.cond36.thread.if.else_crit_edge:               ; preds = %do.cond36.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

do.end39:                                         ; preds = %do.cond36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.1)
  %tobool40.not = icmp eq i8 %val.1, 0
  br i1 %tobool40.not, label %do.end39.cond.end_crit_edge, label %if.then41

do.end39.cond.end_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

if.then41:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #24
  %sub = add i32 %len.1, -1
  %arrayidx42 = getelementptr i8, ptr %mask, i32 %sub
  %15 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx42, align 1
  %conv44 = zext i8 %val.1 to i32
  %rem131 = and i32 %from.1, 7
  %shl = shl nuw nsw i32 %conv44, %rem131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !272
  tail call void @arm_heavy_mb() #22
  %17 = trunc i32 %shl to i8
  %18 = xor i8 %17, -1
  %conv51 = and i8 %16, %18
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr53 = getelementptr i8, ptr %20, i32 548
  %add.ptr54 = getelementptr i8, ptr %add.ptr53, i32 %mul5
  %add.ptr55 = getelementptr i8, ptr %add.ptr54, i32 %len.1
  %add.ptr56 = getelementptr i8, ptr %add.ptr55, i32 -1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 %conv51) #22, !srcloc !216
  br label %cond.end

cond.end:                                         ; preds = %if.then41, %do.end39.cond.end_crit_edge, %do.cond36.thread.cond.end_crit_edge
  %to.2140147 = phi i32 [ %to.2, %if.then41 ], [ %to.2, %do.end39.cond.end_crit_edge ], [ %to.0.ph, %do.cond36.thread.cond.end_crit_edge ]
  %call = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %data, i32 noundef %to.2140147) #28
  %21 = lshr i32 %call, 8
  %conv4.i.i = and i32 %21, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %22 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %23 to i32
  %24 = shl nuw nsw i32 %conv6.i.i, 16
  %25 = and i32 %call, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %27 to i32
  %28 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %24, %28
  %sum.shift.i = lshr i32 %call, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %29 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %30 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %call, 16
  %31 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %33 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !273
  call void @arm_heavy_mb() #22
  %34 = call i32 @llvm.bswap.i32(i32 %or.i)
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 8
  %add.ptr86 = getelementptr i8, ptr %36, i32 544
  %add.ptr87 = getelementptr i8, ptr %add.ptr86, i32 %mul5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %34) #22, !srcloc !205
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bridge_change(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %ksz_switch = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ksz_switch, align 4
  %member1 = getelementptr inbounds %struct.ksz_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %member1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %member1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1346
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !202
  %7 = or i16 %6, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !203
  tail call void @arm_heavy_mb() #22
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr.i53.i = getelementptr i8, ptr %9, i32 1346
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i53.i, i16 %7) #22, !srcloc !183
  %10 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ksz_switch, align 4
  %stp_state.i = getelementptr %struct.ksz_switch, ptr %11, i32 0, i32 2, i32 2, i32 5
  %12 = ptrtoint ptr %stp_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %stp_state.i, align 4
  %13 = load ptr, ptr %ksz_switch, align 4
  %arrayidx.i = getelementptr [8 x %struct.ksz_mac_table], ptr %13, i32 0, i32 1
  %valid.i = getelementptr [8 x %struct.ksz_mac_table], ptr %13, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %valid.i, align 2
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %valid.i, align 2
  %ports.i = getelementptr [8 x %struct.ksz_mac_table], ptr %13, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %ports.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ports.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %conv3.i = zext i8 %bf.lshr.i to i32
  %bf.lshr10.i = lshr i8 %bf.load.i, 6
  %bf.clear11.i = and i8 %bf.lshr10.i, 1
  %conv12.i = zext i8 %bf.clear11.i to i32
  %fid.i = getelementptr [8 x %struct.ksz_mac_table], ptr %13, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %fid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fid.i, align 2
  tail call fastcc void @sw_w_sta_mac_table(ptr noundef %hw, i16 noundef zeroext 1, ptr noundef %arrayidx.i, i8 noundef zeroext %16, i32 noundef %conv3.i, i32 noundef 0, i32 noundef %conv12.i, i8 noundef zeroext %18) #22
  %19 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ksz_switch, align 4
  %arrayidx.1.i = getelementptr [8 x %struct.ksz_mac_table], ptr %20, i32 0, i32 2
  %valid.1.i = getelementptr [8 x %struct.ksz_mac_table], ptr %20, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %valid.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.1.i = load i8, ptr %valid.1.i, align 2
  %bf.clear.1.i = and i8 %bf.load.1.i, -33
  store i8 %bf.clear.1.i, ptr %valid.1.i, align 2
  %ports.1.i = getelementptr [8 x %struct.ksz_mac_table], ptr %20, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %ports.1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ports.1.i, align 1
  %bf.lshr.1.i = lshr i8 %bf.load.1.i, 7
  %conv3.1.i = zext i8 %bf.lshr.1.i to i32
  %bf.lshr10.1.i = lshr i8 %bf.load.1.i, 6
  %bf.clear11.1.i = and i8 %bf.lshr10.1.i, 1
  %conv12.1.i = zext i8 %bf.clear11.1.i to i32
  %fid.1.i = getelementptr [8 x %struct.ksz_mac_table], ptr %20, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %fid.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fid.1.i, align 2
  tail call fastcc void @sw_w_sta_mac_table(ptr noundef %hw, i16 noundef zeroext 2, ptr noundef %arrayidx.1.i, i8 noundef zeroext %23, i32 noundef %conv3.1.i, i32 noundef 0, i32 noundef %conv12.1.i, i8 noundef zeroext %25) #22
  %26 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ksz_switch, align 4
  %arrayidx.2.i = getelementptr [8 x %struct.ksz_mac_table], ptr %27, i32 0, i32 3
  %valid.2.i = getelementptr [8 x %struct.ksz_mac_table], ptr %27, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %valid.2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.2.i = load i8, ptr %valid.2.i, align 2
  %bf.clear.2.i = and i8 %bf.load.2.i, -33
  store i8 %bf.clear.2.i, ptr %valid.2.i, align 2
  %ports.2.i = getelementptr [8 x %struct.ksz_mac_table], ptr %27, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %ports.2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ports.2.i, align 1
  %bf.lshr.2.i = lshr i8 %bf.load.2.i, 7
  %conv3.2.i = zext i8 %bf.lshr.2.i to i32
  %bf.lshr10.2.i = lshr i8 %bf.load.2.i, 6
  %bf.clear11.2.i = and i8 %bf.lshr10.2.i, 1
  %conv12.2.i = zext i8 %bf.clear11.2.i to i32
  %fid.2.i = getelementptr [8 x %struct.ksz_mac_table], ptr %27, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %fid.2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fid.2.i, align 2
  tail call fastcc void @sw_w_sta_mac_table(ptr noundef %hw, i16 noundef zeroext 3, ptr noundef %arrayidx.2.i, i8 noundef zeroext %30, i32 noundef %conv3.2.i, i32 noundef 0, i32 noundef %conv12.2.i, i8 noundef zeroext %32) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stp_state = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 2, i32 0, i32 5
  %33 = ptrtoint ptr %stp_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp2 = icmp eq i32 %34, 3
  br i1 %cmp2, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %35 = ptrtoint ptr %member1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %member1, align 1
  %phi.bo = or i8 %36, 4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %member.0.in = phi i8 [ %phi.bo, %if.then3 ], [ 5, %if.end.if.end8_crit_edge ]
  %member12 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %member12 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %member12, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %member.0.in, i8 %38)
  %cmp14.not = icmp eq i8 %member.0.in, %38
  br i1 %cmp14.not, label %if.end8.for.inc_crit_edge, label %if.then16

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %40, i32 1282
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !274
  %42 = and i8 %41, -8
  %43 = and i8 %member.0.in, 7
  %or19.i = or i8 %42, %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !215
  tail call void @arm_heavy_mb() #22
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 8
  %add.ptr9.i = getelementptr i8, ptr %45, i32 1282
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 %or19.i) #22, !srcloc !216
  %46 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ksz_switch, align 4
  %member10.i = getelementptr %struct.ksz_switch, ptr %47, i32 0, i32 2, i32 0, i32 1
  %48 = ptrtoint ptr %member10.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %member.0.in, ptr %member10.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end8.for.inc_crit_edge
  %stp_state.1 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 2, i32 1, i32 5
  %49 = ptrtoint ptr %stp_state.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stp_state.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp2.1 = icmp eq i32 %50, 3
  br i1 %cmp2.1, label %if.then3.1, label %for.inc.if.end8.1_crit_edge

for.inc.if.end8.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  %51 = ptrtoint ptr %member1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %member1, align 1
  %phi.bo34 = or i8 %52, 4
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.then3.1, %for.inc.if.end8.1_crit_edge
  %member.0.in.1 = phi i8 [ %phi.bo34, %if.then3.1 ], [ 6, %for.inc.if.end8.1_crit_edge ]
  %member12.1 = getelementptr %struct.ksz_switch, ptr %1, i32 0, i32 2, i32 1, i32 1
  %53 = ptrtoint ptr %member12.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %member12.1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %member.0.in.1, i8 %54)
  %cmp14.not.1 = icmp eq i8 %member.0.in.1, %54
  br i1 %cmp14.not.1, label %if.end8.1.for.inc.1_crit_edge, label %if.then16.1

if.end8.1.for.inc.1_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.1

if.then16.1:                                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #24
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %56, i32 1314
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.1) #22, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !274
  %58 = and i8 %57, -8
  %59 = and i8 %member.0.in.1, 7
  %or19.i.1 = or i8 %58, %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !215
  tail call void @arm_heavy_mb() #22
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 8
  %add.ptr9.i.1 = getelementptr i8, ptr %61, i32 1314
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.1, i8 %or19.i.1) #22, !srcloc !216
  %62 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ksz_switch, align 4
  %member10.i.1 = getelementptr %struct.ksz_switch, ptr %63, i32 0, i32 2, i32 1, i32 1
  %64 = ptrtoint ptr %member10.i.1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %member.0.in.1, ptr %member10.i.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then16.1, %if.end8.1.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_clr_multicast(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #22, !srcloc !216
  %arrayidx.1 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr1.1 = getelementptr i8, ptr %5, i32 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.1, i8 0) #22, !srcloc !216
  %arrayidx.2 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr1.2 = getelementptr i8, ptr %8, i32 34
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.2, i8 0) #22, !srcloc !216
  %arrayidx.3 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr1.3 = getelementptr i8, ptr %11, i32 35
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.3, i8 0) #22, !srcloc !216
  %arrayidx.4 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr1.4 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.4, i8 0) #22, !srcloc !216
  %arrayidx.5 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr1.5 = getelementptr i8, ptr %17, i32 37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.5, i8 0) #22, !srcloc !216
  %arrayidx.6 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.6, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr1.6 = getelementptr i8, ptr %20, i32 38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.6, i8 0) #22, !srcloc !216
  %arrayidx.7 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx.7, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !275
  tail call void @arm_heavy_mb() #22
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr1.7 = getelementptr i8, ptr %23, i32 39
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.7, i8 0) #22, !srcloc !216
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_and_csum_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_set_multicast(ptr nocapture noundef %hw, i8 noundef zeroext %multicast) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stop.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 30
  %0 = ptrtoint ptr %rx_stop.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rx_stop.i, align 2
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 40
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #22, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !250
  %4 = and i32 %3, -3
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #22
  %intr_set.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 12
  %6 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %intr_set.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !251
  tail call void @arm_heavy_mb() #22
  %7 = ptrtoint ptr %intr_set.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr_set.i.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #22
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %9) #22, !srcloc !205
  %intr_mask.i.i.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 11
  %12 = ptrtoint ptr %intr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_mask.i.i.i, align 4
  %and.i.i.i = and i32 %13, -33554433
  store i32 %and.i.i.i, ptr %intr_mask.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !252
  tail call void @arm_heavy_mb() #22
  %rx_cfg.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 10
  %14 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_cfg.i, align 8
  %and.i = and i32 %15, -2
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #22
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #22, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %multicast)
  %tobool.not = icmp eq i8 %multicast, 0
  %19 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_cfg.i, align 8
  %and = and i32 %20, -33
  %masksel = select i1 %tobool.not, i32 0, i32 32
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %rx_cfg.i, align 8
  %enabled = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 29
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not = icmp eq i8 %22, 0
  br i1 %tobool2.not, label %entry.if.end4_crit_edge, label %if.then3

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !246
  tail call void @arm_heavy_mb() #22
  %23 = ptrtoint ptr %rx_cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_cfg.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #22
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %add.ptr.i10 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %25) #22, !srcloc !205
  %28 = ptrtoint ptr %intr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intr_mask.i.i.i, align 4
  %or.i = or i32 %29, 33554432
  store i32 %or.i, ptr %intr_mask.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !247
  tail call void @arm_heavy_mb() #22
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr4.i = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16777216) #22, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !248
  tail call void @arm_heavy_mb() #22
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %add.ptr.i.i11 = getelementptr i8, ptr %33, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 2) #22, !srcloc !205
  %34 = ptrtoint ptr %rx_stop.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rx_stop.i, align 2
  %inc.i = add i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i8 2, i8 %inc.i
  %36 = ptrtoint ptr %rx_stop.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select.i, ptr %rx_stop.i, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_set_grp_addr(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %multi_bits = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27
  %0 = ptrtoint ptr %multi_bits to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %multi_bits, align 4
  %multi_list_size = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 28
  %1 = ptrtoint ptr %multi_list_size to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %multi_list_size, align 4
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp70.not = icmp eq i8 %2, 0
  br i1 %cmp70.not, label %entry.for.cond36.preheader_crit_edge, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  br label %cond.end

entry.for.cond36.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %cond.end.for.cond36.preheader_crit_edge, %entry.for.cond36.preheader_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %3 = ptrtoint ptr %multi_bits to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %multi_bits, align 1
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %4) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %arrayidx41.1 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 1
  %7 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx41.1, align 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr42.1 = getelementptr i8, ptr %10, i32 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.1, i8 %8) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %arrayidx41.2 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 2
  %11 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx41.2, align 1
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %add.ptr42.2 = getelementptr i8, ptr %14, i32 34
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.2, i8 %12) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %arrayidx41.3 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 3
  %15 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx41.3, align 1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr42.3 = getelementptr i8, ptr %18, i32 35
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.3, i8 %16) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %arrayidx41.4 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 4
  %19 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx41.4, align 1
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr42.4 = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.4, i8 %20) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %arrayidx41.5 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 5
  %23 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx41.5, align 1
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add.ptr42.5 = getelementptr i8, ptr %26, i32 37
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.5, i8 %24) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %arrayidx41.6 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 6
  %27 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx41.6, align 1
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %add.ptr42.6 = getelementptr i8, ptr %30, i32 38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.6, i8 %28) #22, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !276
  tail call void @arm_heavy_mb() #22
  %arrayidx41.7 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 7
  %31 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx41.7, align 1
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr42.7 = getelementptr i8, ptr %34, i32 39
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42.7, i8 %32) #22, !srcloc !216
  ret void

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %entry.cond.end_crit_edge
  %i.071 = phi i32 [ %inc, %cond.end.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 26, i32 %i.071
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %arrayidx, i32 noundef 6) #28
  %35 = and i32 %call, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr24 = lshr i8 %37, 2
  %38 = lshr i8 %37, 5
  %39 = zext i8 %38 to i32
  %and27 = and i8 %shr24, 7
  %shl28 = shl i8 1, %and27
  %arrayidx32 = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 27, i32 %39
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx32, align 1
  %conv35 = or i8 %41, %shl28
  store i8 %conv35, ptr %arrayidx32, align 1
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %cond.end.for.cond36.preheader_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

cond.end.for.cond36.preheader_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond36.preheader
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #22
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.36, i32 noundef 32) #22
  %pdev = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_regs_len(ptr nocapture noundef readnone %dev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 452
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr noundef %ptr) #2 align 64 {
for.body8.preheader.1:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #22
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %version, align 4
  %pdev = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %call2 = tail call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef 0, ptr noundef %ptr) #22
  %incdec.ptr = getelementptr i32, ptr %ptr, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %call2.1 = tail call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef 4, ptr noundef %incdec.ptr) #22
  %incdec.ptr.1 = getelementptr i32, ptr %ptr, i32 2
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %call2.2 = tail call i32 @pci_read_config_dword(ptr noundef %8, i32 noundef 8, ptr noundef %incdec.ptr.1) #22
  %incdec.ptr.2 = getelementptr i32, ptr %ptr, i32 3
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %call2.3 = tail call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef 12, ptr noundef %incdec.ptr.2) #22
  %incdec.ptr.3 = getelementptr i32, ptr %ptr, i32 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %call2.4 = tail call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef 16, ptr noundef %incdec.ptr.3) #22
  %incdec.ptr.4 = getelementptr i32, ptr %ptr, i32 5
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %call2.5 = tail call i32 @pci_read_config_dword(ptr noundef %14, i32 noundef 20, ptr noundef %incdec.ptr.4) #22
  %incdec.ptr.5 = getelementptr i32, ptr %ptr, i32 6
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %call2.6 = tail call i32 @pci_read_config_dword(ptr noundef %16, i32 noundef 24, ptr noundef %incdec.ptr.5) #22
  %incdec.ptr.6 = getelementptr i32, ptr %ptr, i32 7
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %call2.7 = tail call i32 @pci_read_config_dword(ptr noundef %18, i32 noundef 28, ptr noundef %incdec.ptr.6) #22
  %incdec.ptr.7 = getelementptr i32, ptr %ptr, i32 8
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %call2.8 = tail call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef 32, ptr noundef %incdec.ptr.7) #22
  %incdec.ptr.8 = getelementptr i32, ptr %ptr, i32 9
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %call2.9 = tail call i32 @pci_read_config_dword(ptr noundef %22, i32 noundef 36, ptr noundef %incdec.ptr.8) #22
  %incdec.ptr.9 = getelementptr i32, ptr %ptr, i32 10
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %call2.10 = tail call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 40, ptr noundef %incdec.ptr.9) #22
  %incdec.ptr.10 = getelementptr i32, ptr %ptr, i32 11
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 4
  %call2.11 = tail call i32 @pci_read_config_dword(ptr noundef %26, i32 noundef 44, ptr noundef %incdec.ptr.10) #22
  %incdec.ptr.11 = getelementptr i32, ptr %ptr, i32 12
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %call2.12 = tail call i32 @pci_read_config_dword(ptr noundef %28, i32 noundef 48, ptr noundef %incdec.ptr.11) #22
  %incdec.ptr.12 = getelementptr i32, ptr %ptr, i32 13
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  %call2.13 = tail call i32 @pci_read_config_dword(ptr noundef %30, i32 noundef 52, ptr noundef %incdec.ptr.12) #22
  %incdec.ptr.13 = getelementptr i32, ptr %ptr, i32 14
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %call2.14 = tail call i32 @pci_read_config_dword(ptr noundef %32, i32 noundef 56, ptr noundef %incdec.ptr.13) #22
  %incdec.ptr.14 = getelementptr i32, ptr %ptr, i32 15
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %call2.15 = tail call i32 @pci_read_config_dword(ptr noundef %34, i32 noundef 60, ptr noundef %incdec.ptr.14) #22
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %incdec.ptr.15 = getelementptr i32, ptr %ptr, i32 16
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1, align 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #22, !srcloc !207
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %39 = ptrtoint ptr %incdec.ptr.15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %incdec.ptr.15, align 4
  %incdec.ptr11 = getelementptr i32, ptr %ptr, i32 17
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1, align 8
  %add.ptr.142 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.142) #22, !srcloc !207
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %44 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %incdec.ptr11, align 4
  %incdec.ptr11.143 = getelementptr i32, ptr %ptr, i32 18
  %45 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw1, align 8
  %add.ptr.247 = getelementptr i8, ptr %46, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.247) #22, !srcloc !207
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %49 = ptrtoint ptr %incdec.ptr11.143 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %incdec.ptr11.143, align 4
  %incdec.ptr11.248 = getelementptr i32, ptr %ptr, i32 19
  %50 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1, align 8
  %add.ptr.350 = getelementptr i8, ptr %51, i32 12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.350) #22, !srcloc !207
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %54 = ptrtoint ptr %incdec.ptr11.248 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %incdec.ptr11.248, align 4
  %incdec.ptr11.351 = getelementptr i32, ptr %ptr, i32 20
  %55 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw1, align 8
  %add.ptr.453 = getelementptr i8, ptr %56, i32 16
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.453) #22, !srcloc !207
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %59 = ptrtoint ptr %incdec.ptr11.351 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %incdec.ptr11.351, align 4
  %incdec.ptr11.454 = getelementptr i32, ptr %ptr, i32 21
  %60 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw1, align 8
  %add.ptr.558 = getelementptr i8, ptr %61, i32 20
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.558) #22, !srcloc !207
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %64 = ptrtoint ptr %incdec.ptr11.454 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %incdec.ptr11.454, align 4
  %incdec.ptr11.559 = getelementptr i32, ptr %ptr, i32 22
  %65 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw1, align 8
  %add.ptr.6 = getelementptr i8, ptr %66, i32 24
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #22, !srcloc !207
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %69 = ptrtoint ptr %incdec.ptr11.559 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %incdec.ptr11.559, align 4
  %incdec.ptr11.6 = getelementptr i32, ptr %ptr, i32 23
  %70 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw1, align 8
  %add.ptr.7 = getelementptr i8, ptr %71, i32 28
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #22, !srcloc !207
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %74 = ptrtoint ptr %incdec.ptr11.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %incdec.ptr11.6, align 4
  %incdec.ptr11.7 = getelementptr i32, ptr %ptr, i32 24
  %75 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw1, align 8
  %add.ptr.8 = getelementptr i8, ptr %76, i32 32
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #22, !srcloc !207
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %79 = ptrtoint ptr %incdec.ptr11.7 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %incdec.ptr11.7, align 4
  %incdec.ptr11.8 = getelementptr i32, ptr %ptr, i32 25
  %80 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw1, align 8
  %add.ptr.9 = getelementptr i8, ptr %81, i32 36
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9) #22, !srcloc !207
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %84 = ptrtoint ptr %incdec.ptr11.8 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %incdec.ptr11.8, align 4
  %incdec.ptr11.9 = getelementptr i32, ptr %ptr, i32 26
  %85 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw1, align 8
  %add.ptr.10 = getelementptr i8, ptr %86, i32 40
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10) #22, !srcloc !207
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %89 = ptrtoint ptr %incdec.ptr11.9 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %incdec.ptr11.9, align 4
  %incdec.ptr11.10 = getelementptr i32, ptr %ptr, i32 27
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.body8.1.for.body8.1_crit_edge, %for.body8.preheader.1
  %buf.236.1 = phi ptr [ %incdec.ptr11.1, %for.body8.1.for.body8.1_crit_edge ], [ %incdec.ptr11.10, %for.body8.preheader.1 ]
  %len.135.1 = phi i32 [ %add13.1, %for.body8.1.for.body8.1_crit_edge ], [ 128, %for.body8.preheader.1 ]
  %90 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw1, align 8
  %add.ptr.1 = getelementptr i8, ptr %91, i32 %len.135.1
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #22, !srcloc !207
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %94 = ptrtoint ptr %buf.236.1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %buf.236.1, align 4
  %incdec.ptr11.1 = getelementptr i32, ptr %buf.236.1, i32 1
  %add13.1 = add nuw nsw i32 %len.135.1, 4
  %cmp7.1 = icmp ult i32 %len.135.1, 248
  br i1 %cmp7.1, label %for.body8.1.for.body8.1_crit_edge, label %for.body8.preheader.5

for.body8.1.for.body8.1_crit_edge:                ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body8.1

for.body8.preheader.5:                            ; preds = %for.body8.1
  %95 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw1, align 8
  %add.ptr.2 = getelementptr i8, ptr %96, i32 512
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #22, !srcloc !207
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %99 = ptrtoint ptr %incdec.ptr11.1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %incdec.ptr11.1, align 4
  %incdec.ptr11.2 = getelementptr i32, ptr %buf.236.1, i32 2
  %100 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw1, align 8
  %add.ptr.2.1 = getelementptr i8, ptr %101, i32 516
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.1) #22, !srcloc !207
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %104 = ptrtoint ptr %incdec.ptr11.2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %incdec.ptr11.2, align 4
  %incdec.ptr11.2.1 = getelementptr i32, ptr %buf.236.1, i32 3
  %105 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw1, align 8
  %add.ptr.2.2 = getelementptr i8, ptr %106, i32 520
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.2) #22, !srcloc !207
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %109 = ptrtoint ptr %incdec.ptr11.2.1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %incdec.ptr11.2.1, align 4
  %incdec.ptr11.2.2 = getelementptr i32, ptr %buf.236.1, i32 4
  %110 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw1, align 8
  %add.ptr.2.3 = getelementptr i8, ptr %111, i32 524
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.3) #22, !srcloc !207
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %114 = ptrtoint ptr %incdec.ptr11.2.2 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %incdec.ptr11.2.2, align 4
  %incdec.ptr11.2.3 = getelementptr i32, ptr %buf.236.1, i32 5
  %115 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw1, align 8
  %add.ptr.2.4 = getelementptr i8, ptr %116, i32 528
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.4) #22, !srcloc !207
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %119 = ptrtoint ptr %incdec.ptr11.2.3 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %incdec.ptr11.2.3, align 4
  %incdec.ptr11.2.4 = getelementptr i32, ptr %buf.236.1, i32 6
  %120 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw1, align 8
  %add.ptr.2.5 = getelementptr i8, ptr %121, i32 532
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.5) #22, !srcloc !207
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %124 = ptrtoint ptr %incdec.ptr11.2.4 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %incdec.ptr11.2.4, align 4
  %incdec.ptr11.2.5 = getelementptr i32, ptr %buf.236.1, i32 7
  %125 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw1, align 8
  %add.ptr.2.6 = getelementptr i8, ptr %126, i32 536
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.6) #22, !srcloc !207
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %129 = ptrtoint ptr %incdec.ptr11.2.5 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %incdec.ptr11.2.5, align 4
  %incdec.ptr11.2.6 = getelementptr i32, ptr %buf.236.1, i32 8
  %130 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw1, align 8
  %add.ptr.2.7 = getelementptr i8, ptr %131, i32 540
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.7) #22, !srcloc !207
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %134 = ptrtoint ptr %incdec.ptr11.2.6 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %incdec.ptr11.2.6, align 4
  %incdec.ptr11.2.7 = getelementptr i32, ptr %buf.236.1, i32 9
  %135 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw1, align 8
  %add.ptr.2.8 = getelementptr i8, ptr %136, i32 544
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.8) #22, !srcloc !207
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %139 = ptrtoint ptr %incdec.ptr11.2.7 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %incdec.ptr11.2.7, align 4
  %incdec.ptr11.2.8 = getelementptr i32, ptr %buf.236.1, i32 10
  %140 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw1, align 8
  %add.ptr.2.9 = getelementptr i8, ptr %141, i32 548
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.9) #22, !srcloc !207
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %144 = ptrtoint ptr %incdec.ptr11.2.8 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %incdec.ptr11.2.8, align 4
  %incdec.ptr11.2.9 = getelementptr i32, ptr %buf.236.1, i32 11
  %145 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw1, align 8
  %add.ptr.3 = getelementptr i8, ptr %146, i32 1024
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #22, !srcloc !207
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %149 = ptrtoint ptr %incdec.ptr11.2.9 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %incdec.ptr11.2.9, align 4
  %incdec.ptr11.3 = getelementptr i32, ptr %buf.236.1, i32 12
  %150 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw1, align 8
  %add.ptr.3.1 = getelementptr i8, ptr %151, i32 1028
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.1) #22, !srcloc !207
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %154 = ptrtoint ptr %incdec.ptr11.3 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %incdec.ptr11.3, align 4
  %incdec.ptr11.3.1 = getelementptr i32, ptr %buf.236.1, i32 13
  %155 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hw1, align 8
  %add.ptr.3.2 = getelementptr i8, ptr %156, i32 1032
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.2) #22, !srcloc !207
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %159 = ptrtoint ptr %incdec.ptr11.3.1 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %incdec.ptr11.3.1, align 4
  %incdec.ptr11.3.2 = getelementptr i32, ptr %buf.236.1, i32 14
  %160 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw1, align 8
  %add.ptr.3.3 = getelementptr i8, ptr %161, i32 1036
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.3) #22, !srcloc !207
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %164 = ptrtoint ptr %incdec.ptr11.3.2 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %incdec.ptr11.3.2, align 4
  %incdec.ptr11.3.3 = getelementptr i32, ptr %buf.236.1, i32 15
  %165 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hw1, align 8
  %add.ptr.3.4 = getelementptr i8, ptr %166, i32 1040
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.4) #22, !srcloc !207
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %169 = ptrtoint ptr %incdec.ptr11.3.3 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %incdec.ptr11.3.3, align 4
  %incdec.ptr11.3.4 = getelementptr i32, ptr %buf.236.1, i32 16
  %170 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw1, align 8
  %add.ptr.4 = getelementptr i8, ptr %171, i32 1136
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #22, !srcloc !207
  %173 = tail call i32 @llvm.bswap.i32(i32 %172)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %174 = ptrtoint ptr %incdec.ptr11.3.4 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %incdec.ptr11.3.4, align 4
  %incdec.ptr11.4 = getelementptr i32, ptr %buf.236.1, i32 17
  %175 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw1, align 8
  %add.ptr.4.1 = getelementptr i8, ptr %176, i32 1140
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.1) #22, !srcloc !207
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %179 = ptrtoint ptr %incdec.ptr11.4 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %incdec.ptr11.4, align 4
  %incdec.ptr11.4.1 = getelementptr i32, ptr %buf.236.1, i32 18
  %180 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw1, align 8
  %add.ptr.4.2 = getelementptr i8, ptr %181, i32 1144
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.2) #22, !srcloc !207
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %184 = ptrtoint ptr %incdec.ptr11.4.1 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %incdec.ptr11.4.1, align 4
  %incdec.ptr11.4.2 = getelementptr i32, ptr %buf.236.1, i32 19
  %185 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw1, align 8
  %add.ptr.4.3 = getelementptr i8, ptr %186, i32 1148
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.3) #22, !srcloc !207
  %188 = tail call i32 @llvm.bswap.i32(i32 %187)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %189 = ptrtoint ptr %incdec.ptr11.4.2 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %incdec.ptr11.4.2, align 4
  %incdec.ptr11.4.3 = getelementptr i32, ptr %buf.236.1, i32 20
  %190 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw1, align 8
  %add.ptr.4.4 = getelementptr i8, ptr %191, i32 1152
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.4) #22, !srcloc !207
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %194 = ptrtoint ptr %incdec.ptr11.4.3 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %incdec.ptr11.4.3, align 4
  %incdec.ptr11.4.4 = getelementptr i32, ptr %buf.236.1, i32 21
  %195 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hw1, align 8
  %add.ptr.4.5 = getelementptr i8, ptr %196, i32 1156
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.5) #22, !srcloc !207
  %198 = tail call i32 @llvm.bswap.i32(i32 %197)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %199 = ptrtoint ptr %incdec.ptr11.4.4 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %incdec.ptr11.4.4, align 4
  %incdec.ptr11.4.5 = getelementptr i32, ptr %buf.236.1, i32 22
  %200 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hw1, align 8
  %add.ptr.4.6 = getelementptr i8, ptr %201, i32 1160
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.6) #22, !srcloc !207
  %203 = tail call i32 @llvm.bswap.i32(i32 %202)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %204 = ptrtoint ptr %incdec.ptr11.4.5 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %incdec.ptr11.4.5, align 4
  %incdec.ptr11.4.6 = getelementptr i32, ptr %buf.236.1, i32 23
  %205 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw1, align 8
  %add.ptr.4.7 = getelementptr i8, ptr %206, i32 1164
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.7) #22, !srcloc !207
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %209 = ptrtoint ptr %incdec.ptr11.4.6 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %incdec.ptr11.4.6, align 4
  %incdec.ptr11.4.7 = getelementptr i32, ptr %buf.236.1, i32 24
  %210 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hw1, align 8
  %add.ptr.4.8 = getelementptr i8, ptr %211, i32 1168
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.8) #22, !srcloc !207
  %213 = tail call i32 @llvm.bswap.i32(i32 %212)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %214 = ptrtoint ptr %incdec.ptr11.4.7 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %incdec.ptr11.4.7, align 4
  %incdec.ptr11.4.8 = getelementptr i32, ptr %buf.236.1, i32 25
  br label %for.body8.5

for.body8.5:                                      ; preds = %for.body8.5.for.body8.5_crit_edge, %for.body8.preheader.5
  %buf.236.5 = phi ptr [ %incdec.ptr11.5, %for.body8.5.for.body8.5_crit_edge ], [ %incdec.ptr11.4.8, %for.body8.preheader.5 ]
  %len.135.5 = phi i32 [ %add13.5, %for.body8.5.for.body8.5_crit_edge ], [ 1232, %for.body8.preheader.5 ]
  %215 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hw1, align 8
  %add.ptr.5 = getelementptr i8, ptr %216, i32 %len.135.5
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #22, !srcloc !207
  %218 = tail call i32 @llvm.bswap.i32(i32 %217)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !277
  %219 = ptrtoint ptr %buf.236.5 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %buf.236.5, align 4
  %incdec.ptr11.5 = getelementptr i32, ptr %buf.236.5, i32 1
  %add13.5 = add nuw nsw i32 %len.135.5, 4
  %cmp7.5 = icmp ult i32 %len.135.5, 1350
  br i1 %cmp7.5, label %for.body8.5.for.body8.5_crit_edge, label %for.end14.5

for.body8.5.for.body8.5_crit_edge:                ; preds = %for.body8.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body8.5

for.end14.5:                                      ; preds = %for.body8.5
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @mutex_unlock(ptr noundef %lock) #22
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @netdev_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %wol_support = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %wol_support to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol_support, align 4
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %supported, align 4
  %wol_enable = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %wol_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wol_enable, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %wolopts, align 4
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %8 = call ptr @memset(ptr %sopass, i32 0, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %wol_support = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %wol_support to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol_support, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %3, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol_enable = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %wol_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %wol_enable, align 8
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %or = or i32 %3, 1
  %9 = ptrtoint ptr %wol_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %wol_enable, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %hw = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %wol_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wol_enable, align 8
  tail call fastcc void @hw_enable_wol(ptr noundef %hw, i32 noundef %11, ptr noundef nonnull @netdev_set_wol.net_addr)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_msglevel(ptr nocapture noundef readonly %dev) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2524
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @netdev_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2524
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #22
  %mii_if = getelementptr i8, ptr %dev, i32 2488
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #22
  tail call void @mutex_unlock(ptr noundef %lock) #22
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 2488
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #22
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_eeprom_len(ptr nocapture noundef readnone %dev) #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %len1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %add = add i32 %1, 1
  %add2 = add i32 %add, %3
  %div17 = lshr i32 %add2, 1
  %div418 = lshr i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div418, i32 %div17)
  %cmp19 = icmp ult i32 %div418, %div17
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %hw = getelementptr inbounds %struct.dev_info, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ %div418, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.020 to i8
  %call5 = tail call fastcc zeroext i16 @eeprom_read(ptr noundef %hw, i8 noundef zeroext %conv)
  %arrayidx = getelementptr [64 x i16], ptr @eeprom_data, i32 0, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call5, ptr %arrayidx, align 2
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %div17
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %7 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 279021634, ptr %magic, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %arrayidx7 = getelementptr i8, ptr @eeprom_data, i32 %9
  %10 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1, align 4
  %12 = call ptr @memcpy(ptr %data, ptr %arrayidx7, i32 %11)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %eeprom_word = alloca [64 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %eeprom_word) #22
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 279021634, i32 %3)
  %cmp.not = icmp eq i32 %3, 279021634
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %len1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1, align 4
  %add = add i32 %5, 1
  %add2 = add i32 %add, %7
  %div53 = lshr i32 %add2, 1
  %div454 = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div454, i32 %div53)
  %cmp555 = icmp ult i32 %div454, %div53
  br i1 %cmp555, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %hw = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ %div454, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.056 to i8
  %call6 = tail call fastcc zeroext i16 @eeprom_read(ptr noundef %hw, i8 noundef zeroext %conv)
  %arrayidx = getelementptr [64 x i16], ptr @eeprom_data, i32 0, i32 %i.056
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call6, ptr %arrayidx, align 2
  %inc = add nuw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %div53
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %9 = call ptr @memcpy(ptr %eeprom_word, ptr @eeprom_data, i32 128)
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %arrayidx9 = getelementptr i8, ptr %eeprom_word, i32 %11
  %12 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1, align 4
  %14 = call ptr @memcpy(ptr %arrayidx9, ptr %data, i32 %13)
  %hw24 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  br label %for.body14

for.body14:                                       ; preds = %for.inc28.for.body14_crit_edge, %for.end
  %i.157 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28.for.body14_crit_edge ]
  %arrayidx15 = getelementptr [64 x i16], ptr %eeprom_word, i32 0, i32 %i.157
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx15, align 2
  %arrayidx17 = getelementptr [64 x i16], ptr @eeprom_data, i32 0, i32 %i.157
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp19.not = icmp eq i16 %16, %18
  br i1 %cmp19.not, label %for.body14.for.inc28_crit_edge, label %if.then21

for.body14.for.inc28_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc28

if.then21:                                        ; preds = %for.body14
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %16, ptr %arrayidx17, align 2
  %conv25 = trunc i32 %i.157 to i8
  %20 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw24, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 530
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %23 = or i16 %22, 4352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %24 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw24, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %25, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i, i16 %23) #22, !srcloc !183
  tail call fastcc void @spi_reg(ptr noundef %hw24, i8 noundef zeroext 0, i8 noundef zeroext 48) #22
  %26 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw24, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %27, i32 530
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i32.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %29 = and i16 %28, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %30 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw24, align 8
  %add.ptr5.i33.i = getelementptr i8, ptr %31, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i33.i, i16 %29) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #22
  %33 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw24, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %34, i32 530
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %36 = or i16 %35, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %37 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw24, align 8
  %add.ptr5.i36.i = getelementptr i8, ptr %38, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i36.i, i16 %36) #22, !srcloc !183
  tail call fastcc void @spi_reg(ptr noundef %hw24, i8 noundef zeroext 3, i8 noundef zeroext %conv25) #22
  %39 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw24, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %40, i32 530
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i37.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %42 = and i16 %41, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %43 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw24, align 8
  %add.ptr5.i39.i = getelementptr i8, ptr %44, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i39.i, i16 %42) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #22
  %46 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw24, align 8
  %add.ptr.i40.i = getelementptr i8, ptr %47, i32 530
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i40.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %49 = or i16 %48, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %50 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw24, align 8
  %add.ptr5.i42.i = getelementptr i8, ptr %51, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i42.i, i16 %49) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 429496000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #22
  %54 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i = getelementptr i8, ptr %55, i32 530
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %57 = and i16 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i.not = icmp eq i16 %57, 0
  br i1 %tobool.not.i.not, label %do.body.i.1, label %if.then21.do.end.i_crit_edge

if.then21.do.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #22
  %59 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i.1 = getelementptr i8, ptr %60, i32 530
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %62 = and i16 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i.1.not = icmp eq i16 %62, 0
  br i1 %tobool.not.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #22
  %64 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i.2 = getelementptr i8, ptr %65, i32 530
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i.2) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %67 = and i16 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i.2.not = icmp eq i16 %67, 0
  br i1 %tobool.not.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #22
  %69 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i.3 = getelementptr i8, ptr %70, i32 530
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i.3) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %72 = and i16 %71, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.not.i.3.not = icmp eq i16 %72, 0
  br i1 %tobool.not.i.3.not, label %do.body.i.4, label %do.body.i.3.do.end.i_crit_edge

do.body.i.3.do.end.i_crit_edge:                   ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.body.i.4:                                      ; preds = %do.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #22
  %74 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i.4 = getelementptr i8, ptr %75, i32 530
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i.4) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %77 = and i16 %76, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i.4.not = icmp eq i16 %77, 0
  br i1 %tobool.not.i.4.not, label %do.body.i.5, label %do.body.i.4.do.end.i_crit_edge

do.body.i.4.do.end.i_crit_edge:                   ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.body.i.5:                                      ; preds = %do.body.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #22
  %79 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i.5 = getelementptr i8, ptr %80, i32 530
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i.5) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %82 = and i16 %81, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i.5.not = icmp eq i16 %82, 0
  br i1 %tobool.not.i.5.not, label %do.body.i.6, label %do.body.i.5.do.end.i_crit_edge

do.body.i.5.do.end.i_crit_edge:                   ; preds = %do.body.i.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.body.i.6:                                      ; preds = %do.body.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #22
  %84 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i.6 = getelementptr i8, ptr %85, i32 530
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i.6) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %87 = and i16 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool.not.i.6.not = icmp eq i16 %87, 0
  br i1 %tobool.not.i.6.not, label %do.body.i.7, label %do.body.i.6.do.end.i_crit_edge

do.body.i.6.do.end.i_crit_edge:                   ; preds = %do.body.i.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end.i

do.body.i.7:                                      ; preds = %do.body.i.6
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #22
  %89 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw24, align 8
  %add.ptr.i43.i.7 = getelementptr i8, ptr %90, i32 530
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43.i.7) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.7, %do.body.i.6.do.end.i_crit_edge, %do.body.i.5.do.end.i_crit_edge, %do.body.i.4.do.end.i_crit_edge, %do.body.i.3.do.end.i_crit_edge, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %if.then21.do.end.i_crit_edge
  %92 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw24, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %93, i32 530
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i44.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %95 = and i16 %94, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %96 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw24, align 8
  %add.ptr5.i46.i = getelementptr i8, ptr %97, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i46.i, i16 %95) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748) #22
  %99 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw24, align 8
  %add.ptr.i47.i = getelementptr i8, ptr %100, i32 530
  %101 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i47.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %102 = or i16 %101, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %103 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw24, align 8
  %add.ptr5.i49.i = getelementptr i8, ptr %104, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i49.i, i16 %102) #22, !srcloc !183
  tail call fastcc void @spi_reg(ptr noundef %hw24, i8 noundef zeroext 1, i8 noundef zeroext %conv25) #22
  %conv.i.i = zext i16 %16 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end.i.i.for.body.i.i_crit_edge, %do.end.i
  %i.07.i.i = phi i32 [ 15, %do.end.i ], [ %dec.i.i, %cond.end.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.07.i.i
  %and.i50.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50.i)
  %tobool.not.i.i = icmp eq i32 %and.i50.i, 0
  %105 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw24, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %106, i32 530
  %107 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i5.i.i) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %108 = or i16 %107, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %109 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw24, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %110, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i.i, i16 %108) #22, !srcloc !183
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %111 = and i16 %107, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %112 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw24, align 8
  %add.ptr5.i6.i.i = getelementptr i8, ptr %113, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i6.i.i, i16 %111) #22, !srcloc !183
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %114 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw24, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %115, i32 530
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %117 = or i16 %116, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %118 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw24, align 8
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %119, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i.i.i, i16 %117) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 858992) #22
  %121 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw24, align 8
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %122, i32 530
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2.i.i.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %124 = and i16 %123, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %125 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw24, align 8
  %add.ptr5.i3.i.i.i = getelementptr i8, ptr %126, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i3.i.i.i, i16 %124) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 858992) #22
  %dec.i.i = add nsw i32 %i.07.i.i, -1
  %cmp.not.i.i = icmp eq i32 %i.07.i.i, 0
  br i1 %cmp.not.i.i, label %spi_w.exit.i, label %cond.end.i.i.for.body.i.i_crit_edge

cond.end.i.i.for.body.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i

spi_w.exit.i:                                     ; preds = %cond.end.i.i
  %128 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw24, align 8
  %add.ptr.i51.i = getelementptr i8, ptr %129, i32 530
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i51.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %131 = and i16 %130, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %132 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw24, align 8
  %add.ptr5.i53.i = getelementptr i8, ptr %133, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i53.i, i16 %131) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748) #22
  %135 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw24, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %136, i32 530
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i54.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %138 = or i16 %137, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %139 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw24, align 8
  %add.ptr5.i56.i = getelementptr i8, ptr %140, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i56.i, i16 %138) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 429496000) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #22
  %143 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i = getelementptr i8, ptr %144, i32 530
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %146 = and i16 %145, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool5.not.i.not = icmp eq i16 %146, 0
  br i1 %tobool5.not.i.not, label %do.body2.i.1, label %spi_w.exit.i.eeprom_write.exit_crit_edge

spi_w.exit.i.eeprom_write.exit_crit_edge:         ; preds = %spi_w.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %eeprom_write.exit

do.body2.i.1:                                     ; preds = %spi_w.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #22
  %148 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i.1 = getelementptr i8, ptr %149, i32 530
  %150 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i.1) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %151 = and i16 %150, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool5.not.i.1.not = icmp eq i16 %151, 0
  br i1 %tobool5.not.i.1.not, label %do.body2.i.2, label %do.body2.i.1.eeprom_write.exit_crit_edge

do.body2.i.1.eeprom_write.exit_crit_edge:         ; preds = %do.body2.i.1
  call void @__sanitizer_cov_trace_pc() #24
  br label %eeprom_write.exit

do.body2.i.2:                                     ; preds = %do.body2.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #22
  %153 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i.2 = getelementptr i8, ptr %154, i32 530
  %155 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i.2) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %156 = and i16 %155, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool5.not.i.2.not = icmp eq i16 %156, 0
  br i1 %tobool5.not.i.2.not, label %do.body2.i.3, label %do.body2.i.2.eeprom_write.exit_crit_edge

do.body2.i.2.eeprom_write.exit_crit_edge:         ; preds = %do.body2.i.2
  call void @__sanitizer_cov_trace_pc() #24
  br label %eeprom_write.exit

do.body2.i.3:                                     ; preds = %do.body2.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #22
  %158 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i.3 = getelementptr i8, ptr %159, i32 530
  %160 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i.3) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %161 = and i16 %160, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %tobool5.not.i.3.not = icmp eq i16 %161, 0
  br i1 %tobool5.not.i.3.not, label %do.body2.i.4, label %do.body2.i.3.eeprom_write.exit_crit_edge

do.body2.i.3.eeprom_write.exit_crit_edge:         ; preds = %do.body2.i.3
  call void @__sanitizer_cov_trace_pc() #24
  br label %eeprom_write.exit

do.body2.i.4:                                     ; preds = %do.body2.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 214748000) #22
  %163 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i.4 = getelementptr i8, ptr %164, i32 530
  %165 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i.4) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %166 = and i16 %165, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool5.not.i.4.not = icmp eq i16 %166, 0
  br i1 %tobool5.not.i.4.not, label %do.body2.i.5, label %do.body2.i.4.eeprom_write.exit_crit_edge

do.body2.i.4.eeprom_write.exit_crit_edge:         ; preds = %do.body2.i.4
  call void @__sanitizer_cov_trace_pc() #24
  br label %eeprom_write.exit

do.body2.i.5:                                     ; preds = %do.body2.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748000) #22
  %168 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i.5 = getelementptr i8, ptr %169, i32 530
  %170 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i.5) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %171 = and i16 %170, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool5.not.i.5.not = icmp eq i16 %171, 0
  br i1 %tobool5.not.i.5.not, label %do.body2.i.6, label %do.body2.i.5.eeprom_write.exit_crit_edge

do.body2.i.5.eeprom_write.exit_crit_edge:         ; preds = %do.body2.i.5
  call void @__sanitizer_cov_trace_pc() #24
  br label %eeprom_write.exit

do.body2.i.6:                                     ; preds = %do.body2.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748000) #22
  %173 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i.6 = getelementptr i8, ptr %174, i32 530
  %175 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i.6) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  %176 = and i16 %175, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %tobool5.not.i.6.not = icmp eq i16 %176, 0
  br i1 %tobool5.not.i.6.not, label %do.body2.i.7, label %do.body2.i.6.eeprom_write.exit_crit_edge

do.body2.i.6.eeprom_write.exit_crit_edge:         ; preds = %do.body2.i.6
  call void @__sanitizer_cov_trace_pc() #24
  br label %eeprom_write.exit

do.body2.i.7:                                     ; preds = %do.body2.i.6
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 214748000) #22
  %178 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw24, align 8
  %add.ptr.i57.i.7 = getelementptr i8, ptr %179, i32 530
  %180 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i57.i.7) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !224
  br label %eeprom_write.exit

eeprom_write.exit:                                ; preds = %do.body2.i.7, %do.body2.i.6.eeprom_write.exit_crit_edge, %do.body2.i.5.eeprom_write.exit_crit_edge, %do.body2.i.4.eeprom_write.exit_crit_edge, %do.body2.i.3.eeprom_write.exit_crit_edge, %do.body2.i.2.eeprom_write.exit_crit_edge, %do.body2.i.1.eeprom_write.exit_crit_edge, %spi_w.exit.i.eeprom_write.exit_crit_edge
  %181 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw24, align 8
  %add.ptr.i59.i = getelementptr i8, ptr %182, i32 530
  %183 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i59.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %184 = and i16 %183, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %185 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw24, align 8
  %add.ptr5.i61.i = getelementptr i8, ptr %186, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i61.i, i16 %184) #22, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %187(i32 noundef 214748) #22
  %188 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw24, align 8
  %add.ptr.i62.i = getelementptr i8, ptr %189, i32 530
  %190 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i62.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !222
  %191 = or i16 %190, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !223
  tail call void @arm_heavy_mb() #22
  %192 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hw24, align 8
  %add.ptr5.i64.i = getelementptr i8, ptr %193, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i64.i, i16 %191) #22, !srcloc !183
  tail call fastcc void @spi_reg(ptr noundef %hw24, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %194 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw24, align 8
  %add.ptr.i65.i = getelementptr i8, ptr %195, i32 530
  %196 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i65.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !225
  %197 = and i16 %196, -4353
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !226
  tail call void @arm_heavy_mb() #22
  %198 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hw24, align 8
  %add.ptr5.i67.i = getelementptr i8, ptr %199, i32 530
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i67.i, i16 %197) #22, !srcloc !183
  br label %for.inc28

for.inc28:                                        ; preds = %eeprom_write.exit, %for.body14.for.inc28_crit_edge
  %inc29 = add nuw nsw i32 %i.157, 1
  %exitcond59.not = icmp eq i32 %inc29, 64
  br i1 %exitcond59.not, label %for.inc28.cleanup_crit_edge, label %for.inc28.for.body14_crit_edge

for.inc28.for.body14_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body14

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.inc28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %eeprom_word) #22
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @netdev_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %2 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %tx_max_pending, align 4
  %alloc = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 15, i32 5
  %3 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alloc, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %5 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_pending, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %6 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %rx_max_pending, align 4
  %alloc2 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 14, i32 5
  %7 = ptrtoint ptr %alloc2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alloc2, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %9 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %overrides = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 33
  %2 = ptrtoint ptr %overrides to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %overrides, align 4
  %and = and i32 %3, 1
  %4 = xor i32 %and, 1
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %autoneg, align 4
  %ksz_switch = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ksz_switch, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %rx_cfg = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_cfg, align 8
  %and3 = lshr i32 %9, 9
  %and3.lobit = and i32 %and3, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %10 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and3.lobit, ptr %rx_pause, align 4
  %tx_cfg = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_cfg, align 4
  %and6 = lshr i32 %12, 9
  %and6.lobit = and i32 %and6, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 8
  %add.ptr.i26 = getelementptr i8, ptr %14, i32 1026
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i26) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !214
  %16 = lshr i16 %15, 4
  %.lobit = and i16 %16, 1
  %17 = zext i16 %.lobit to i32
  %rx_pause12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %18 = ptrtoint ptr %rx_pause12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rx_pause12, align 4
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1, align 8
  %add.ptr.i27 = getelementptr i8, ptr %20, i32 1026
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i27) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !214
  %22 = lshr i16 %21, 5
  %.lobit31 = and i16 %22, 1
  %23 = zext i16 %.lobit31 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %and6.lobit, %if.then ], [ %23, %if.else ]
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %24, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_pauseparam(ptr nocapture noundef %dev, ptr nocapture noundef readonly %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %port2 = getelementptr i8, ptr %dev, i32 2312
  %lock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #22
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %6 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.else ], [ 0, %land.lhs.true.if.end_crit_edge ]
  %flow_ctrl6 = getelementptr i8, ptr %dev, i32 2315
  %8 = ptrtoint ptr %flow_ctrl6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %flow_ctrl6, align 1
  %overrides = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 33
  %9 = ptrtoint ptr %overrides to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %overrides, align 4
  %and = and i32 %10, -2
  store i32 %and, ptr %overrides, align 4
  %force_link = getelementptr i8, ptr %dev, i32 2314
  %11 = ptrtoint ptr %force_link to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %force_link, align 2
  %ksz_switch = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %ksz_switch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ksz_switch, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 8
  %add.ptr.i43 = getelementptr i8, ptr %15, i32 1026
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i43) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !199
  %17 = or i16 %16, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !200
  tail call void @arm_heavy_mb() #22
  %18 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw1, align 8
  %add.ptr8.i = getelementptr i8, ptr %19, i32 1026
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %17) #22, !srcloc !183
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 8
  %add.ptr.i44 = getelementptr i8, ptr %21, i32 1026
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i44) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !199
  %23 = or i16 %22, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !200
  tail call void @arm_heavy_mb() #22
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw1, align 8
  %add.ptr8.i47 = getelementptr i8, ptr %25, i32 1026
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i47, i16 %23) #22, !srcloc !183
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  tail call fastcc void @port_set_link_speed(ptr noundef %port2)
  br label %if.end21

if.else10:                                        ; preds = %entry
  %overrides11 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 33
  %26 = ptrtoint ptr %overrides11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %overrides11, align 4
  %or = or i32 %27, 1
  store i32 %or, ptr %overrides11, align 4
  %ksz_switch12 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %ksz_switch12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ksz_switch12, align 4
  %tobool13.not = icmp eq ptr %29, null
  %rx_pause18 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %30 = ptrtoint ptr %rx_pause18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_pause18, align 4
  br i1 %tobool13.not, label %if.else17, label %if.then14

if.then14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #24
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw1, align 8
  %add.ptr.i48 = getelementptr i8, ptr %33, i32 1026
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i48) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  %35 = and i16 %34, -17
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %masksel = select i1 %tobool.not.i, i16 0, i16 4096
  %data.0.i = or i16 %36, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !200
  tail call void @arm_heavy_mb() #22
  %37 = tail call i16 @llvm.bswap.i16(i16 %data.0.i) #22
  %38 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw1, align 8
  %add.ptr8.i51 = getelementptr i8, ptr %39, i32 1026
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i51, i16 %37) #22, !srcloc !183
  %tx_pause16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %40 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_pause16, align 4
  %42 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw1, align 8
  %add.ptr.i52 = getelementptr i8, ptr %43, i32 1026
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i52) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i53 = icmp eq i32 %41, 0
  %45 = and i16 %44, -33
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %masksel61 = select i1 %tobool.not.i53, i16 0, i16 8192
  %data.0.i56 = or i16 %46, %masksel61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !200
  tail call void @arm_heavy_mb() #22
  %47 = tail call i16 @llvm.bswap.i16(i16 %data.0.i56) #22
  %48 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw1, align 8
  %add.ptr8.i57 = getelementptr i8, ptr %49, i32 1026
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i57, i16 %47) #22, !srcloc !183
  br label %if.end21

if.else17:                                        ; preds = %if.else10
  %tx_pause19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %50 = ptrtoint ptr %tx_pause19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_pause19, align 4
  %rx_cfg1.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 10
  %52 = ptrtoint ptr %rx_cfg1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_cfg1.i, align 8
  %tx_cfg2.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 9
  %54 = ptrtoint ptr %tx_cfg2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_cfg2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i58 = icmp eq i32 %31, 0
  %and.i59 = and i32 %53, -513
  %masksel.i = select i1 %tobool.not.i58, i32 0, i32 512
  %storemerge.i = or i32 %and.i59, %masksel.i
  %56 = ptrtoint ptr %rx_cfg1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %storemerge.i, ptr %rx_cfg1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool5.not.i = icmp eq i32 %51, 0
  %and11.i = and i32 %55, -513
  %masksel43.i = select i1 %tobool5.not.i, i32 0, i32 512
  %storemerge42.i = or i32 %and11.i, %masksel43.i
  %57 = ptrtoint ptr %tx_cfg2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge42.i, ptr %tx_cfg2.i, align 4
  %enabled.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 29
  %58 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool13.not.i = icmp eq i8 %59, 0
  br i1 %tobool13.not.i, label %if.else17.if.end21_crit_edge, label %if.then14.i

if.else17.if.end21_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21

if.then14.i:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %storemerge.i)
  %cmp.not.i = icmp eq i32 %53, %storemerge.i
  br i1 %cmp.not.i, label %if.then14.i.if.end18.i_crit_edge, label %do.body.i

if.then14.i.if.end18.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18.i

do.body.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !262
  tail call void @arm_heavy_mb() #22
  %60 = ptrtoint ptr %rx_cfg1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_cfg1.i, align 8
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #22
  %63 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw1, align 8
  %add.ptr.i60 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %62) #22, !srcloc !205
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.body.i, %if.then14.i.if.end18.i_crit_edge
  %65 = ptrtoint ptr %tx_cfg2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_cfg2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %66)
  %cmp20.not.i = icmp eq i32 %55, %66
  br i1 %cmp20.not.i, label %if.end18.i.if.end21_crit_edge, label %do.body22.i

if.end18.i.if.end21_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21

do.body22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !263
  tail call void @arm_heavy_mb() #22
  %67 = ptrtoint ptr %tx_cfg2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_cfg2.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #22
  %70 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #22, !srcloc !205
  br label %if.end21

if.end21:                                         ; preds = %do.body22.i, %if.end18.i.if.end21_crit_edge, %if.else17.if.end21_crit_edge, %if.then14, %if.end9
  tail call void @mutex_unlock(ptr noundef %lock) #22
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @netdev_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %mib_cnt = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mib_cnt, align 4
  %mul = shl i32 %3, 5
  %4 = call ptr @memcpy(ptr %buf, ptr @ethtool_stats_keys, i32 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %counter = alloca [34 x i64], align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry122 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry204 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %n_stats3 = getelementptr inbounds %struct.ethtool_stats, ptr %stats, i32 0, i32 1
  %2 = ptrtoint ptr %n_stats3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_stats3, align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %counter) #22
  %lock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #22
  %first_port = getelementptr i8, ptr %dev, i32 2316
  %mib_port_cnt = getelementptr i8, ptr %dev, i32 2320
  %4 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mib_port_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp380 = icmp sgt i32 %5, 0
  br i1 %cmp380, label %for.body.preheader, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @mutex_unlock(ptr noundef %lock) #22
  br label %for.cond84.preheader

for.body.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_port, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0384 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %n.0383 = phi i32 [ %n.1, %for.inc.for.body_crit_edge ], [ 2, %for.body.preheader ]
  %p.0381 = phi i32 [ %inc12, %for.inc.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %state = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.0381, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp4 = icmp eq i8 %9, 0
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %read = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %p.0381, i32 2
  %10 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.0383)
  %cmp8 = icmp eq i32 %n.0383, 2
  %spec.select = select i1 %cmp8, i32 %p.0381, i32 %n.0383
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %n.0383, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then ]
  %inc = add nuw nsw i32 %i.0384, 1
  %inc12 = add i32 %p.0381, 1
  %11 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mib_port_cnt, align 8
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef %lock) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.1)
  %cmp14 = icmp slt i32 %n.1, 2
  br i1 %cmp14, label %if.end18, label %for.end.for.cond84.preheader_crit_edge

for.end.for.cond84.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond84.preheader

if.end18:                                         ; preds = %for.end
  %mib_read = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %mib_read) #22
  %14 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mib_port_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp20 = icmp ne i32 %15, 1
  %cmp14.not = xor i1 %cmp14, true
  %brmerge = select i1 %cmp20, i1 true, i1 %cmp14.not
  br i1 %brmerge, label %if.end18.for.cond84.preheader_crit_edge, label %if.then24

if.end18.for.cond84.preheader_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %if.end18.for.cond84.preheader_crit_edge, %for.end.for.cond84.preheader_crit_edge, %for.end.thread
  %n.0.lcssa408415 = phi i32 [ %n.1, %if.end18.for.cond84.preheader_crit_edge ], [ %n.1, %for.end.for.cond84.preheader_crit_edge ], [ 2, %for.end.thread ]
  %16 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mib_port_cnt, align 8
  %sub397 = sub i32 %17, %n.0.lcssa408415
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub397)
  %cmp86398 = icmp sgt i32 %sub397, 0
  br i1 %cmp86398, label %for.cond84.preheader.for.body88_crit_edge, label %for.cond84.preheader.if.end257_crit_edge

for.cond84.preheader.if.end257_crit_edge:         ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end257

for.cond84.preheader.for.body88_crit_edge:        ; preds = %for.cond84.preheader
  br label %for.body88

if.then24:                                        ; preds = %if.end18
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 6467) #22
  %arrayidx29 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %n.1
  %read30 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %n.1, i32 2
  %18 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp31 = icmp eq i32 %19, 2
  br i1 %cmp31, label %if.then24.if.end257thread-pre-split_crit_edge, label %if.then42

if.then24.if.end257thread-pre-split_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end257thread-pre-split

if.then42:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #22
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #22
  %call48385 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx29, ptr noundef nonnull %__wq_entry, i32 noundef 1) #22
  %21 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp53386 = icmp eq i32 %22, 2
  br i1 %cmp53386, label %if.then42.for.end77_crit_edge, label %if.then42.if.end72_crit_edge

if.then42.if.end72_crit_edge:                     ; preds = %if.then42
  br label %if.end72

if.then42.for.end77_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end77

if.end72:                                         ; preds = %cleanup.if.end72_crit_edge, %if.then42.if.end72_crit_edge
  %__ret43.1388 = phi i32 [ %__ret43.1, %cleanup.if.end72_crit_edge ], [ 100, %if.then42.if.end72_crit_edge ]
  %call48387 = phi i32 [ %call48, %cleanup.if.end72_crit_edge ], [ %call48385, %if.then42.if.end72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48387)
  %tobool73.not = icmp eq i32 %call48387, 0
  br i1 %tobool73.not, label %cleanup, label %if.end72.__out_crit_edge

if.end72.__out_crit_edge:                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #24
  br label %__out

cleanup:                                          ; preds = %if.end72
  %call76 = call i32 @schedule_timeout(i32 noundef %__ret43.1388) #22
  %call48 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx29, ptr noundef nonnull %__wq_entry, i32 noundef 1) #22
  %23 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp53 = icmp eq i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool59.not = icmp eq i32 %call76, 0
  %25 = select i1 %cmp53, i1 %tobool59.not, i1 false
  %__ret43.1 = select i1 %25, i32 1, i32 %call76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.1)
  %tobool66.not = icmp eq i32 %__ret43.1, 0
  %26 = select i1 %cmp53, i1 true, i1 %tobool66.not
  br i1 %26, label %cleanup.for.end77_crit_edge, label %cleanup.if.end72_crit_edge

cleanup.if.end72_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end72

cleanup.for.end77_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end77

for.end77:                                        ; preds = %cleanup.for.end77_crit_edge, %if.then42.for.end77_crit_edge
  call void @finish_wait(ptr noundef %arrayidx29, ptr noundef nonnull %__wq_entry) #22
  br label %__out

__out:                                            ; preds = %for.end77, %if.end72.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #22
  br label %if.end257thread-pre-split

for.body88:                                       ; preds = %for.inc253.for.body88_crit_edge, %for.cond84.preheader.for.body88_crit_edge
  %i.1401 = phi i32 [ %inc254, %for.inc253.for.body88_crit_edge ], [ 0, %for.cond84.preheader.for.body88_crit_edge ]
  %p.1399 = phi i32 [ %inc255, %for.inc253.for.body88_crit_edge ], [ %n.0.lcssa408415, %for.cond84.preheader.for.body88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1401)
  %cmp89 = icmp eq i32 %i.1401, 0
  br i1 %cmp89, label %if.then91, label %if.else169

if.then91:                                        ; preds = %for.body88
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 6474) #22
  %arrayidx101 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %p.1399
  %read102 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %p.1399, i32 2
  %27 = ptrtoint ptr %read102 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp103 = icmp eq i32 %28, 2
  br i1 %cmp103, label %if.then91.for.inc253_crit_edge, label %if.then121

if.then91.for.inc253_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc253

if.then121:                                       ; preds = %if.then91
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry122) #22
  %29 = call ptr @memset(ptr %__wq_entry122, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry122, i32 noundef 0) #22
  %call129393 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx101, ptr noundef nonnull %__wq_entry122, i32 noundef 1) #22
  %30 = ptrtoint ptr %read102 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %read102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp134394 = icmp eq i32 %31, 2
  br i1 %cmp134394, label %if.then121.for.end161_crit_edge, label %if.then121.if.end153_crit_edge

if.then121.if.end153_crit_edge:                   ; preds = %if.then121
  br label %if.end153

if.then121.for.end161_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end161

if.end153:                                        ; preds = %cleanup158.if.end153_crit_edge, %if.then121.if.end153_crit_edge
  %__ret123.1396 = phi i32 [ %__ret123.1, %cleanup158.if.end153_crit_edge ], [ 200, %if.then121.if.end153_crit_edge ]
  %call129395 = phi i32 [ %call129, %cleanup158.if.end153_crit_edge ], [ %call129393, %if.then121.if.end153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129395)
  %tobool154.not = icmp eq i32 %call129395, 0
  br i1 %tobool154.not, label %cleanup158, label %if.end153.__out165_crit_edge

if.end153.__out165_crit_edge:                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #24
  br label %__out165

cleanup158:                                       ; preds = %if.end153
  %call157 = call i32 @schedule_timeout(i32 noundef %__ret123.1396) #22
  %call129 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx101, ptr noundef nonnull %__wq_entry122, i32 noundef 1) #22
  %32 = ptrtoint ptr %read102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp134 = icmp eq i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool140.not = icmp eq i32 %call157, 0
  %34 = select i1 %cmp134, i1 %tobool140.not, i1 false
  %__ret123.1 = select i1 %34, i32 1, i32 %call157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret123.1)
  %tobool147.not = icmp eq i32 %__ret123.1, 0
  %35 = select i1 %cmp134, i1 true, i1 %tobool147.not
  br i1 %35, label %cleanup158.for.end161_crit_edge, label %cleanup158.if.end153_crit_edge

cleanup158.if.end153_crit_edge:                   ; preds = %cleanup158
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end153

cleanup158.for.end161_crit_edge:                  ; preds = %cleanup158
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end161

for.end161:                                       ; preds = %cleanup158.for.end161_crit_edge, %if.then121.for.end161_crit_edge
  call void @finish_wait(ptr noundef %arrayidx101, ptr noundef nonnull %__wq_entry122) #22
  br label %__out165

__out165:                                         ; preds = %for.end161, %if.end153.__out165_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry122) #22
  br label %for.inc253

if.else169:                                       ; preds = %for.body88
  %arrayidx171 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %p.1399
  %36 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx171, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool172.not = icmp eq i8 %37, 0
  br i1 %tobool172.not, label %if.else169.for.inc253_crit_edge, label %if.then173

if.else169.for.inc253_crit_edge:                  ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc253

if.then173:                                       ; preds = %if.else169
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 6479) #22
  %arrayidx183 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %p.1399
  %read184 = getelementptr %struct.dev_info, ptr %1, i32 0, i32 12, i32 %p.1399, i32 2
  %38 = ptrtoint ptr %read184 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp185 = icmp eq i32 %39, 2
  br i1 %cmp185, label %if.then173.for.inc253_crit_edge, label %if.then203

if.then173.for.inc253_crit_edge:                  ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc253

if.then203:                                       ; preds = %if.then173
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry204) #22
  %40 = call ptr @memset(ptr %__wq_entry204, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry204, i32 noundef 0) #22
  %call211389 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx183, ptr noundef nonnull %__wq_entry204, i32 noundef 1) #22
  %41 = ptrtoint ptr %read184 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %read184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp216390 = icmp eq i32 %42, 2
  br i1 %cmp216390, label %if.then203.for.end243_crit_edge, label %if.then203.if.end235_crit_edge

if.then203.if.end235_crit_edge:                   ; preds = %if.then203
  br label %if.end235

if.then203.for.end243_crit_edge:                  ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end243

if.end235:                                        ; preds = %cleanup240.if.end235_crit_edge, %if.then203.if.end235_crit_edge
  %__ret205.1392 = phi i32 [ %__ret205.1, %cleanup240.if.end235_crit_edge ], [ 100, %if.then203.if.end235_crit_edge ]
  %call211391 = phi i32 [ %call211, %cleanup240.if.end235_crit_edge ], [ %call211389, %if.then203.if.end235_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211391)
  %tobool236.not = icmp eq i32 %call211391, 0
  br i1 %tobool236.not, label %cleanup240, label %if.end235.__out247_crit_edge

if.end235.__out247_crit_edge:                     ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #24
  br label %__out247

cleanup240:                                       ; preds = %if.end235
  %call239 = call i32 @schedule_timeout(i32 noundef %__ret205.1392) #22
  %call211 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx183, ptr noundef nonnull %__wq_entry204, i32 noundef 1) #22
  %43 = ptrtoint ptr %read184 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %read184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp216 = icmp eq i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool222.not = icmp eq i32 %call239, 0
  %45 = select i1 %cmp216, i1 %tobool222.not, i1 false
  %__ret205.1 = select i1 %45, i32 1, i32 %call239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret205.1)
  %tobool229.not = icmp eq i32 %__ret205.1, 0
  %46 = select i1 %cmp216, i1 true, i1 %tobool229.not
  br i1 %46, label %cleanup240.for.end243_crit_edge, label %cleanup240.if.end235_crit_edge

cleanup240.if.end235_crit_edge:                   ; preds = %cleanup240
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end235

cleanup240.for.end243_crit_edge:                  ; preds = %cleanup240
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end243

for.end243:                                       ; preds = %cleanup240.for.end243_crit_edge, %if.then203.for.end243_crit_edge
  call void @finish_wait(ptr noundef %arrayidx183, ptr noundef nonnull %__wq_entry204) #22
  br label %__out247

__out247:                                         ; preds = %for.end243, %if.end235.__out247_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry204) #22
  br label %for.inc253

for.inc253:                                       ; preds = %__out247, %if.then173.for.inc253_crit_edge, %if.else169.for.inc253_crit_edge, %__out165, %if.then91.for.inc253_crit_edge
  %inc254 = add nuw nsw i32 %i.1401, 1
  %inc255 = add i32 %p.1399, 1
  %47 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mib_port_cnt, align 8
  %sub = sub i32 %48, %n.0.lcssa408415
  %cmp86 = icmp slt i32 %inc254, %sub
  br i1 %cmp86, label %for.inc253.for.body88_crit_edge, label %for.inc253.if.end257_crit_edge

for.inc253.if.end257_crit_edge:                   ; preds = %for.inc253
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end257

for.inc253.for.body88_crit_edge:                  ; preds = %for.inc253
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body88

if.end257thread-pre-split:                        ; preds = %__out, %if.then24.if.end257thread-pre-split_crit_edge
  %49 = ptrtoint ptr %mib_port_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %mib_port_cnt, align 8
  br label %if.end257

if.end257:                                        ; preds = %if.end257thread-pre-split, %for.inc253.if.end257_crit_edge, %for.cond84.preheader.if.end257_crit_edge
  %50 = phi i32 [ %.pr, %if.end257thread-pre-split ], [ %17, %for.cond84.preheader.if.end257_crit_edge ], [ %48, %for.inc253.if.end257_crit_edge ]
  %51 = ptrtoint ptr %first_port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %first_port, align 4
  %53 = call ptr @memset(ptr %counter, i32 0, i32 272)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp23.i = icmp sgt i32 %50, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %if.end257.get_mib_counters.exit_crit_edge

if.end257.get_mib_counters.exit_crit_edge:        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #24
  br label %get_mib_counters.exit

for.body.lr.ph.i:                                 ; preds = %if.end257
  %mib_cnt.i = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 7
  %54 = ptrtoint ptr %mib_cnt.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mib_cnt.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.025.i = phi i32 [ %52, %for.body.lr.ph.i ], [ %inc11.i, %for.inc9.i.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i, %for.inc9.i.for.body.i_crit_edge ]
  %mib_start.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %port.025.i, i32 3
  %56 = ptrtoint ptr %mib_start.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mib_start.i, align 1
  %conv.i = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv.i)
  %cmp321.i = icmp sgt i32 %55, %conv.i
  br i1 %cmp321.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.inc9.i_crit_edge

for.body.i.for.inc9.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc9.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %mib.022.i = phi i32 [ %inc.i, %for.body5.i.for.body5.i_crit_edge ], [ %conv.i, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 2, i32 3, i32 %port.025.i, i32 4, i32 %mib.022.i
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx7.i, align 8
  %arrayidx8.i = getelementptr i64, ptr %counter, i32 %mib.022.i
  %60 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx8.i, align 8
  %add.i = add i64 %61, %59
  store i64 %add.i, ptr %arrayidx8.i, align 8
  %inc.i = add nuw nsw i32 %mib.022.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %55
  br i1 %exitcond.not, label %for.body5.i.for.inc9.i_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body5.i

for.body5.i.for.inc9.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %for.body5.i.for.inc9.i_crit_edge, %for.body.i.for.inc9.i_crit_edge
  %inc10.i = add nuw nsw i32 %i.024.i, 1
  %inc11.i = add i32 %port.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, %50
  br i1 %exitcond.not.i, label %for.inc9.i.get_mib_counters.exit_crit_edge, label %for.inc9.i.for.body.i_crit_edge

for.inc9.i.for.body.i_crit_edge:                  ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.inc9.i.get_mib_counters.exit_crit_edge:       ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %get_mib_counters.exit

get_mib_counters.exit:                            ; preds = %for.inc9.i.get_mib_counters.exit_crit_edge, %if.end257.get_mib_counters.exit_crit_edge
  %mib_cnt = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 7
  %62 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mib_cnt, align 4
  %64 = call i32 @llvm.smin.i32(i32 %63, i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp266403 = icmp sgt i32 %64, 0
  br i1 %cmp266403, label %for.body268.preheader, label %get_mib_counters.exit.for.end272_crit_edge

get_mib_counters.exit.for.end272_crit_edge:       ; preds = %get_mib_counters.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end272

for.body268.preheader:                            ; preds = %get_mib_counters.exit
  call void @__sanitizer_cov_trace_pc() #24
  %65 = shl nuw i32 %64, 3
  %66 = call ptr @memcpy(ptr %data, ptr %counter, i32 %65)
  br label %for.end272

for.end272:                                       ; preds = %for.body268.preheader, %get_mib_counters.exit.for.end272_crit_edge
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %counter) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #20 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %mib_cnt = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %mib_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mib_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #22
  %mii_if = getelementptr i8, ptr %dev, i32 2488
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #22
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %advertising, align 4
  %or.i = or i32 %3, 128
  store i32 %or.i, ptr %advertising, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #22
  %advertising2 = getelementptr i8, ptr %dev, i32 2520
  %call6 = tail call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef %advertising2, ptr noundef %advertising) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %copy_cmd = alloca %struct.ethtool_link_ksettings, align 4
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %port1 = getelementptr i8, ptr %dev, i32 2312
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %copy_cmd) #22
  %2 = call ptr @memset(ptr %copy_cmd, i32 255, i32 88)
  %speed2 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #22
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %advertising, align 4, !annotation !218
  %advertising3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call4 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising3) #22
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %land.lhs.true

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end32

land.lhs.true:                                    ; preds = %entry
  %advertising6 = getelementptr i8, ptr %dev, i32 2520
  %8 = ptrtoint ptr %advertising6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %advertising6, align 8
  %10 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end32

if.then:                                          ; preds = %land.lhs.true
  %or = or i32 %9, 15
  %12 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %advertising, align 4
  %13 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %4, label %if.then.if.end15_crit_edge [
    i32 10, label %if.then10
    i32 100, label %if.then13
  ]

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %and = and i32 %or, -13
  %14 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %advertising, align 4
  br label %if.end15

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %and14 = and i32 %or, -4
  %15 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and14, ptr %advertising, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10, %if.then.if.end15_crit_edge
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %duplex, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %17, label %if.end15.if.end32_crit_edge [
    i8 0, label %if.then20
    i8 1, label %if.then28
  ]

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end32

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  %19 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %advertising, align 4
  %and21 = and i32 %20, -11
  store i32 %and21, ptr %advertising, align 4
  br label %if.end32

if.then28:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  %21 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %advertising, align 4
  %and29 = and i32 %22, -6
  store i32 %and29, ptr %advertising, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then20, %if.end15.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %entry.if.end32_crit_edge
  %lock = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #22
  %23 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp eq i8 %24, 0
  br i1 %tobool36.not, label %if.end32.if.else44_crit_edge, label %land.lhs.true37

if.end32.if.else44_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else44

land.lhs.true37:                                  ; preds = %if.end32
  %25 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %advertising, align 4
  %and38 = and i32 %26, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and38)
  %cmp39 = icmp eq i32 %and38, 15
  br i1 %cmp39, label %if.then41, label %land.lhs.true37.if.else44_crit_edge

land.lhs.true37.if.else44_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else44

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #24
  %27 = ptrtoint ptr %port1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %port1, align 8
  %speed43 = getelementptr i8, ptr %dev, i32 2313
  %28 = ptrtoint ptr %speed43 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %speed43, align 1
  %force_link = getelementptr i8, ptr %dev, i32 2314
  %29 = ptrtoint ptr %force_link to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %force_link, align 2
  br label %if.end64

if.else44:                                        ; preds = %land.lhs.true37.if.else44_crit_edge, %if.end32.if.else44_crit_edge
  %duplex46 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %30 = ptrtoint ptr %duplex46 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %duplex46, align 4
  %add = add i8 %31, 1
  %32 = ptrtoint ptr %port1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %add, ptr %port1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %cmp50.not = icmp eq i32 %4, 1000
  br i1 %cmp50.not, label %if.else44.if.end55_crit_edge, label %if.then52

if.else44.if.end55_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end55

if.then52:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #24
  %conv53 = trunc i32 %4 to i8
  %speed54 = getelementptr i8, ptr %dev, i32 2313
  %33 = ptrtoint ptr %speed54 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv53, ptr %speed54, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.else44.if.end55_crit_edge
  %34 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool58.not = icmp eq i8 %35, 0
  %force_link62 = getelementptr i8, ptr %dev, i32 2314
  br i1 %tobool58.not, label %if.else61, label %if.then59

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #24
  %36 = ptrtoint ptr %force_link62 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %force_link62, align 2
  br label %if.end64

if.else61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #24
  %37 = ptrtoint ptr %force_link62 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %force_link62, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then59, %if.then41
  %38 = call ptr @memcpy(ptr %copy_cmd, ptr %cmd, i32 88)
  %advertising66 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %copy_cmd, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %advertising, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising66, i32 noundef %40) #22
  %mii_if = getelementptr i8, ptr %dev, i32 2488
  %call68 = call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef nonnull %copy_cmd) #22
  call void @mutex_unlock(ptr noundef %lock) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #22
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %copy_cmd) #22
  ret i32 %call68
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_enable_wol(ptr nocapture noundef readonly %hw, i32 noundef %wol_enable, ptr nocapture noundef readonly %net_addr) unnamed_addr #2 align 64 {
entry:
  %pattern.i40 = alloca [42 x i8], align 1
  %pattern.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 538
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !278
  %3 = and i16 %2, 32767
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = trunc i32 %wol_enable to i16
  %6 = shl i16 %5, 2
  %7 = and i16 %6, 128
  %data.0.i = or i16 %4, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !279
  tail call void @arm_heavy_mb() #22
  %8 = tail call i16 @llvm.bswap.i16(i16 %data.0.i) #22
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr8.i = getelementptr i8, ptr %10, i32 538
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %8) #22, !srcloc !183
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %add.ptr.i16 = getelementptr i8, ptr %12, i32 538
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !278
  %14 = and i16 %13, -257
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = lshr i16 %5, 1
  %17 = and i16 %16, 1
  %data.0.i20 = or i16 %15, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !279
  tail call void @arm_heavy_mb() #22
  %18 = tail call i16 @llvm.bswap.i16(i16 %data.0.i20) #22
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr8.i21 = getelementptr i8, ptr %20, i32 538
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i21, i16 %18) #22, !srcloc !183
  %override_addr.i = getelementptr inbounds %struct.ksz_hw, ptr %hw, i32 0, i32 20
  tail call fastcc void @hw_set_wol_frame(ptr noundef %hw, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_add_wol_ucast.mask, i32 noundef 6, ptr noundef %override_addr.i) #22
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr.i22 = getelementptr i8, ptr %22, i32 538
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i22) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !278
  %24 = and i16 %23, -513
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = and i16 %16, 2
  %data.0.i26 = or i16 %25, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !279
  tail call void @arm_heavy_mb() #22
  %27 = tail call i16 @llvm.bswap.i16(i16 %data.0.i26) #22
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %add.ptr8.i27 = getelementptr i8, ptr %29, i32 538
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i27, i16 %27) #22, !srcloc !183
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pattern.i) #22
  %30 = call ptr @memcpy(ptr %pattern.i, ptr @__const.hw_add_wol_mcast.pattern, i32 3)
  %arrayidx.i = getelementptr inbounds [6 x i8], ptr %pattern.i, i32 0, i32 3
  %arrayidx1.i = getelementptr %struct.ksz_hw, ptr %hw, i32 0, i32 20, i32 3
  %31 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx1.i, i32 3)
  call fastcc void @hw_set_wol_frame(ptr noundef %hw, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @hw_add_wol_mcast.mask, i32 noundef 6, ptr noundef nonnull %pattern.i) #22
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pattern.i) #22
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %add.ptr.i28 = getelementptr i8, ptr %33, i32 538
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i28) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !278
  %35 = and i16 %34, -1025
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = and i16 %16, 4
  %data.0.i32 = or i16 %36, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !279
  tail call void @arm_heavy_mb() #22
  %38 = tail call i16 @llvm.bswap.i16(i16 %data.0.i32) #22
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %add.ptr8.i33 = getelementptr i8, ptr %40, i32 538
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i33, i16 %38) #22, !srcloc !183
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 8
  %add.ptr.i34 = getelementptr i8, ptr %42, i32 538
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i34) #22, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !278
  %44 = and i16 %43, -2049
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = and i16 %16, 8
  %data.0.i38 = or i16 %45, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !279
  tail call void @arm_heavy_mb() #22
  %47 = tail call i16 @llvm.bswap.i16(i16 %data.0.i38) #22
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 8
  %add.ptr8.i39 = getelementptr i8, ptr %49, i32 538
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i39, i16 %47) #22, !srcloc !183
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %pattern.i40) #22
  %50 = call ptr @memcpy(ptr %pattern.i40, ptr @__const.hw_add_wol_arp.pattern, i32 38)
  %arrayidx.i41 = getelementptr inbounds [42 x i8], ptr %pattern.i40, i32 0, i32 38
  %51 = ptrtoint ptr %net_addr to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %net_addr, align 1
  %53 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %arrayidx.i41, align 1
  call fastcc void @hw_set_wol_frame(ptr noundef %hw, i32 noundef 3, i32 noundef 6, ptr noundef nonnull @hw_add_wol_arp.mask, i32 noundef 42, ptr noundef nonnull %pattern.i40) #22
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %pattern.i40) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcidev_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw1 = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26 = icmp sgt i32 %3, 0
  br i1 %cmp26, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.platform_info, ptr %1, i32 0, i32 1, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then:                                          ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.for.inc_crit_edge, label %if.then5

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netif_device_detach(ptr noundef nonnull %5) #22
  %call6 = tail call i32 @netdev_close(ptr noundef nonnull %5)
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %8 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_count, align 8
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %wol_enable = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %wol_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wol_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %for.end.if.end11_crit_edge, label %if.then9

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.then9:                                         ; preds = %for.end
  tail call fastcc void @hw_enable_wol(ptr noundef %hw1, i32 noundef %11, ptr noundef nonnull @pcidev_suspend.net_addr)
  %pdev1.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #22
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %data.i, align 2, !annotation !218
  %pm_cap.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 32
  %15 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pm_cap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then9.hw_cfg_wol_pme.exit_crit_edge, label %if.end.i

if.then9.hw_cfg_wol_pme.exit_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_cfg_wol_pme.exit

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #24
  %conv.i = zext i8 %16 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef %add.i, ptr noundef nonnull %data.i) #22
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data.i, align 2
  %storemerge.i = or i16 %18, 259
  store i16 %storemerge.i, ptr %data.i, align 2
  %19 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_cap.i, align 1
  %conv14.i = zext i8 %20 to i32
  %add15.i = add nuw nsw i32 %conv14.i, 4
  %call16.i = call i32 @pci_write_config_word(ptr noundef %13, i32 noundef %add15.i, i16 noundef zeroext %storemerge.i) #22
  br label %hw_cfg_wol_pme.exit

hw_cfg_wol_pme.exit:                              ; preds = %if.end.i, %if.then9.hw_cfg_wol_pme.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #22
  br label %if.end11

if.end11:                                         ; preds = %hw_cfg_wol_pme.exit, %for.end.if.end11_crit_edge
  %call12 = call i32 @device_wakeup_enable(ptr noundef %dev_d) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcidev_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #22
  %wol_enable = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %wol_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  %pdev1.i = getelementptr %struct.dev_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #22
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %data.i, align 2, !annotation !218
  %pm_cap.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 32
  %7 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pm_cap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.hw_cfg_wol_pme.exit_crit_edge, label %if.end.i

if.then.hw_cfg_wol_pme.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %hw_cfg_wol_pme.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %conv.i = zext i8 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef %add.i, ptr noundef nonnull %data.i) #22
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data.i, align 2
  %11 = and i16 %10, -260
  store i16 %11, ptr %data.i, align 2
  %12 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pm_cap.i, align 1
  %conv14.i = zext i8 %13 to i32
  %add15.i = add nuw nsw i32 %conv14.i, 4
  %call16.i = call i32 @pci_write_config_word(ptr noundef %5, i32 noundef %add15.i, i16 noundef zeroext %11) #22
  br label %hw_cfg_wol_pme.exit

hw_cfg_wol_pme.exit:                              ; preds = %if.end.i, %if.then.hw_cfg_wol_pme.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #22
  br label %if.end

if.end:                                           ; preds = %hw_cfg_wol_pme.exit, %entry.if.end_crit_edge
  %dev_count = getelementptr inbounds %struct.dev_info, ptr %1, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp22 = icmp sgt i32 %15, 0
  br i1 %cmp22, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.platform_info, ptr %1, i32 0, i32 1, i32 %i.023
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then4.for.inc_crit_edge, label %if.then8

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #24
  %call9 = call i32 @netdev_open(ptr noundef nonnull %17)
  call void @netif_device_attach(ptr noundef nonnull %17) #22
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %20 = ptrtoint ptr %dev_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_count, align 8
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #22

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #23 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #23 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nounwind }
attributes #23 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #24 = { nomerge }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65, !67, !68, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !104, !106, !107, !109, !111, !112, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !164, !166, !167, !169, !170, !171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__initcall__kmod_ksz884x__344_7158_pci_device_driver_init6, !1, !"__initcall__kmod_ksz884x__344_7158_pci_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7158, i32 1}
!2 = !{ptr @__exitcall_pci_device_driver_exit, !1, !"__exitcall_pci_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description345, !4, !"__UNIQUE_ID_description345", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7160, i32 1}
!5 = !{ptr @__UNIQUE_ID_author346, !6, !"__UNIQUE_ID_author346", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7161, i32 1}
!7 = !{ptr @__UNIQUE_ID_file347, !8, !"__UNIQUE_ID_file347", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7162, i32 1}
!9 = !{ptr @__UNIQUE_ID_license348, !8, !"__UNIQUE_ID_license348", i1 false, i1 false}
!10 = !{ptr @__param_message, !11, !"__param_message", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7164, i32 1}
!12 = !{ptr @__UNIQUE_ID_messagetype349, !11, !"__UNIQUE_ID_messagetype349", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_message350, !14, !"__UNIQUE_ID_message350", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7165, i32 1}
!15 = !{ptr @__param_macaddr, !16, !"__param_macaddr", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7167, i32 1}
!17 = !{ptr @__UNIQUE_ID_macaddrtype351, !16, !"__UNIQUE_ID_macaddrtype351", i1 false, i1 false}
!18 = !{ptr @__param_mac1addr, !19, !"__param_mac1addr", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7168, i32 1}
!20 = !{ptr @__UNIQUE_ID_mac1addrtype352, !19, !"__UNIQUE_ID_mac1addrtype352", i1 false, i1 false}
!21 = !{ptr @__param_fast_aging, !22, !"__param_fast_aging", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7169, i32 1}
!23 = !{ptr @__UNIQUE_ID_fast_agingtype353, !22, !"__UNIQUE_ID_fast_agingtype353", i1 false, i1 false}
!24 = !{ptr @__param_multi_dev, !25, !"__param_multi_dev", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7170, i32 1}
!26 = !{ptr @__UNIQUE_ID_multi_devtype354, !25, !"__UNIQUE_ID_multi_devtype354", i1 false, i1 false}
!27 = !{ptr @__param_stp, !28, !"__param_stp", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7171, i32 1}
!29 = !{ptr @__UNIQUE_ID_stptype355, !28, !"__UNIQUE_ID_stptype355", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_macaddr356, !31, !"__UNIQUE_ID_macaddr356", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7172, i32 1}
!32 = !{ptr @__UNIQUE_ID_mac1addr357, !33, !"__UNIQUE_ID_mac1addr357", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7173, i32 1}
!34 = !{ptr @__UNIQUE_ID_fast_aging358, !35, !"__UNIQUE_ID_fast_aging358", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7174, i32 1}
!36 = !{ptr @__UNIQUE_ID_multi_dev359, !37, !"__UNIQUE_ID_multi_dev359", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7175, i32 1}
!38 = !{ptr @__UNIQUE_ID_stp360, !39, !"__UNIQUE_ID_stp360", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7176, i32 1}
!40 = !{ptr @msg_enable, !41, !"msg_enable", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6652, i32 12}
!42 = !{ptr @multi_dev, !43, !"multi_dev", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6666, i32 12}
!44 = !{ptr @stp, !45, !"stp", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6681, i32 12}
!46 = !{ptr @fast_aging, !47, !"fast_aging", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6688, i32 12}
!48 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pci_device_driver, !50, !"pci_device_driver", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7150, i32 26}
!51 = !{ptr @pcidev_name, !52, !"pcidev_name", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7136, i32 13}
!53 = !{ptr @pcidev_table, !54, !"pcidev_table", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7138, i32 35}
!55 = !{ptr @.str.1, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6870, i32 7}
!57 = !{ptr @.str.2, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6892, i32 4}
!59 = !{ptr @.str.3, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.4, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pcidev_init._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @pcidev_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.5, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6897, i32 35}
!65 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6899, i32 2}
!67 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pcidev_init._entry.6, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @pcidev_init._entry_ptr.10, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.11, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6900, i32 2}
!73 = !{ptr @pcidev_init.__UNIQUE_ID_ddebug343, !72, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!74 = !{ptr @pcidev_init.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6948, i32 2}
!76 = !{ptr @.str.12, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pcidev_init.__key.13, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6949, i32 2}
!79 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pcidev_init.__key.15, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6952, i32 3}
!82 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pcidev_init.__key.17, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6976, i32 2}
!85 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @version, !87, !"version", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 1415, i32 13}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 4445, i32 3}
!90 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ksz_alloc_mem._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ksz_alloc_mem._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.21, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 3740, i32 3}
!95 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ksz_check_desc_num._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ksz_check_desc_num._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @net_device_present, !99, !"net_device_present", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6765, i32 12}
!100 = !{ptr @DEFAULT_MAC_ADDRESS, !101, !"DEFAULT_MAC_ADDRESS", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 1418, i32 11}
!102 = !{ptr @next_jiffies, !103, !"next_jiffies", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 5228, i32 22}
!104 = !{ptr @ksz_init_timer.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 4261, i32 2}
!106 = !{ptr @.str.23, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @netdev_ops, !108, !"netdev_ops", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6734, i32 36}
!109 = !{ptr @.str.24, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 5395, i32 2}
!111 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sema_init.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!115 = !{ptr @.str.27, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!117 = !{ptr @.str.28, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!119 = !{ptr @.str.29, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 5209, i32 4}
!121 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @netdev_intr._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @netdev_intr._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.32, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 5212, i32 5}
!126 = !{ptr @netdev_intr._entry.31, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @netdev_intr._entry_ptr.33, !125, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!130 = !{ptr @.str.34, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @hw_add_wol_bcast.mask, !133, !"mask", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 3563, i32 18}
!134 = !{ptr @hw_add_wol_bcast.pattern, !135, !"pattern", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 3564, i32 18}
!136 = !{ptr @netdev_tx_timeout.last_reset, !137, !"last_reset", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 4826, i32 23}
!138 = !{ptr @netdev_ethtool_ops, !139, !"netdev_ethtool_ops", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6524, i32 33}
!140 = !{ptr @.str.36, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6004, i32 25}
!142 = distinct !{null, !143, !"hw_regs_range", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6012, i32 3}
!144 = !{ptr @netdev_set_wol.net_addr, !145, !"net_addr", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6115, i32 18}
!146 = !{ptr @hw_add_wol_ucast.mask, !147, !"mask", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 3599, i32 18}
!148 = !{ptr @hw_add_wol_mcast.mask, !149, !"mask", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 3581, i32 18}
!150 = !{ptr @hw_add_wol_arp.mask, !151, !"mask", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 3540, i32 18}
!152 = !{ptr @eeprom_data, !153, !"eeprom_data", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 5844, i32 12}
!154 = !{ptr @ethtool_stats_keys, !155, !"ethtool_stats_keys", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6344, i32 3}
!156 = !{ptr @pcidev_pm_ops, !157, !"pcidev_pm_ops", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7148, i32 8}
!158 = !{ptr @pcidev_suspend.net_addr, !159, !"net_addr", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 7115, i32 18}
!160 = !{ptr @__param_str_message, !11, !"__param_str_message", i1 false, i1 false}
!161 = !{ptr @__param_str_macaddr, !16, !"__param_str_macaddr", i1 false, i1 false}
!162 = !{ptr @.str.37, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6654, i32 24}
!164 = !{ptr @macaddr, !165, !"macaddr", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6654, i32 14}
!166 = !{ptr @__param_str_mac1addr, !19, !"__param_str_mac1addr", i1 false, i1 false}
!167 = !{ptr @mac1addr, !168, !"mac1addr", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/micrel/ksz884x.c", i32 6655, i32 14}
!169 = !{ptr @__param_str_fast_aging, !22, !"__param_str_fast_aging", i1 false, i1 false}
!170 = !{ptr @__param_str_multi_dev, !25, !"__param_str_multi_dev", i1 false, i1 false}
!171 = !{ptr @__param_str_stp, !28, !"__param_str_stp", i1 false, i1 false}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 2148896559, i64 2148896564, i64 2148896577, i64 2148896621, i64 2148896655, i64 2148896676}
!182 = !{i64 2156841337}
!183 = !{i64 4376747}
!184 = !{i64 4376947}
!185 = !{i64 2156842019}
!186 = !{!"branch_weights", i32 1, i32 2000}
!187 = !{i64 4377565}
!188 = !{i64 2156851321}
!189 = !{i64 2156808487}
!190 = !{i64 2156808729}
!191 = !{i64 2156809405}
!192 = !{i64 2156809684}
!193 = !{i64 2156810360}
!194 = !{i64 2156810602}
!195 = !{i64 2156796088}
!196 = !{i64 2156796337}
!197 = !{i64 2156790592}
!198 = !{i64 2156790803}
!199 = !{i64 2156794822}
!200 = !{i64 2156795033}
!201 = !{i64 2156797013}
!202 = !{i64 2156793330}
!203 = !{i64 2156793708}
!204 = !{i64 2156797776}
!205 = !{i64 4377367}
!206 = !{i64 2156776143}
!207 = !{i64 4377785}
!208 = !{i64 2156776795}
!209 = !{i64 2156782971}
!210 = !{i64 2156783725}
!211 = !{i64 2156784225}
!212 = !{i64 2156777189}
!213 = !{i64 2156805887}
!214 = !{i64 2156794352}
!215 = !{i64 2156806532}
!216 = !{i64 4377170}
!217 = !{i64 2156854575}
!218 = !{!"auto-init"}
!219 = !{i64 2156850962}
!220 = !{i64 2156807599}
!221 = !{i64 2156807920}
!222 = !{i64 2156821175}
!223 = !{i64 2156821395}
!224 = !{i64 2156822225}
!225 = !{i64 2156820125}
!226 = !{i64 2156820345}
!227 = !{i64 2156784465}
!228 = !{i64 2156784888}
!229 = !{i64 2156785312}
!230 = !{i64 2156786066}
!231 = !{i64 2156786406}
!232 = !{i64 2156787160}
!233 = !{i64 2156787660}
!234 = !{i64 2156787956}
!235 = !{i64 2156788710}
!236 = !{i64 2156789210}
!237 = !{i64 2156842296}
!238 = !{i64 2156843993}
!239 = !{i64 2156846785}
!240 = !{i64 2156847193}
!241 = !{i64 2156868428}
!242 = !{i64 2156868686}
!243 = !{i64 2156811617}
!244 = !{i64 2156812008}
!245 = !{i64 2156849591}
!246 = !{i64 2156848204}
!247 = !{i64 2156848646}
!248 = !{i64 2156775566}
!249 = !{i64 2156852863}
!250 = !{i64 2156778372}
!251 = !{i64 2156778600}
!252 = !{i64 2156849117}
!253 = !{i64 2156850040}
!254 = !{!"branch_weights", i32 2000, i32 1}
!255 = !{i64 2156850511}
!256 = !{i64 2156819019}
!257 = !{i64 2156819301}
!258 = !{i64 2156852450}
!259 = !{i64 2156851575}
!260 = !{i64 2156852015}
!261 = !{i64 2156884748}
!262 = !{i64 2156832737}
!263 = !{i64 2156833157}
!264 = !{i64 2156833861}
!265 = !{i64 2156792693}
!266 = !{i64 2156780536}
!267 = !{i64 2156847784}
!268 = !{i64 2156866273}
!269 = !{i64 2156838857}
!270 = !{i64 2156839249}
!271 = !{i64 2156839653}
!272 = !{i64 2156839955}
!273 = !{i64 2156840847}
!274 = !{i64 2156806312}
!275 = !{i64 2156853261}
!276 = !{i64 2156854182}
!277 = !{i64 2156877660}
!278 = !{i64 2156838240}
!279 = !{i64 2156838460}
