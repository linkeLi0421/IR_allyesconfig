; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qla3xxx.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qla3xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.PHY_DEVICE_INFO = type { i32, i32, i16, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ql3xxx_common_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ql3xxx_port_registers = type { %struct.ql3xxx_common_registers, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ob_mac_iocb_rsp = type { i8, i8, i16, i32, i32, i32 }
%struct.ql3_adapter = type { i32, i32, ptr, ptr, %struct.napi_struct, i8, i8, i8, i8, i32, i32, %struct.timer_list, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i32, i32, i32, ptr, i32, i16, i16, ptr, i32, i32, %struct.atomic_t, [256 x %struct.ql_tx_buf_cb], i32, i32, ptr, i32, ptr, i16, i16, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.eeprom_data, i32, i32, i32, i32, i32, i32, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ql_tx_buf_cb = type { ptr, ptr, i32, ptr, [18 x %struct.map_list] }
%struct.map_list = type { i32, i32 }
%struct.eeprom_data = type { [4 x i8], i16, i16, [16 x i8], [16 x i8], i16, %struct.eeprom_port_cfg, %struct.eeprom_port_cfg, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, i16, i16, [294 x i8], [8 x i16], %struct.eeprom_function_cfg, i16, [432 x i8], %struct.eeprom_bios_cfg, %struct.eeprom_function_cfg, i16, [464 x i8], %struct.eeprom_function_cfg, i16, [432 x i8], %struct.eeprom_bios_cfg, %struct.eeprom_function_cfg, i16 }
%struct.eeprom_port_cfg = type { i16, i16, i16, i16, [12 x i16] }
%struct.eeprom_bios_cfg = type { [3 x i8], [8 x i8], i8, [8 x i8], i16, [10 x i8] }
%struct.eeprom_function_cfg = type { [30 x i8], [3 x i16], [3 x i16], i16, i16 }
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
%struct.ib_mac_iocb_rsp = type { i8, i8, i16, i32, i32, i32 }
%struct.ql_rcv_buf_cb = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.ib_ip_iocb_rsp = type { i8, i8, i16, i16, i16, i32, i32 }
%struct.net_rsp_iocb = type { i8, i8, i16, [3 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.bufq_addr_element = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ob_mac_iocb_req = type { i8, i8, i8, i8, i32, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.oal_entry = type { i32, i32, i32 }
%struct.oal = type { [5 x %struct.oal_entry] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ql3xxx_host_memory_registers = type { %struct.ql3xxx_common_registers, [12 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ql3xxx_local_ram_registers = type { %struct.ql3xxx_common_registers, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author343 = internal constant [34 x i8] c"qla3xxx.author=QLogic Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [63 x i8] c"qla3xxx.description=QLogic ISP3XXX Network Driver v2.03.00-k5 \00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [49 x i8] c"qla3xxx.file=drivers/net/ethernet/qlogic/qla3xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [20 x i8] c"qla3xxx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version347 = internal constant [28 x i8] c"qla3xxx.version=v2.03.00-k5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla3xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"v2.03.00-k5\00", [20 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [14 x i8] c"qla3xxx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype348 = internal constant [27 x i8] c"qla3xxx.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug349 = internal constant [51 x i8] c"qla3xxx.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@__param_str_msi = internal constant [12 x i8] c"qla3xxx.msi\00", align 1
@msi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @msi } }, section "__param", align 4
@__UNIQUE_ID_msitype350 = internal constant [25 x i8] c"qla3xxx.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi351 = internal constant [54 x i8] c"qla3xxx.parm=msi:Turn on Message Signaled Interrupts.\00", section ".modinfo", align 1
@__initcall__kmod_qla3xxx__352_3926_ql3xxx_driver_init6 = internal global ptr @ql3xxx_driver_init, section ".initcall6.init", align 4
@ql3xxx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ql3xxx_pci_tbl, ptr @ql3xxx_probe, ptr @ql3xxx_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ql3xxx_driver_exit = internal global ptr @ql3xxx_driver_exit, section ".exitcall.exit", align 4
@ql3xxx_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4215, i32 12322, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 12338, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ql3xxx_probe.cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ql3xxx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013qla3xxx: %s cannot enable PCI device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ql3xxx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/qlogic/qla3xxx.c\00", [58 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr = internal global ptr @ql3xxx_probe._entry, section ".printk_index", align 4
@ql3xxx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 3763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qla3xxx: %s cannot obtain PCI resources\0A\00", [53 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr.8 = internal global ptr @ql3xxx_probe._entry.6, section ".printk_index", align 4
@ql3xxx_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 3771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qla3xxx: %s no usable DMA configuration\0A\00", [53 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr.11 = internal global ptr @ql3xxx_probe._entry.9, section ".printk_index", align 4
@ql3xxx_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 3802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qla3xxx: %s: cannot map device registers\0A\00", [52 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr.14 = internal global ptr @ql3xxx_probe._entry.12, section ".printk_index", align 4
@ql3xxx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&qdev->adapter_lock\00", [44 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&qdev->hw_lock\00", [17 x i8] zeroinitializer }, align 32
@ql3xxx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ql3xxx_open, ptr @ql3xxx_close, ptr @ql3xxx_send, ptr null, ptr null, ptr null, ptr null, ptr @ql3xxx_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ql3xxx_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ql3xxx_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ql_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @ql_get_msglevel, ptr @ql_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ql_get_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ql_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 3822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\011qla3xxx: %s: Adapter #%d, Invalid NVRAM parameters\0A\00", [42 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr.20 = internal global ptr @ql3xxx_probe._entry.18, section ".printk_index", align 4
@ql3xxx_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 3852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qla3xxx: %s: cannot register net device\0A\00", [53 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr.23 = internal global ptr @ql3xxx_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&qdev->reset_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&qdev->reset_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&qdev->tx_timeout_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&qdev->tx_timeout_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&qdev->link_state_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&qdev->link_state_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@ql3xxx_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&qdev->adapter_timer)\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ql3xxx_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.4, ptr @.str.5, i32 3876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\011qla3xxx: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr.41 = internal global ptr @ql3xxx_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"QLogic ISP3XXX Network Driver\00", [34 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.4, ptr @.str.5, i32 3878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\011qla3xxx: Driver name: %s, Version: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@ql3xxx_probe._entry_ptr.45 = internal global ptr @ql3xxx_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to  allocate buffers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"User requested MSI, but MSI failed to initialize.  Continuing without MSI.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSI Enabled...\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to reserve interrupt %d - already in use\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not acquire driver lock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to initialize adapter\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"calling pci_disable_msi()\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid mtu size: %d.  Only %d and %d are accepted.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"shadowReg Alloc failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ql_alloc_net_req_rsp_queues failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ql_alloc_buffer_queues failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ql_alloc_small_buffers failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ql_alloc_large_buffers failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reqQ failed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rspQ allocation failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lBufQ failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Small Buffer Queue allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get small buffer memory\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"large buff alloc failed for %d bytes at index %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCI mapping failed with error: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Already done\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Resetting chip. PortFatalErrStatus register = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Another function issued a reset to the chip. ISR value = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driver lock acquired\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timed out waiting for driver lock...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hw Initialization timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not read from reg PHY_ID_0_REG\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not read from reg PHY_ID_1_REG\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Could not read from reg PHY_ID_0_REG after Agere detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Could not read from reg PHY_ID_1_REG after Agere detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PHY is unknown\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Timed out waiting for management port to get free before issuing command\0A\00", [54 x i8] zeroinitializer }, align 32
@PHYAddr = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7680, i32 7936], [24 x i8] zeroinitializer }, align 32
@PHY_DEVICES = internal constant { [3 x %struct.PHY_DEVICE_INFO], [48 x i8] } { [3 x %struct.PHY_DEVICE_INFO] [%struct.PHY_DEVICE_INFO { i32 0, i32 0, i16 0, ptr @.str.82 }, %struct.PHY_DEVICE_INFO { i32 1, i32 1009, i16 11, ptr @.str.83 }, %struct.PHY_DEVICE_INFO { i32 2, i32 41148, i16 1, ptr @.str.84 }], [48 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Phy: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PHY_TYPE_UNKNOWN\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PHY_VITESSE_VSC8211\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PHY_AGERE_ET1011C\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enabling Agere specific PHY\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not link master\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"link master\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ql_adapter_reset(%d) FAILED!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Releasing driver lock via chip reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not acquire driver lock to do reset!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Issue soft reset to chip\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Wait 10 milliseconds for reset to complete\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clearing RI after reset\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid segment count!\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ql3xxx_send = private unnamed_addr constant [12 x i8] c"ql3xxx_send\00", align 1
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Could not map the segments!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx queued, slot %d, len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PCI mapping outbound address list with error: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI mapping frags failed with error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Resetting...\0A\00", [18 x i8] zeroinitializer }, align 32
@ql3xxx_driver_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla3xxx\00", [24 x i8] zeroinitializer }, align 32
@ql3xxx_driver_version = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"v2.03.00-k5\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"Hit default case, not handled!\0A\09dropping the packet, opcode = %x\0A0x%08lx 0x%08lx 0x%08lx 0x%08lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Frame too short but it was padded and sent\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Frame too short to be legal, frame not sent\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_cb->seg_count == 0: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Bad checksum for this %s packet, checksum = %x\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ql_process_macip_rx_intr = private unnamed_addr constant [25 x i8] c"ql_process_macip_rx_intr\00", align 1
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed netdev_alloc_skb()\0A\00", [37 x i8] zeroinitializer }, align 32
@ql_get_nvram_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qla3xxx: %s: Failed ql_sem_spinlock()\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ql_get_nvram_params\00", [44 x i8] zeroinitializer }, align 32
@ql_get_nvram_params._entry_ptr = internal global ptr @ql_get_nvram_params._entry, section ".printk_index", align 4
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"checksum should be zero, is %x!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid function number, ispControlStatus = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Freeing lost SKB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Clearing NRI after reset\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset completed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clearing NRI after reset\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timed out waiting for reset to complete\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Do a reset\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Driver up/down cycle failed, closing device\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Reset in progress, skip processing link state\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Link is up\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not get hw lock for GIO\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Auto-Negotiate complete\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Auto-Negotiate incomplete\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Configuring link\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Enabling mac\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link is up at %d Mbps, %s duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Remote error detected. Calling ql_port_start()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s Adapter %d RevisionID %d found %s on PCI slot %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QLA3032\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QLA3022\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s Interface\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OPTICAL\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COPPER\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bus interface is %s %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"64-bit\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"32-bit\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCI-X\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mem  IO base address adjusted = 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Interrupt number = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC address %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.ql_get_link_speed = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000, i32 -1, i32 10, i32 100], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.145 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 9, i64 10, i64 33, i64 249, i64 250]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 1500, i64 9000]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1009, i64 41148]
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 53, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 59, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 63, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"ql3xxx_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3918, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [15 x i8] c"ql3xxx_pci_tbl\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 67, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3752, i32 13 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3757, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3763, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3771, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3802, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3807, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3808, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"ql3xxx_netdev_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3738, i32 36 }
@___asan_gen_.219 = private unnamed_addr constant [19 x i8] c"ql3xxx_ethtool_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1776, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3821, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3852, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3861, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3868, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3869, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3870, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3872, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3876, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3877, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3456, i32 20 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3463, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3466, i32 22 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3476, i32 7 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3484, i32 20 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3491, i32 20 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3513, i32 21 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2840, i32 26 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2873, i32 26 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2878, i32 26 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2883, i32 26 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2888, i32 26 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2893, i32 26 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2529, i32 26 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2539, i32 26 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2592, i32 26 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2612, i32 26 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2664, i32 26 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2756, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2774, i32 9 }
@___asan_gen_.358 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 326, i32 6 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2629, i32 27 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2229, i32 9 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2238, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 153, i32 18 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 154, i32 11 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 160, i32 25 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3218, i32 26 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 979, i32 26 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 985, i32 26 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1002, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1008, i32 27 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1024, i32 26 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 741, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [8 x i8] c"PHYAddr\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 556, i32 18 }
@___asan_gen_.402 = private unnamed_addr constant [12 x i8] c"PHY_DEVICES\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 93, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 897, i32 28 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 94, i32 39 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 95, i32 39 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 96, i32 39 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 842, i32 26 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1314, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1319, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3432, i32 22 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3436, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3439, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3261, i32 40 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3268, i32 9 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3290, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2473, i32 20 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2490, i32 20 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2503, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2363, i32 9 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2386, i32 8 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3593, i32 19 }
@___asan_gen_.462 = private unnamed_addr constant [19 x i8] c"ql3xxx_driver_name\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 44, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant [22 x i8] c"ql3xxx_driver_version\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 45, i32 19 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2150, i32 8 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1924, i32 8 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1932, i32 7 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1939, i32 26 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2086, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2089, i32 9 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 2089, i32 17 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1798, i32 12 }
@___asan_gen_.492 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 533, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 546, i32 26 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3365, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3628, i32 12 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3644, i32 20 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3661, i32 12 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3667, i32 12 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3689, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3690, i32 21 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3524, i32 7 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1529, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1549, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1566, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1442, i32 26 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1184, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1187, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1468, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1484, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1492, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 1500, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3378, i32 7 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3380, i32 45 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3380, i32 57 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3382, i32 20 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3383, i32 45 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3383, i32 57 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3388, i32 20 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3389, i32 34 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3389, i32 45 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3390, i32 24 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3390, i32 34 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3392, i32 20 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3394, i32 20 }
@___asan_gen_.603 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.604 = private constant [41 x i8] c"../drivers/net/ethernet/qlogic/qla3xxx.c\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 3396, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [31 x i8] c"switch.table.ql_get_link_speed\00", align 1
@llvm.compiler.used = appending global [177 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_debug349, ptr @__UNIQUE_ID_debugtype348, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_msi351, ptr @__UNIQUE_ID_msitype350, ptr @__UNIQUE_ID_version347, ptr @__exitcall_ql3xxx_driver_exit, ptr @__initcall__kmod_qla3xxx__352_3926_ql3xxx_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_msi, ptr @ql3xxx_driver_exit, ptr @ql3xxx_probe._entry, ptr @ql3xxx_probe._entry.12, ptr @ql3xxx_probe._entry.18, ptr @ql3xxx_probe._entry.21, ptr @ql3xxx_probe._entry.39, ptr @ql3xxx_probe._entry.43, ptr @ql3xxx_probe._entry.6, ptr @ql3xxx_probe._entry.9, ptr @ql3xxx_probe._entry_ptr, ptr @ql3xxx_probe._entry_ptr.11, ptr @ql3xxx_probe._entry_ptr.14, ptr @ql3xxx_probe._entry_ptr.20, ptr @ql3xxx_probe._entry_ptr.23, ptr @ql3xxx_probe._entry_ptr.41, ptr @ql3xxx_probe._entry_ptr.45, ptr @ql3xxx_probe._entry_ptr.8, ptr @ql_get_nvram_params._entry, ptr @ql_get_nvram_params._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @msi, ptr @ql3xxx_driver, ptr @ql3xxx_pci_tbl, ptr @ql3xxx_probe.cards_found, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @ql3xxx_probe.__key, ptr @.str.15, ptr @ql3xxx_probe.__key.16, ptr @.str.17, ptr @ql3xxx_netdev_ops, ptr @ql3xxx_ethtool_ops, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @ql3xxx_probe.__key.25, ptr @.str.26, ptr @ql3xxx_probe.__key.27, ptr @.str.28, ptr @ql3xxx_probe.__key.29, ptr @.str.30, ptr @ql3xxx_probe.__key.31, ptr @.str.32, ptr @ql3xxx_probe.__key.33, ptr @.str.34, ptr @ql3xxx_probe.__key.35, ptr @.str.36, ptr @ql3xxx_probe.__key.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @PHYAddr, ptr @PHY_DEVICES, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @ql3xxx_driver_name, ptr @ql3xxx_driver_version, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @switch.table.ql_get_link_speed], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PHYAddr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PHY_DEVICES to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_driver_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql3xxx_driver_version to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql_get_nvram_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ql_get_link_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ql3xxx_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ql3xxx_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ql3xxx_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @ql3xxx_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql3xxx_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pci_entry) #2 align 64 {
entry:
  %buf.i306 = alloca [3 x i16], align 2
  %buf.i = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  %init_name.i.i281 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i281 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i281, align 8
  %tobool.not.i.i282 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i282, label %if.end.i.i284, label %do.end8.pci_name.exit286_crit_edge

do.end8.pci_name.exit286_crit_edge:               ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit286

if.end.i.i284:                                    ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i283 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i283 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i283, align 4
  br label %pci_name.exit286

pci_name.exit286:                                 ; preds = %if.end.i.i284, %do.end8.pci_name.exit286_crit_edge
  %retval.0.i.i285 = phi ptr [ %7, %if.end.i.i284 ], [ %5, %do.end8.pci_name.exit286_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i285) #16
  br label %err_out_disable_pdev

if.end12:                                         ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end12
  %init_name.i.i287 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i287 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i287, align 8
  %tobool.not.i.i288 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i288, label %if.end.i.i290, label %do.end18.pci_name.exit292_crit_edge

do.end18.pci_name.exit292_crit_edge:              ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit292

if.end.i.i290:                                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %pci_name.exit292

pci_name.exit292:                                 ; preds = %if.end.i.i290, %do.end18.pci_name.exit292_crit_edge
  %retval.0.i.i291 = phi ptr [ %11, %if.end.i.i290 ], [ %9, %do.end18.pci_name.exit292_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i291) #16
  br label %err_out_free_regions

if.end22:                                         ; preds = %if.end12
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #13
  %call23 = tail call ptr @alloc_etherdev_mqs(i32 noundef 43968, i32 noundef 1, i32 noundef 1) #13
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.err_out_free_regions_crit_edge, label %if.end26

if.end22.err_out_free_regions_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_free_regions

if.end26:                                         ; preds = %if.end22
  %parent = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call23, i32 2304
  %14 = load i32, ptr @ql3xxx_probe.cards_found, align 4
  %index = getelementptr i8, ptr %call23, i32 2552
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %index, align 8
  %ndev30 = getelementptr i8, ptr %call23, i32 2316
  %16 = ptrtoint ptr %ndev30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call23, ptr %ndev30, align 4
  %pdev31 = getelementptr i8, ptr %call23, i32 2312
  %17 = ptrtoint ptr %pdev31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdev, ptr %pdev31, align 8
  %device = getelementptr inbounds %struct.pci_device_id, ptr %pci_entry, i32 0, i32 1
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device, align 4
  %device_id = getelementptr i8, ptr %call23, i32 46260
  %20 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %device_id, align 4
  %port_link_state = getelementptr i8, ptr %call23, i32 45928
  %21 = ptrtoint ptr %port_link_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %port_link_state, align 8
  %22 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool32.not = icmp eq i32 %22, 0
  br i1 %tobool32.not, label %if.end26.if.end34_crit_edge, label %if.then33

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %msi = getelementptr i8, ptr %call23, i32 2548
  %23 = ptrtoint ptr %msi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %msi, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end26.if.end34_crit_edge
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %24)
  %cmp1.i = icmp ugt i32 %24, 31
  br i1 %cmp1.i, label %if.end34.netif_msg_init.exit_crit_edge, label %if.end.i

if.end34.netif_msg_init.exit_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2.i = icmp eq i32 %24, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %notmask.i = shl nsw i32 -1, %24
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end34.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 55, %if.end34.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call23, i32 2704
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %msg_enable, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 23
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features, align 16
  %or = or i64 %27, 32
  store i64 %or, ptr %features, align 16
  %28 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12338, i32 %29)
  %cmp = icmp eq i32 %29, 12338
  br i1 %cmp, label %if.then37, label %netif_msg_init.exit.if.end40_crit_edge

netif_msg_init.exit.if.end40_crit_edge:           ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then37:                                        ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or39 = or i64 %27, 35
  %30 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %or39, ptr %features, align 16
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %netif_msg_init.exit.if.end40_crit_edge
  %call41 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 1) #13
  %mem_map_registers = getelementptr i8, ptr %call23, i32 2696
  %31 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call41, ptr %mem_map_registers, align 8
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %do.end47, label %do.body52

do.end47:                                         ; preds = %if.end40
  %init_name.i.i293 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i293 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i293, align 8
  %tobool.not.i.i294 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i294, label %if.end.i.i296, label %do.end47.pci_name.exit298_crit_edge

do.end47.pci_name.exit298_crit_edge:              ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit298

if.end.i.i296:                                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  br label %pci_name.exit298

pci_name.exit298:                                 ; preds = %if.end.i.i296, %do.end47.pci_name.exit298_crit_edge
  %retval.0.i.i297 = phi ptr [ %35, %if.end.i.i296 ], [ %33, %do.end47.pci_name.exit298_crit_edge ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i297) #16
  br label %err_out_free_ndev

do.body52:                                        ; preds = %if.end40
  %adapter_lock = getelementptr i8, ptr %call23, i32 2604
  tail call void @__raw_spin_lock_init(ptr noundef %adapter_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ql3xxx_probe.__key, i16 noundef signext 3) #13
  %hw_lock = getelementptr i8, ptr %call23, i32 2648
  tail call void @__raw_spin_lock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @ql3xxx_probe.__key.16, i16 noundef signext 3) #13
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 16
  %36 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ql3xxx_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 44
  %37 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ql3xxx_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 115
  %38 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 500, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call23, i32 2320
  tail call void @netif_napi_add(ptr noundef nonnull %call23, ptr noundef %napi, ptr noundef nonnull @ql_poll, i32 noundef 64) #13
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %irq60 = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 64
  %41 = ptrtoint ptr %irq60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %irq60, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %eeprom_cmd_data.i = getelementptr i8, ptr %call23, i32 43720
  %42 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %eeprom_cmd_data.i, align 8
  %mac_index.i = getelementptr i8, ptr %call23, i32 45932
  %43 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mac_index.i, align 4
  %mul.i = shl i32 %44, 11
  %or.i = or i32 %mul.i, 4096
  %call5.i = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %add.ptr.i, i32 noundef 469762048, i32 noundef %or.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i299, label %do.end8.i

do.end8.i:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #16
  br label %do.end66

if.end.i299:                                      ; preds = %do.body52
  %nvram_data.i = getelementptr i8, ptr %call23, i32 43880
  br label %for.body.i

for.body.i:                                       ; preds = %eeprom_readword.exit.i.for.body.i_crit_edge, %if.end.i299
  %pEEPROMData.050.i = phi ptr [ %nvram_data.i, %if.end.i299 ], [ %incdec.ptr.i, %eeprom_readword.exit.i.for.body.i_crit_edge ]
  %index.049.i = phi i32 [ 0, %if.end.i299 ], [ %inc.i, %eeprom_readword.exit.i.for.body.i_crit_edge ]
  %checksum.048.i = phi i32 [ 0, %if.end.i299 ], [ %phi.cast.i, %eeprom_readword.exit.i.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mem_map_registers, align 8
  %serialPortInterfaceReg.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %eeprom_cmd_data.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i.i.i, i32 33558272) #13, !srcloc !326
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #13
  %50 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem_map_registers, align 8
  %serialPortInterfaceReg.i5.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or1.i.i.i = or i32 %53, 983044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %54 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %54) #13, !srcloc !326
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #13
  %57 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or5.i.i.i = or i32 %58, 983045
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %59 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %59) #13, !srcloc !326
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #13
  %62 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or8.i.i.i = or i32 %63, 983044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %64 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %64) #13, !srcloc !326
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #13
  %67 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or13.i.i.i = or i32 %68, 983044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %69 = tail call i32 @llvm.bswap.i32(i32 %or13.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %69) #13, !srcloc !326
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #13
  %72 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or17.i.i.i = or i32 %73, 983045
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %74 = tail call i32 @llvm.bswap.i32(i32 %or17.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %74) #13, !srcloc !326
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748) #13
  %77 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or20.i.i.i = or i32 %78, 983044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %79 = tail call i32 @llvm.bswap.i32(i32 %or20.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %79) #13, !srcloc !326
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #13
  %82 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or13.1.i.i.i = or i32 %83, 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %84 = tail call i32 @llvm.bswap.i32(i32 %or13.1.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %84) #13, !srcloc !326
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748) #13
  %87 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or17.1.i.i.i = or i32 %88, 983041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %89 = tail call i32 @llvm.bswap.i32(i32 %or17.1.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %89) #13, !srcloc !326
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748) #13
  %92 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or20.1.i.i.i = or i32 %93, 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %94 = tail call i32 @llvm.bswap.i32(i32 %or20.1.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %94) #13, !srcloc !326
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748) #13
  br label %for.body25.i.i.i

for.body25.i.i.i:                                 ; preds = %if.end34.i.i.i.for.body25.i.i.i_crit_edge, %for.body.i
  %previousBit.26.i.i.i = phi i32 [ %previousBit.3.i.i.i, %if.end34.i.i.i.for.body25.i.i.i_crit_edge ], [ 65535, %for.body.i ]
  %i.15.i.i.i = phi i32 [ %inc45.i.i.i, %if.end34.i.i.i.for.body25.i.i.i_crit_edge ], [ 0, %for.body.i ]
  %eepromAddr.addr.04.i.i.i = phi i32 [ %shl43.i.i.i, %if.end34.i.i.i.for.body25.i.i.i_crit_edge ], [ %index.049.i, %for.body.i ]
  %and26.i.i.i = lshr i32 %eepromAddr.addr.04.i.i.i, 7
  %97 = and i32 %and26.i.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %previousBit.26.i.i.i, i32 %97)
  %cmp29.not.i.i.i = icmp eq i32 %previousBit.26.i.i.i, %97
  br i1 %cmp29.not.i.i.i, label %for.body25.i.i.i.if.end34.i.i.i_crit_edge, label %if.then30.i.i.i

for.body25.i.i.i.if.end34.i.i.i_crit_edge:        ; preds = %for.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i.i

if.then30.i.i.i:                                  ; preds = %for.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or32.i.i.i = or i32 %97, %99
  %or33.i.i.i = or i32 %or32.i.i.i, 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %100 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %100) #13, !srcloc !326
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748) #13
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.then30.i.i.i, %for.body25.i.i.i.if.end34.i.i.i_crit_edge
  %previousBit.3.i.i.i = phi i32 [ %97, %if.then30.i.i.i ], [ %previousBit.26.i.i.i, %for.body25.i.i.i.if.end34.i.i.i_crit_edge ]
  %103 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or36.i.i.i = or i32 %97, %104
  %or38.i.i.i = or i32 %or36.i.i.i, 983041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %105 = tail call i32 @llvm.bswap.i32(i32 %or38.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %105) #13, !srcloc !326
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748) #13
  %108 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or40.i.i.i = or i32 %97, %109
  %or41.i.i.i = or i32 %or40.i.i.i, 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %110 = tail call i32 @llvm.bswap.i32(i32 %or41.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i, i32 %110) #13, !srcloc !326
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i5.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748) #13
  %shl43.i.i.i = shl i32 %eepromAddr.addr.04.i.i.i, 1
  %inc45.i.i.i = add nuw nsw i32 %i.15.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc45.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %fm93c56a_cmd.exit.i.i, label %if.end34.i.i.i.for.body25.i.i.i_crit_edge

if.end34.i.i.i.for.body25.i.i.i_crit_edge:        ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body25.i.i.i

fm93c56a_cmd.exit.i.i:                            ; preds = %if.end34.i.i.i
  %113 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mem_map_registers, align 8
  %serialPortInterfaceReg.i8.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %114, i32 0, i32 12
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %fm93c56a_cmd.exit.i.i
  %i.016.i.i.i = phi i32 [ 0, %fm93c56a_cmd.exit.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %data.015.i.i.i = phi i32 [ 0, %fm93c56a_cmd.exit.i.i ], [ %or5.i11.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %115 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or1.i10.i.i = or i32 %116, 983041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %117 = tail call i32 @llvm.bswap.i32(i32 %or1.i10.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i8.i.i, i32 %117) #13, !srcloc !326
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i8.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748) #13
  %120 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %eeprom_cmd_data.i, align 8
  %or3.i.i.i = or i32 %121, 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  %122 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i8.i.i, i32 %122) #13, !srcloc !326
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i8.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748) #13
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i8.i.i) #13, !srcloc !327
  %126 = lshr i32 %125, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %and.lobit.i.i.i = and i32 %126, 1
  %shl.i.i.i = shl i32 %data.015.i.i.i, 1
  %or5.i11.i.i = or i32 %and.lobit.i.i.i, %shl.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i12.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i12.i.i, label %eeprom_readword.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

eeprom_readword.exit.i:                           ; preds = %for.body.i.i.i
  %conv.i.i.i = trunc i32 %or5.i11.i.i to i16
  %127 = ptrtoint ptr %pEEPROMData.050.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv.i.i.i, ptr %pEEPROMData.050.i, align 2
  %128 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mem_map_registers, align 8
  %serialPortInterfaceReg.i14.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %129, i32 0, i32 12
  %130 = ptrtoint ptr %eeprom_cmd_data.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %eeprom_cmd_data.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !325
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i14.i.i, i32 3840) #13, !srcloc !326
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i14.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748) #13
  %133 = ptrtoint ptr %pEEPROMData.050.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %pEEPROMData.050.i, align 2
  %conv14.i = zext i16 %134 to i32
  %add.i = add nuw nsw i32 %checksum.048.i, %conv14.i
  %incdec.ptr.i = getelementptr i16, ptr %pEEPROMData.050.i, i32 1
  %inc.i = add nuw nsw i32 %index.049.i, 1
  %phi.cast.i = and i32 %add.i, 65535
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.end.i, label %eeprom_readword.exit.i.for.body.i_crit_edge

eeprom_readword.exit.i.for.body.i_crit_edge:      ; preds = %eeprom_readword.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %eeprom_readword.exit.i
  %135 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %136, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i.i, i32 28) #13, !srcloc !326
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast.i)
  %cmp18.not.i = icmp eq i32 %phi.cast.i, 0
  br i1 %cmp18.not.i, label %if.end70, label %if.then20.i

if.then20.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %ndev30 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ndev30, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %139, ptr noundef nonnull @.str.110, i32 noundef %phi.cast.i) #16
  br label %do.end66

do.end66:                                         ; preds = %if.then20.i, %do.end8.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2.i) #13
  %140 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %index, align 8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, i32 noundef %141) #16
  br label %err_out_iounmap

if.end70:                                         ; preds = %for.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2.i) #13
  %142 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mem_map_registers, align 8
  %ispControlStatus.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %143, i32 0, i32 10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !332
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2.i.i) #13
  %shr.i = lshr i32 %145, 4
  %146 = trunc i32 %shr.i to i8
  %conv.i = and i8 %146, 48
  %portStatus.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %143, i32 0, i32 4
  %current_page.i.i = getelementptr i8, ptr %call23, i32 2700
  %147 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp.not.i.i = icmp eq i32 %148, 0
  br i1 %cmp.not.i.i, label %if.end70.ql_read_page0_reg.exit.i_crit_edge, label %if.then.i.i

if.end70.ql_read_page0_reg.exit.i_crit_edge:      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i

if.then.i.i:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %150, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %152 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i

ql_read_page0_reg.exit.i:                         ; preds = %if.then.i.i, %if.end70.ql_read_page0_reg.exit.i_crit_edge
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i) #13, !srcloc !327
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and2.i = and i32 %145, 1792
  %155 = add nsw i32 %and2.i, -1024
  %156 = lshr exact i32 %155, 8
  %157 = zext i32 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values)
  switch i32 %156, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %ql_read_page0_reg.exit.i
  %158 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %mac_index.i, align 4
  %159 = or i8 %conv.i, 1
  %or.i302 = zext i8 %159 to i32
  %mac_ob_opcode.i = getelementptr i8, ptr %call23, i32 45940
  %160 = ptrtoint ptr %mac_ob_opcode.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i302, ptr %mac_ob_opcode.i, align 4
  %mb_bit_mask.i = getelementptr i8, ptr %call23, i32 45944
  %161 = ptrtoint ptr %mb_bit_mask.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %mb_bit_mask.i, align 8
  %PHYAddr.i = getelementptr i8, ptr %call23, i32 45936
  %162 = ptrtoint ptr %PHYAddr.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 7680, ptr %PHYAddr.i, align 8
  %and4.i = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i303 = icmp eq i32 %and4.i, 0
  %flags5.i = getelementptr i8, ptr %call23, i32 2308
  br i1 %tobool.not.i303, label %if.else.i, label %if.then.i304

if.then.i304:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags5.i) #13
  br label %ql_set_mac_info.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags5.i) #13
  br label %ql_set_mac_info.exit

sw.bb6.i:                                         ; preds = %ql_read_page0_reg.exit.i
  %163 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %mac_index.i, align 4
  %164 = or i8 %conv.i, 1
  %or9.i = zext i8 %164 to i32
  %mac_ob_opcode10.i = getelementptr i8, ptr %call23, i32 45940
  %165 = ptrtoint ptr %mac_ob_opcode10.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or9.i, ptr %mac_ob_opcode10.i, align 4
  %mb_bit_mask11.i = getelementptr i8, ptr %call23, i32 45944
  %166 = ptrtoint ptr %mb_bit_mask11.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 128, ptr %mb_bit_mask11.i, align 8
  %PHYAddr12.i = getelementptr i8, ptr %call23, i32 45936
  %167 = ptrtoint ptr %PHYAddr12.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 7936, ptr %PHYAddr12.i, align 8
  %and13.i = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %flags18.i = getelementptr i8, ptr %call23, i32 2308
  br i1 %tobool14.not.i, label %if.else17.i, label %if.then15.i

if.then15.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags18.i) #13
  br label %ql_set_mac_info.exit

if.else17.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %flags18.i) #13
  br label %ql_set_mac_info.exit

sw.default.i:                                     ; preds = %ql_read_page0_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %168 = ptrtoint ptr %ndev30 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ndev30, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %169, ptr noundef nonnull @.str.111, i32 noundef %145) #16
  br label %ql_set_mac_info.exit

ql_set_mac_info.exit:                             ; preds = %sw.default.i, %if.else17.i, %if.then15.i, %if.else.i, %if.then.i304
  %version_and_numPorts.i = getelementptr i8, ptr %call23, i32 43884
  %170 = ptrtoint ptr %version_and_numPorts.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %version_and_numPorts.i, align 4
  %172 = lshr i16 %171, 8
  %173 = zext i16 %172 to i32
  %numPorts.i = getelementptr i8, ptr %call23, i32 45948
  %174 = ptrtoint ptr %numPorts.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %numPorts.i, align 4
  %175 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool71.not = icmp eq i32 %176, 0
  br i1 %tobool71.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %ql_set_mac_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %macCfg_port1 = getelementptr i8, ptr %call23, i32 43954
  %177 = ptrtoint ptr %macCfg_port1 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %macCfg_port1, align 2
  %conv = zext i16 %178 to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 20
  %179 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv, ptr %mtu, align 4
  %macAddress = getelementptr i8, ptr %call23, i32 45398
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #13
  %180 = getelementptr inbounds [3 x i16], ptr %buf.i, i32 0, i32 1
  %181 = getelementptr inbounds [3 x i16], ptr %buf.i, i32 0, i32 2
  %182 = ptrtoint ptr %macAddress to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %macAddress, align 2
  %184 = tail call i16 @llvm.bswap.i16(i16 %183) #13
  %185 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %buf.i, align 2
  %arrayidx2.i = getelementptr i8, ptr %call23, i32 45400
  %186 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx2.i, align 2
  %188 = tail call i16 @llvm.bswap.i16(i16 %187) #13
  %189 = ptrtoint ptr %180 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %180, align 2
  %arrayidx4.i = getelementptr i8, ptr %call23, i32 45402
  %190 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %arrayidx4.i, align 2
  %192 = tail call i16 @llvm.bswap.i16(i16 %191) #13
  %193 = ptrtoint ptr %181 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %181, align 2
  call void @dev_addr_mod(ptr noundef %call23, i32 noundef 0, ptr noundef nonnull %buf.i, i32 noundef 6) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #13
  br label %if.end81

if.else:                                          ; preds = %ql_set_mac_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %macCfg_port0 = getelementptr i8, ptr %call23, i32 43922
  %194 = ptrtoint ptr %macCfg_port0 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %macCfg_port0, align 2
  %conv76 = zext i16 %195 to i32
  %mtu77 = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 20
  %196 = ptrtoint ptr %mtu77 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %conv76, ptr %mtu77, align 4
  %macAddress79 = getelementptr i8, ptr %call23, i32 44374
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i306) #13
  %197 = getelementptr inbounds [3 x i16], ptr %buf.i306, i32 0, i32 1
  %198 = getelementptr inbounds [3 x i16], ptr %buf.i306, i32 0, i32 2
  %199 = ptrtoint ptr %macAddress79 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %macAddress79, align 2
  %201 = tail call i16 @llvm.bswap.i16(i16 %200) #13
  %202 = ptrtoint ptr %buf.i306 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %buf.i306, align 2
  %arrayidx2.i307 = getelementptr i8, ptr %call23, i32 44376
  %203 = ptrtoint ptr %arrayidx2.i307 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx2.i307, align 2
  %205 = tail call i16 @llvm.bswap.i16(i16 %204) #13
  %206 = ptrtoint ptr %197 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %197, align 2
  %arrayidx4.i308 = getelementptr i8, ptr %call23, i32 44378
  %207 = ptrtoint ptr %arrayidx4.i308 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx4.i308, align 2
  %209 = tail call i16 @llvm.bswap.i16(i16 %208) #13
  %210 = ptrtoint ptr %198 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %209, ptr %198, align 2
  call void @dev_addr_mod(ptr noundef %call23, i32 noundef 0, ptr noundef nonnull %buf.i306, i32 noundef 6) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i306) #13
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then72
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 107
  %211 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 256, ptr %tx_queue_len, align 16
  %212 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mem_map_registers, align 8
  %call2.i.i311 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %214 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp5.not.i.i = icmp eq i32 %215, 0
  br i1 %cmp5.not.i.i, label %if.end81.ql_get_board_info.exit_crit_edge, label %if.then.i.i314

if.end81.ql_get_board_info.exit_crit_edge:        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_board_info.exit

if.then.i.i314:                                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %216 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mem_map_registers, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i313 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %217, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i313, i32 768) #13, !srcloc !326
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i313) #13, !srcloc !327
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %219 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_get_board_info.exit

ql_get_board_info.exit:                           ; preds = %if.then.i.i314, %if.end81.ql_get_board_info.exit_crit_edge
  %portStatus.i315 = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %213, i32 0, i32 4
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i315) #13, !srcloc !327
  %221 = call i32 @llvm.bswap.i32(i32 %220) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2.i.i311) #13
  %and.i = lshr i32 %221, 12
  %222 = trunc i32 %and.i to i8
  %conv.i316 = and i8 %222, 7
  %chip_rev_id.i = getelementptr i8, ptr %call23, i32 2544
  %223 = ptrtoint ptr %chip_rev_id.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv.i316, ptr %chip_rev_id.i, align 8
  %and1.i = and i32 %221, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i317 = icmp eq i32 %and1.i, 0
  %spec.select.i = select i1 %tobool.not.i317, i8 32, i8 64
  %224 = getelementptr i8, ptr %call23, i32 2546
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %spec.select.i, ptr %224, align 2
  %226 = trunc i32 %221 to i8
  %227 = lshr i8 %226, 3
  %228 = and i8 %227, 1
  %229 = getelementptr i8, ptr %call23, i32 2547
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %228, ptr %229, align 1
  %231 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pdev31, align 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %232, i32 0, i32 6
  %233 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %devfn.i, align 4
  %235 = trunc i32 %234 to i8
  %236 = lshr i8 %235, 3
  %pci_slot.i = getelementptr i8, ptr %call23, i32 2545
  %237 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %pci_slot.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool82.not = icmp eq i8 %228, 0
  br i1 %tobool82.not, label %ql_get_board_info.exit.if.end85_crit_edge, label %if.then83

ql_get_board_info.exit.if.end85_crit_edge:        ; preds = %ql_get_board_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then83:                                        ; preds = %ql_get_board_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call84 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 78, i16 noundef zeroext 54) #13
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %ql_get_board_info.exit.if.end85_crit_edge
  %call86 = call i32 @register_netdev(ptr noundef %call23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end95, label %do.end91

do.end91:                                         ; preds = %if.end85
  %init_name.i.i318 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %238 = ptrtoint ptr %init_name.i.i318 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %init_name.i.i318, align 8
  %tobool.not.i.i319 = icmp eq ptr %239, null
  br i1 %tobool.not.i.i319, label %if.end.i.i321, label %do.end91.pci_name.exit323_crit_edge

do.end91.pci_name.exit323_crit_edge:              ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit323

if.end.i.i321:                                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  %240 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev, align 4
  br label %pci_name.exit323

pci_name.exit323:                                 ; preds = %if.end.i.i321, %do.end91.pci_name.exit323_crit_edge
  %retval.0.i.i322 = phi ptr [ %241, %if.end.i.i321 ], [ %239, %do.end91.pci_name.exit323_crit_edge ]
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i322) #16
  br label %err_out_iounmap

if.end95:                                         ; preds = %if.end85
  call void @netif_carrier_off(ptr noundef %call23) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 103
  %242 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %243, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %call97 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.24, i32 noundef 917514, i32 noundef 1, ptr noundef %call23) #13
  %workqueue = getelementptr i8, ptr %call23, i32 45952
  %244 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call97, ptr %workqueue, align 8
  %tobool99.not = icmp eq ptr %call97, null
  br i1 %tobool99.not, label %if.then100, label %do.body103

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  call void @unregister_netdev(ptr noundef %call23) #13
  br label %err_out_iounmap

do.body103:                                       ; preds = %if.end95
  %reset_work = getelementptr i8, ptr %call23, i32 45956
  call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #13
  %245 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr i8, ptr %call23, i32 45972
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @ql3xxx_probe.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry110 = getelementptr i8, ptr %call23, i32 45960
  %246 = ptrtoint ptr %entry110 to i32
  call void @__asan_store4_noabort(i32 %246)
  store volatile ptr %entry110, ptr %entry110, align 4
  %prev.i = getelementptr i8, ptr %call23, i32 45964
  %247 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %entry110, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call23, i32 45968
  %248 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr @ql_reset_work, ptr %func, align 4
  %timer = getelementptr i8, ptr %call23, i32 46000
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @ql3xxx_probe.__key.27) #13
  %tx_timeout_work = getelementptr i8, ptr %call23, i32 46056
  call void @__init_work(ptr noundef %tx_timeout_work, i32 noundef 0) #13
  %249 = ptrtoint ptr %tx_timeout_work to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 -64, ptr %tx_timeout_work, align 8
  %lockdep_map131 = getelementptr i8, ptr %call23, i32 46072
  call void @lockdep_init_map_type(ptr noundef %lockdep_map131, ptr noundef nonnull @.str.30, ptr noundef nonnull @ql3xxx_probe.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry134 = getelementptr i8, ptr %call23, i32 46060
  %250 = ptrtoint ptr %entry134 to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile ptr %entry134, ptr %entry134, align 4
  %prev.i324 = getelementptr i8, ptr %call23, i32 46064
  %251 = ptrtoint ptr %prev.i324 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %entry134, ptr %prev.i324, align 4
  %func137 = getelementptr i8, ptr %call23, i32 46068
  %252 = ptrtoint ptr %func137 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr @ql_tx_timeout_work, ptr %func137, align 4
  %timer142 = getelementptr i8, ptr %call23, i32 46100
  call void @init_timer_key(ptr noundef %timer142, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.32, ptr noundef nonnull @ql3xxx_probe.__key.31) #13
  %link_state_work = getelementptr i8, ptr %call23, i32 46156
  call void @__init_work(ptr noundef %link_state_work, i32 noundef 0) #13
  %253 = ptrtoint ptr %link_state_work to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 -64, ptr %link_state_work, align 4
  %lockdep_map157 = getelementptr i8, ptr %call23, i32 46172
  call void @lockdep_init_map_type(ptr noundef %lockdep_map157, ptr noundef nonnull @.str.34, ptr noundef nonnull @ql3xxx_probe.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry160 = getelementptr i8, ptr %call23, i32 46160
  %254 = ptrtoint ptr %entry160 to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile ptr %entry160, ptr %entry160, align 4
  %prev.i325 = getelementptr i8, ptr %call23, i32 46164
  %255 = ptrtoint ptr %prev.i325 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %entry160, ptr %prev.i325, align 4
  %func163 = getelementptr i8, ptr %call23, i32 46168
  %256 = ptrtoint ptr %func163 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @ql_link_state_machine_work, ptr %func163, align 4
  %timer168 = getelementptr i8, ptr %call23, i32 46200
  call void @init_timer_key(ptr noundef %timer168, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.36, ptr noundef nonnull @ql3xxx_probe.__key.35) #13
  %adapter_timer = getelementptr i8, ptr %call23, i32 2556
  call void @init_timer_key(ptr noundef %adapter_timer, ptr noundef nonnull @ql3xxx_timer, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @ql3xxx_probe.__key.37) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %257 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %257, 200
  %expires = getelementptr i8, ptr %call23, i32 2564
  %258 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %add, ptr %expires, align 4
  %259 = load i32, ptr @ql3xxx_probe.cards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool177.not = icmp eq i32 %259, 0
  br i1 %tobool177.not, label %do.end181, label %do.body103.if.end189_crit_edge

do.body103.if.end189_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

do.end181:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #15
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42) #16
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #16
  br label %if.end189

if.end189:                                        ; preds = %do.end181, %do.body103.if.end189_crit_edge
  %260 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %pdev31, align 8
  %262 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %index, align 8
  %264 = ptrtoint ptr %chip_rev_id.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %chip_rev_id.i, align 8
  %conv.i327 = zext i8 %265 to i32
  %266 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %device_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12338, i32 %267)
  %cmp.i328 = icmp eq i32 %267, 12338
  %cond.i = select i1 %cmp.i328, ptr @.str.132, ptr @.str.133
  %268 = ptrtoint ptr %pci_slot.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %pci_slot.i, align 1
  %conv3.i = zext i8 %269 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call23, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.1, i32 noundef %263, i32 noundef %conv.i327, ptr noundef nonnull %cond.i, i32 noundef %conv3.i) #16
  %flags.i = getelementptr i8, ptr %call23, i32 2308
  %270 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load volatile i32, ptr %flags.i, align 4
  %272 = and i32 %271, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool.not.i330 = icmp eq i32 %272, 0
  %cond5.i = select i1 %tobool.not.i330, ptr @.str.136, ptr @.str.135
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call23, ptr noundef nonnull @.str.134, ptr noundef nonnull %cond5.i) #16
  %273 = ptrtoint ptr %224 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %224, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %274)
  %cmp7.i = icmp eq i8 %274, 64
  %cond9.i = select i1 %cmp7.i, ptr @.str.138, ptr @.str.139
  %275 = ptrtoint ptr %229 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %229, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool11.not.i = icmp eq i8 %276, 0
  %cond12.i = select i1 %tobool11.not.i, ptr @.str.141, ptr @.str.140
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call23, ptr noundef nonnull @.str.137, ptr noundef nonnull %cond9.i, ptr noundef nonnull %cond12.i) #16
  %277 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %mem_map_registers, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call23, ptr noundef nonnull @.str.142, ptr noundef %278) #16
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %261, i32 0, i32 46
  %279 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call23, ptr noundef nonnull @.str.143, i32 noundef %280) #16
  %281 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %msg_enable, align 8
  %and.i332 = and i32 %282, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %tobool13.not.i = icmp eq i32 %and.i332, 0
  br i1 %tobool13.not.i, label %if.end189.ql_display_dev_info.exit_crit_edge, label %if.then.i333

if.end189.ql_display_dev_info.exit_crit_edge:     ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_display_dev_info.exit

if.then.i333:                                     ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call23, i32 0, i32 86
  %283 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call23, ptr noundef nonnull @.str.144, ptr noundef %284) #16
  br label %ql_display_dev_info.exit

ql_display_dev_info.exit:                         ; preds = %if.then.i333, %if.end189.ql_display_dev_info.exit_crit_edge
  %285 = load i32, ptr @ql3xxx_probe.cards_found, align 4
  %inc = add i32 %285, 1
  store i32 %inc, ptr @ql3xxx_probe.cards_found, align 4
  br label %cleanup

err_out_iounmap:                                  ; preds = %if.then100, %pci_name.exit323, %do.end66
  %err.0 = phi i32 [ -5, %do.end66 ], [ %call86, %pci_name.exit323 ], [ -12, %if.then100 ]
  %286 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mem_map_registers, align 8
  call void @iounmap(ptr noundef %287) #13
  br label %err_out_free_ndev

err_out_free_ndev:                                ; preds = %err_out_iounmap, %pci_name.exit298
  %err.1 = phi i32 [ %err.0, %err_out_iounmap ], [ -5, %pci_name.exit298 ]
  call void @free_netdev(ptr noundef %call23) #13
  br label %err_out_free_regions

err_out_free_regions:                             ; preds = %err_out_free_ndev, %if.end22.err_out_free_regions_crit_edge, %pci_name.exit292
  %err.2 = phi i32 [ %call.i, %pci_name.exit292 ], [ %err.1, %err_out_free_ndev ], [ -12, %if.end22.err_out_free_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #13
  br label %err_out_disable_pdev

err_out_disable_pdev:                             ; preds = %err_out_free_regions, %pci_name.exit286
  %err.3 = phi i32 [ %call3, %pci_name.exit286 ], [ %err.2, %err_out_free_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable_pdev, %ql_display_dev_info.exit, %pci_name.exit
  %retval.0 = phi i32 [ 0, %ql_display_dev_info.exit ], [ %call, %pci_name.exit ], [ %err.3, %err_out_disable_pdev ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql3xxx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #13
  %mem_map_registers.i = getelementptr i8, ptr %1, i32 2696
  %2 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_map_registers.i, align 8
  %ispInterruptMaskReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %3, i32 0, i32 11
  %hw_lock.i.i = getelementptr i8, ptr %1, i32 2648
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispInterruptMaskReg.i, i32 1024) #13, !srcloc !326
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispInterruptMaskReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i.i, i32 noundef %call2.i.i) #13
  %workqueue = getelementptr i8, ptr %1, i32 45952
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %reset_work = getelementptr i8, ptr %1, i32 45956
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %reset_work) #13
  %tx_timeout_work = getelementptr i8, ptr %1, i32 46056
  %call3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %tx_timeout_work) #13
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 8
  tail call void @destroy_workqueue(ptr noundef %8) #13
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %workqueue, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void @iounmap(ptr noundef %11) #13
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  tail call void @free_netdev(ptr noundef %1) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -16
  %mem_map_registers = getelementptr i8, ptr %napi, i32 376
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %ndev1.i = getelementptr i8, ptr %napi, i32 -4
  %2 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1.i, align 4
  %prsp_producer_index.i = getelementptr i8, ptr %napi, i32 41420
  %rsp_consumer_index.i = getelementptr i8, ptr %napi, i32 41416
  %4 = ptrtoint ptr %prsp_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prsp_producer_index.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %9 = ptrtoint ptr %rsp_consumer_index.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rsp_consumer_index.i, align 8
  %conv92.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv92.i)
  %cmp.not93.i = icmp ne i32 %8, %conv92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp394.i = icmp sgt i32 %budget, 0
  %or.cond95.i = and i1 %cmp394.i, %cmp.not93.i
  br i1 %or.cond95.i, label %while.body.lr.ph.i, label %entry.ql_tx_rx_clean.exit_crit_edge

entry.ql_tx_rx_clean.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_tx_rx_clean.exit

while.body.lr.ph.i:                               ; preds = %entry
  %rsp_current.i = getelementptr i8, ptr %napi, i32 41412
  %device_id.i = getelementptr i8, ptr %napi, i32 43940
  %small_buf_index.i.i63.i = getelementptr i8, ptr %napi, i32 41532
  %small_buf_release_cnt.i.i67.i = getelementptr i8, ptr %napi, i32 41552
  %lrg_buf.i.i71.i = getelementptr i8, ptr %napi, i32 41476
  %lrg_buf_index.i.i72.i = getelementptr i8, ptr %napi, i32 41496
  %lrg_buf_release_cnt.i.i73.i = getelementptr i8, ptr %napi, i32 41460
  %num_large_buffers.i.i74.i = getelementptr i8, ptr %napi, i32 41468
  %pdev.i80.i = getelementptr i8, ptr %napi, i32 -8
  %tx_count.i.i = getelementptr i8, ptr %napi, i32 432
  %rsp_q_virt_addr.i = getelementptr i8, ptr %napi, i32 41404
  br label %while.body.i

while.body.i:                                     ; preds = %if.end29.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %work_done.096.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %work_done.1.i, %if.end29.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %rsp_current.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rsp_current.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !339
  %13 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12338, i32 %14)
  %cmp5.i = icmp eq i32 %14, 12338
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %12, align 1
  br i1 %cmp5.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = and i8 %16, 127
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %12, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %19 = phi i8 [ %17, %if.then.i ], [ %16, %while.body.i.if.end.i_crit_edge ]
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %19, label %sw.default.i [
    i8 1, label %if.end.i.sw.bb.i_crit_edge
    i8 33, label %if.end.i.sw.bb.i_crit_edge67
    i8 -7, label %if.end.i.sw.bb11.i_crit_edge
    i8 9, label %if.end.i.sw.bb11.i_crit_edge68
    i8 -6, label %if.end.i.sw.bb12.i_crit_edge
    i8 10, label %if.end.i.sw.bb12.i_crit_edge69
  ]

if.end.i.sw.bb12.i_crit_edge69:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12.i

if.end.i.sw.bb12.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb12.i

if.end.i.sw.bb11.i_crit_edge68:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11.i

if.end.i.sw.bb11.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11.i

if.end.i.sw.bb.i_crit_edge67:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge67
  %flags.i.i = getelementptr inbounds %struct.ob_mac_iocb_rsp, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i.i, align 1
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev1.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.101) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.i.if.end.i.i_crit_edge
  %transaction_id.i.i = getelementptr inbounds %struct.ob_mac_iocb_rsp, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %transaction_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %transaction_id.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.ql3_adapter, ptr %add.ptr, i32 0, i32 32, i32 %27
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags.i.i, align 1
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool4.not.i.i, label %if.end8.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev1.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.102) #16
  %33 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndev1.i, align 4
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 5
  br label %frame_not_sent.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %seg_count.i.i = getelementptr %struct.ql3_adapter, ptr %add.ptr, i32 0, i32 32, i32 %27, i32 2
  %35 = ptrtoint ptr %seg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %seg_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i, label %if.then10.i.i, label %if.end17.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev1.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.103, i32 noundef %27) #16
  %39 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev1.i, align 4
  %tx_errors15.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 5
  %41 = ptrtoint ptr %tx_errors15.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_errors15.i.i, align 4
  %inc16.i.i = add i32 %42, 1
  store i32 %inc16.i.i, ptr %tx_errors15.i.i, align 4
  br label %ql_process_mac_tx_intr.exit.i

if.end17.i.i:                                     ; preds = %if.end8.i.i
  %43 = ptrtoint ptr %pdev.i80.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i80.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %map.i.i = getelementptr %struct.ql3_adapter, ptr %add.ptr, i32 0, i32 32, i32 %27, i32 4
  %45 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %map.i.i, align 4
  %maplen.i.i = getelementptr inbounds %struct.map_list, ptr %map.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %maplen.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %maplen.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %46, i32 noundef %48, i32 noundef 1, i32 noundef 0) #13
  %49 = ptrtoint ptr %seg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seg_count.i.i, align 4
  %dec.i.i = add i32 %50, -1
  store i32 %dec.i.i, ptr %seg_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %cmp2671.i.i = icmp sgt i32 %dec.i.i, 1
  br i1 %cmp2671.i.i, label %if.end17.i.i.for.body.i.i_crit_edge, label %if.end17.i.i.if.end37.i.i_crit_edge

if.end17.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i.i

if.end17.i.i.for.body.i.i_crit_edge:              ; preds = %if.end17.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end17.i.i.for.body.i.i_crit_edge
  %i.072.i.i = phi i32 [ %inc36.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %if.end17.i.i.for.body.i.i_crit_edge ]
  %51 = ptrtoint ptr %pdev.i80.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i80.i, align 8
  %dev29.i.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %arrayidx31.i.i = getelementptr %struct.ql3_adapter, ptr %add.ptr, i32 0, i32 32, i32 %27, i32 4, i32 %i.072.i.i
  %53 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx31.i.i, align 4
  %maplen35.i.i = getelementptr %struct.ql3_adapter, ptr %add.ptr, i32 0, i32 32, i32 %27, i32 4, i32 %i.072.i.i, i32 1
  %55 = ptrtoint ptr %maplen35.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %maplen35.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev29.i.i, i32 noundef %54, i32 noundef %56, i32 noundef 1, i32 noundef 0) #13
  %inc36.i.i = add nuw nsw i32 %i.072.i.i, 1
  %57 = ptrtoint ptr %seg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seg_count.i.i, align 4
  %cmp26.i.i = icmp slt i32 %inc36.i.i, %58
  br i1 %cmp26.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end37.i.i_crit_edge

for.body.i.i.if.end37.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end37.i.i:                                     ; preds = %for.body.i.i.if.end37.i.i_crit_edge, %if.end17.i.i.if.end37.i.i_crit_edge
  %59 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev1.i, align 4
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 36, i32 1
  %61 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_packets.i.i, align 4
  %inc40.i.i = add i32 %62, 1
  store i32 %inc40.i.i, ptr %tx_packets.i.i, align 4
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i, align 4
  %67 = load ptr, ptr %ndev1.i, align 4
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 36, i32 3
  br label %frame_not_sent.i.i

frame_not_sent.i.i:                               ; preds = %if.end37.i.i, %if.then5.i.i
  %tx_bytes.sink74.i.i = phi ptr [ %tx_bytes.i.i, %if.end37.i.i ], [ %tx_errors.i.i, %if.then5.i.i ]
  %.sink73.i.i = phi i32 [ %66, %if.end37.i.i ], [ 1, %if.then5.i.i ]
  %68 = ptrtoint ptr %tx_bytes.sink74.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_bytes.sink74.i.i, align 4
  %add.i.i = add i32 %69, %.sink73.i.i
  store i32 %add.i.i, ptr %tx_bytes.sink74.i.i, align 4
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %71, i32 noundef 1) #13
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %ql_process_mac_tx_intr.exit.i

ql_process_mac_tx_intr.exit.i:                    ; preds = %frame_not_sent.i.i, %if.then10.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_count.i.i, i32 1, i32 3, i32 1) #13
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_count.i.i, ptr %tx_count.i.i, i32 1, ptr elementtype(i32) %tx_count.i.i) #13, !srcloc !340
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i.sw.bb11.i_crit_edge, %if.end.i.sw.bb11.i_crit_edge68
  %length1.i.i = getelementptr inbounds %struct.ib_mac_iocb_rsp, ptr %12, i32 0, i32 2
  %74 = ptrtoint ptr %length1.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %length1.i.i, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #13
  %77 = ptrtoint ptr %small_buf_index.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %small_buf_index.i.i63.i, align 4
  %inc.i.i.i = add i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc.i.i.i)
  %cmp.i.i.i = icmp eq i32 %inc.i.i.i, 512
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %inc.i.i.i
  %79 = ptrtoint ptr %small_buf_index.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %spec.select.i.i.i, ptr %small_buf_index.i.i63.i, align 4
  %80 = ptrtoint ptr %small_buf_release_cnt.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %small_buf_release_cnt.i.i67.i, align 8
  %inc2.i.i.i = add i32 %81, 1
  store i32 %inc2.i.i.i, ptr %small_buf_release_cnt.i.i67.i, align 8
  %82 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12322, i32 %83)
  %cmp.i55.i = icmp eq i32 %83, 12322
  br i1 %cmp.i55.i, label %if.then.i56.i, label %sw.bb11.i.if.end.i62.i_crit_edge

sw.bb11.i.if.end.i62.i_crit_edge:                 ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i62.i

if.then.i56.i:                                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %lrg_buf.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lrg_buf.i.i71.i, align 4
  %86 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lrg_buf_index.i.i72.i, align 8
  %88 = ptrtoint ptr %lrg_buf_release_cnt.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc.i38.i.i = add i32 %89, 1
  store i32 %inc.i38.i.i, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc2.i39.i.i = add i32 %87, 1
  %90 = ptrtoint ptr %num_large_buffers.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_large_buffers.i.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc2.i39.i.i, i32 %91)
  %cmp.i40.i.i = icmp eq i32 %inc2.i39.i.i, %91
  %spec.store.select.i.i.i = select i1 %cmp.i40.i.i, i32 0, i32 %inc2.i39.i.i
  %92 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %spec.store.select.i.i.i, ptr %lrg_buf_index.i.i72.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %85, i32 %87
  br label %if.end.i62.i

if.end.i62.i:                                     ; preds = %if.then.i56.i, %sw.bb11.i.if.end.i62.i_crit_edge
  %lrg_buf_cb1.0.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i56.i ], [ null, %sw.bb11.i.if.end.i62.i_crit_edge ]
  %93 = ptrtoint ptr %lrg_buf.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lrg_buf.i.i71.i, align 4
  %95 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lrg_buf_index.i.i72.i, align 8
  %97 = ptrtoint ptr %lrg_buf_release_cnt.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc.i44.i.i = add i32 %98, 1
  store i32 %inc.i44.i.i, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc2.i45.i.i = add i32 %96, 1
  %99 = ptrtoint ptr %num_large_buffers.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_large_buffers.i.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc2.i45.i.i, i32 %100)
  %cmp.i47.i.i = icmp eq i32 %inc2.i45.i.i, %100
  %spec.store.select.i48.i.i = select i1 %cmp.i47.i.i, i32 0, i32 %inc2.i45.i.i
  %101 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %spec.store.select.i48.i.i, ptr %lrg_buf_index.i.i72.i, align 8
  %skb3.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %94, i32 %96, i32 1
  %102 = ptrtoint ptr %skb3.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %skb3.i.i, align 4
  %104 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ndev1.i, align 4
  %stats.i.i = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 36
  %106 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %stats.i.i, align 8
  %inc.i.i = add i32 %107, 1
  store i32 %inc.i.i, ptr %stats.i.i, align 8
  %conv.i.i = zext i16 %76 to i32
  %108 = load ptr, ptr %ndev1.i, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 36, i32 2
  %109 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i58.i = add i32 %110, %conv.i.i
  store i32 %add.i58.i, ptr %rx_bytes.i.i, align 8
  %call7.i.i = tail call ptr @skb_put(ptr noundef %103, i32 noundef %conv.i.i) #13
  %111 = ptrtoint ptr %pdev.i80.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev.i80.i, align 8
  %dev.i60.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %mapaddr.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %94, i32 %96, i32 2
  %113 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mapaddr.i.i, align 4
  %maplen.i61.i = getelementptr %struct.ql_rcv_buf_cb, ptr %94, i32 %96, i32 3
  %115 = ptrtoint ptr %maplen.i61.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %maplen.i61.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i60.i, i32 noundef %114, i32 noundef %116, i32 noundef 2, i32 noundef 0) #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 19
  %117 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %118) #13, !srcloc !341
  %119 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ndev1.i, align 4
  %call9.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef %103, ptr noundef %120) #13
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 15, i32 0, i32 18
  %121 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %call9.i.i, ptr %protocol.i.i, align 8
  %call10.i.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %103) #13
  %122 = ptrtoint ptr %skb3.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %skb3.i.i, align 4
  %123 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12322, i32 %124)
  %cmp13.i.i = icmp eq i32 %124, 12322
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end.i62.i.ql_process_mac_rx_intr.exit.i_crit_edge

if.end.i62.i.ql_process_mac_rx_intr.exit.i_crit_edge: ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_process_mac_rx_intr.exit.i

if.then15.i.i:                                    ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_release_to_lrg_buf_free_list(ptr noundef %add.ptr, ptr noundef %lrg_buf_cb1.0.i.i) #13
  br label %ql_process_mac_rx_intr.exit.i

ql_process_mac_rx_intr.exit.i:                    ; preds = %if.then15.i.i, %if.end.i62.i.ql_process_mac_rx_intr.exit.i_crit_edge
  %arrayidx.i49.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %94, i32 %96
  tail call fastcc void @ql_release_to_lrg_buf_free_list(ptr noundef %add.ptr, ptr noundef %arrayidx.i49.i.i) #13
  %inc.i = add nsw i32 %work_done.096.i, 1
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i.sw.bb12.i_crit_edge, %if.end.i.sw.bb12.i_crit_edge69
  %125 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ndev1.i, align 4
  %length2.i.i = getelementptr inbounds %struct.ib_ip_iocb_rsp, ptr %12, i32 0, i32 2
  %127 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %length2.i.i, align 1
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #13
  %130 = ptrtoint ptr %small_buf_index.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %small_buf_index.i.i63.i, align 4
  %inc.i.i64.i = add i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc.i.i64.i)
  %cmp.i.i65.i = icmp eq i32 %inc.i.i64.i, 512
  %spec.select.i.i66.i = select i1 %cmp.i.i65.i, i32 0, i32 %inc.i.i64.i
  %132 = ptrtoint ptr %small_buf_index.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %spec.select.i.i66.i, ptr %small_buf_index.i.i63.i, align 4
  %133 = ptrtoint ptr %small_buf_release_cnt.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %small_buf_release_cnt.i.i67.i, align 8
  %inc2.i.i68.i = add i32 %134, 1
  store i32 %inc2.i.i68.i, ptr %small_buf_release_cnt.i.i67.i, align 8
  %135 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12322, i32 %136)
  %cmp.i70.i = icmp eq i32 %136, 12322
  br i1 %cmp.i70.i, label %if.then.i78.i, label %sw.bb12.i.if.end8.i84.i_crit_edge

sw.bb12.i.if.end8.i84.i_crit_edge:                ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i84.i

if.then.i78.i:                                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %lrg_buf.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %lrg_buf.i.i71.i, align 4
  %139 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %lrg_buf_index.i.i72.i, align 8
  %141 = ptrtoint ptr %lrg_buf_release_cnt.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc.i89.i.i = add i32 %142, 1
  store i32 %inc.i89.i.i, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc2.i90.i.i = add i32 %140, 1
  %143 = ptrtoint ptr %num_large_buffers.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_large_buffers.i.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc2.i90.i.i, i32 %144)
  %cmp.i91.i.i = icmp eq i32 %inc2.i90.i.i, %144
  %spec.store.select.i.i75.i = select i1 %cmp.i91.i.i, i32 0, i32 %inc2.i90.i.i
  %145 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %spec.store.select.i.i75.i, ptr %lrg_buf_index.i.i72.i, align 8
  %arrayidx.i.i76.i = getelementptr %struct.ql_rcv_buf_cb, ptr %138, i32 %140
  %skb.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %138, i32 %140, i32 1
  %146 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %skb.i.i, align 4
  %data.i77.i = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 19
  %148 = ptrtoint ptr %data.i77.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data.i77.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %149, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %151)
  %cmp3.not.i.i = icmp eq i16 %151, -1
  %spec.select.i.i = select i1 %cmp3.not.i.i, i32 14, i32 18
  br label %if.end8.i84.i

if.end8.i84.i:                                    ; preds = %if.then.i78.i, %sw.bb12.i.if.end8.i84.i_crit_edge
  %lrg_buf_cb1.0.i79.i = phi ptr [ null, %sw.bb12.i.if.end8.i84.i_crit_edge ], [ %arrayidx.i.i76.i, %if.then.i78.i ]
  %skb1.0.i.i = phi ptr [ null, %sw.bb12.i.if.end8.i84.i_crit_edge ], [ %147, %if.then.i78.i ]
  %size.0.i.i = phi i32 [ 0, %sw.bb12.i.if.end8.i84.i_crit_edge ], [ %spec.select.i.i, %if.then.i78.i ]
  %152 = ptrtoint ptr %lrg_buf.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %lrg_buf.i.i71.i, align 4
  %154 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %lrg_buf_index.i.i72.i, align 8
  %156 = ptrtoint ptr %lrg_buf_release_cnt.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc.i95.i.i = add i32 %157, 1
  store i32 %inc.i95.i.i, ptr %lrg_buf_release_cnt.i.i73.i, align 4
  %inc2.i96.i.i = add i32 %155, 1
  %158 = ptrtoint ptr %num_large_buffers.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %num_large_buffers.i.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc2.i96.i.i, i32 %159)
  %cmp.i98.i.i = icmp eq i32 %inc2.i96.i.i, %159
  %spec.store.select.i99.i.i = select i1 %cmp.i98.i.i, i32 0, i32 %inc2.i96.i.i
  %160 = ptrtoint ptr %lrg_buf_index.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %spec.store.select.i99.i.i, ptr %lrg_buf_index.i.i72.i, align 8
  %skb10.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %153, i32 %155, i32 1
  %161 = ptrtoint ptr %skb10.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %skb10.i.i, align 4
  %conv11.i.i = zext i16 %129 to i32
  %call12.i.i = tail call ptr @skb_put(ptr noundef %162, i32 noundef %conv11.i.i) #13
  %163 = ptrtoint ptr %pdev.i80.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pdev.i80.i, align 8
  %dev.i81.i = getelementptr inbounds %struct.pci_dev, ptr %164, i32 0, i32 44
  %mapaddr.i82.i = getelementptr %struct.ql_rcv_buf_cb, ptr %153, i32 %155, i32 2
  %165 = ptrtoint ptr %mapaddr.i82.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mapaddr.i82.i, align 4
  %maplen.i83.i = getelementptr %struct.ql_rcv_buf_cb, ptr %153, i32 %155, i32 3
  %167 = ptrtoint ptr %maplen.i83.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %maplen.i83.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i81.i, i32 noundef %166, i32 noundef %168, i32 noundef 2, i32 noundef 0) #13
  %data13.i.i = getelementptr inbounds %struct.sk_buff, ptr %162, i32 0, i32 19
  %169 = ptrtoint ptr %data13.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data13.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %170) #13, !srcloc !341
  %171 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12322, i32 %172)
  %cmp15.i.i = icmp eq i32 %172, 12322
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %if.end8.i84.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i.i = tail call ptr @skb_push(ptr noundef %162, i32 noundef %size.0.i.i) #13
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb1.0.i.i, i32 0, i32 19
  %173 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %174, i32 2
  %175 = call ptr @memcpy(ptr %call19.i.i, ptr %add.ptr.i.i.i, i32 %size.0.i.i)
  br label %if.end41.i.i

if.else.i.i:                                      ; preds = %if.end8.i84.i
  %checksum21.i.i = getelementptr inbounds %struct.ib_ip_iocb_rsp, ptr %12, i32 0, i32 3
  %176 = ptrtoint ptr %checksum21.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %checksum21.i.i, align 1
  %178 = tail call i16 @llvm.bswap.i16(i16 %177) #13
  %conv22.i.i = zext i16 %178 to i32
  %and.i.i = and i32 %conv22.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i85.i = icmp eq i32 %and.i.i, 0
  %and30.i.i = and i32 %conv22.i.i, 16
  br i1 %tobool.not.i85.i, label %if.else28.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool26.not.i.i = icmp eq i32 %and30.i.i, 0
  %cond.i.i = select i1 %tobool26.not.i.i, ptr @.str.106, ptr @.str.105
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %126, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.ql_process_macip_rx_intr, ptr noundef nonnull %cond.i.i, i32 noundef %conv22.i.i) #16
  br label %if.end41.i.i

if.else28.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp ne i32 %and30.i.i, 0
  %179 = and i32 %conv22.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %179)
  %180 = icmp eq i32 %179, 8
  %or.cond.i.i = or i1 %tobool31.not.i.i, %180
  br i1 %or.cond.i.i, label %if.then38.i.i, label %if.else28.i.i.if.end41.i.i_crit_edge

if.else28.i.i.if.end41.i.i_crit_edge:             ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

if.then38.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %162, i32 0, i32 15
  %181 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then38.i.i, %if.else28.i.i.if.end41.i.i_crit_edge, %if.then23.i.i, %if.then17.i.i
  %182 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ndev1.i, align 4
  %call43.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef %162, ptr noundef %183) #13
  %protocol.i86.i = getelementptr inbounds %struct.sk_buff, ptr %162, i32 0, i32 15, i32 0, i32 18
  %184 = ptrtoint ptr %protocol.i86.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %call43.i.i, ptr %protocol.i86.i, align 8
  %call44.i.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %162) #13
  %stats.i88.i = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 36
  %185 = ptrtoint ptr %stats.i88.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %stats.i88.i, align 8
  %inc.i89.i = add i32 %186, 1
  store i32 %inc.i89.i, ptr %stats.i88.i, align 8
  %rx_bytes.i90.i = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 36, i32 2
  %187 = ptrtoint ptr %rx_bytes.i90.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rx_bytes.i90.i, align 8
  %add47.i.i = add i32 %188, %conv11.i.i
  store i32 %add47.i.i, ptr %rx_bytes.i90.i, align 8
  %189 = ptrtoint ptr %skb10.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %skb10.i.i, align 4
  %190 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12322, i32 %191)
  %cmp50.i.i = icmp eq i32 %191, 12322
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.end41.i.i.ql_process_macip_rx_intr.exit.i_crit_edge

if.end41.i.i.ql_process_macip_rx_intr.exit.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_process_macip_rx_intr.exit.i

if.then52.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_release_to_lrg_buf_free_list(ptr noundef %add.ptr, ptr noundef %lrg_buf_cb1.0.i79.i) #13
  br label %ql_process_macip_rx_intr.exit.i

ql_process_macip_rx_intr.exit.i:                  ; preds = %if.then52.i.i, %if.end41.i.i.ql_process_macip_rx_intr.exit.i_crit_edge
  %arrayidx.i100.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %153, i32 %155
  tail call fastcc void @ql_release_to_lrg_buf_free_list(ptr noundef %add.ptr, ptr noundef %arrayidx.i100.i.i) #13
  %inc13.i = add nsw i32 %work_done.096.i, 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = zext i8 %19 to i32
  %192 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %12, align 4
  %arrayidx16.i = getelementptr i32, ptr %12, i32 1
  %194 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx16.i, align 4
  %arrayidx17.i = getelementptr i32, ptr %12, i32 2
  %196 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %12, i32 3
  %198 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx18.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.100, i32 noundef %conv10.i, i32 noundef %193, i32 noundef %195, i32 noundef %197, i32 noundef %199) #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %ql_process_macip_rx_intr.exit.i, %ql_process_mac_rx_intr.exit.i, %ql_process_mac_tx_intr.exit.i
  %work_done.1.i = phi i32 [ %work_done.096.i, %sw.default.i ], [ %inc13.i, %ql_process_macip_rx_intr.exit.i ], [ %inc.i, %ql_process_mac_rx_intr.exit.i ], [ %work_done.096.i, %ql_process_mac_tx_intr.exit.i ]
  %200 = ptrtoint ptr %rsp_consumer_index.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %rsp_consumer_index.i, align 8
  %inc20.i = add i16 %201, 1
  store i16 %inc20.i, ptr %rsp_consumer_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %inc20.i)
  %cmp23.i = icmp eq i16 %inc20.i, 256
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %rsp_consumer_index.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %rsp_consumer_index.i, align 8
  %203 = ptrtoint ptr %rsp_q_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rsp_q_virt_addr.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %205 = ptrtoint ptr %rsp_current.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rsp_current.i, align 4
  %incdec.ptr.i = getelementptr %struct.net_rsp_iocb, ptr %206, i32 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then25.i
  %storemerge.i = phi ptr [ %incdec.ptr.i, %if.else.i ], [ %204, %if.then25.i ]
  %207 = ptrtoint ptr %rsp_current.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %storemerge.i, ptr %rsp_current.i, align 4
  %208 = ptrtoint ptr %prsp_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %prsp_producer_index.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %209, align 4
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #13
  %213 = ptrtoint ptr %rsp_consumer_index.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %rsp_consumer_index.i, align 8
  %conv.i = zext i16 %214 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %conv.i)
  %cmp.not.i = icmp ne i32 %212, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.1.i, i32 %budget)
  %cmp3.i = icmp slt i32 %work_done.1.i, %budget
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.end29.i.while.body.i_crit_edge, label %if.end29.i.ql_tx_rx_clean.exit_crit_edge

if.end29.i.ql_tx_rx_clean.exit_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_tx_rx_clean.exit

if.end29.i.while.body.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

ql_tx_rx_clean.exit:                              ; preds = %if.end29.i.ql_tx_rx_clean.exit_crit_edge, %entry.ql_tx_rx_clean.exit_crit_edge
  %work_done.0.lcssa.i = phi i32 [ 0, %entry.ql_tx_rx_clean.exit_crit_edge ], [ %work_done.1.i, %if.end29.i.ql_tx_rx_clean.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0.lcssa.i, i32 %budget)
  %cmp = icmp slt i32 %work_done.0.lcssa.i, %budget
  br i1 %cmp, label %land.lhs.true, label %ql_tx_rx_clean.exit.if.end_crit_edge

ql_tx_rx_clean.exit.if.end_crit_edge:             ; preds = %ql_tx_rx_clean.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %ql_tx_rx_clean.exit
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa.i) #13
  br i1 %call1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %hw_lock = getelementptr i8, ptr %napi, i32 328
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %215 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mem_map_registers, align 8
  %small_buf_release_cnt.i = getelementptr i8, ptr %napi, i32 41552
  %217 = ptrtoint ptr %small_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %small_buf_release_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %218)
  %cmp.i = icmp ugt i32 %218, 15
  br i1 %cmp.i, label %while.body.lr.ph.i25, label %if.then.ql_update_small_bufq_prod_index.exit_crit_edge

if.then.ql_update_small_bufq_prod_index.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_update_small_bufq_prod_index.exit

while.body.lr.ph.i25:                             ; preds = %if.then
  %small_buf_q_producer_index.i = getelementptr i8, ptr %napi, i32 41512
  %219 = ptrtoint ptr %small_buf_q_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %small_buf_q_producer_index.promoted.i = load i32, ptr %small_buf_q_producer_index.i, align 8
  br label %while.body.i27

while.body.i27:                                   ; preds = %while.body.i27.while.body.i27_crit_edge, %while.body.lr.ph.i25
  %spec.select18.i = phi i32 [ %small_buf_q_producer_index.promoted.i, %while.body.lr.ph.i25 ], [ %spec.select.i, %while.body.i27.while.body.i27_crit_edge ]
  %220 = phi i32 [ %218, %while.body.lr.ph.i25 ], [ %sub.i, %while.body.i27.while.body.i27_crit_edge ]
  %inc.i26 = add i32 %spec.select18.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i26)
  %cmp4.i = icmp eq i32 %inc.i26, 64
  %spec.select.i = select i1 %cmp4.i, i32 0, i32 %inc.i26
  %sub.i = add i32 %220, -8
  %cmp2.i = icmp ugt i32 %sub.i, 15
  br i1 %cmp2.i, label %while.body.i27.while.body.i27_crit_edge, label %while.cond.do.body_crit_edge.i

while.body.i27.while.body.i27_crit_edge:          ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i27

while.cond.do.body_crit_edge.i:                   ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #15
  %221 = ptrtoint ptr %small_buf_q_producer_index.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %spec.select.i, ptr %small_buf_q_producer_index.i, align 8
  %222 = ptrtoint ptr %small_buf_release_cnt.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %sub.i, ptr %small_buf_release_cnt.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !342
  tail call void @arm_heavy_mb() #13
  %223 = ptrtoint ptr %small_buf_q_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %small_buf_q_producer_index.i, align 8
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #13
  %rxSmallQProducerIndex.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %216, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxSmallQProducerIndex.i, i32 %225) #13, !srcloc !326
  br label %ql_update_small_bufq_prod_index.exit

ql_update_small_bufq_prod_index.exit:             ; preds = %while.cond.do.body_crit_edge.i, %if.then.ql_update_small_bufq_prod_index.exit_crit_edge
  %226 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mem_map_registers, align 8
  %lrg_buf_free_count.i = getelementptr i8, ptr %napi, i32 41488
  %228 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %lrg_buf_free_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %229)
  %cmp.i29 = icmp ugt i32 %229, 7
  br i1 %cmp.i29, label %land.lhs.true.i, label %ql_update_small_bufq_prod_index.exit.ql_update_lrg_bufq_prod_index.exit_crit_edge

ql_update_small_bufq_prod_index.exit.ql_update_lrg_bufq_prod_index.exit_crit_edge: ; preds = %ql_update_small_bufq_prod_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_update_lrg_bufq_prod_index.exit

land.lhs.true.i:                                  ; preds = %ql_update_small_bufq_prod_index.exit
  %lrg_buf_release_cnt.i = getelementptr i8, ptr %napi, i32 41460
  %230 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %231)
  %cmp1.i = icmp ugt i32 %231, 15
  br i1 %cmp1.i, label %if.then.i30, label %land.lhs.true.i.ql_update_lrg_bufq_prod_index.exit_crit_edge

land.lhs.true.i.ql_update_lrg_bufq_prod_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_update_lrg_bufq_prod_index.exit

if.then.i30:                                      ; preds = %land.lhs.true.i
  %lrg_buf_skb_check.i = getelementptr i8, ptr %napi, i32 41500
  %232 = ptrtoint ptr %lrg_buf_skb_check.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %lrg_buf_skb_check.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.i = icmp eq i32 %233, 0
  br i1 %tobool.not.i, label %if.then.i30.if.end5.i_crit_edge, label %if.then2.i

if.then.i30.if.end5.i_crit_edge:                  ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.then.i30
  %lrg_buf_free_head.i.i = getelementptr i8, ptr %napi, i32 41480
  %234 = ptrtoint ptr %lrg_buf_free_head.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %lrg_buf_cb.069.i.i = load ptr, ptr %lrg_buf_free_head.i.i, align 4
  %tobool.not70.i.i = icmp eq ptr %lrg_buf_cb.069.i.i, null
  br i1 %tobool.not70.i.i, label %if.then2.i.ql_update_lrg_bufq_prod_index.exit_crit_edge, label %while.body.lr.ph.i.i

if.then2.i.ql_update_lrg_bufq_prod_index.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_update_lrg_bufq_prod_index.exit

while.body.lr.ph.i.i:                             ; preds = %if.then2.i
  %lrg_buffer_len.i.i = getelementptr i8, ptr %napi, i32 41492
  %pdev.i.i = getelementptr i8, ptr %napi, i32 -8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end34.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %lrg_buf_cb.071.i.i = phi ptr [ %lrg_buf_cb.069.i.i, %while.body.lr.ph.i.i ], [ %lrg_buf_cb.0.i.i, %if.end34.i.i.while.body.i.i_crit_edge ]
  %skb.i.i31 = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb.071.i.i, i32 0, i32 1
  %235 = ptrtoint ptr %skb.i.i31 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %skb.i.i31, align 4
  %tobool1.not.i.i = icmp eq ptr %236, null
  br i1 %tobool1.not.i.i, label %if.then.i.i33, label %while.body.i.i.if.end34.i.i_crit_edge

while.body.i.i.if.end34.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

if.then.i.i33:                                    ; preds = %while.body.i.i
  %237 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ndev1.i, align 4
  %239 = ptrtoint ptr %lrg_buffer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %lrg_buffer_len.i.i, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %238, i32 noundef %240, i32 noundef 2592) #13
  %241 = ptrtoint ptr %skb.i.i31 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call.i.i.i, ptr %skb.i.i31, align 4
  %tobool4.not.i.i32 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i32, label %if.then8.i.i, label %if.else.i.i38, !prof !343

if.then8.i.i:                                     ; preds = %if.then.i.i33
  call void @__sanitizer_cov_trace_pc() #15
  %242 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ndev1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %243, ptr noundef nonnull @.str.107) #16
  br label %ql_update_lrg_bufq_prod_index.exit

if.else.i.i38:                                    ; preds = %if.then.i.i33
  %data.i.i.i34 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %244 = ptrtoint ptr %data.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %data.i.i.i34, align 4
  %add.ptr.i.i.i35 = getelementptr i8, ptr %245, i32 32
  store ptr %add.ptr.i.i.i35, ptr %data.i.i.i34, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %246 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %247, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %248 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i36 = getelementptr inbounds %struct.pci_dev, ptr %249, i32 0, i32 44
  %250 = ptrtoint ptr %skb.i.i31 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %skb.i.i31, align 4
  %data.i.i37 = getelementptr inbounds %struct.sk_buff, ptr %251, i32 0, i32 19
  %252 = ptrtoint ptr %data.i.i37 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %data.i.i37, align 4
  %254 = ptrtoint ptr %lrg_buffer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %lrg_buffer_len.i.i, align 4
  %call.i63.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %253) #13
  br i1 %call.i63.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i38
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !344

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i36) #13
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %249, i32 0, i32 44, i32 3
  %256 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %257, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %258 = ptrtoint ptr %dev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev.i.i36, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %259, %if.end.i.i.i.i ], [ %257, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #13
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.else.i.i38
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %255, -32
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i36, ptr noundef %253, i32 noundef %sub.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %260 = load ptr, ptr @mem_map, align 4
  %261 = ptrtoint ptr %253 to i32
  %sub.i.i.i = add i32 %261, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i64.i.i = getelementptr %struct.page, ptr %260, i32 %shr.i.i.i
  %and.i.i.i = and i32 %261, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i36, ptr noundef %add.ptr.i64.i.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %262 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %pdev.i.i, align 8
  %dev15.i.i = getelementptr inbounds %struct.pci_dev, ptr %263, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev15.i.i, i32 noundef %retval.0.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i39 = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i39, label %if.then18.i.i, label %if.end.i.i43

if.then18.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %264 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ndev1.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %265, ptr noundef nonnull @.str.65, i32 noundef -12) #16
  %266 = ptrtoint ptr %skb.i.i31 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %skb.i.i31, align 4
  tail call void @consume_skb(ptr noundef %267) #13
  %268 = ptrtoint ptr %skb.i.i31 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr null, ptr %skb.i.i31, align 4
  br label %ql_update_lrg_bufq_prod_index.exit

if.end.i.i43:                                     ; preds = %dma_map_single_attrs.exit.i.i
  %269 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i) #13
  %buf_phy_addr_low.i.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb.071.i.i, i32 0, i32 4
  %270 = ptrtoint ptr %buf_phy_addr_low.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %buf_phy_addr_low.i.i, align 4
  %buf_phy_addr_high.i.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb.071.i.i, i32 0, i32 5
  %271 = ptrtoint ptr %buf_phy_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %buf_phy_addr_high.i.i, align 4
  %mapaddr.i.i40 = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb.071.i.i, i32 0, i32 2
  %272 = ptrtoint ptr %mapaddr.i.i40 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %retval.0.i.i.i, ptr %mapaddr.i.i40, align 4
  %273 = ptrtoint ptr %lrg_buffer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %lrg_buffer_len.i.i, align 4
  %sub28.i.i = add i32 %274, -32
  %maplen.i.i41 = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb.071.i.i, i32 0, i32 3
  %275 = ptrtoint ptr %maplen.i.i41 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %sub28.i.i, ptr %maplen.i.i41, align 4
  %276 = ptrtoint ptr %lrg_buf_skb_check.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %lrg_buf_skb_check.i, align 4
  %dec.i.i42 = add i32 %277, -1
  store i32 %dec.i.i42, ptr %lrg_buf_skb_check.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i42)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i42, 0
  br i1 %tobool30.not.i.i, label %if.end.i.i43.if.end5.i_crit_edge, label %if.end.i.i43.if.end34.i.i_crit_edge

if.end.i.i43.if.end34.i.i_crit_edge:              ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

if.end.i.i43.if.end5.i_crit_edge:                 ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.end34.i.i:                                     ; preds = %if.end.i.i43.if.end34.i.i_crit_edge, %while.body.i.i.if.end34.i.i_crit_edge
  %278 = ptrtoint ptr %lrg_buf_cb.071.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %lrg_buf_cb.0.i.i = load ptr, ptr %lrg_buf_cb.071.i.i, align 4
  %tobool.not.i.i44 = icmp eq ptr %lrg_buf_cb.0.i.i, null
  br i1 %tobool.not.i.i44, label %if.end34.i.i.ql_update_lrg_bufq_prod_index.exit_crit_edge, label %if.end34.i.i.while.body.i.i_crit_edge

if.end34.i.i.while.body.i.i_crit_edge:            ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end34.i.i.ql_update_lrg_bufq_prod_index.exit_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_update_lrg_bufq_prod_index.exit

if.end5.i:                                        ; preds = %if.end.i.i43.if.end5.i_crit_edge, %if.then.i30.if.end5.i_crit_edge
  %lrg_buf_next_free.i = getelementptr i8, ptr %napi, i32 41464
  %279 = ptrtoint ptr %lrg_buf_next_free.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %lrg_buf_next_free.i, align 8
  %281 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %282)
  %cmp767.i = icmp ugt i32 %282, 15
  br i1 %cmp767.i, label %land.rhs.lr.ph.i, label %if.end5.i.do.body.i_crit_edge

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

land.rhs.lr.ph.i:                                 ; preds = %if.end5.i
  %lrg_buf_free_head.i56.i = getelementptr i8, ptr %napi, i32 41480
  %lrg_buf_free_tail.i.i = getelementptr i8, ptr %napi, i32 41484
  %lrg_buf_q_producer_index.i = getelementptr i8, ptr %napi, i32 41456
  %num_lbufq_entries.i = getelementptr i8, ptr %napi, i32 41472
  %lrg_buf_q_virt_addr.i = getelementptr i8, ptr %napi, i32 41444
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end23.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %lrg_buf_q_ele.068.i = phi ptr [ %280, %land.rhs.lr.ph.i ], [ %lrg_buf_q_ele.2.i, %if.end23.i.land.rhs.i_crit_edge ]
  %283 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %lrg_buf_free_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %284)
  %cmp9.i = icmp ugt i32 %284, 7
  br i1 %cmp9.i, label %for.body.preheader.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body.preheader.i:                             ; preds = %land.rhs.i
  %285 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.i = icmp eq ptr %286, null
  br i1 %cmp.not.i.i, label %for.body.preheader.i.ql_get_from_lrg_buf_free_list.exit.i_crit_edge, label %if.then.i57.i

for.body.preheader.i.ql_get_from_lrg_buf_free_list.exit.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.i

if.then.i57.i:                                    ; preds = %for.body.preheader.i
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %289 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %288, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.i = icmp eq ptr %288, null
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.then.i57.i.if.end.i59.i_crit_edge

if.then.i57.i.if.end.i59.i_crit_edge:             ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.i

if.then4.i.i:                                     ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #15
  %290 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.i

if.end.i59.i:                                     ; preds = %if.then4.i.i, %if.then.i57.i.if.end.i59.i_crit_edge
  %291 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.i = add i32 %292, -1
  store i32 %dec.i58.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.i

ql_get_from_lrg_buf_free_list.exit.i:             ; preds = %if.end.i59.i, %for.body.preheader.i.ql_get_from_lrg_buf_free_list.exit.i_crit_edge
  %buf_phy_addr_high.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %286, i32 0, i32 5
  %293 = ptrtoint ptr %buf_phy_addr_high.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %buf_phy_addr_high.i, align 4
  %addr_high.i = getelementptr inbounds %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 0, i32 1
  %295 = ptrtoint ptr %addr_high.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %addr_high.i, align 4
  %buf_phy_addr_low.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %286, i32 0, i32 4
  %296 = ptrtoint ptr %buf_phy_addr_low.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %buf_phy_addr_low.i, align 4
  %298 = ptrtoint ptr %lrg_buf_q_ele.068.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %lrg_buf_q_ele.068.i, align 4
  %incdec.ptr.i45 = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 1
  %299 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.i = add i32 %300, -1
  store i32 %dec.i, ptr %lrg_buf_release_cnt.i, align 4
  %301 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.1.i = icmp eq ptr %302, null
  br i1 %cmp.not.i.1.i, label %ql_get_from_lrg_buf_free_list.exit.i.ql_get_from_lrg_buf_free_list.exit.1.i_crit_edge, label %if.then.i57.1.i

ql_get_from_lrg_buf_free_list.exit.i.ql_get_from_lrg_buf_free_list.exit.1.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.1.i

if.then.i57.1.i:                                  ; preds = %ql_get_from_lrg_buf_free_list.exit.i
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %302, align 4
  %305 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %304, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.1.i = icmp eq ptr %304, null
  br i1 %cmp3.i.1.i, label %if.then4.i.1.i, label %if.then.i57.1.i.if.end.i59.1.i_crit_edge

if.then.i57.1.i.if.end.i59.1.i_crit_edge:         ; preds = %if.then.i57.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.1.i

if.then4.i.1.i:                                   ; preds = %if.then.i57.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %306 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.1.i

if.end.i59.1.i:                                   ; preds = %if.then4.i.1.i, %if.then.i57.1.i.if.end.i59.1.i_crit_edge
  %307 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.1.i = add i32 %308, -1
  store i32 %dec.i58.1.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.1.i

ql_get_from_lrg_buf_free_list.exit.1.i:           ; preds = %if.end.i59.1.i, %ql_get_from_lrg_buf_free_list.exit.i.ql_get_from_lrg_buf_free_list.exit.1.i_crit_edge
  %buf_phy_addr_high.1.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %302, i32 0, i32 5
  %309 = ptrtoint ptr %buf_phy_addr_high.1.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %buf_phy_addr_high.1.i, align 4
  %addr_high.1.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 1, i32 1
  %311 = ptrtoint ptr %addr_high.1.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %addr_high.1.i, align 4
  %buf_phy_addr_low.1.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %302, i32 0, i32 4
  %312 = ptrtoint ptr %buf_phy_addr_low.1.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %buf_phy_addr_low.1.i, align 4
  %314 = ptrtoint ptr %incdec.ptr.i45 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %incdec.ptr.i45, align 4
  %incdec.ptr.1.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 2
  %315 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.1.i = add i32 %316, -1
  store i32 %dec.1.i, ptr %lrg_buf_release_cnt.i, align 4
  %317 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.2.i = icmp eq ptr %318, null
  br i1 %cmp.not.i.2.i, label %ql_get_from_lrg_buf_free_list.exit.1.i.ql_get_from_lrg_buf_free_list.exit.2.i_crit_edge, label %if.then.i57.2.i

ql_get_from_lrg_buf_free_list.exit.1.i.ql_get_from_lrg_buf_free_list.exit.2.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.2.i

if.then.i57.2.i:                                  ; preds = %ql_get_from_lrg_buf_free_list.exit.1.i
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %318, align 4
  %321 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %320, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.2.i = icmp eq ptr %320, null
  br i1 %cmp3.i.2.i, label %if.then4.i.2.i, label %if.then.i57.2.i.if.end.i59.2.i_crit_edge

if.then.i57.2.i.if.end.i59.2.i_crit_edge:         ; preds = %if.then.i57.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.2.i

if.then4.i.2.i:                                   ; preds = %if.then.i57.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %322 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.2.i

if.end.i59.2.i:                                   ; preds = %if.then4.i.2.i, %if.then.i57.2.i.if.end.i59.2.i_crit_edge
  %323 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.2.i = add i32 %324, -1
  store i32 %dec.i58.2.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.2.i

ql_get_from_lrg_buf_free_list.exit.2.i:           ; preds = %if.end.i59.2.i, %ql_get_from_lrg_buf_free_list.exit.1.i.ql_get_from_lrg_buf_free_list.exit.2.i_crit_edge
  %buf_phy_addr_high.2.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %318, i32 0, i32 5
  %325 = ptrtoint ptr %buf_phy_addr_high.2.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %buf_phy_addr_high.2.i, align 4
  %addr_high.2.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 2, i32 1
  %327 = ptrtoint ptr %addr_high.2.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %addr_high.2.i, align 4
  %buf_phy_addr_low.2.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %318, i32 0, i32 4
  %328 = ptrtoint ptr %buf_phy_addr_low.2.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %buf_phy_addr_low.2.i, align 4
  %330 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %incdec.ptr.1.i, align 4
  %incdec.ptr.2.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 3
  %331 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.2.i = add i32 %332, -1
  store i32 %dec.2.i, ptr %lrg_buf_release_cnt.i, align 4
  %333 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.3.i = icmp eq ptr %334, null
  br i1 %cmp.not.i.3.i, label %ql_get_from_lrg_buf_free_list.exit.2.i.ql_get_from_lrg_buf_free_list.exit.3.i_crit_edge, label %if.then.i57.3.i

ql_get_from_lrg_buf_free_list.exit.2.i.ql_get_from_lrg_buf_free_list.exit.3.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.3.i

if.then.i57.3.i:                                  ; preds = %ql_get_from_lrg_buf_free_list.exit.2.i
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %334, align 4
  %337 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %336, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.3.i = icmp eq ptr %336, null
  br i1 %cmp3.i.3.i, label %if.then4.i.3.i, label %if.then.i57.3.i.if.end.i59.3.i_crit_edge

if.then.i57.3.i.if.end.i59.3.i_crit_edge:         ; preds = %if.then.i57.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.3.i

if.then4.i.3.i:                                   ; preds = %if.then.i57.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %338 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.3.i

if.end.i59.3.i:                                   ; preds = %if.then4.i.3.i, %if.then.i57.3.i.if.end.i59.3.i_crit_edge
  %339 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.3.i = add i32 %340, -1
  store i32 %dec.i58.3.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.3.i

ql_get_from_lrg_buf_free_list.exit.3.i:           ; preds = %if.end.i59.3.i, %ql_get_from_lrg_buf_free_list.exit.2.i.ql_get_from_lrg_buf_free_list.exit.3.i_crit_edge
  %buf_phy_addr_high.3.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %334, i32 0, i32 5
  %341 = ptrtoint ptr %buf_phy_addr_high.3.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %buf_phy_addr_high.3.i, align 4
  %addr_high.3.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 3, i32 1
  %343 = ptrtoint ptr %addr_high.3.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %addr_high.3.i, align 4
  %buf_phy_addr_low.3.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %334, i32 0, i32 4
  %344 = ptrtoint ptr %buf_phy_addr_low.3.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %buf_phy_addr_low.3.i, align 4
  %346 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %incdec.ptr.2.i, align 4
  %incdec.ptr.3.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 4
  %347 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.3.i = add i32 %348, -1
  store i32 %dec.3.i, ptr %lrg_buf_release_cnt.i, align 4
  %349 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.4.i = icmp eq ptr %350, null
  br i1 %cmp.not.i.4.i, label %ql_get_from_lrg_buf_free_list.exit.3.i.ql_get_from_lrg_buf_free_list.exit.4.i_crit_edge, label %if.then.i57.4.i

ql_get_from_lrg_buf_free_list.exit.3.i.ql_get_from_lrg_buf_free_list.exit.4.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.4.i

if.then.i57.4.i:                                  ; preds = %ql_get_from_lrg_buf_free_list.exit.3.i
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %350, align 4
  %353 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %352, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.4.i = icmp eq ptr %352, null
  br i1 %cmp3.i.4.i, label %if.then4.i.4.i, label %if.then.i57.4.i.if.end.i59.4.i_crit_edge

if.then.i57.4.i.if.end.i59.4.i_crit_edge:         ; preds = %if.then.i57.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.4.i

if.then4.i.4.i:                                   ; preds = %if.then.i57.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %354 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.4.i

if.end.i59.4.i:                                   ; preds = %if.then4.i.4.i, %if.then.i57.4.i.if.end.i59.4.i_crit_edge
  %355 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.4.i = add i32 %356, -1
  store i32 %dec.i58.4.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.4.i

ql_get_from_lrg_buf_free_list.exit.4.i:           ; preds = %if.end.i59.4.i, %ql_get_from_lrg_buf_free_list.exit.3.i.ql_get_from_lrg_buf_free_list.exit.4.i_crit_edge
  %buf_phy_addr_high.4.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %350, i32 0, i32 5
  %357 = ptrtoint ptr %buf_phy_addr_high.4.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %buf_phy_addr_high.4.i, align 4
  %addr_high.4.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 4, i32 1
  %359 = ptrtoint ptr %addr_high.4.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %addr_high.4.i, align 4
  %buf_phy_addr_low.4.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %350, i32 0, i32 4
  %360 = ptrtoint ptr %buf_phy_addr_low.4.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %buf_phy_addr_low.4.i, align 4
  %362 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %361, ptr %incdec.ptr.3.i, align 4
  %incdec.ptr.4.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 5
  %363 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.4.i = add i32 %364, -1
  store i32 %dec.4.i, ptr %lrg_buf_release_cnt.i, align 4
  %365 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.5.i = icmp eq ptr %366, null
  br i1 %cmp.not.i.5.i, label %ql_get_from_lrg_buf_free_list.exit.4.i.ql_get_from_lrg_buf_free_list.exit.5.i_crit_edge, label %if.then.i57.5.i

ql_get_from_lrg_buf_free_list.exit.4.i.ql_get_from_lrg_buf_free_list.exit.5.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.5.i

if.then.i57.5.i:                                  ; preds = %ql_get_from_lrg_buf_free_list.exit.4.i
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %369 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %368, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.5.i = icmp eq ptr %368, null
  br i1 %cmp3.i.5.i, label %if.then4.i.5.i, label %if.then.i57.5.i.if.end.i59.5.i_crit_edge

if.then.i57.5.i.if.end.i59.5.i_crit_edge:         ; preds = %if.then.i57.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.5.i

if.then4.i.5.i:                                   ; preds = %if.then.i57.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %370 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.5.i

if.end.i59.5.i:                                   ; preds = %if.then4.i.5.i, %if.then.i57.5.i.if.end.i59.5.i_crit_edge
  %371 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.5.i = add i32 %372, -1
  store i32 %dec.i58.5.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.5.i

ql_get_from_lrg_buf_free_list.exit.5.i:           ; preds = %if.end.i59.5.i, %ql_get_from_lrg_buf_free_list.exit.4.i.ql_get_from_lrg_buf_free_list.exit.5.i_crit_edge
  %buf_phy_addr_high.5.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %366, i32 0, i32 5
  %373 = ptrtoint ptr %buf_phy_addr_high.5.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %buf_phy_addr_high.5.i, align 4
  %addr_high.5.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 5, i32 1
  %375 = ptrtoint ptr %addr_high.5.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %374, ptr %addr_high.5.i, align 4
  %buf_phy_addr_low.5.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %366, i32 0, i32 4
  %376 = ptrtoint ptr %buf_phy_addr_low.5.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %buf_phy_addr_low.5.i, align 4
  %378 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %incdec.ptr.4.i, align 4
  %incdec.ptr.5.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 6
  %379 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.5.i = add i32 %380, -1
  store i32 %dec.5.i, ptr %lrg_buf_release_cnt.i, align 4
  %381 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.6.i = icmp eq ptr %382, null
  br i1 %cmp.not.i.6.i, label %ql_get_from_lrg_buf_free_list.exit.5.i.ql_get_from_lrg_buf_free_list.exit.6.i_crit_edge, label %if.then.i57.6.i

ql_get_from_lrg_buf_free_list.exit.5.i.ql_get_from_lrg_buf_free_list.exit.6.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.6.i

if.then.i57.6.i:                                  ; preds = %ql_get_from_lrg_buf_free_list.exit.5.i
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %382, align 4
  %385 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %384, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.6.i = icmp eq ptr %384, null
  br i1 %cmp3.i.6.i, label %if.then4.i.6.i, label %if.then.i57.6.i.if.end.i59.6.i_crit_edge

if.then.i57.6.i.if.end.i59.6.i_crit_edge:         ; preds = %if.then.i57.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.6.i

if.then4.i.6.i:                                   ; preds = %if.then.i57.6.i
  call void @__sanitizer_cov_trace_pc() #15
  %386 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.6.i

if.end.i59.6.i:                                   ; preds = %if.then4.i.6.i, %if.then.i57.6.i.if.end.i59.6.i_crit_edge
  %387 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.6.i = add i32 %388, -1
  store i32 %dec.i58.6.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.6.i

ql_get_from_lrg_buf_free_list.exit.6.i:           ; preds = %if.end.i59.6.i, %ql_get_from_lrg_buf_free_list.exit.5.i.ql_get_from_lrg_buf_free_list.exit.6.i_crit_edge
  %buf_phy_addr_high.6.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %382, i32 0, i32 5
  %389 = ptrtoint ptr %buf_phy_addr_high.6.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %buf_phy_addr_high.6.i, align 4
  %addr_high.6.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 6, i32 1
  %391 = ptrtoint ptr %addr_high.6.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %addr_high.6.i, align 4
  %buf_phy_addr_low.6.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %382, i32 0, i32 4
  %392 = ptrtoint ptr %buf_phy_addr_low.6.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %buf_phy_addr_low.6.i, align 4
  %394 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %incdec.ptr.5.i, align 4
  %incdec.ptr.6.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 7
  %395 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.6.i = add i32 %396, -1
  store i32 %dec.6.i, ptr %lrg_buf_release_cnt.i, align 4
  %397 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp.not.i.7.i = icmp eq ptr %398, null
  br i1 %cmp.not.i.7.i, label %ql_get_from_lrg_buf_free_list.exit.6.i.ql_get_from_lrg_buf_free_list.exit.7.i_crit_edge, label %if.then.i57.7.i

ql_get_from_lrg_buf_free_list.exit.6.i.ql_get_from_lrg_buf_free_list.exit.7.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_from_lrg_buf_free_list.exit.7.i

if.then.i57.7.i:                                  ; preds = %ql_get_from_lrg_buf_free_list.exit.6.i
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %398, align 4
  %401 = ptrtoint ptr %lrg_buf_free_head.i56.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %400, ptr %lrg_buf_free_head.i56.i, align 8
  %cmp3.i.7.i = icmp eq ptr %400, null
  br i1 %cmp3.i.7.i, label %if.then4.i.7.i, label %if.then.i57.7.i.if.end.i59.7.i_crit_edge

if.then.i57.7.i.if.end.i59.7.i_crit_edge:         ; preds = %if.then.i57.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i59.7.i

if.then4.i.7.i:                                   ; preds = %if.then.i57.7.i
  call void @__sanitizer_cov_trace_pc() #15
  %402 = ptrtoint ptr %lrg_buf_free_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr null, ptr %lrg_buf_free_tail.i.i, align 4
  br label %if.end.i59.7.i

if.end.i59.7.i:                                   ; preds = %if.then4.i.7.i, %if.then.i57.7.i.if.end.i59.7.i_crit_edge
  %403 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %lrg_buf_free_count.i, align 8
  %dec.i58.7.i = add i32 %404, -1
  store i32 %dec.i58.7.i, ptr %lrg_buf_free_count.i, align 8
  br label %ql_get_from_lrg_buf_free_list.exit.7.i

ql_get_from_lrg_buf_free_list.exit.7.i:           ; preds = %if.end.i59.7.i, %ql_get_from_lrg_buf_free_list.exit.6.i.ql_get_from_lrg_buf_free_list.exit.7.i_crit_edge
  %buf_phy_addr_high.7.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %398, i32 0, i32 5
  %405 = ptrtoint ptr %buf_phy_addr_high.7.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %buf_phy_addr_high.7.i, align 4
  %addr_high.7.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 7, i32 1
  %407 = ptrtoint ptr %addr_high.7.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %addr_high.7.i, align 4
  %buf_phy_addr_low.7.i = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %398, i32 0, i32 4
  %408 = ptrtoint ptr %buf_phy_addr_low.7.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %buf_phy_addr_low.7.i, align 4
  %410 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %409, ptr %incdec.ptr.6.i, align 4
  %incdec.ptr.7.i = getelementptr %struct.bufq_addr_element, ptr %lrg_buf_q_ele.068.i, i32 8
  %411 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %lrg_buf_release_cnt.i, align 4
  %dec.7.i = add i32 %412, -1
  store i32 %dec.7.i, ptr %lrg_buf_release_cnt.i, align 4
  %413 = ptrtoint ptr %lrg_buf_q_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %lrg_buf_q_producer_index.i, align 8
  %inc13.i46 = add i32 %414, 1
  %415 = ptrtoint ptr %num_lbufq_entries.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %num_lbufq_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc13.i46, i32 %416)
  %cmp15.i = icmp eq i32 %inc13.i46, %416
  %spec.store.select.i = select i1 %cmp15.i, i32 0, i32 %inc13.i46
  %417 = ptrtoint ptr %lrg_buf_q_producer_index.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %spec.store.select.i, ptr %lrg_buf_q_producer_index.i, align 8
  %sub.i47 = add i32 %416, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %sub.i47)
  %cmp21.i = icmp eq i32 %spec.store.select.i, %sub.i47
  br i1 %cmp21.i, label %if.then22.i, label %ql_get_from_lrg_buf_free_list.exit.7.i.if.end23.i_crit_edge

ql_get_from_lrg_buf_free_list.exit.7.i.if.end23.i_crit_edge: ; preds = %ql_get_from_lrg_buf_free_list.exit.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then22.i:                                      ; preds = %ql_get_from_lrg_buf_free_list.exit.7.i
  call void @__sanitizer_cov_trace_pc() #15
  %418 = ptrtoint ptr %lrg_buf_q_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %lrg_buf_q_virt_addr.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %ql_get_from_lrg_buf_free_list.exit.7.i.if.end23.i_crit_edge
  %lrg_buf_q_ele.2.i = phi ptr [ %419, %if.then22.i ], [ %incdec.ptr.7.i, %ql_get_from_lrg_buf_free_list.exit.7.i.if.end23.i_crit_edge ]
  %cmp7.i = icmp ugt i32 %dec.7.i, 15
  br i1 %cmp7.i, label %if.end23.i.land.rhs.i_crit_edge, label %if.end23.i.do.body.i_crit_edge

if.end23.i.do.body.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end23.i.land.rhs.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

do.body.i:                                        ; preds = %if.end23.i.do.body.i_crit_edge, %land.rhs.i.do.body.i_crit_edge, %if.end5.i.do.body.i_crit_edge
  %lrg_buf_q_ele.0.lcssa.i = phi ptr [ %280, %if.end5.i.do.body.i_crit_edge ], [ %lrg_buf_q_ele.2.i, %if.end23.i.do.body.i_crit_edge ], [ %lrg_buf_q_ele.068.i, %land.rhs.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !345
  tail call void @arm_heavy_mb() #13
  %420 = ptrtoint ptr %lrg_buf_next_free.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %lrg_buf_q_ele.0.lcssa.i, ptr %lrg_buf_next_free.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !346
  tail call void @arm_heavy_mb() #13
  %lrg_buf_q_producer_index28.i = getelementptr i8, ptr %napi, i32 41456
  %421 = ptrtoint ptr %lrg_buf_q_producer_index28.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %lrg_buf_q_producer_index28.i, align 8
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #13
  %rxLargeQProducerIndex.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %227, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxLargeQProducerIndex.i, i32 %423) #13, !srcloc !326
  br label %ql_update_lrg_bufq_prod_index.exit

ql_update_lrg_bufq_prod_index.exit:               ; preds = %do.body.i, %if.end34.i.i.ql_update_lrg_bufq_prod_index.exit_crit_edge, %if.then18.i.i, %if.then8.i.i, %if.then2.i.ql_update_lrg_bufq_prod_index.exit_crit_edge, %land.lhs.true.i.ql_update_lrg_bufq_prod_index.exit_crit_edge, %ql_update_small_bufq_prod_index.exit.ql_update_lrg_bufq_prod_index.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  tail call void @arm_heavy_mb() #13
  %424 = ptrtoint ptr %rsp_consumer_index.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %rsp_consumer_index.i, align 8
  %conv12 = zext i16 %425 to i32
  %426 = tail call i32 @llvm.bswap.i32(i32 %conv12)
  %rspQConsumerIndex = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspQConsumerIndex, i32 %426) #13, !srcloc !326
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call6) #13
  %427 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %mem_map_registers, align 8
  %ispInterruptMaskReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %428, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispInterruptMaskReg.i, i32 67174144) #13, !srcloc !326
  %429 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispInterruptMaskReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2.i.i) #13
  br label %if.end

if.end:                                           ; preds = %ql_update_lrg_bufq_prod_index.exit, %land.lhs.true.if.end_crit_edge, %ql_tx_rx_clean.exit.if.end_crit_edge
  ret i32 %work_done.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql_reset_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -43652
  %ndev1 = getelementptr i8, ptr %work, i32 -43640
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %mem_map_registers = getelementptr i8, ptr %work, i32 -43260
  %2 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_map_registers, align 8
  %flags = getelementptr i8, ptr %work, i32 -43648
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #13
  %tx_buf = getelementptr i8, ptr %work, i32 -43200
  %pdev = getelementptr i8, ptr %work, i32 -43644
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then
  %i.0129 = phi i32 [ 0, %if.then ], [ %inc22, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.ql_tx_buf_cb], ptr %tx_buf, i32 0, i32 %i.0129
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %if.then4

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %for.body
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %1, ptr noundef nonnull @.str.112) #16
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %map = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %map, align 4
  %maplen = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %maplen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maplen, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 0) #13
  %seg_count = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp9127 = icmp sgt i32 %16, 1
  br i1 %cmp9127, label %if.then4.for.body10_crit_edge, label %if.then4.for.end_crit_edge

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then4.for.body10_crit_edge:                    ; preds = %if.then4
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %if.then4.for.body10_crit_edge
  %j.0128 = phi i32 [ %inc, %for.body10.for.body10_crit_edge ], [ 1, %if.then4.for.body10_crit_edge ]
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %arrayidx14 = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %j.0128
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14, align 4
  %maplen18 = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %j.0128, i32 1
  %21 = ptrtoint ptr %maplen18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maplen18, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev12, i32 noundef %20, i32 noundef %22, i32 noundef 1, i32 noundef 0) #13
  %inc = add nuw nsw i32 %j.0128, 1
  %23 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seg_count, align 4
  %cmp9 = icmp slt i32 %inc, %24
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end_crit_edge

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %if.then4.for.end_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %26) #13
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body.if.end_crit_edge
  %inc22 = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc22, 256
  br i1 %exitcond.not, label %for.end23, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end23:                                        ; preds = %if.end
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.113) #16
  %hw_lock = getelementptr i8, ptr %work, i32 -43308
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %ispControlStatus = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus, i32 134219776) #13, !srcloc !326
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  br label %do.body31

do.body31:                                        ; preds = %if.end44.do.body31_crit_edge, %for.end23
  %max_wait_time.0 = phi i32 [ 10, %for.end23 ], [ %dec, %if.end44.do.body31_crit_edge ]
  %hw_flags.0 = phi i32 [ %call28, %for.end23 ], [ %call55, %if.end44.do.body31_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus) #13, !srcloc !327
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %and = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp35 = icmp eq i32 %and, 0
  br i1 %cmp35, label %if.end70, label %if.end38

if.end38:                                         ; preds = %do.body31
  %and39 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %1, ptr noundef nonnull @.str.115) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus, i32 134219776) #13, !srcloc !326
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %hw_flags.0) #13
  tail call void @msleep(i32 noundef 1000) #13
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %dec = add nsw i32 %max_wait_time.0, -1
  %tobool61.not = icmp eq i32 %dec, 0
  br i1 %tobool61.not, label %if.then66, label %if.end44.do.body31_crit_edge

if.end44.do.body31_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

if.then66:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call55) #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.116) #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.117) #16
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #13
  tail call fastcc void @ql_cycle_adapter(ptr noundef %add.ptr, i32 noundef 1)
  br label %cleanup

if.end70:                                         ; preds = %do.body31
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %1, ptr noundef nonnull @.str.114) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %hw_flags.0) #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #13
  %call.i = tail call fastcc i32 @ql_adapter_down(ptr noundef %add.ptr, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end70.if.then.i_crit_edge

if.end70.if.then.i_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end70
  %call1.i = tail call fastcc i32 @ql_adapter_up(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end70.if.then.i_crit_edge
  %32 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.118) #16
  tail call void @rtnl_lock() #13
  %34 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev1, align 4
  tail call void @dev_close(ptr noundef %35) #13
  tail call void @rtnl_unlock() #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then66, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql_tx_timeout_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -43752
  %call.i = tail call fastcc i32 @ql_adapter_down(ptr noundef %add.ptr, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call fastcc i32 @ql_adapter_up(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.ql_cycle_adapter.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i.ql_cycle_adapter.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_cycle_adapter.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %ndev.i = getelementptr i8, ptr %work, i32 -43740
  %0 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.118) #16
  tail call void @rtnl_lock() #13
  %2 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev.i, align 4
  tail call void @dev_close(ptr noundef %3) #13
  tail call void @rtnl_unlock() #13
  br label %ql_cycle_adapter.exit

ql_cycle_adapter.exit:                            ; preds = %if.then.i, %lor.lhs.false.i.ql_cycle_adapter.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql_link_state_machine_work(ptr noundef %work) #2 align 64 {
entry:
  %reg.i6.i.i = alloca i16, align 2
  %reg.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -43852
  %hw_lock = getelementptr i8, ptr %work, i32 -43508
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %mem_map_registers.i = getelementptr i8, ptr %work, i32 -43460
  %0 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers.i, align 8
  %mac_index.i = getelementptr i8, ptr %work, i32 -224
  %2 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_index.i, align 4
  %current_page.i.i = getelementptr i8, ptr %work, i32 -43456
  %4 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %entry.ql_get_link_state.exit_crit_edge, label %if.then.i.i

entry.ql_get_link_state.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_link_state.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %7 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_get_link_state.exit

ql_get_link_state.exit:                           ; preds = %if.then.i.i, %entry.ql_get_link_state.exit_crit_edge
  %portStatus.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp4.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1048576, i32 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 65536, i32 %switch.select.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i) #13, !srcloc !327
  %9 = shl i32 %8, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i = and i32 %9, %switch.select5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %flags = getelementptr i8, ptr %work, i32 -43848
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end15, label %do.body8

do.body8:                                         ; preds = %ql_get_link_state.exit
  %msg_enable = getelementptr i8, ptr %work, i32 -43452
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body8.cleanup_crit_edge, label %if.then10

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr i8, ptr %work, i32 -43840
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.119) #16
  br label %cleanup

if.end15:                                         ; preds = %ql_get_link_state.exit
  %port_link_state = getelementptr i8, ptr %work, i32 -228
  %17 = ptrtoint ptr %port_link_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_link_state, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %18, label %sw.default [
    i32 1, label %if.end15.sw.bb_crit_edge
    i32 4, label %sw.bb48
  ]

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.default:                                       ; preds = %if.end15
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %sw.default.if.end21_crit_edge, label %if.then19

sw.default.if.end21_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then19:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call fastcc i32 @ql_port_start(ptr noundef %add.ptr)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %sw.default.if.end21_crit_edge
  %23 = ptrtoint ptr %port_link_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %port_link_state, align 8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end21, %if.end15.sw.bb_crit_edge
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %do.body26

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body26:                                        ; preds = %sw.bb
  %msg_enable27 = getelementptr i8, ptr %work, i32 -43452
  %24 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable27, align 8
  %and28 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.do.end34_crit_edge, label %if.then30

do.body26.do.end34_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %ndev31 = getelementptr i8, ptr %work, i32 -43840
  %26 = ptrtoint ptr %ndev31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev31, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.120) #16
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body26.do.end34_crit_edge
  %28 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem_map_registers.i, align 8
  %30 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %switch.selectcmp.i104 = icmp eq i32 %31, 1
  %switch.select.i105 = select i1 %switch.selectcmp.i104, i32 2097152, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %switch.selectcmp23.i = icmp eq i32 %31, 0
  %switch.select24.i = select i1 %switch.selectcmp23.i, i32 131072, i32 %switch.select.i105
  %portStatus.i106 = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %29, i32 0, i32 4
  %32 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i.i108 = icmp eq i32 %33, 0
  br i1 %cmp.not.i.i108, label %do.end34.ql_read_page0_reg.exit.i_crit_edge, label %if.then.i.i110

do.end34.ql_read_page0_reg.exit.i_crit_edge:      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i

if.then.i.i110:                                   ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i109 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %29, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i109, i32 768) #13, !srcloc !326
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i109) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %35 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i

ql_read_page0_reg.exit.i:                         ; preds = %if.then.i.i110, %do.end34.ql_read_page0_reg.exit.i_crit_edge
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i106) #13, !srcloc !327
  %37 = shl i32 %36, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i111 = and i32 %37, %switch.select24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool.not.i112 = icmp eq i32 %and.i111, 0
  %38 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable27, align 8
  %and8.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %ql_read_page0_reg.exit.i.ql_is_auto_neg_complete.exit_crit_edge, label %cleanup.sink.split.i

ql_read_page0_reg.exit.i.ql_is_auto_neg_complete.exit_crit_edge: ; preds = %ql_read_page0_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_auto_neg_complete.exit

cleanup.sink.split.i:                             ; preds = %ql_read_page0_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %.str.124..str.123.i = select i1 %tobool.not.i112, ptr @.str.124, ptr @.str.123
  %ndev11.i = getelementptr i8, ptr %work, i32 -43840
  %40 = ptrtoint ptr %ndev11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev11.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %41, ptr noundef nonnull %.str.124..str.123.i) #16
  br label %ql_is_auto_neg_complete.exit

ql_is_auto_neg_complete.exit:                     ; preds = %cleanup.sink.split.i, %ql_read_page0_reg.exit.i.ql_is_auto_neg_complete.exit_crit_edge
  br i1 %tobool.not.i112, label %ql_is_auto_neg_complete.exit.if.end39_crit_edge, label %if.then37

ql_is_auto_neg_complete.exit.if.end39_crit_edge:  ; preds = %ql_is_auto_neg_complete.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %ql_is_auto_neg_complete.exit
  %42 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mac_index.i, align 4
  %mul.i = shl i32 %43, 8
  %or.i = or i32 %mul.i, 512
  %call.i = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %add.ptr, i32 noundef 58720256, i32 noundef %or.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i114 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i114, label %if.end.i, label %if.then37.if.end39_crit_edge

if.then37.if.end39_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end.i:                                         ; preds = %if.then37
  %44 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem_map_registers.i, align 8
  %46 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mac_index.i, align 4
  %48 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i.i.i = icmp eq i32 %49, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.ql_auto_neg_error.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.ql_auto_neg_error.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_auto_neg_error.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %45, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i.i, i32 768) #13, !srcloc !326
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %51 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_auto_neg_error.exit.i

ql_auto_neg_error.exit.i:                         ; preds = %if.then.i.i.i, %if.end.i.ql_auto_neg_error.exit.i_crit_edge
  %portStatus.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %45, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %switch.selectcmp4.i.i = icmp eq i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %switch.selectcmp.i.i = icmp eq i32 %47, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 4194304, i32 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 262144, i32 %switch.select.i.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i.i) #13, !srcloc !327
  %53 = shl i32 %52, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i.i = and i32 %53, %switch.select5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags, align 4
  %56 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool5.not.i = icmp eq i32 %56, 0
  br i1 %cmp.i.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %ql_auto_neg_error.exit.i
  br i1 %tobool5.not.i, label %if.then3.i.if.end21.i_crit_edge, label %do.body.i

if.then3.i.if.end21.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

do.body.i:                                        ; preds = %if.then3.i
  %57 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable27, align 8
  %and.i115 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool7.not.i = icmp eq i32 %and.i115, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then8.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %ndev.i = getelementptr i8, ptr %work, i32 -43840
  %59 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %60, ptr noundef nonnull @.str.125) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i.do.end.i_crit_edge
  tail call fastcc void @ql_mac_cfg_soft_reset(ptr noundef %add.ptr, i32 noundef 1) #13
  %call10.i = tail call fastcc i32 @ql_get_link_speed(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call10.i)
  %cmp.not.i = icmp eq i32 %call10.i, 1000
  %61 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mem_map_registers.i, align 8
  %..i.i = select i1 %cmp.not.i, i32 1048592, i32 1048576
  %63 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool1.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool1.not.i.i, label %if.else3.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %do.end.i
  %mac1ConfigReg.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %62, i32 0, i32 16
  %65 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not.i.i6.i = icmp eq i32 %66, 0
  br i1 %cmp.not.i.i6.i, label %if.then2.i.i.ql_write_page0_reg.exit.i.i_crit_edge, label %if.then.i.i8.i

if.then2.i.i.ql_write_page0_reg.exit.i.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit.i.i

if.then.i.i8.i:                                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i7.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %62, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i7.i, i32 768) #13, !srcloc !326
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i7.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %68 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit.i.i

ql_write_page0_reg.exit.i.i:                      ; preds = %if.then.i.i8.i, %if.then2.i.i.ql_write_page0_reg.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %69 = tail call i32 @llvm.bswap.i32(i32 %..i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac1ConfigReg.i.i, i32 %69) #13, !srcloc !326
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1ConfigReg.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %ql_mac_cfg_gig.exit.i

if.else3.i.i:                                     ; preds = %do.end.i
  %mac0ConfigReg.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %62, i32 0, i32 11
  %71 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.not.i11.i.i = icmp eq i32 %72, 0
  br i1 %cmp.not.i11.i.i, label %if.else3.i.i.ql_write_page0_reg.exit15.i.i_crit_edge, label %if.then.i14.i.i

if.else3.i.i.ql_write_page0_reg.exit15.i.i_crit_edge: ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit15.i.i

if.then.i14.i.i:                                  ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i13.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %62, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i13.i.i, i32 768) #13, !srcloc !326
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i13.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %74 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit15.i.i

ql_write_page0_reg.exit15.i.i:                    ; preds = %if.then.i14.i.i, %if.else3.i.i.ql_write_page0_reg.exit15.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %75 = tail call i32 @llvm.bswap.i32(i32 %..i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac0ConfigReg.i.i, i32 %75) #13, !srcloc !326
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac0ConfigReg.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %ql_mac_cfg_gig.exit.i

ql_mac_cfg_gig.exit.i:                            ; preds = %ql_write_page0_reg.exit15.i.i, %ql_write_page0_reg.exit.i.i
  %call11.i = tail call fastcc i32 @ql_is_link_full_dup(ptr noundef %add.ptr) #13, !range !352
  %77 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mem_map_registers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i10.i = icmp eq i32 %call11.i, 0
  %..i11.i = select i1 %tobool.not.i10.i, i32 524288, i32 524296
  %79 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool1.not.i13.i = icmp eq i32 %80, 0
  br i1 %tobool1.not.i13.i, label %if.else3.i24.i, label %if.then2.i17.i

if.then2.i17.i:                                   ; preds = %ql_mac_cfg_gig.exit.i
  %mac1ConfigReg.i14.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %78, i32 0, i32 16
  %81 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.not.i.i16.i = icmp eq i32 %82, 0
  br i1 %cmp.not.i.i16.i, label %if.then2.i17.i.ql_write_page0_reg.exit.i20.i_crit_edge, label %if.then.i.i19.i

if.then2.i17.i.ql_write_page0_reg.exit.i20.i_crit_edge: ; preds = %if.then2.i17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit.i20.i

if.then.i.i19.i:                                  ; preds = %if.then2.i17.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i18.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %78, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i18.i, i32 768) #13, !srcloc !326
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i18.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %84 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit.i20.i

ql_write_page0_reg.exit.i20.i:                    ; preds = %if.then.i.i19.i, %if.then2.i17.i.ql_write_page0_reg.exit.i20.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %85 = tail call i32 @llvm.bswap.i32(i32 %..i11.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac1ConfigReg.i14.i, i32 %85) #13, !srcloc !326
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1ConfigReg.i14.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %ql_mac_cfg_full_dup.exit.i

if.else3.i24.i:                                   ; preds = %ql_mac_cfg_gig.exit.i
  %mac0ConfigReg.i21.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %78, i32 0, i32 11
  %87 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.not.i11.i23.i = icmp eq i32 %88, 0
  br i1 %cmp.not.i11.i23.i, label %if.else3.i24.i.ql_write_page0_reg.exit15.i27.i_crit_edge, label %if.then.i14.i26.i

if.else3.i24.i.ql_write_page0_reg.exit15.i27.i_crit_edge: ; preds = %if.else3.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit15.i27.i

if.then.i14.i26.i:                                ; preds = %if.else3.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i13.i25.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %78, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i13.i25.i, i32 768) #13, !srcloc !326
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i13.i25.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %90 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit15.i27.i

ql_write_page0_reg.exit15.i27.i:                  ; preds = %if.then.i14.i26.i, %if.else3.i24.i.ql_write_page0_reg.exit15.i27.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %91 = tail call i32 @llvm.bswap.i32(i32 %..i11.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac0ConfigReg.i21.i, i32 %91) #13, !srcloc !326
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac0ConfigReg.i21.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %ql_mac_cfg_full_dup.exit.i

ql_mac_cfg_full_dup.exit.i:                       ; preds = %ql_write_page0_reg.exit15.i27.i, %ql_write_page0_reg.exit.i20.i
  %93 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mem_map_registers.i, align 8
  %95 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mac_index.i, align 4
  %97 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.not.i.i.i.i = icmp eq i32 %98, 0
  br i1 %cmp.not.i.i.i.i, label %ql_mac_cfg_full_dup.exit.i.ql_is_fiber.exit.i.i_crit_edge, label %if.then.i.i.i.i

ql_mac_cfg_full_dup.exit.i.ql_is_fiber.exit.i.i_crit_edge: ; preds = %ql_mac_cfg_full_dup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_fiber.exit.i.i

if.then.i.i.i.i:                                  ; preds = %ql_mac_cfg_full_dup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %94, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i.i.i, i32 768) #13, !srcloc !326
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %100 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_is_fiber.exit.i.i

ql_is_fiber.exit.i.i:                             ; preds = %if.then.i.i.i.i, %ql_mac_cfg_full_dup.exit.i.ql_is_fiber.exit.i.i_crit_edge
  %portStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %94, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %switch.selectcmp4.i.i.i = icmp eq i32 %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %switch.selectcmp.i.i.i = icmp eq i32 %96, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 2, i32 0
  %switch.select5.i.i.i = select i1 %switch.selectcmp4.i.i.i, i32 1, i32 %switch.select.i.i.i
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i.i.i) #13, !srcloc !327
  %102 = lshr i32 %101, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i.i.i = and i32 %102, %switch.select5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then.i.i116

if.then.i.i116:                                   ; preds = %ql_is_fiber.exit.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i.i) #13
  %103 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -1, ptr %reg.i.i.i, align 2, !annotation !353
  %call.i.i.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %add.ptr, i16 noundef zeroext 5, ptr noundef nonnull %reg.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i5.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i5.i.i, label %if.then.i.i116.ql_is_petbi_neg_pause.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i116.ql_is_petbi_neg_pause.exit.i.i_crit_edge: ; preds = %if.then.i.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_petbi_neg_pause.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i116
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %reg.i.i.i, align 2
  %106 = and i16 %105, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %106)
  %cmp1.i.i.i = icmp eq i16 %106, 128
  %conv2.i.i.i = zext i1 %cmp1.i.i.i to i32
  br label %ql_is_petbi_neg_pause.exit.i.i

ql_is_petbi_neg_pause.exit.i.i:                   ; preds = %if.end.i.i.i, %if.then.i.i116.ql_is_petbi_neg_pause.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv2.i.i.i, %if.end.i.i.i ], [ 0, %if.then.i.i116.ql_is_petbi_neg_pause.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i.i) #13
  br label %ql_is_neg_pause.exit.i

if.else.i.i:                                      ; preds = %ql_is_fiber.exit.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i6.i.i) #13
  %107 = ptrtoint ptr %reg.i6.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %reg.i6.i.i, align 2, !annotation !353
  %call.i7.i.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %add.ptr, i16 noundef zeroext 5, ptr noundef nonnull %reg.i6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i)
  %cmp.i8.i.i = icmp slt i32 %call.i7.i.i, 0
  br i1 %cmp.i8.i.i, label %if.else.i.i.ql_is_phy_neg_pause.exit.i.i_crit_edge, label %if.end.i9.i.i

if.else.i.i.ql_is_phy_neg_pause.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_phy_neg_pause.exit.i.i

if.end.i9.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %reg.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %reg.i6.i.i, align 2
  %110 = lshr i16 %109, 10
  %.lobit.i.i.i = and i16 %110, 1
  %111 = zext i16 %.lobit.i.i.i to i32
  br label %ql_is_phy_neg_pause.exit.i.i

ql_is_phy_neg_pause.exit.i.i:                     ; preds = %if.end.i9.i.i, %if.else.i.i.ql_is_phy_neg_pause.exit.i.i_crit_edge
  %retval.0.i10.i.i = phi i32 [ %111, %if.end.i9.i.i ], [ 0, %if.else.i.i.ql_is_phy_neg_pause.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i6.i.i) #13
  br label %ql_is_neg_pause.exit.i

ql_is_neg_pause.exit.i:                           ; preds = %ql_is_phy_neg_pause.exit.i.i, %ql_is_petbi_neg_pause.exit.i.i
  %retval.0.i.i = phi i32 [ %retval.0.i.i.i, %ql_is_petbi_neg_pause.exit.i.i ], [ %retval.0.i10.i.i, %ql_is_phy_neg_pause.exit.i.i ]
  %112 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mem_map_registers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i29.i = icmp eq i32 %retval.0.i.i, 0
  %..i30.i = select i1 %tobool.not.i29.i, i32 393216, i32 393222
  %114 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool1.not.i32.i = icmp eq i32 %115, 0
  br i1 %tobool1.not.i32.i, label %if.else3.i43.i, label %if.then2.i36.i

if.then2.i36.i:                                   ; preds = %ql_is_neg_pause.exit.i
  %mac1ConfigReg.i33.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %113, i32 0, i32 16
  %116 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.not.i.i35.i = icmp eq i32 %117, 0
  br i1 %cmp.not.i.i35.i, label %if.then2.i36.i.ql_write_page0_reg.exit.i39.i_crit_edge, label %if.then.i.i38.i

if.then2.i36.i.ql_write_page0_reg.exit.i39.i_crit_edge: ; preds = %if.then2.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit.i39.i

if.then.i.i38.i:                                  ; preds = %if.then2.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i37.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %113, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i37.i, i32 768) #13, !srcloc !326
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i37.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %119 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit.i39.i

ql_write_page0_reg.exit.i39.i:                    ; preds = %if.then.i.i38.i, %if.then2.i36.i.ql_write_page0_reg.exit.i39.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %120 = tail call i32 @llvm.bswap.i32(i32 %..i30.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac1ConfigReg.i33.i, i32 %120) #13, !srcloc !326
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1ConfigReg.i33.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %ql_mac_cfg_pause.exit.i

if.else3.i43.i:                                   ; preds = %ql_is_neg_pause.exit.i
  %mac0ConfigReg.i40.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %113, i32 0, i32 11
  %122 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.not.i11.i42.i = icmp eq i32 %123, 0
  br i1 %cmp.not.i11.i42.i, label %if.else3.i43.i.ql_write_page0_reg.exit15.i46.i_crit_edge, label %if.then.i14.i45.i

if.else3.i43.i.ql_write_page0_reg.exit15.i46.i_crit_edge: ; preds = %if.else3.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit15.i46.i

if.then.i14.i45.i:                                ; preds = %if.else3.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i13.i44.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %113, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i13.i44.i, i32 768) #13, !srcloc !326
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i13.i44.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %125 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit15.i46.i

ql_write_page0_reg.exit15.i46.i:                  ; preds = %if.then.i14.i45.i, %if.else3.i43.i.ql_write_page0_reg.exit15.i46.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %126 = tail call i32 @llvm.bswap.i32(i32 %..i30.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac0ConfigReg.i40.i, i32 %126) #13, !srcloc !326
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac0ConfigReg.i40.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %ql_mac_cfg_pause.exit.i

ql_mac_cfg_pause.exit.i:                          ; preds = %ql_write_page0_reg.exit15.i46.i, %ql_write_page0_reg.exit.i39.i
  tail call fastcc void @ql_mac_cfg_soft_reset(ptr noundef %add.ptr, i32 noundef 0) #13
  %128 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %msg_enable27, align 8
  %and15.i = and i32 %129, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %ql_mac_cfg_pause.exit.i.do.end20.i_crit_edge, label %if.then17.i

ql_mac_cfg_pause.exit.i.do.end20.i_crit_edge:     ; preds = %ql_mac_cfg_pause.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20.i

if.then17.i:                                      ; preds = %ql_mac_cfg_pause.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %ndev18.i = getelementptr i8, ptr %work, i32 -43840
  %130 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ndev18.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %131, ptr noundef nonnull @.str.126) #16
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %ql_mac_cfg_pause.exit.i.do.end20.i_crit_edge
  %132 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mem_map_registers.i, align 8
  %134 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool1.not.i49.i = icmp eq i32 %135, 0
  br i1 %tobool1.not.i49.i, label %if.else3.i58.i, label %if.then2.i53.i

if.then2.i53.i:                                   ; preds = %do.end20.i
  %mac1ConfigReg.i50.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %133, i32 0, i32 16
  %136 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.not.i.i52.i = icmp eq i32 %137, 0
  br i1 %cmp.not.i.i52.i, label %if.then2.i53.i.ql_write_page0_reg.exit.i56.i_crit_edge, label %if.then.i.i55.i

if.then2.i53.i.ql_write_page0_reg.exit.i56.i_crit_edge: ; preds = %if.then2.i53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit.i56.i

if.then.i.i55.i:                                  ; preds = %if.then2.i53.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i54.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %133, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i54.i, i32 768) #13, !srcloc !326
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i54.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %139 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit.i56.i

ql_write_page0_reg.exit.i56.i:                    ; preds = %if.then.i.i55.i, %if.then2.i53.i.ql_write_page0_reg.exit.i56.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac1ConfigReg.i50.i, i32 16777472) #13, !srcloc !326
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1ConfigReg.i50.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end21.i

if.else3.i58.i:                                   ; preds = %do.end20.i
  %mac0ConfigReg.i57.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %133, i32 0, i32 11
  %141 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.not.i2.i.i = icmp eq i32 %142, 0
  br i1 %cmp.not.i2.i.i, label %if.else3.i58.i.ql_write_page0_reg.exit6.i.i_crit_edge, label %if.then.i5.i.i

if.else3.i58.i.ql_write_page0_reg.exit6.i.i_crit_edge: ; preds = %if.else3.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit6.i.i

if.then.i5.i.i:                                   ; preds = %if.else3.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i4.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %133, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i4.i.i, i32 768) #13, !srcloc !326
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i4.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %144 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit6.i.i

ql_write_page0_reg.exit6.i.i:                     ; preds = %if.then.i5.i.i, %if.else3.i58.i.ql_write_page0_reg.exit6.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac0ConfigReg.i57.i, i32 16777472) #13, !srcloc !326
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac0ConfigReg.i57.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end21.i

if.end21.i:                                       ; preds = %ql_write_page0_reg.exit6.i.i, %ql_write_page0_reg.exit.i56.i, %if.then3.i.if.end21.i_crit_edge
  %146 = ptrtoint ptr %port_link_state to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 4, ptr %port_link_state, align 8
  %ndev22.i = getelementptr i8, ptr %work, i32 -43840
  %147 = ptrtoint ptr %ndev22.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ndev22.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 103
  %149 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %150, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #13
  %151 = ptrtoint ptr %ndev22.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ndev22.i, align 4
  tail call void @netif_carrier_on(ptr noundef %152) #13
  %153 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %msg_enable27, align 8
  %and26.i = and i32 %154, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end21.i.if.end52.i_crit_edge, label %if.then28.i

if.end21.i.if.end52.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %ndev22.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ndev22.i, align 4
  %call30.i = tail call fastcc i32 @ql_get_link_speed(ptr noundef %add.ptr) #13
  %call31.i = tail call fastcc i32 @ql_is_link_full_dup(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  %cond.i = select i1 %tobool32.not.i, ptr @.str.129, ptr @.str.128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %156, ptr noundef nonnull @.str.127, i32 noundef %call30.i, ptr noundef nonnull %cond.i) #16
  br label %if.end52.i

if.else.i:                                        ; preds = %ql_auto_neg_error.exit.i
  br i1 %tobool5.not.i, label %if.else.i.if.end52.i_crit_edge, label %do.body39.i

if.else.i.if.end52.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

do.body39.i:                                      ; preds = %if.else.i
  %157 = ptrtoint ptr %msg_enable27 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %msg_enable27, align 8
  %and41.i = and i32 %158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %do.body39.i.do.end46.i_crit_edge, label %if.then43.i

do.body39.i.do.end46.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.i

if.then43.i:                                      ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #15
  %ndev44.i = getelementptr i8, ptr %work, i32 -43840
  %159 = ptrtoint ptr %ndev44.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ndev44.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %160, ptr noundef nonnull @.str.130) #16
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then43.i, %do.body39.i.do.end46.i_crit_edge
  %161 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %162, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i.i, i32 32771) #13, !srcloc !326
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  %call47.i = tail call fastcc i32 @ql_port_start(ptr noundef %add.ptr) #13
  br label %if.end39

if.end52.i:                                       ; preds = %if.else.i.if.end52.i_crit_edge, %if.then28.i, %if.end21.i.if.end52.i_crit_edge
  %164 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i61.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %165, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i61.i, i32 32771) #13, !srcloc !326
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i61.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %if.end39

if.end39:                                         ; preds = %if.end52.i, %do.end46.i, %if.then37.if.end39_crit_edge, %ql_is_auto_neg_complete.exit.if.end39_crit_edge
  %167 = ptrtoint ptr %port_link_state to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port_link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %168)
  %cmp41 = icmp eq i32 %168, 4
  br i1 %cmp41, label %if.then43, label %if.end39.sw.epilog.sink.split_crit_edge

if.end39.sw.epilog.sink.split_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.then43:                                        ; preds = %if.end39
  %169 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mem_map_registers.i, align 8
  %171 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mac_index.i, align 4
  %173 = zext i32 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %172, label %if.then43.sw.epilog.sink.split_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.then43.sw.epilog.sink.split_crit_edge:         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb.i:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %ispControlStatus.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %170, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i, i32 524296) #13, !srcloc !326
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  br label %sw.epilog.sink.split

sw.bb1.i:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %ispControlStatus3.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %170, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus3.i, i32 1048592) #13, !srcloc !326
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus3.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  br label %sw.epilog.sink.split

sw.bb48:                                          ; preds = %if.end15
  br i1 %tobool.not.i, label %do.body52, label %sw.bb48.if.end62_crit_edge

sw.bb48.if.end62_crit_edge:                       ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

do.body52:                                        ; preds = %sw.bb48
  %msg_enable53 = getelementptr i8, ptr %work, i32 -43452
  %176 = ptrtoint ptr %msg_enable53 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %msg_enable53, align 8
  %and54 = and i32 %177, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body52.do.end60_crit_edge, label %if.then56

do.body52.do.end60_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60

if.then56:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %ndev57 = getelementptr i8, ptr %work, i32 -43840
  %178 = ptrtoint ptr %ndev57 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ndev57, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %179, ptr noundef nonnull @.str.121) #16
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body52.do.end60_crit_edge
  %180 = ptrtoint ptr %port_link_state to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %port_link_state, align 8
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %sw.bb48.if.end62_crit_edge
  %181 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mem_map_registers.i, align 8
  %183 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %184)
  %switch.selectcmp.i121 = icmp eq i32 %184, 1
  %switch.select.i122 = select i1 %switch.selectcmp.i121, i32 4096, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %switch.selectcmp4.i123 = icmp eq i32 %184, 0
  %switch.select5.i124 = select i1 %switch.selectcmp4.i123, i32 2048, i32 %switch.select.i122
  %ispControlStatus.i125 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %182, i32 0, i32 10
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i125) #13, !srcloc !327
  %186 = lshr i32 %185, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %and.i126 = and i32 %switch.select5.i124, %186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %cmp.i.not = icmp eq i32 %and.i126, 0
  br i1 %cmp.i.not, label %if.end62.cleanup_crit_edge, label %if.end62.sw.epilog.sink.split_crit_edge

if.end62.sw.epilog.sink.split_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end62.sw.epilog.sink.split_crit_edge, %sw.bb1.i, %sw.bb.i, %if.then43.sw.epilog.sink.split_crit_edge, %if.end39.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb1.i ], [ 4, %sw.bb.i ], [ 4, %if.then43.sw.epilog.sink.split_crit_edge ], [ 4, %if.end39.sw.epilog.sink.split_crit_edge ], [ 1, %if.end62.sw.epilog.sink.split_crit_edge ]
  %187 = ptrtoint ptr %port_link_state to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %.sink, ptr %port_link_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split, %if.end62.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then10, %do.body8.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  %adapter_timer69 = getelementptr i8, ptr %work, i32 -43600
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %188 = load volatile i32, ptr @jiffies, align 128
  %add70 = add i32 %188, 100
  %call71 = tail call i32 @mod_timer(ptr noundef %adapter_timer69, i32 noundef %add70) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql3xxx_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %workqueue = getelementptr i8, ptr %t, i32 43396
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 8
  %link_state_work = getelementptr i8, ptr %t, i32 43600
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %link_state_work, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql3xxx_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call fastcc i32 @ql_adapter_up(ptr noundef %add.ptr.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql3xxx_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not4 = icmp eq i32 %2, 0
  br i1 %tobool.not4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 50) #13
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 128
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call2 = tail call fastcc i32 @ql_adapter_down(ptr noundef %add.ptr.i, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql3xxx_send(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mem_map_registers = getelementptr i8, ptr %ndev, i32 2696
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %tx_count = getelementptr i8, ptr %ndev, i32 2752
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_count, i32 noundef 4) #13
  %4 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !343

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %req_producer_index = getelementptr i8, ptr %ndev, i32 2736
  %6 = ptrtoint ptr %req_producer_index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %req_producer_index, align 8
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr %struct.ql3_adapter, ptr %add.ptr.i, i32 0, i32 32, i32 %idxprom
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags, align 2
  %device_id.i = getelementptr i8, ptr %ndev, i32 46260
  %12 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12322, i32 %13)
  %cmp.i = icmp eq i32 %13, 12322
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp1.i = icmp ult i8 %11, 3
  br i1 %cmp1.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add nuw nsw i32 %conv.i, 1
  br label %if.end9

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp6.i = icmp ult i8 %11, 7
  br i1 %cmp6.i, label %if.then8.i, label %if.else11.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %add10.i = add nuw nsw i32 %conv.i, 2
  br label %if.end9

if.else11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp13.i = icmp ult i8 %11, 11
  br i1 %cmp13.i, label %if.then15.i, label %if.else18.i

if.then15.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #15
  %add17.i = add nuw nsw i32 %conv.i, 3
  br label %if.end9

if.else18.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %11)
  %cmp20.i = icmp ult i8 %11, 15
  br i1 %cmp20.i, label %if.then22.i, label %if.else25.i

if.then22.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #15
  %add24.i = add nuw nsw i32 %conv.i, 4
  br label %if.end9

if.else25.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %11)
  %cmp27.i = icmp ult i8 %11, 19
  %add31.i = add nuw nsw i32 %conv.i, 5
  br i1 %cmp27.i, label %if.else25.i.if.end9_crit_edge, label %if.then8

if.else25.i.if.end9_crit_edge:                    ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #15
  %seg_count = getelementptr %struct.ql3_adapter, ptr %add.ptr.i, i32 0, i32 32, i32 %idxprom, i32 2
  %14 = ptrtoint ptr %seg_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %seg_count, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.ql3xxx_send) #16
  br label %cleanup

if.end9:                                          ; preds = %if.else25.i.if.end9_crit_edge, %if.then22.i, %if.then15.i, %if.then8.i, %if.then3.i, %if.end.if.end9_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %if.end.if.end9_crit_edge ], [ %add24.i, %if.then22.i ], [ %add17.i, %if.then15.i ], [ %add10.i, %if.then8.i ], [ %add.i, %if.then3.i ], [ %add31.i, %if.else25.i.if.end9_crit_edge ]
  %seg_count104 = getelementptr %struct.ql3_adapter, ptr %add.ptr.i, i32 0, i32 32, i32 %idxprom, i32 2
  %15 = ptrtoint ptr %seg_count104 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.ph, ptr %seg_count104, align 4
  %queue_entry = getelementptr %struct.ql3_adapter, ptr %add.ptr.i, i32 0, i32 32, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %queue_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue_entry, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 64)
  %mac_ob_opcode = getelementptr i8, ptr %ndev, i32 45940
  %19 = ptrtoint ptr %mac_ob_opcode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mac_ob_opcode, align 4
  %conv10 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv10, ptr %17, align 1
  %flags = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %flags, align 1
  %mb_bit_mask = getelementptr i8, ptr %ndev, i32 45944
  %23 = ptrtoint ptr %mb_bit_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mb_bit_mask, align 8
  %25 = trunc i32 %24 to i8
  %conv13 = or i8 %25, 8
  store i8 %conv13, ptr %flags, align 1
  %26 = ptrtoint ptr %req_producer_index to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %req_producer_index, align 8
  %conv15 = zext i16 %27 to i32
  %transaction_id = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 4
  %28 = ptrtoint ptr %transaction_id to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %conv15, ptr %transaction_id, align 1
  %conv16 = trunc i32 %3 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %data_len = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 5
  %30 = ptrtoint ptr %data_len to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %data_len, align 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %skb, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12338, i32 %33)
  %cmp18 = icmp eq i32 %33, 12338
  br i1 %cmp18, label %land.lhs.true, label %if.end9.if.end24_crit_edge

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end9
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %34 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load = load i16, ptr %ip_summed, align 8
  %35 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %35)
  %cmp21 = icmp eq i16 %35, 1536
  br i1 %cmp21, label %if.then23, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %39 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i95 = trunc i32 %sub.ptr.sub.i.i to i8
  %ip_hdr_off.i = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 6
  %42 = ptrtoint ptr %ip_hdr_off.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i95, ptr %ip_hdr_off.i, align 1
  %43 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %ip_hdr_len.i = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 7
  %44 = ptrtoint ptr %ip_hdr_len.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %bf.clear.i, ptr %ip_hdr_len.i, align 1
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %46)
  %cmp.i96 = icmp eq i8 %46, 6
  %flags1.i = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 2
  %47 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags1.i, align 1
  %..i = select i1 %cmp.i96, i8 6, i8 5
  %49 = or i8 %..i, %48
  store i8 %49, ptr %flags1.i, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %52 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %51, %53
  %54 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nr_frags.i, align 2
  %conv.i97 = zext i8 %57 to i32
  %seg_count.i = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 2
  %58 = ptrtoint ptr %seg_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %seg_count.i, align 4
  %pdev.i = getelementptr i8, ptr %ndev, i32 2312
  %60 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %call.i.i98 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %63) #13
  br i1 %call.i.i98, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end24
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !344

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #13
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %67, %if.end.i.i.i ], [ %65, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %63, i32 noundef %sub.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %63 to i32
  %sub.i287.i = add i32 %69, 1073741824
  %shr.i.i = lshr i32 %sub.i287.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %68, i32 %shr.i.i
  %and.i.i = and i32 %69, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %70 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev4.i, i32 noundef %retval.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i100

if.then.i:                                        ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %ndev.i = getelementptr i8, ptr %ndev, i32 2316
  %72 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.65, i32 noundef -12) #16
  br label %if.then28

if.end.i100:                                      ; preds = %dma_map_single_attrs.exit.i
  %buf_addr0_low.i = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 10
  %74 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #13
  %75 = ptrtoint ptr %buf_addr0_low.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %buf_addr0_low.i, align 4
  %dma_hi.i = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 11
  %76 = ptrtoint ptr %dma_hi.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %dma_hi.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #13
  %len12.i = getelementptr inbounds %struct.ob_mac_iocb_req, ptr %17, i32 0, i32 12
  %78 = ptrtoint ptr %len12.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %len12.i, align 4
  %map13.i = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4
  %79 = ptrtoint ptr %map13.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i.i, ptr %map13.i, align 4
  %maplen.i = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 0, i32 1
  %80 = ptrtoint ptr %maplen.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub.i.i, ptr %maplen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i99 = icmp eq i32 %59, 1
  br i1 %cmp.i99, label %if.end.i100.do.body_crit_edge, label %if.end19.i

if.end.i100.do.body_crit_edge:                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end19.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp21327.not.i = icmp eq i8 %57, 0
  br i1 %cmp21327.not.i, label %if.end19.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %oal20.i = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 3
  %81 = ptrtoint ptr %oal20.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %oal20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp27.i101 = icmp sgt i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %59)
  %cmp32.i = icmp sgt i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %59)
  %cmp38.i = icmp sgt i32 %59, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %59)
  %cmp44.i = icmp slt i32 %59, 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %seg.0332.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc108.i, %for.inc.i.for.body.i_crit_edge ]
  %completed_segs.0331.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc107.i, %for.inc.i.for.body.i_crit_edge ]
  %oal_entry.0330.i = phi ptr [ %buf_addr0_low.i, %for.body.lr.ph.i ], [ %oal_entry.1.i, %for.inc.i.for.body.i_crit_edge ]
  %oal.0328.i = phi ptr [ %82, %for.body.lr.ph.i ], [ %oal.1.i, %for.inc.i.for.body.i_crit_edge ]
  %83 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i, align 4
  %arrayidx24.i = getelementptr %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 %completed_segs.0331.i
  %incdec.ptr.i = getelementptr %struct.oal_entry, ptr %oal_entry.0330.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %seg.0332.i)
  %cmp25.i = icmp eq i32 %seg.0332.i, 2
  %or.cond.i = select i1 %cmp25.i, i1 %cmp27.i101, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %seg.0332.i)
  %cmp29.i = icmp eq i32 %seg.0332.i, 7
  %or.cond282.i = select i1 %cmp29.i, i1 %cmp32.i, i1 false
  %or.cond338.i = select i1 %or.cond.i, i1 true, i1 %or.cond282.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %seg.0332.i)
  %cmp35.i = icmp eq i32 %seg.0332.i, 12
  %or.cond283.i = select i1 %cmp35.i, i1 %cmp38.i, i1 false
  %or.cond339.i = select i1 %or.cond338.i, i1 true, i1 %or.cond283.i
  %or.cond339.not.i = xor i1 %or.cond339.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %seg.0332.i)
  %cmp41.i = icmp ne i32 %seg.0332.i, 17
  %brmerge.i = select i1 %cmp41.i, i1 true, i1 %cmp44.i
  %or.cond352.i = select i1 %or.cond339.not.i, i1 %brmerge.i, i1 false
  br i1 %or.cond352.i, label %for.body.i.if.end76.i_crit_edge, label %if.then46.i

for.body.i.if.end76.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

if.then46.i:                                      ; preds = %for.body.i
  %85 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i, align 8
  %dev48.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %call.i289.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %oal.0328.i) #13
  br i1 %call.i289.i, label %land.rhs.i291.i, label %if.end39.i304.i

land.rhs.i291.i:                                  ; preds = %if.then46.i
  %.b1.i290.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i290.i, label %land.rhs.i291.i.dma_map_single_attrs.exit306.i_crit_edge, label %if.then.i295.i, !prof !344

land.rhs.i291.i.dma_map_single_attrs.exit306.i_crit_edge: ; preds = %land.rhs.i291.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit306.i

if.then.i295.i:                                   ; preds = %land.rhs.i291.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i292.i = tail call ptr @dev_driver_string(ptr noundef %dev48.i) #13
  %init_name.i.i293.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44, i32 3
  %87 = ptrtoint ptr %init_name.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i293.i, align 8
  %tobool.not.i.i294.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i294.i, label %if.end.i.i296.i, label %if.then.i295.i.dev_name.exit.i298.i_crit_edge

if.then.i295.i.dev_name.exit.i298.i_crit_edge:    ; preds = %if.then.i295.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i298.i

if.end.i.i296.i:                                  ; preds = %if.then.i295.i
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev48.i, align 4
  br label %dev_name.exit.i298.i

dev_name.exit.i298.i:                             ; preds = %if.end.i.i296.i, %if.then.i295.i.dev_name.exit.i298.i_crit_edge
  %retval.0.i.i297.i = phi ptr [ %90, %if.end.i.i296.i ], [ %88, %if.then.i295.i.dev_name.exit.i298.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i292.i, ptr noundef %retval.0.i.i297.i) #13
  br label %dma_map_single_attrs.exit306.i

if.end39.i304.i:                                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev48.i, ptr noundef %oal.0328.i, i32 noundef 60) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %91 = load ptr, ptr @mem_map, align 4
  %92 = ptrtoint ptr %oal.0328.i to i32
  %sub.i299.i = add i32 %92, 1073741824
  %shr.i300.i = lshr i32 %sub.i299.i, 12
  %add.ptr.i301.i = getelementptr %struct.page, ptr %91, i32 %shr.i300.i
  %and.i302.i = and i32 %92, 4095
  %call41.i303.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev48.i, ptr noundef %add.ptr.i301.i, i32 noundef %and.i302.i, i32 noundef 60, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit306.i

dma_map_single_attrs.exit306.i:                   ; preds = %if.end39.i304.i, %dev_name.exit.i298.i, %land.rhs.i291.i.dma_map_single_attrs.exit306.i_crit_edge
  %retval.0.i305.i = phi i32 [ %call41.i303.i, %if.end39.i304.i ], [ -1, %dev_name.exit.i298.i ], [ -1, %land.rhs.i291.i.dma_map_single_attrs.exit306.i_crit_edge ]
  %93 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i, align 8
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev51.i, i32 noundef %retval.0.i305.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i305.i)
  %cmp.i307.i = icmp eq i32 %retval.0.i305.i, -1
  br i1 %cmp.i307.i, label %dma_map_single_attrs.exit306.i.map_error.i_crit_edge, label %if.end56.i

dma_map_single_attrs.exit306.i.map_error.i_crit_edge: ; preds = %dma_map_single_attrs.exit306.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_error.i

if.end56.i:                                       ; preds = %dma_map_single_attrs.exit306.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i305.i) #13
  %96 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %incdec.ptr.i, align 4
  %dma_hi66.i = getelementptr %struct.oal_entry, ptr %oal_entry.0330.i, i32 1, i32 1
  %97 = ptrtoint ptr %dma_hi66.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %dma_hi66.i, align 4
  %len67.i = getelementptr %struct.oal_entry, ptr %oal_entry.0330.i, i32 1, i32 2
  %98 = ptrtoint ptr %len67.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1006633024, ptr %len67.i, align 4
  %arrayidx69.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.0332.i
  %99 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %retval.0.i305.i, ptr %arrayidx69.i, align 4
  %maplen73.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.0332.i, i32 1
  %100 = ptrtoint ptr %maplen73.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 60, ptr %maplen73.i, align 4
  %incdec.ptr74.i = getelementptr %struct.oal, ptr %oal.0328.i, i32 1
  %inc75.i = add nuw nsw i32 %seg.0332.i, 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end56.i, %for.body.i.if.end76.i_crit_edge
  %oal.1.i = phi ptr [ %incdec.ptr74.i, %if.end56.i ], [ %oal.0328.i, %for.body.i.if.end76.i_crit_edge ]
  %oal_entry.1.i = phi ptr [ %oal.0328.i, %if.end56.i ], [ %incdec.ptr.i, %for.body.i.if.end76.i_crit_edge ]
  %seg.1.i = phi i32 [ %inc75.i, %if.end56.i ], [ %seg.0332.i, %for.body.i.if.end76.i_crit_edge ]
  %101 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i, align 8
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 %completed_segs.0331.i, i32 1
  %103 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bv_len.i.i, align 4
  %105 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx24.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %84, i32 0, i32 12, i32 %completed_segs.0331.i, i32 2
  %107 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev78.i, ptr noundef %106, i32 noundef %108, i32 noundef %104, i32 noundef 1, i32 noundef 0) #13
  %109 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdev.i, align 8
  %dev82.i = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev82.i, i32 noundef %call2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i309.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i309.i, label %if.end76.i.map_error.i_crit_edge, label %for.inc.i

if.end76.i.map_error.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_error.i

for.inc.i:                                        ; preds = %if.end76.i
  %111 = tail call i32 @llvm.bswap.i32(i32 %call2.i.i) #13
  %112 = ptrtoint ptr %oal_entry.1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %oal_entry.1.i, align 4
  %dma_hi97.i = getelementptr inbounds %struct.oal_entry, ptr %oal_entry.1.i, i32 0, i32 1
  %113 = ptrtoint ptr %dma_hi97.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %dma_hi97.i, align 4
  %114 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bv_len.i.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #13
  %len99.i = getelementptr inbounds %struct.oal_entry, ptr %oal_entry.1.i, i32 0, i32 2
  %117 = ptrtoint ptr %len99.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %len99.i, align 4
  %arrayidx101.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.1.i
  %118 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call2.i.i, ptr %arrayidx101.i, align 4
  %119 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bv_len.i.i, align 4
  %maplen106.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.1.i, i32 1
  %121 = ptrtoint ptr %maplen106.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %maplen106.i, align 4
  %inc107.i = add nuw nsw i32 %completed_segs.0331.i, 1
  %inc108.i = add i32 %seg.1.i, 1
  %exitcond.not.i = icmp eq i32 %inc107.i, %conv.i97
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end19.i.for.end.i_crit_edge
  %oal_entry.0.lcssa.i = phi ptr [ %buf_addr0_low.i, %if.end19.i.for.end.i_crit_edge ], [ %oal_entry.1.i, %for.inc.i.for.end.i_crit_edge ]
  %len109.i = getelementptr inbounds %struct.oal_entry, ptr %oal_entry.0.lcssa.i, i32 0, i32 2
  br label %do.body

map_error.i:                                      ; preds = %if.end76.i.map_error.i_crit_edge, %dma_map_single_attrs.exit306.i.map_error.i_crit_edge
  %.str.97.sink.i = phi ptr [ @.str.97, %dma_map_single_attrs.exit306.i.map_error.i_crit_edge ], [ @.str.98, %if.end76.i.map_error.i_crit_edge ]
  %ndev55.i = getelementptr i8, ptr %ndev, i32 2316
  %122 = ptrtoint ptr %ndev55.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ndev55.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %123, ptr noundef nonnull %.str.97.sink.i, i32 noundef -12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %completed_segs.0331.i)
  %cmp114333.not.i = icmp eq i32 %completed_segs.0331.i, 0
  br i1 %cmp114333.not.i, label %map_error.i.for.end164.i_crit_edge, label %map_error.i.for.body116.i_crit_edge

map_error.i.for.body116.i_crit_edge:              ; preds = %map_error.i
  br label %for.body116.i

map_error.i.for.end164.i_crit_edge:               ; preds = %map_error.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end164.i

for.body116.i:                                    ; preds = %if.end152.i.for.body116.i_crit_edge, %map_error.i.for.body116.i_crit_edge
  %seg.3337.i = phi i32 [ %inc163.i, %if.end152.i.for.body116.i_crit_edge ], [ 1, %map_error.i.for.body116.i_crit_edge ]
  %i.0336.i = phi i32 [ %inc162.i, %if.end152.i.for.body116.i_crit_edge ], [ 0, %map_error.i.for.body116.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %seg.3337.i)
  %cmp118.i = icmp eq i32 %seg.3337.i, 2
  %or.cond284.i = select i1 %cmp118.i, i1 %cmp27.i101, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %seg.3337.i)
  %cmp124.i = icmp eq i32 %seg.3337.i, 7
  %or.cond285.i = select i1 %cmp124.i, i1 %cmp32.i, i1 false
  %or.cond340.i = select i1 %or.cond284.i, i1 true, i1 %or.cond285.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %seg.3337.i)
  %cmp130.i = icmp eq i32 %seg.3337.i, 12
  %or.cond286.i = select i1 %cmp130.i, i1 %cmp38.i, i1 false
  %or.cond341.i = select i1 %or.cond340.i, i1 true, i1 %or.cond286.i
  %or.cond341.not.i = xor i1 %or.cond341.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %seg.3337.i)
  %cmp136.i = icmp ne i32 %seg.3337.i, 17
  %brmerge342.i = select i1 %cmp136.i, i1 true, i1 %cmp44.i
  %or.cond353.i = select i1 %or.cond341.not.i, i1 %brmerge342.i, i1 false
  br i1 %or.cond353.i, label %for.body116.i.if.end152.i_crit_edge, label %if.then141.i

for.body116.i.if.end152.i_crit_edge:              ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

if.then141.i:                                     ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev.i, align 8
  %dev143.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %arrayidx145.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.3337.i
  %126 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx145.i, align 4
  %maplen149.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.3337.i, i32 1
  %128 = ptrtoint ptr %maplen149.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %maplen149.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev143.i, i32 noundef %127, i32 noundef %129, i32 noundef 1, i32 noundef 0) #13
  %inc151.i = add nuw nsw i32 %seg.3337.i, 1
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then141.i, %for.body116.i.if.end152.i_crit_edge
  %seg.4.i = phi i32 [ %inc151.i, %if.then141.i ], [ %seg.3337.i, %for.body116.i.if.end152.i_crit_edge ]
  %130 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev.i, align 8
  %dev154.i = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  %arrayidx156.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.4.i
  %132 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx156.i, align 4
  %maplen160.i = getelementptr %struct.ql_tx_buf_cb, ptr %arrayidx, i32 0, i32 4, i32 %seg.4.i, i32 1
  %134 = ptrtoint ptr %maplen160.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %maplen160.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev154.i, i32 noundef %133, i32 noundef %135, i32 noundef 1, i32 noundef 0) #13
  %inc162.i = add nuw nsw i32 %i.0336.i, 1
  %inc163.i = add i32 %seg.4.i, 1
  %exitcond347.not.i = icmp eq i32 %inc162.i, %completed_segs.0331.i
  br i1 %exitcond347.not.i, label %if.end152.i.for.end164.i_crit_edge, label %if.end152.i.for.body116.i_crit_edge

if.end152.i.for.body116.i_crit_edge:              ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body116.i

if.end152.i.for.end164.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end164.i

for.end164.i:                                     ; preds = %if.end152.i.for.end164.i_crit_edge, %map_error.i.for.end164.i_crit_edge
  %136 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdev.i, align 8
  %dev166.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  %138 = ptrtoint ptr %map13.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %map13.i, align 4
  %140 = ptrtoint ptr %maplen.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %maplen.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev166.i, i32 noundef %139, i32 noundef %141, i32 noundef 1, i32 noundef 0) #13
  br label %if.then28

if.then28:                                        ; preds = %for.end164.i, %if.then.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.ql3xxx_send) #16
  br label %cleanup

do.body:                                          ; preds = %for.end.i, %if.end.i100.do.body_crit_edge
  %len12.i.sink111 = phi ptr [ %len109.i, %for.end.i ], [ %len12.i, %if.end.i100.do.body_crit_edge ]
  %142 = ptrtoint ptr %len12.i.sink111 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len12.i.sink111, align 4
  %or.i = or i32 %143, 128
  store i32 %or.i, ptr %len12.i.sink111, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !354
  tail call void @arm_heavy_mb() #13
  %144 = ptrtoint ptr %req_producer_index to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %req_producer_index, align 8
  %inc = add i16 %145, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %inc)
  %cmp33 = icmp eq i16 %inc, 256
  %spec.select = select i1 %cmp33, i16 0, i16 %inc
  %146 = ptrtoint ptr %req_producer_index to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %spec.select, ptr %req_producer_index, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !355
  tail call void @arm_heavy_mb() #13
  %reqQProducerIndex = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 14
  %147 = ptrtoint ptr %req_producer_index to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %req_producer_index, align 8
  %conv42 = zext i16 %148 to i32
  %hw_lock.i = getelementptr i8, ptr %ndev, i32 2648
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  %149 = tail call i32 @llvm.bswap.i32(i32 %conv42) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqQProducerIndex, i32 %149) #13, !srcloc !326
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reqQProducerIndex) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i) #13
  %msg_enable = getelementptr i8, ptr %ndev, i32 2704
  %151 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %msg_enable, align 8
  %and = and i32 %152, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %do.body.do.end51_crit_edge, label %if.then45

do.body.do.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %153 = ptrtoint ptr %req_producer_index to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %req_producer_index, align 8
  %conv47 = zext i16 %154 to i32
  %155 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %ndev, ptr noundef nonnull @.str.96, i32 noundef %conv47, i32 noundef %156) #16
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %do.body.do.end51_crit_edge
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %tx_count, i32 1, i32 3, i32 1) #13
  %157 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_count, ptr %tx_count, i32 1, ptr elementtype(i32) %tx_count) #13, !srcloc !356
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.then28, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 16, %if.then28 ], [ 0, %do.end51 ], [ 16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql3xxx_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr i8, ptr %ndev, i32 2696
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sa_data, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #13
  %hw_lock = getelementptr i8, ptr %ndev, i32 2648
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %macAddrIndirectPtrReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 5
  %current_page.i = getelementptr i8, ptr %ndev, i32 2700
  %9 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end4.ql_write_page0_reg.exit_crit_edge, label %if.then.i

if.end4.ql_write_page0_reg.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %12, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %14 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i, %if.end4.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrIndirectPtrReg, i32 768) #13, !srcloc !326
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrIndirectPtrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %macAddrDataReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %19 to i32
  %shl = shl nuw i32 %conv12, 24
  %arrayidx14 = getelementptr i8, ptr %17, i32 3
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %or = or i32 %shl16, %shl
  %arrayidx18 = getelementptr i8, ptr %17, i32 4
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %23 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %or21 = or i32 %or, %shl20
  %arrayidx23 = getelementptr i8, ptr %17, i32 5
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %25 to i32
  %or25 = or i32 %or21, %conv24
  %26 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i59 = icmp eq i32 %27, 0
  br i1 %cmp.not.i59, label %ql_write_page0_reg.exit.ql_write_page0_reg.exit63_crit_edge, label %if.then.i62

ql_write_page0_reg.exit.ql_write_page0_reg.exit63_crit_edge: ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit63

if.then.i62:                                      ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i61 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %29, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i61, i32 768) #13, !srcloc !326
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i61) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %31 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit63

ql_write_page0_reg.exit63:                        ; preds = %if.then.i62, %ql_write_page0_reg.exit.ql_write_page0_reg.exit63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %32 = tail call i32 @llvm.bswap.i32(i32 %or25) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrDataReg, i32 %32) #13, !srcloc !326
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrDataReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %34 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i65 = icmp eq i32 %35, 0
  br i1 %cmp.not.i65, label %ql_write_page0_reg.exit63.ql_write_page0_reg.exit69_crit_edge, label %if.then.i68

ql_write_page0_reg.exit63.ql_write_page0_reg.exit69_crit_edge: ; preds = %ql_write_page0_reg.exit63
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit69

if.then.i68:                                      ; preds = %ql_write_page0_reg.exit63
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i67 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %37, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i67, i32 768) #13, !srcloc !326
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i67) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %39 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit69

ql_write_page0_reg.exit69:                        ; preds = %if.then.i68, %ql_write_page0_reg.exit63.ql_write_page0_reg.exit69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrIndirectPtrReg, i32 16777984) #13, !srcloc !326
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrIndirectPtrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %41 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr, align 64
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv30 = zext i8 %44 to i32
  %shl31 = shl nuw nsw i32 %conv30, 8
  %arrayidx33 = getelementptr i8, ptr %42, i32 1
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %46 to i32
  %or35 = or i32 %shl31, %conv34
  %47 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i71 = icmp eq i32 %48, 0
  br i1 %cmp.not.i71, label %ql_write_page0_reg.exit69.ql_write_page0_reg.exit75_crit_edge, label %if.then.i74

ql_write_page0_reg.exit69.ql_write_page0_reg.exit75_crit_edge: ; preds = %ql_write_page0_reg.exit69
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit75

if.then.i74:                                      ; preds = %ql_write_page0_reg.exit69
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i73 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %50, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i73, i32 768) #13, !srcloc !326
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i73) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %52 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit75

ql_write_page0_reg.exit75:                        ; preds = %if.then.i74, %ql_write_page0_reg.exit69.ql_write_page0_reg.exit75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %53 = tail call i32 @llvm.bswap.i32(i32 %or35) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrDataReg, i32 %53) #13, !srcloc !326
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrDataReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call9) #13
  br label %cleanup

cleanup:                                          ; preds = %ql_write_page0_reg.exit75, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ql_write_page0_reg.exit75 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql3xxx_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.99) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %workqueue = getelementptr i8, ptr %ndev, i32 45952
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 8
  %tx_timeout_work = getelementptr i8, ptr %ndev, i32 46056
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %tx_timeout_work, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_adapter_up(ptr noundef %qdev) unnamed_addr #2 align 64 {
entry:
  %reg.i.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %3, label %if.else7.i [
    i32 1500, label %entry.if.end11.i_crit_edge
    i32 9000, label %if.then4.i
  ]

entry.if.end11.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.else7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %3, i32 noundef 1500, i32 noundef 9000) #16
  br label %if.then

if.end11.i:                                       ; preds = %if.then4.i, %entry.if.end11.i_crit_edge
  %.sink198.i = phi i32 [ 32, %if.then4.i ], [ 128, %entry.if.end11.i_crit_edge ]
  %num_lbufq_entries5.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 53
  %5 = ptrtoint ptr %num_lbufq_entries5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink198.i, ptr %num_lbufq_entries5.i, align 8
  %lrg_buffer_len6.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 58
  %mul.i = shl nuw nsw i32 %.sink198.i, 3
  %num_large_buffers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 52
  %6 = ptrtoint ptr %num_large_buffers.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul.i, ptr %num_large_buffers.i, align 4
  %add.i = add nuw nsw i32 %3, 52
  %7 = ptrtoint ptr %lrg_buffer_len6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %lrg_buffer_len6.i, align 4
  %add15.i = add nuw nsw i32 %3, 24
  %max_frame_size.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 86
  %8 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add15.i, ptr %max_frame_size.i, align 8
  %pdev.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 2
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %shadow_reg_phy_addr.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 21
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef %shadow_reg_phy_addr.i, i32 noundef 3264, i32 noundef 0) #13
  %shadow_reg_virt_addr.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 20
  %11 = ptrtoint ptr %shadow_reg_virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %shadow_reg_virt_addr.i, align 8
  %cmp17.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp17.not.i, label %if.else31.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end11.i
  %preq_consumer_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 28
  %12 = ptrtoint ptr %preq_consumer_index.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %preq_consumer_index.i, align 4
  %req_consumer_index_phy_addr_high.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 29
  %13 = ptrtoint ptr %req_consumer_index_phy_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %req_consumer_index_phy_addr_high.i, align 8
  %14 = ptrtoint ptr %shadow_reg_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shadow_reg_phy_addr.i, align 4
  %req_consumer_index_phy_addr_low.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 30
  %16 = ptrtoint ptr %req_consumer_index_phy_addr_low.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %req_consumer_index_phy_addr_low.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 8
  %prsp_producer_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 40
  %17 = ptrtoint ptr %prsp_producer_index.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %prsp_producer_index.i, align 4
  %rsp_producer_index_phy_addr_high.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 41
  %18 = ptrtoint ptr %rsp_producer_index_phy_addr_high.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rsp_producer_index_phy_addr_high.i, align 8
  %add30.i = add i32 %15, 8
  %rsp_producer_index_phy_addr_low.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 42
  %19 = ptrtoint ptr %rsp_producer_index_phy_addr_low.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add30.i, ptr %rsp_producer_index_phy_addr_low.i, align 4
  %req_q_size.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 22
  %20 = ptrtoint ptr %req_q_size.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %req_q_size.i.i, align 8
  %rsp_q_size.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 33
  %21 = ptrtoint ptr %rsp_q_size.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %rsp_q_size.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !357
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %req_q_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_q_size.i.i, align 8
  %req_q_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 25
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %25, ptr noundef %req_q_phy_addr.i.i, i32 noundef 3264, i32 noundef 0) #13
  %req_q_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 24
  %26 = ptrtoint ptr %req_q_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %req_q_virt_addr.i.i, align 8
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i, label %if.then18.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.then18.i.if.then.i.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then18.i
  %27 = ptrtoint ptr %req_q_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %req_q_phy_addr.i.i, align 4
  %29 = ptrtoint ptr %req_q_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req_q_size.i.i, align 8
  %sub.i.i = add i32 %30, -1
  %and6.i.i = and i32 %sub.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then18.i.if.then.i.i_crit_edge
  %31 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.59) #16
  br label %if.then37.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 8
  %dev8.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %rsp_q_size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rsp_q_size.i.i, align 4
  %rsp_q_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 36
  %call.i53.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev8.i.i, i32 noundef %36, ptr noundef %rsp_q_phy_addr.i.i, i32 noundef 3264, i32 noundef 0) #13
  %rsp_q_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 35
  %37 = ptrtoint ptr %rsp_q_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i53.i.i, ptr %rsp_q_virt_addr.i.i, align 4
  %cmp12.i.i = icmp eq ptr %call.i53.i.i, null
  br i1 %cmp12.i.i, label %if.end.i.i.if.then23.i.i_crit_edge, label %lor.lhs.false14.i.i

if.end.i.i.if.then23.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23.i.i

lor.lhs.false14.i.i:                              ; preds = %if.end.i.i
  %38 = ptrtoint ptr %rsp_q_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rsp_q_phy_addr.i.i, align 8
  %40 = ptrtoint ptr %rsp_q_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rsp_q_size.i.i, align 4
  %sub20.i.i = add i32 %41, -1
  %and21.i.i = and i32 %sub20.i.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end39.i, label %lor.lhs.false14.i.i.if.then23.i.i_crit_edge

lor.lhs.false14.i.i.if.then23.i.i_crit_edge:      ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23.i.i

if.then23.i.i:                                    ; preds = %lor.lhs.false14.i.i.if.then23.i.i_crit_edge, %if.end.i.i.if.then23.i.i_crit_edge
  %42 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.60) #16
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %req_q_size.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %req_q_size.i.i, align 8
  %48 = ptrtoint ptr %req_q_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %req_q_virt_addr.i.i, align 8
  %50 = ptrtoint ptr %req_q_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %req_q_phy_addr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev26.i.i, i32 noundef %47, ptr noundef %49, i32 noundef %51, i32 noundef 0) #13
  br label %if.then37.i

if.else31.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %53, ptr noundef nonnull @.str.54) #16
  br label %if.then

if.then37.i:                                      ; preds = %if.then23.i.i, %if.then.i.i
  %54 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.55) #16
  br label %err_req_rsp.i

if.end39.i:                                       ; preds = %lor.lhs.false14.i.i
  %flags.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i.i) #13
  %56 = ptrtoint ptr %num_lbufq_entries5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_lbufq_entries5.i, align 8
  %mul.i.i = shl i32 %57, 6
  %lrg_buf_q_size.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 44
  %58 = ptrtoint ptr %lrg_buf_q_size.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul.i.i, ptr %lrg_buf_q_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul.i.i)
  %cmp.i112.i = icmp ult i32 %mul.i.i, 4096
  %mul3.i.i = shl i32 %57, 7
  %spec.select.i.i = select i1 %cmp.i112.i, i32 4096, i32 %mul3.i.i
  %59 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 43
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select.i.i, ptr %59, align 8
  %61 = ptrtoint ptr %num_large_buffers.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_large_buffers.i, align 4
  %63 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %62, i32 28) #13
  %64 = extractvalue { i32, i1 } %63, 1
  br i1 %64, label %kmalloc_array.exit.thread.i.i, label %if.end7.i.i.i, !prof !343

kmalloc_array.exit.thread.i.i:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %lrg_buf81.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 54
  %65 = ptrtoint ptr %lrg_buf81.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %lrg_buf81.i.i, align 4
  br label %if.then43.i

if.end7.i.i.i:                                    ; preds = %if.end39.i
  %66 = extractvalue { i32, i1 } %63, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %66, i32 noundef 3264) #17
  %lrg_buf.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 54
  %67 = ptrtoint ptr %lrg_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call8.i.i.i, ptr %lrg_buf.i.i, align 4
  %cmp6.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp6.i.i, label %if.end7.i.i.i.if.then43.i_crit_edge, label %if.end8.i.i

if.end7.i.i.i.if.then43.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43.i

if.end8.i.i:                                      ; preds = %if.end7.i.i.i
  %68 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i, align 8
  %dev.i114.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %59, align 8
  %lrg_buf_q_alloc_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 47
  %call.i.i115.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i114.i, i32 noundef %71, ptr noundef %lrg_buf_q_alloc_phy_addr.i.i, i32 noundef 3264, i32 noundef 0) #13
  %lrg_buf_q_alloc_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 45
  %72 = ptrtoint ptr %lrg_buf_q_alloc_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i115.i, ptr %lrg_buf_q_alloc_virt_addr.i.i, align 8
  %cmp12.i116.i = icmp eq ptr %call.i.i115.i, null
  br i1 %cmp12.i116.i, label %if.then13.i.i, label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.61) #16
  br label %if.then43.i

if.end14.i.i:                                     ; preds = %if.end8.i.i
  %lrg_buf_q_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 46
  %75 = ptrtoint ptr %lrg_buf_q_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i.i115.i, ptr %lrg_buf_q_virt_addr.i.i, align 4
  %76 = ptrtoint ptr %lrg_buf_q_alloc_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lrg_buf_q_alloc_phy_addr.i.i, align 8
  %lrg_buf_q_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 48
  %78 = ptrtoint ptr %lrg_buf_q_phy_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %lrg_buf_q_phy_addr.i.i, align 4
  %small_buf_q_size.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 62
  %79 = ptrtoint ptr %small_buf_q_size.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4096, ptr %small_buf_q_size.i.i, align 4
  %small_buf_q_alloc_size23.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 61
  %80 = ptrtoint ptr %small_buf_q_alloc_size23.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8192, ptr %small_buf_q_alloc_size23.i.i, align 8
  %81 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev.i, align 8
  %dev26.i118.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %small_buf_q_alloc_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 66
  %call.i79.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev26.i118.i, i32 noundef 8192, ptr noundef %small_buf_q_alloc_phy_addr.i.i, i32 noundef 3264, i32 noundef 0) #13
  %small_buf_q_alloc_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 64
  %83 = ptrtoint ptr %small_buf_q_alloc_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i79.i.i, ptr %small_buf_q_alloc_virt_addr.i.i, align 4
  %cmp30.i.i = icmp eq ptr %call.i79.i.i, null
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end45.i

if.then31.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.62) #16
  %86 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev.i, align 8
  %dev34.i.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %59, align 8
  %90 = ptrtoint ptr %lrg_buf_q_alloc_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lrg_buf_q_alloc_virt_addr.i.i, align 8
  %92 = ptrtoint ptr %lrg_buf_q_alloc_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lrg_buf_q_alloc_phy_addr.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev34.i.i, i32 noundef %89, ptr noundef %91, i32 noundef %93, i32 noundef 0) #13
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.then31.i.i, %if.then13.i.i, %if.end7.i.i.i.if.then43.i_crit_edge, %kmalloc_array.exit.thread.i.i
  %94 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.56) #16
  br label %err_buffer_queues.i

if.end45.i:                                       ; preds = %if.end14.i.i
  %small_buf_q_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 65
  %96 = ptrtoint ptr %small_buf_q_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i79.i.i, ptr %small_buf_q_virt_addr.i.i, align 8
  %97 = ptrtoint ptr %small_buf_q_alloc_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %small_buf_q_alloc_phy_addr.i.i, align 4
  %small_buf_q_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 67
  %99 = ptrtoint ptr %small_buf_q_phy_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %small_buf_q_phy_addr.i.i, align 8
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags.i.i) #13
  %small_buf_total_size.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 74
  %100 = ptrtoint ptr %small_buf_total_size.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 16384, ptr %small_buf_total_size.i.i, align 4
  %101 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i, align 8
  %dev.i122.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %small_buf_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 70
  %call.i.i123.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i122.i, i32 noundef 16384, ptr noundef %small_buf_phy_addr.i.i, i32 noundef 3264, i32 noundef 0) #13
  %small_buf_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 69
  %103 = ptrtoint ptr %small_buf_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i.i123.i, ptr %small_buf_virt_addr.i.i, align 8
  %cmp.i124.i = icmp eq ptr %call.i.i123.i, null
  br i1 %cmp.i124.i, label %if.then49.i, label %if.end.i128.i

if.end.i128.i:                                    ; preds = %if.end45.i
  %104 = ptrtoint ptr %small_buf_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %small_buf_phy_addr.i.i, align 4
  %small_buf_phy_addr_low.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 71
  %106 = ptrtoint ptr %small_buf_phy_addr_low.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %small_buf_phy_addr_low.i.i, align 8
  %small_buf_phy_addr_high.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 72
  %107 = ptrtoint ptr %small_buf_phy_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %small_buf_phy_addr_high.i.i, align 4
  %108 = ptrtoint ptr %small_buf_q_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %small_buf_q_virt_addr.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i128.i
  %small_buf_q_entry.035.i.i = phi ptr [ %109, %if.end.i128.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.034.i.i = phi i32 [ 0, %if.end.i128.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %110 = ptrtoint ptr %small_buf_phy_addr_high.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %small_buf_phy_addr_high.i.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #13
  %addr_high.i.i = getelementptr inbounds %struct.bufq_addr_element, ptr %small_buf_q_entry.035.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %addr_high.i.i, align 4
  %114 = ptrtoint ptr %small_buf_phy_addr_low.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %small_buf_phy_addr_low.i.i, align 8
  %mul.i129.i = shl nuw nsw i32 %i.034.i.i, 5
  %add.i.i = add i32 %115, %mul.i129.i
  %116 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #13
  %117 = ptrtoint ptr %small_buf_q_entry.035.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %small_buf_q_entry.035.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.bufq_addr_element, ptr %small_buf_q_entry.035.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 512
  br i1 %exitcond.not.i.i, label %if.end51.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  %118 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str.63) #16
  br label %err_small_buffers.sink.split.i

if.end51.i:                                       ; preds = %for.body.i.i
  %small_buf_index.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 68
  %120 = ptrtoint ptr %small_buf_index.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %small_buf_index.i.i, align 4
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags.i.i) #13
  %121 = ptrtoint ptr %num_large_buffers.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_large_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp72.not.i.i = icmp eq i32 %122, 0
  br i1 %cmp72.not.i.i, label %if.end51.i.ql_init_large_buffers.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end51.i.ql_init_large_buffers.exit.i_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_init_large_buffers.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end51.i
  %lrg_buf.i133.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 54
  br label %for.body.i138.i

for.body.i138.i:                                  ; preds = %if.end.i147.i.for.body.i138.i_crit_edge, %for.body.lr.ph.i.i
  %i.073.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i145.i, %if.end.i147.i.for.body.i138.i_crit_edge ]
  %123 = ptrtoint ptr %lrg_buf.i133.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %lrg_buf.i133.i, align 4
  %arrayidx.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %124, i32 %i.073.i.i
  %125 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 28)
  %126 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ndev1, align 4
  %128 = ptrtoint ptr %lrg_buffer_len6.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %lrg_buffer_len6.i, align 4
  %call.i.i136.i = tail call ptr @__netdev_alloc_skb(ptr noundef %127, i32 noundef %129, i32 noundef 2592) #13
  %tobool.not.i137.i = icmp eq ptr %call.i.i136.i, null
  br i1 %tobool.not.i137.i, label %if.then.i140.i, label %if.else.i.i, !prof !343

if.then.i140.i:                                   ; preds = %for.body.i138.i
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ndev1, align 4
  %132 = ptrtoint ptr %lrg_buffer_len6.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %lrg_buffer_len6.i, align 4
  %mul.i139.i = shl i32 %133, 1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %131, ptr noundef nonnull @.str.64, i32 noundef %mul.i139.i, i32 noundef %i.073.i.i) #16
  tail call fastcc void @ql_free_large_buffers(ptr noundef %qdev) #13
  br label %err_small_buffers.sink.split.i

if.else.i.i:                                      ; preds = %for.body.i138.i
  %index.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %124, i32 %i.073.i.i, i32 6
  %134 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %i.073.i.i, ptr %index.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i136.i, i32 0, i32 19
  %135 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %136, i32 32
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i136.i, i32 0, i32 16
  %137 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %138, i32 32
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %139 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pdev.i, align 8
  %dev.i141.i = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  %141 = ptrtoint ptr %lrg_buffer_len6.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %lrg_buffer_len6.i, align 4
  %call.i57.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #13
  br i1 %call.i57.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !344

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i141.i) #13
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44, i32 3
  %143 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %144, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i142.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i.i

if.end.i.i.i142.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %dev.i141.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i141.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i142.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %146, %if.end.i.i.i142.i ], [ %144, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #13
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i143.i = add i32 %142, -32
  tail call void @debug_dma_map_single(ptr noundef %dev.i141.i, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i143.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %147 = load ptr, ptr @mem_map, align 4
  %148 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i.i.i = add i32 %148, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i58.i.i = getelementptr %struct.page, ptr %147, i32 %shr.i.i.i
  %and.i.i.i = and i32 %148, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i141.i, ptr noundef %add.ptr.i58.i.i, i32 noundef %and.i.i.i, i32 noundef %sub.i143.i, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i144.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %149 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev.i, align 8
  %dev9.i.i = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev9.i.i, i32 noundef %retval.0.i.i144.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i144.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i144.i, -1
  br i1 %cmp.i.i.i, label %if.then12.i.i, label %if.end.i147.i

if.then12.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  %151 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %152, ptr noundef nonnull @.str.65, i32 noundef -12) #16
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call.i.i136.i, i32 noundef 1) #13
  %153 = ptrtoint ptr %num_large_buffers.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_large_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp10.not.i.i.i = icmp eq i32 %154, 0
  br i1 %cmp10.not.i.i.i, label %if.then12.i.i.err_small_buffers.sink.split.i_crit_edge, label %if.then12.i.i.for.body.i.i.i_crit_edge

if.then12.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then12.i.i
  br label %for.body.i.i.i

if.then12.i.i.err_small_buffers.sink.split.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_small_buffers.sink.split.i

for.body.i.i.i:                                   ; preds = %if.then.i60.i.i.for.body.i.i.i_crit_edge, %if.then12.i.i.for.body.i.i.i_crit_edge
  %i.011.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i60.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then12.i.i.for.body.i.i.i_crit_edge ]
  %155 = ptrtoint ptr %lrg_buf.i133.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lrg_buf.i133.i, align 4
  %skb.i.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %156, i32 %i.011.i.i.i, i32 1
  %157 = ptrtoint ptr %skb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %skb.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %158, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.err_small_buffers.sink.split.i_crit_edge, label %if.then.i60.i.i

for.body.i.i.i.err_small_buffers.sink.split.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_small_buffers.sink.split.i

if.then.i60.i.i:                                  ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %156, i32 %i.011.i.i.i
  tail call void @consume_skb(ptr noundef nonnull %158) #13
  %159 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  %mapaddr.i.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %156, i32 %i.011.i.i.i, i32 2
  %161 = ptrtoint ptr %mapaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mapaddr.i.i.i, align 4
  %maplen.i.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %156, i32 %i.011.i.i.i, i32 3
  %163 = ptrtoint ptr %maplen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %maplen.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %162, i32 noundef %164, i32 noundef 2, i32 noundef 0) #13
  %165 = call ptr @memset(ptr %arrayidx.i.i.i, i32 0, i32 28)
  %inc.i.i.i = add nuw i32 %i.011.i.i.i, 1
  %166 = ptrtoint ptr %num_large_buffers.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_large_buffers.i, align 4
  %cmp.i59.i.i = icmp ult i32 %inc.i.i.i, %167
  br i1 %cmp.i59.i.i, label %if.then.i60.i.i.for.body.i.i.i_crit_edge, label %if.then.i60.i.i.err_small_buffers.sink.split.i_crit_edge

if.then.i60.i.i.err_small_buffers.sink.split.i_crit_edge: ; preds = %if.then.i60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_small_buffers.sink.split.i

if.then.i60.i.i.for.body.i.i.i_crit_edge:         ; preds = %if.then.i60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

if.end.i147.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  %skb14.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %124, i32 %i.073.i.i, i32 1
  %168 = ptrtoint ptr %skb14.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call.i.i136.i, ptr %skb14.i.i, align 4
  %mapaddr.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %124, i32 %i.073.i.i, i32 2
  %169 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %retval.0.i.i144.i, ptr %mapaddr.i.i, align 4
  %170 = ptrtoint ptr %lrg_buffer_len6.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %lrg_buffer_len6.i, align 4
  %sub16.i.i = add i32 %171, -32
  %maplen.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %124, i32 %i.073.i.i, i32 3
  %172 = ptrtoint ptr %maplen.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %sub16.i.i, ptr %maplen.i.i, align 4
  %173 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i144.i) #13
  %buf_phy_addr_low.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %124, i32 %i.073.i.i, i32 4
  %174 = ptrtoint ptr %buf_phy_addr_low.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %buf_phy_addr_low.i.i, align 4
  %buf_phy_addr_high.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %124, i32 %i.073.i.i, i32 5
  %175 = ptrtoint ptr %buf_phy_addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %buf_phy_addr_high.i.i, align 4
  %inc.i145.i = add nuw i32 %i.073.i.i, 1
  %176 = ptrtoint ptr %num_large_buffers.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %num_large_buffers.i, align 4
  %cmp.i146.i = icmp ult i32 %inc.i145.i, %177
  br i1 %cmp.i146.i, label %if.end.i147.i.for.body.i138.i_crit_edge, label %if.end57.i

if.end.i147.i.for.body.i138.i_crit_edge:          ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i138.i

if.end57.i:                                       ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp10.not.i.i = icmp eq i32 %177, 0
  br i1 %cmp10.not.i.i, label %if.end57.i.ql_init_large_buffers.exit.i_crit_edge, label %for.body.lr.ph.i152.i

if.end57.i.ql_init_large_buffers.exit.i_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_init_large_buffers.exit.i

for.body.lr.ph.i152.i:                            ; preds = %if.end57.i
  %178 = ptrtoint ptr %lrg_buf_q_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %lrg_buf_q_virt_addr.i.i, align 4
  br label %for.body.i159.i

for.body.i159.i:                                  ; preds = %for.body.i159.i.for.body.i159.i_crit_edge, %for.body.lr.ph.i152.i
  %buf_addr_ele.012.i.i = phi ptr [ %179, %for.body.lr.ph.i152.i ], [ %incdec.ptr.i156.i, %for.body.i159.i.for.body.i159.i_crit_edge ]
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i152.i ], [ %inc.i157.i, %for.body.i159.i.for.body.i159.i_crit_edge ]
  %180 = ptrtoint ptr %lrg_buf.i133.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %lrg_buf.i133.i, align 4
  %buf_phy_addr_high.i153.i = getelementptr %struct.ql_rcv_buf_cb, ptr %181, i32 %i.011.i.i, i32 5
  %182 = ptrtoint ptr %buf_phy_addr_high.i153.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %buf_phy_addr_high.i153.i, align 4
  %addr_high.i154.i = getelementptr inbounds %struct.bufq_addr_element, ptr %buf_addr_ele.012.i.i, i32 0, i32 1
  %184 = ptrtoint ptr %addr_high.i154.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %addr_high.i154.i, align 4
  %buf_phy_addr_low.i155.i = getelementptr %struct.ql_rcv_buf_cb, ptr %181, i32 %i.011.i.i, i32 4
  %185 = ptrtoint ptr %buf_phy_addr_low.i155.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %buf_phy_addr_low.i155.i, align 4
  %187 = ptrtoint ptr %buf_addr_ele.012.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %buf_addr_ele.012.i.i, align 4
  %incdec.ptr.i156.i = getelementptr %struct.bufq_addr_element, ptr %buf_addr_ele.012.i.i, i32 1
  %inc.i157.i = add nuw i32 %i.011.i.i, 1
  %188 = ptrtoint ptr %num_large_buffers.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %num_large_buffers.i, align 4
  %cmp.i158.i = icmp ult i32 %inc.i157.i, %189
  br i1 %cmp.i158.i, label %for.body.i159.i.for.body.i159.i_crit_edge, label %for.body.i159.i.ql_init_large_buffers.exit.i_crit_edge

for.body.i159.i.ql_init_large_buffers.exit.i_crit_edge: ; preds = %for.body.i159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_init_large_buffers.exit.i

for.body.i159.i.for.body.i159.i_crit_edge:        ; preds = %for.body.i159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i159.i

ql_init_large_buffers.exit.i:                     ; preds = %for.body.i159.i.ql_init_large_buffers.exit.i_crit_edge, %if.end57.i.ql_init_large_buffers.exit.i_crit_edge, %if.end51.i.ql_init_large_buffers.exit.i_crit_edge
  %lrg_buf_index.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 59
  %190 = ptrtoint ptr %lrg_buf_index.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %lrg_buf_index.i.i, align 8
  %lrg_buf_skb_check.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 60
  %191 = ptrtoint ptr %lrg_buf_skb_check.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %lrg_buf_skb_check.i.i, align 4
  %192 = ptrtoint ptr %req_q_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %req_q_virt_addr.i.i, align 8
  br label %for.body.i163.i

for.body.i163.i:                                  ; preds = %for.inc.i.i.for.body.i163.i_crit_edge, %ql_init_large_buffers.exit.i
  %req_q_curr.013.i.i = phi ptr [ %193, %ql_init_large_buffers.exit.i ], [ %incdec.ptr.i164.i, %for.inc.i.i.for.body.i163.i_crit_edge ]
  %i.012.i.i = phi i32 [ 0, %ql_init_large_buffers.exit.i ], [ %inc.i165.i, %for.inc.i.i.for.body.i163.i_crit_edge ]
  %arrayidx.i162.i = getelementptr %struct.ql3_adapter, ptr %qdev, i32 0, i32 32, i32 %i.012.i.i
  %194 = ptrtoint ptr %arrayidx.i162.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %arrayidx.i162.i, align 4
  %queue_entry.i.i = getelementptr %struct.ql3_adapter, ptr %qdev, i32 0, i32 32, i32 %i.012.i.i, i32 1
  %195 = ptrtoint ptr %queue_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %req_q_curr.013.i.i, ptr %queue_entry.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %196 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %196, i32 noundef 3264, i32 noundef 512) #18
  %oal.i.i = getelementptr %struct.ql3_adapter, ptr %qdev, i32 0, i32 32, i32 %i.012.i.i, i32 3
  %197 = ptrtoint ptr %oal.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call7.i.i.i, ptr %oal.i.i, align 4
  %cmp2.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp2.i.i, label %err_free_list.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i163.i
  %incdec.ptr.i164.i = getelementptr %struct.ob_mac_iocb_req, ptr %req_q_curr.013.i.i, i32 1
  %inc.i165.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i166.i = icmp eq i32 %inc.i165.i, 256
  br i1 %exitcond.not.i166.i, label %if.end, label %for.inc.i.i.for.body.i163.i_crit_edge

for.inc.i.i.for.body.i163.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i163.i

err_free_list.i:                                  ; preds = %for.body.i163.i
  %tx_buf.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 32
  br label %for.body.i172.i

for.body.i172.i:                                  ; preds = %for.body.i172.i.for.body.i172.i_crit_edge, %err_free_list.i
  %i.06.i.i = phi i32 [ 0, %err_free_list.i ], [ %inc.i170.i, %for.body.i172.i.for.body.i172.i_crit_edge ]
  %tx_cb.05.i.i = phi ptr [ %tx_buf.i.i, %err_free_list.i ], [ %incdec.ptr.i169.i, %for.body.i172.i.for.body.i172.i_crit_edge ]
  %oal.i168.i = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %tx_cb.05.i.i, i32 0, i32 3
  %198 = ptrtoint ptr %oal.i168.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %oal.i168.i, align 4
  tail call void @kfree(ptr noundef %199) #13
  %200 = ptrtoint ptr %oal.i168.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %oal.i168.i, align 4
  %incdec.ptr.i169.i = getelementptr %struct.ql_tx_buf_cb, ptr %tx_cb.05.i.i, i32 1
  %inc.i170.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i171.i = icmp eq i32 %inc.i170.i, 256
  br i1 %exitcond.not.i171.i, label %for.body.i172.i.err_small_buffers.i_crit_edge, label %for.body.i172.i.for.body.i172.i_crit_edge

for.body.i172.i.for.body.i172.i_crit_edge:        ; preds = %for.body.i172.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i172.i

for.body.i172.i.err_small_buffers.i_crit_edge:    ; preds = %for.body.i172.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_small_buffers.i

err_small_buffers.sink.split.i:                   ; preds = %if.then.i60.i.i.err_small_buffers.sink.split.i_crit_edge, %for.body.i.i.i.err_small_buffers.sink.split.i_crit_edge, %if.then12.i.i.err_small_buffers.sink.split.i_crit_edge, %if.then.i140.i, %if.then49.i
  %.str.58.sink.i = phi ptr [ @.str.57, %if.then49.i ], [ @.str.58, %if.then.i140.i ], [ @.str.58, %if.then12.i.i.err_small_buffers.sink.split.i_crit_edge ], [ @.str.58, %for.body.i.i.i.err_small_buffers.sink.split.i_crit_edge ], [ @.str.58, %if.then.i60.i.i.err_small_buffers.sink.split.i_crit_edge ]
  %201 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %202, ptr noundef nonnull %.str.58.sink.i) #16
  br label %err_small_buffers.i

err_small_buffers.i:                              ; preds = %err_small_buffers.sink.split.i, %for.body.i172.i.err_small_buffers.i_crit_edge
  tail call fastcc void @ql_free_buffer_queues(ptr noundef %qdev) #13
  br label %err_buffer_queues.i

err_buffer_queues.i:                              ; preds = %err_small_buffers.i, %if.then43.i
  tail call fastcc void @ql_free_net_req_rsp_queues(ptr noundef %qdev) #13
  br label %err_req_rsp.i

err_req_rsp.i:                                    ; preds = %err_buffer_queues.i, %if.then37.i
  %203 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev.i, align 8
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  %205 = ptrtoint ptr %shadow_reg_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %shadow_reg_virt_addr.i, align 8
  %207 = ptrtoint ptr %shadow_reg_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %shadow_reg_phy_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev62.i, i32 noundef 4096, ptr noundef %206, i32 noundef %208, i32 noundef 0) #13
  br label %if.then

if.then:                                          ; preds = %err_req_rsp.i, %if.else31.i, %if.else7.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.46) #16
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.i
  %209 = ptrtoint ptr %rsp_q_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rsp_q_virt_addr.i.i, align 4
  %rsp_current.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 37
  %211 = ptrtoint ptr %rsp_current.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %210, ptr %rsp_current.i, align 4
  %msi = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 9
  %212 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool2.not = icmp eq i32 %213, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %214 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pdev.i, align 8
  %call4 = tail call i32 @pci_enable_msi(ptr noundef %215) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #16
  %216 = ptrtoint ptr %msi to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %msi, align 4
  br label %if.end9

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.48) #16
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags.i.i) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6, %if.end.if.end9_crit_edge
  %irq_flags.0 = phi i32 [ 128, %if.then6 ], [ 0, %if.else ], [ 128, %if.end.if.end9_crit_edge ]
  %217 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pdev.i, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 46
  %219 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %220, ptr noundef nonnull @ql3xxx_isr, ptr noundef null, i32 noundef %irq_flags.0, ptr noundef %1, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %do.body17, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %221 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pdev.i, align 8
  %irq15 = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 46
  %223 = ptrtoint ptr %irq15 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %irq15, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %224) #16
  br label %err_irq

do.body17:                                        ; preds = %if.end9
  %hw_lock = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 13
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %call22 = tail call fastcc i32 @ql_wait_for_drvr_lock(ptr noundef %qdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.50) #16
  br label %err_lock

if.end25:                                         ; preds = %do.body17
  %mem_map_registers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %225 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mem_map_registers.i, align 8
  %serialPortInterfaceReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %226, i32 0, i32 12
  %mac_index.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %227 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %mac_index.i.i, align 4
  %mul.i.i85 = shl i32 %228, 8
  %or.i.i = or i32 %mul.i.i85, 512
  %call.i.i86 = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %qdev, i32 noundef 58720256, i32 noundef %or.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %tobool.not.i.i87 = icmp eq i32 %call.i.i86, 0
  br i1 %tobool.not.i.i87, label %if.end.i.i89, label %if.end25.if.then28_crit_edge

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

if.end.i.i89:                                     ; preds = %if.end25
  %device_id.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 87
  %229 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %device_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12338, i32 %230)
  %cmp.i.i88 = icmp eq i32 %230, 12338
  br i1 %cmp.i.i88, label %if.then1.i.i, label %if.end.i.i89.if.end2.i.i_crit_edge

if.end.i.i89.if.end2.i.i_crit_edge:               ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i89
  %macMIIMgmtControlReg.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 7
  %current_page.i.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %231 = ptrtoint ptr %current_page.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %current_page.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp.not.i.i.i = icmp eq i32 %232, 0
  br i1 %cmp.not.i.i.i, label %if.then1.i.i.ql_write_page0_reg.exit.i.i_crit_edge, label %if.then.i.i.i90

if.then1.i.i.ql_write_page0_reg.exit.i.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit.i.i

if.then.i.i.i90:                                  ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %233 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %234, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i.i, i32 768) #13, !srcloc !326
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %236 = ptrtoint ptr %current_page.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %current_page.i.i.i, align 4
  br label %ql_write_page0_reg.exit.i.i

ql_write_page0_reg.exit.i.i:                      ; preds = %if.then.i.i.i90, %if.then1.i.i.ql_write_page0_reg.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg.i.i, i32 61440) #13, !srcloc !326
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %ql_write_page0_reg.exit.i.i, %if.end.i.i89.if.end2.i.i_crit_edge
  %macMIIMgmtControlReg3.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 7
  %current_page.i13.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %238 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp.not.i14.i.i = icmp eq i32 %239, 0
  br i1 %cmp.not.i14.i.i, label %if.end2.i.i.if.end.i_crit_edge, label %if.then.i17.i.i

if.end2.i.i.if.end.i_crit_edge:                   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i17.i.i:                                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %240 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i16.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %241, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i16.i.i, i32 768) #13, !srcloc !326
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i16.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %243 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i17.i.i, %if.end2.i.i.if.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg3.i.i, i32 1879076864) #13, !srcloc !326
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg3.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %245 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %246, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i.i.i, i32 32771) #13, !srcloc !326
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i, i32 268439552) #13, !srcloc !326
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i
  %__ms.0553.i = phi i32 [ 100, %if.end.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.0553.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %249(i32 noundef 214748000) #13
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %port_link_state.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 76
  %250 = ptrtoint ptr %port_link_state.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %port_link_state.i, align 8
  %251 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ndev1, align 4
  tail call void @netif_carrier_off(ptr noundef %252) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %serialPortInterfaceReg.i, i32 8388736) #13, !srcloc !326
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %serialPortInterfaceReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  %254 = ptrtoint ptr %preq_consumer_index.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %preq_consumer_index.i, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %255, align 4
  %tx_count.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 31
  %call.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_count.i, i32 noundef 4) #13
  %257 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store volatile i32 256, ptr %tx_count.i, align 4
  %req_producer_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 26
  %258 = ptrtoint ptr %req_producer_index.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 0, ptr %req_producer_index.i, align 8
  %reqConsumerIndexAddrHigh.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 4
  %259 = ptrtoint ptr %req_consumer_index_phy_addr_high.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %req_consumer_index_phy_addr_high.i, align 8
  %261 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %262)
  %cmp.not.i.i = icmp eq i32 %262, 1
  br i1 %cmp.not.i.i, label %while.end.i.ql_write_page1_reg.exit.i_crit_edge, label %if.then.i.i95

while.end.i.ql_write_page1_reg.exit.i_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit.i

if.then.i.i95:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %263 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %264, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 16777984) #13, !srcloc !326
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %266 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit.i

ql_write_page1_reg.exit.i:                        ; preds = %if.then.i.i95, %while.end.i.ql_write_page1_reg.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %267 = tail call i32 @llvm.bswap.i32(i32 %260) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqConsumerIndexAddrHigh.i, i32 %267) #13, !srcloc !326
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reqConsumerIndexAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %reqConsumerIndexAddrLow.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 3
  %269 = ptrtoint ptr %req_consumer_index_phy_addr_low.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %req_consumer_index_phy_addr_low.i, align 4
  %271 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %272)
  %cmp.not.i297.i = icmp eq i32 %272, 1
  br i1 %cmp.not.i297.i, label %ql_write_page1_reg.exit.i.ql_write_page1_reg.exit301.i_crit_edge, label %if.then.i300.i

ql_write_page1_reg.exit.i.ql_write_page1_reg.exit301.i_crit_edge: ; preds = %ql_write_page1_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit301.i

if.then.i300.i:                                   ; preds = %ql_write_page1_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %273 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i299.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %274, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i299.i, i32 16777984) #13, !srcloc !326
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i299.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %276 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit301.i

ql_write_page1_reg.exit301.i:                     ; preds = %if.then.i300.i, %ql_write_page1_reg.exit.i.ql_write_page1_reg.exit301.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %277 = tail call i32 @llvm.bswap.i32(i32 %270) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqConsumerIndexAddrLow.i, i32 %277) #13, !srcloc !326
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reqConsumerIndexAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %reqBaseAddrHigh.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 6
  %279 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %280)
  %cmp.not.i303.i = icmp eq i32 %280, 1
  br i1 %cmp.not.i303.i, label %ql_write_page1_reg.exit301.i.ql_write_page1_reg.exit307.i_crit_edge, label %if.then.i306.i

ql_write_page1_reg.exit301.i.ql_write_page1_reg.exit307.i_crit_edge: ; preds = %ql_write_page1_reg.exit301.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit307.i

if.then.i306.i:                                   ; preds = %ql_write_page1_reg.exit301.i
  call void @__sanitizer_cov_trace_pc() #15
  %281 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i305.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %282, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i305.i, i32 16777984) #13, !srcloc !326
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i305.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %284 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit307.i

ql_write_page1_reg.exit307.i:                     ; preds = %if.then.i306.i, %ql_write_page1_reg.exit301.i.ql_write_page1_reg.exit307.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqBaseAddrHigh.i, i32 0) #13, !srcloc !326
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reqBaseAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %reqBaseAddrLow.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 5
  %286 = ptrtoint ptr %req_q_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %req_q_phy_addr.i.i, align 4
  %288 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %289)
  %cmp.not.i309.i = icmp eq i32 %289, 1
  br i1 %cmp.not.i309.i, label %ql_write_page1_reg.exit307.i.ql_write_page1_reg.exit313.i_crit_edge, label %if.then.i312.i

ql_write_page1_reg.exit307.i.ql_write_page1_reg.exit313.i_crit_edge: ; preds = %ql_write_page1_reg.exit307.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit313.i

if.then.i312.i:                                   ; preds = %ql_write_page1_reg.exit307.i
  call void @__sanitizer_cov_trace_pc() #15
  %290 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i311.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %291, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i311.i, i32 16777984) #13, !srcloc !326
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i311.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %293 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit313.i

ql_write_page1_reg.exit313.i:                     ; preds = %if.then.i312.i, %ql_write_page1_reg.exit307.i.ql_write_page1_reg.exit313.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %294 = tail call i32 @llvm.bswap.i32(i32 %287) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqBaseAddrLow.i, i32 %294) #13, !srcloc !326
  %295 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reqBaseAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %reqLength.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 7
  %296 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %297)
  %cmp.not.i315.i = icmp eq i32 %297, 1
  br i1 %cmp.not.i315.i, label %ql_write_page1_reg.exit313.i.ql_write_page1_reg.exit319.i_crit_edge, label %if.then.i318.i

ql_write_page1_reg.exit313.i.ql_write_page1_reg.exit319.i_crit_edge: ; preds = %ql_write_page1_reg.exit313.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit319.i

if.then.i318.i:                                   ; preds = %ql_write_page1_reg.exit313.i
  call void @__sanitizer_cov_trace_pc() #15
  %298 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i317.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %299, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i317.i, i32 16777984) #13, !srcloc !326
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i317.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %301 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit319.i

ql_write_page1_reg.exit319.i:                     ; preds = %if.then.i318.i, %ql_write_page1_reg.exit313.i.ql_write_page1_reg.exit319.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqLength.i, i32 65536) #13, !srcloc !326
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reqLength.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %303 = ptrtoint ptr %prsp_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %prsp_producer_index.i, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %304, align 2
  %rsp_consumer_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 38
  %306 = ptrtoint ptr %rsp_consumer_index.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 0, ptr %rsp_consumer_index.i, align 8
  %307 = ptrtoint ptr %rsp_q_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %rsp_q_virt_addr.i.i, align 4
  %309 = ptrtoint ptr %rsp_current.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %308, ptr %rsp_current.i, align 4
  %rspProducerIndexAddrHigh.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 10
  %310 = ptrtoint ptr %rsp_producer_index_phy_addr_high.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %rsp_producer_index_phy_addr_high.i, align 8
  %312 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %313)
  %cmp.not.i321.i = icmp eq i32 %313, 1
  br i1 %cmp.not.i321.i, label %ql_write_page1_reg.exit319.i.ql_write_page1_reg.exit325.i_crit_edge, label %if.then.i324.i

ql_write_page1_reg.exit319.i.ql_write_page1_reg.exit325.i_crit_edge: ; preds = %ql_write_page1_reg.exit319.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit325.i

if.then.i324.i:                                   ; preds = %ql_write_page1_reg.exit319.i
  call void @__sanitizer_cov_trace_pc() #15
  %314 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i323.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %315, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i323.i, i32 16777984) #13, !srcloc !326
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i323.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %317 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit325.i

ql_write_page1_reg.exit325.i:                     ; preds = %if.then.i324.i, %ql_write_page1_reg.exit319.i.ql_write_page1_reg.exit325.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %318 = tail call i32 @llvm.bswap.i32(i32 %311) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspProducerIndexAddrHigh.i, i32 %318) #13, !srcloc !326
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspProducerIndexAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rspProducerIndexAddrLow.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 9
  %320 = ptrtoint ptr %rsp_producer_index_phy_addr_low.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %rsp_producer_index_phy_addr_low.i, align 4
  %322 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %323)
  %cmp.not.i327.i = icmp eq i32 %323, 1
  br i1 %cmp.not.i327.i, label %ql_write_page1_reg.exit325.i.ql_write_page1_reg.exit331.i_crit_edge, label %if.then.i330.i

ql_write_page1_reg.exit325.i.ql_write_page1_reg.exit331.i_crit_edge: ; preds = %ql_write_page1_reg.exit325.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit331.i

if.then.i330.i:                                   ; preds = %ql_write_page1_reg.exit325.i
  call void @__sanitizer_cov_trace_pc() #15
  %324 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i329.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %325, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i329.i, i32 16777984) #13, !srcloc !326
  %326 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i329.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %327 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit331.i

ql_write_page1_reg.exit331.i:                     ; preds = %if.then.i330.i, %ql_write_page1_reg.exit325.i.ql_write_page1_reg.exit331.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %328 = tail call i32 @llvm.bswap.i32(i32 %321) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspProducerIndexAddrLow.i, i32 %328) #13, !srcloc !326
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspProducerIndexAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rspBaseAddrHigh.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 12
  %330 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %331)
  %cmp.not.i333.i = icmp eq i32 %331, 1
  br i1 %cmp.not.i333.i, label %ql_write_page1_reg.exit331.i.ql_write_page1_reg.exit337.i_crit_edge, label %if.then.i336.i

ql_write_page1_reg.exit331.i.ql_write_page1_reg.exit337.i_crit_edge: ; preds = %ql_write_page1_reg.exit331.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit337.i

if.then.i336.i:                                   ; preds = %ql_write_page1_reg.exit331.i
  call void @__sanitizer_cov_trace_pc() #15
  %332 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i335.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %333, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i335.i, i32 16777984) #13, !srcloc !326
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i335.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %335 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit337.i

ql_write_page1_reg.exit337.i:                     ; preds = %if.then.i336.i, %ql_write_page1_reg.exit331.i.ql_write_page1_reg.exit337.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspBaseAddrHigh.i, i32 0) #13, !srcloc !326
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspBaseAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rspBaseAddrLow.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 11
  %337 = ptrtoint ptr %rsp_q_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %rsp_q_phy_addr.i.i, align 8
  %339 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %340)
  %cmp.not.i339.i = icmp eq i32 %340, 1
  br i1 %cmp.not.i339.i, label %ql_write_page1_reg.exit337.i.ql_write_page1_reg.exit343.i_crit_edge, label %if.then.i342.i

ql_write_page1_reg.exit337.i.ql_write_page1_reg.exit343.i_crit_edge: ; preds = %ql_write_page1_reg.exit337.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit343.i

if.then.i342.i:                                   ; preds = %ql_write_page1_reg.exit337.i
  call void @__sanitizer_cov_trace_pc() #15
  %341 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i341.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %342, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i341.i, i32 16777984) #13, !srcloc !326
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i341.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %344 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit343.i

ql_write_page1_reg.exit343.i:                     ; preds = %if.then.i342.i, %ql_write_page1_reg.exit337.i.ql_write_page1_reg.exit343.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %345 = tail call i32 @llvm.bswap.i32(i32 %338) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspBaseAddrLow.i, i32 %345) #13, !srcloc !326
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspBaseAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rspLength.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 13
  %347 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %348)
  %cmp.not.i345.i = icmp eq i32 %348, 1
  br i1 %cmp.not.i345.i, label %ql_write_page1_reg.exit343.i.ql_write_page1_reg.exit349.i_crit_edge, label %if.then.i348.i

ql_write_page1_reg.exit343.i.ql_write_page1_reg.exit349.i_crit_edge: ; preds = %ql_write_page1_reg.exit343.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit349.i

if.then.i348.i:                                   ; preds = %ql_write_page1_reg.exit343.i
  call void @__sanitizer_cov_trace_pc() #15
  %349 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i347.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %350, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i347.i, i32 16777984) #13, !srcloc !326
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i347.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %352 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit349.i

ql_write_page1_reg.exit349.i:                     ; preds = %if.then.i348.i, %ql_write_page1_reg.exit343.i.ql_write_page1_reg.exit349.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspLength.i, i32 65536) #13, !srcloc !326
  %353 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspLength.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxLargeQBaseAddrHigh.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 16
  %354 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %355)
  %cmp.not.i351.i = icmp eq i32 %355, 1
  br i1 %cmp.not.i351.i, label %ql_write_page1_reg.exit349.i.ql_write_page1_reg.exit355.i_crit_edge, label %if.then.i354.i

ql_write_page1_reg.exit349.i.ql_write_page1_reg.exit355.i_crit_edge: ; preds = %ql_write_page1_reg.exit349.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit355.i

if.then.i354.i:                                   ; preds = %ql_write_page1_reg.exit349.i
  call void @__sanitizer_cov_trace_pc() #15
  %356 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i353.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %357, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i353.i, i32 16777984) #13, !srcloc !326
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i353.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %359 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit355.i

ql_write_page1_reg.exit355.i:                     ; preds = %if.then.i354.i, %ql_write_page1_reg.exit349.i.ql_write_page1_reg.exit355.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxLargeQBaseAddrHigh.i, i32 0) #13, !srcloc !326
  %360 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxLargeQBaseAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxLargeQBaseAddrLow.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 15
  %361 = ptrtoint ptr %lrg_buf_q_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %lrg_buf_q_phy_addr.i.i, align 4
  %363 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %364)
  %cmp.not.i357.i = icmp eq i32 %364, 1
  br i1 %cmp.not.i357.i, label %ql_write_page1_reg.exit355.i.ql_write_page1_reg.exit361.i_crit_edge, label %if.then.i360.i

ql_write_page1_reg.exit355.i.ql_write_page1_reg.exit361.i_crit_edge: ; preds = %ql_write_page1_reg.exit355.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit361.i

if.then.i360.i:                                   ; preds = %ql_write_page1_reg.exit355.i
  call void @__sanitizer_cov_trace_pc() #15
  %365 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i359.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %366, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i359.i, i32 16777984) #13, !srcloc !326
  %367 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i359.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %368 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit361.i

ql_write_page1_reg.exit361.i:                     ; preds = %if.then.i360.i, %ql_write_page1_reg.exit355.i.ql_write_page1_reg.exit361.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %369 = tail call i32 @llvm.bswap.i32(i32 %362) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxLargeQBaseAddrLow.i, i32 %369) #13, !srcloc !326
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxLargeQBaseAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxLargeQLength.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 17
  %371 = ptrtoint ptr %num_lbufq_entries5.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %num_lbufq_entries5.i, align 8
  %373 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %374)
  %cmp.not.i363.i = icmp eq i32 %374, 1
  br i1 %cmp.not.i363.i, label %ql_write_page1_reg.exit361.i.ql_write_page1_reg.exit367.i_crit_edge, label %if.then.i366.i

ql_write_page1_reg.exit361.i.ql_write_page1_reg.exit367.i_crit_edge: ; preds = %ql_write_page1_reg.exit361.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit367.i

if.then.i366.i:                                   ; preds = %ql_write_page1_reg.exit361.i
  call void @__sanitizer_cov_trace_pc() #15
  %375 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i365.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %376, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i365.i, i32 16777984) #13, !srcloc !326
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i365.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %378 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit367.i

ql_write_page1_reg.exit367.i:                     ; preds = %if.then.i366.i, %ql_write_page1_reg.exit361.i.ql_write_page1_reg.exit367.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %379 = tail call i32 @llvm.bswap.i32(i32 %372) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxLargeQLength.i, i32 %379) #13, !srcloc !326
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxLargeQLength.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxLargeBufferLength.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 18
  %381 = ptrtoint ptr %lrg_buffer_len6.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %lrg_buffer_len6.i, align 4
  %383 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %384)
  %cmp.not.i369.i = icmp eq i32 %384, 1
  br i1 %cmp.not.i369.i, label %ql_write_page1_reg.exit367.i.ql_write_page1_reg.exit373.i_crit_edge, label %if.then.i372.i

ql_write_page1_reg.exit367.i.ql_write_page1_reg.exit373.i_crit_edge: ; preds = %ql_write_page1_reg.exit367.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit373.i

if.then.i372.i:                                   ; preds = %ql_write_page1_reg.exit367.i
  call void @__sanitizer_cov_trace_pc() #15
  %385 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i371.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %386, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i371.i, i32 16777984) #13, !srcloc !326
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i371.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %388 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit373.i

ql_write_page1_reg.exit373.i:                     ; preds = %if.then.i372.i, %ql_write_page1_reg.exit367.i.ql_write_page1_reg.exit373.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %389 = tail call i32 @llvm.bswap.i32(i32 %382) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxLargeBufferLength.i, i32 %389) #13, !srcloc !326
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxLargeBufferLength.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxSmallQBaseAddrHigh.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 21
  %391 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %392)
  %cmp.not.i375.i = icmp eq i32 %392, 1
  br i1 %cmp.not.i375.i, label %ql_write_page1_reg.exit373.i.ql_write_page1_reg.exit379.i_crit_edge, label %if.then.i378.i

ql_write_page1_reg.exit373.i.ql_write_page1_reg.exit379.i_crit_edge: ; preds = %ql_write_page1_reg.exit373.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit379.i

if.then.i378.i:                                   ; preds = %ql_write_page1_reg.exit373.i
  call void @__sanitizer_cov_trace_pc() #15
  %393 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i377.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %394, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i377.i, i32 16777984) #13, !srcloc !326
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i377.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %396 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit379.i

ql_write_page1_reg.exit379.i:                     ; preds = %if.then.i378.i, %ql_write_page1_reg.exit373.i.ql_write_page1_reg.exit379.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxSmallQBaseAddrHigh.i, i32 0) #13, !srcloc !326
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxSmallQBaseAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxSmallQBaseAddrLow.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 20
  %398 = ptrtoint ptr %small_buf_q_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %small_buf_q_phy_addr.i.i, align 8
  %400 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %401)
  %cmp.not.i381.i = icmp eq i32 %401, 1
  br i1 %cmp.not.i381.i, label %ql_write_page1_reg.exit379.i.ql_write_page1_reg.exit385.i_crit_edge, label %if.then.i384.i

ql_write_page1_reg.exit379.i.ql_write_page1_reg.exit385.i_crit_edge: ; preds = %ql_write_page1_reg.exit379.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit385.i

if.then.i384.i:                                   ; preds = %ql_write_page1_reg.exit379.i
  call void @__sanitizer_cov_trace_pc() #15
  %402 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i383.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %403, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i383.i, i32 16777984) #13, !srcloc !326
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i383.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %405 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit385.i

ql_write_page1_reg.exit385.i:                     ; preds = %if.then.i384.i, %ql_write_page1_reg.exit379.i.ql_write_page1_reg.exit385.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  %406 = tail call i32 @llvm.bswap.i32(i32 %399) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxSmallQBaseAddrLow.i, i32 %406) #13, !srcloc !326
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxSmallQBaseAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxSmallQLength.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 22
  %408 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %409)
  %cmp.not.i387.i = icmp eq i32 %409, 1
  br i1 %cmp.not.i387.i, label %ql_write_page1_reg.exit385.i.ql_write_page1_reg.exit391.i_crit_edge, label %if.then.i390.i

ql_write_page1_reg.exit385.i.ql_write_page1_reg.exit391.i_crit_edge: ; preds = %ql_write_page1_reg.exit385.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit391.i

if.then.i390.i:                                   ; preds = %ql_write_page1_reg.exit385.i
  call void @__sanitizer_cov_trace_pc() #15
  %410 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i389.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %411, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i389.i, i32 16777984) #13, !srcloc !326
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i389.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %413 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit391.i

ql_write_page1_reg.exit391.i:                     ; preds = %if.then.i390.i, %ql_write_page1_reg.exit385.i.ql_write_page1_reg.exit391.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxSmallQLength.i, i32 1073741824) #13, !srcloc !326
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxSmallQLength.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %rxSmallBufferLength.i = getelementptr inbounds %struct.ql3xxx_host_memory_registers, ptr %226, i32 0, i32 23
  %415 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %416)
  %cmp.not.i393.i = icmp eq i32 %416, 1
  br i1 %cmp.not.i393.i, label %ql_write_page1_reg.exit391.i.ql_write_page1_reg.exit397.i_crit_edge, label %if.then.i396.i

ql_write_page1_reg.exit391.i.ql_write_page1_reg.exit397.i_crit_edge: ; preds = %ql_write_page1_reg.exit391.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page1_reg.exit397.i

if.then.i396.i:                                   ; preds = %ql_write_page1_reg.exit391.i
  call void @__sanitizer_cov_trace_pc() #15
  %417 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i395.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %418, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i395.i, i32 16777984) #13, !srcloc !326
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i395.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %420 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 1, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page1_reg.exit397.i

ql_write_page1_reg.exit397.i:                     ; preds = %if.then.i396.i, %ql_write_page1_reg.exit391.i.ql_write_page1_reg.exit397.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxSmallBufferLength.i, i32 536870912) #13, !srcloc !326
  %421 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxSmallBufferLength.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %small_buf_q_producer_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 63
  %422 = ptrtoint ptr %small_buf_q_producer_index.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 63, ptr %small_buf_q_producer_index.i, align 8
  %small_buf_release_cnt.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 73
  %423 = ptrtoint ptr %small_buf_release_cnt.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 8, ptr %small_buf_release_cnt.i, align 8
  %424 = ptrtoint ptr %num_lbufq_entries5.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %num_lbufq_entries5.i, align 8
  %sub.i = add i32 %425, -1
  %lrg_buf_q_producer_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 49
  %426 = ptrtoint ptr %lrg_buf_q_producer_index.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %sub.i, ptr %lrg_buf_q_producer_index.i, align 8
  %lrg_buf_release_cnt.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 50
  %427 = ptrtoint ptr %lrg_buf_release_cnt.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 8, ptr %lrg_buf_release_cnt.i, align 4
  %428 = ptrtoint ptr %lrg_buf_q_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %lrg_buf_q_virt_addr.i.i, align 4
  %lrg_buf_next_free.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 51
  %430 = ptrtoint ptr %lrg_buf_next_free.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %429, ptr %lrg_buf_next_free.i, align 8
  %431 = ptrtoint ptr %small_buf_index.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 0, ptr %small_buf_index.i.i, align 4
  %432 = ptrtoint ptr %lrg_buf_index.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 0, ptr %lrg_buf_index.i.i, align 8
  %lrg_buf_free_count.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 57
  %433 = ptrtoint ptr %lrg_buf_free_count.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 0, ptr %lrg_buf_free_count.i, align 8
  %lrg_buf_free_head.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 55
  %434 = ptrtoint ptr %lrg_buf_free_head.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr null, ptr %lrg_buf_free_head.i, align 8
  %lrg_buf_free_tail.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 56
  %435 = ptrtoint ptr %lrg_buf_free_tail.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr null, ptr %lrg_buf_free_tail.i, align 4
  %rxSmallQProducerIndex.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %226, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxSmallQProducerIndex.i, i32 1056964608) #13, !srcloc !326
  %436 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxSmallQProducerIndex.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  %rxLargeQProducerIndex.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %226, i32 0, i32 16
  %437 = ptrtoint ptr %lrg_buf_q_producer_index.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %lrg_buf_q_producer_index.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  %439 = tail call i32 @llvm.bswap.i32(i32 %438) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxLargeQProducerIndex.i, i32 %439) #13, !srcloc !326
  %440 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxLargeQProducerIndex.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #13
  %portStatus.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 4
  %441 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %cmp.not.i399.i = icmp eq i32 %442, 0
  br i1 %cmp.not.i399.i, label %ql_write_page1_reg.exit397.i.ql_read_page0_reg.exit.i_crit_edge, label %if.then.i402.i

ql_write_page1_reg.exit397.i.ql_read_page0_reg.exit.i_crit_edge: ; preds = %ql_write_page1_reg.exit397.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i

if.then.i402.i:                                   ; preds = %ql_write_page1_reg.exit397.i
  call void @__sanitizer_cov_trace_pc() #15
  %443 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i401.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %444, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i401.i, i32 768) #13, !srcloc !326
  %445 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i401.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %446 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_read_page0_reg.exit.i

ql_read_page0_reg.exit.i:                         ; preds = %if.then.i402.i, %ql_write_page1_reg.exit397.i.ql_read_page0_reg.exit.i_crit_edge
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %448 = and i32 %447, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %448)
  %cmp.i = icmp eq i32 %448, 0
  br i1 %cmp.i, label %if.then43.i101, label %ql_read_page0_reg.exit.i.if.end56.i_crit_edge

ql_read_page0_reg.exit.i.if.end56.i_crit_edge:    ; preds = %ql_read_page0_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

if.then43.i101:                                   ; preds = %ql_read_page0_reg.exit.i
  %449 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %mem_map_registers.i, align 8
  %451 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %mac_index.i.i, align 4
  %mul.i406.i = shl i32 %452, 5
  %or.i407.i = or i32 %mul.i406.i, 64
  %call.i408.i = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %qdev, i32 noundef 7340032, i32 noundef %or.i407.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i408.i)
  %tobool.not.i409.i = icmp eq i32 %call.i408.i, 0
  br i1 %tobool.not.i409.i, label %if.end.i412.i, label %if.then43.i101.if.then28_crit_edge

if.then43.i101.if.then28_crit_edge:               ; preds = %if.then43.i101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

if.end.i412.i:                                    ; preds = %if.then43.i101
  %bufletSize.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 1
  %bufletSize1.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 8
  %453 = ptrtoint ptr %bufletSize1.i.i to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %bufletSize1.i.i, align 2
  %conv.i.i = zext i16 %454 to i32
  %455 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %456)
  %cmp.not.i.i411.i = icmp eq i32 %456, 2
  br i1 %cmp.not.i.i411.i, label %if.end.i412.i.ql_write_page2_reg.exit.i.i_crit_edge, label %if.then.i.i414.i

if.end.i412.i.ql_write_page2_reg.exit.i.i_crit_edge: ; preds = %if.end.i412.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit.i.i

if.then.i.i414.i:                                 ; preds = %if.end.i412.i
  call void @__sanitizer_cov_trace_pc() #15
  %457 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i413.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %458, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i413.i, i32 33555200) #13, !srcloc !326
  %459 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i413.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %460 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit.i.i

ql_write_page2_reg.exit.i.i:                      ; preds = %if.then.i.i414.i, %if.end.i412.i.ql_write_page2_reg.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %461 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bufletSize.i.i, i32 %461) #13, !srcloc !326
  %462 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bufletSize.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %maxBufletCount.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 2
  %bufletCount.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 9
  %463 = ptrtoint ptr %bufletCount.i.i to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %bufletCount.i.i, align 4
  %conv3.i.i = zext i16 %464 to i32
  %465 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %466)
  %cmp.not.i88.i.i = icmp eq i32 %466, 2
  br i1 %cmp.not.i88.i.i, label %ql_write_page2_reg.exit.i.i.ql_write_page2_reg.exit92.i.i_crit_edge, label %if.then.i91.i.i

ql_write_page2_reg.exit.i.i.ql_write_page2_reg.exit92.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit92.i.i

if.then.i91.i.i:                                  ; preds = %ql_write_page2_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %467 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i90.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %468, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i90.i.i, i32 33555200) #13, !srcloc !326
  %469 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i90.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %470 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit92.i.i

ql_write_page2_reg.exit92.i.i:                    ; preds = %if.then.i91.i.i, %ql_write_page2_reg.exit.i.i.ql_write_page2_reg.exit92.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %471 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maxBufletCount.i.i, i32 %471) #13, !srcloc !326
  %472 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maxBufletCount.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %freeBufletThresholdLow.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 5
  %tcpWindowThreshold25.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 11
  %473 = ptrtoint ptr %tcpWindowThreshold25.i.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %tcpWindowThreshold25.i.i, align 8
  %conv5.i.i = zext i16 %474 to i32
  %shl6.i.i = shl nuw i32 %conv5.i.i, 16
  %tcpWindowThreshold0.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 12
  %475 = ptrtoint ptr %tcpWindowThreshold0.i.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %tcpWindowThreshold0.i.i, align 2
  %conv8.i.i = zext i16 %476 to i32
  %or9.i.i = or i32 %shl6.i.i, %conv8.i.i
  %477 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %478)
  %cmp.not.i94.i.i = icmp eq i32 %478, 2
  br i1 %cmp.not.i94.i.i, label %ql_write_page2_reg.exit92.i.i.ql_write_page2_reg.exit98.i.i_crit_edge, label %if.then.i97.i.i

ql_write_page2_reg.exit92.i.i.ql_write_page2_reg.exit98.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit98.i.i

if.then.i97.i.i:                                  ; preds = %ql_write_page2_reg.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %479 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i96.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %480, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i96.i.i, i32 33555200) #13, !srcloc !326
  %481 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i96.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %482 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit98.i.i

ql_write_page2_reg.exit98.i.i:                    ; preds = %if.then.i97.i.i, %ql_write_page2_reg.exit92.i.i.ql_write_page2_reg.exit98.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %483 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %freeBufletThresholdLow.i.i, i32 %483) #13, !srcloc !326
  %484 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %freeBufletThresholdLow.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %freeBufletThresholdHigh.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 6
  %tcpWindowThreshold50.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 10
  %485 = ptrtoint ptr %tcpWindowThreshold50.i.i to i32
  call void @__asan_load2_noabort(i32 %485)
  %486 = load i16, ptr %tcpWindowThreshold50.i.i, align 2
  %conv11.i.i = zext i16 %486 to i32
  %487 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %488)
  %cmp.not.i100.i.i = icmp eq i32 %488, 2
  br i1 %cmp.not.i100.i.i, label %ql_write_page2_reg.exit98.i.i.ql_write_page2_reg.exit104.i.i_crit_edge, label %if.then.i103.i.i

ql_write_page2_reg.exit98.i.i.ql_write_page2_reg.exit104.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit98.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit104.i.i

if.then.i103.i.i:                                 ; preds = %ql_write_page2_reg.exit98.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %489 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i102.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %490, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i102.i.i, i32 33555200) #13, !srcloc !326
  %491 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i102.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %492 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit104.i.i

ql_write_page2_reg.exit104.i.i:                   ; preds = %if.then.i103.i.i, %ql_write_page2_reg.exit98.i.i.ql_write_page2_reg.exit104.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %493 = tail call i32 @llvm.bswap.i32(i32 %conv11.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %freeBufletThresholdHigh.i.i, i32 %493) #13, !srcloc !326
  %494 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %freeBufletThresholdHigh.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %ipHashTableBase.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 7
  %ipHashTableBaseHi.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 13
  %495 = ptrtoint ptr %ipHashTableBaseHi.i.i to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %ipHashTableBaseHi.i.i, align 4
  %conv13.i.i = zext i16 %496 to i32
  %shl14.i.i = shl nuw i32 %conv13.i.i, 16
  %ipHashTableBaseLo.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 14
  %497 = ptrtoint ptr %ipHashTableBaseLo.i.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %ipHashTableBaseLo.i.i, align 2
  %conv16.i.i = zext i16 %498 to i32
  %or17.i.i = or i32 %shl14.i.i, %conv16.i.i
  %499 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %500)
  %cmp.not.i106.i.i = icmp eq i32 %500, 2
  br i1 %cmp.not.i106.i.i, label %ql_write_page2_reg.exit104.i.i.ql_write_page2_reg.exit110.i.i_crit_edge, label %if.then.i109.i.i

ql_write_page2_reg.exit104.i.i.ql_write_page2_reg.exit110.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit110.i.i

if.then.i109.i.i:                                 ; preds = %ql_write_page2_reg.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %501 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i108.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %502, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i108.i.i, i32 33555200) #13, !srcloc !326
  %503 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i108.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %504 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit110.i.i

ql_write_page2_reg.exit110.i.i:                   ; preds = %if.then.i109.i.i, %ql_write_page2_reg.exit104.i.i.ql_write_page2_reg.exit110.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %505 = tail call i32 @llvm.bswap.i32(i32 %or17.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ipHashTableBase.i.i, i32 %505) #13, !srcloc !326
  %506 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ipHashTableBase.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %ipHashTableCount.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 8
  %ipHashTableSize.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 15
  %507 = ptrtoint ptr %ipHashTableSize.i.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %ipHashTableSize.i.i, align 8
  %conv19.i.i = zext i16 %508 to i32
  %509 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %510)
  %cmp.not.i112.i.i = icmp eq i32 %510, 2
  br i1 %cmp.not.i112.i.i, label %ql_write_page2_reg.exit110.i.i.ql_write_page2_reg.exit116.i.i_crit_edge, label %if.then.i115.i.i

ql_write_page2_reg.exit110.i.i.ql_write_page2_reg.exit116.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit110.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit116.i.i

if.then.i115.i.i:                                 ; preds = %ql_write_page2_reg.exit110.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %511 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i114.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %512, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i114.i.i, i32 33555200) #13, !srcloc !326
  %513 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i114.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %514 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit116.i.i

ql_write_page2_reg.exit116.i.i:                   ; preds = %if.then.i115.i.i, %ql_write_page2_reg.exit110.i.i.ql_write_page2_reg.exit116.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %515 = tail call i32 @llvm.bswap.i32(i32 %conv19.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ipHashTableCount.i.i, i32 %515) #13, !srcloc !326
  %516 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ipHashTableCount.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %tcpHashTableBase.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 9
  %tcpHashTableBaseHi.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 16
  %517 = ptrtoint ptr %tcpHashTableBaseHi.i.i to i32
  call void @__asan_load2_noabort(i32 %517)
  %518 = load i16, ptr %tcpHashTableBaseHi.i.i, align 2
  %conv21.i.i = zext i16 %518 to i32
  %shl22.i.i = shl nuw i32 %conv21.i.i, 16
  %tcpHashTableBaseLo.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 17
  %519 = ptrtoint ptr %tcpHashTableBaseLo.i.i to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %tcpHashTableBaseLo.i.i, align 4
  %conv24.i.i = zext i16 %520 to i32
  %or25.i.i = or i32 %shl22.i.i, %conv24.i.i
  %521 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %522)
  %cmp.not.i118.i.i = icmp eq i32 %522, 2
  br i1 %cmp.not.i118.i.i, label %ql_write_page2_reg.exit116.i.i.ql_write_page2_reg.exit122.i.i_crit_edge, label %if.then.i121.i.i

ql_write_page2_reg.exit116.i.i.ql_write_page2_reg.exit122.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit122.i.i

if.then.i121.i.i:                                 ; preds = %ql_write_page2_reg.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %523 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i120.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %524, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i120.i.i, i32 33555200) #13, !srcloc !326
  %525 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i120.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %526 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit122.i.i

ql_write_page2_reg.exit122.i.i:                   ; preds = %if.then.i121.i.i, %ql_write_page2_reg.exit116.i.i.ql_write_page2_reg.exit122.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %527 = tail call i32 @llvm.bswap.i32(i32 %or25.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tcpHashTableBase.i.i, i32 %527) #13, !srcloc !326
  %528 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tcpHashTableBase.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %tcpHashTableCount.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 10
  %tcpHashTableSize.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 18
  %529 = ptrtoint ptr %tcpHashTableSize.i.i to i32
  call void @__asan_load2_noabort(i32 %529)
  %530 = load i16, ptr %tcpHashTableSize.i.i, align 2
  %conv27.i.i = zext i16 %530 to i32
  %531 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %532)
  %cmp.not.i124.i.i = icmp eq i32 %532, 2
  br i1 %cmp.not.i124.i.i, label %ql_write_page2_reg.exit122.i.i.ql_write_page2_reg.exit128.i.i_crit_edge, label %if.then.i127.i.i

ql_write_page2_reg.exit122.i.i.ql_write_page2_reg.exit128.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit128.i.i

if.then.i127.i.i:                                 ; preds = %ql_write_page2_reg.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %533 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i126.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %534, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i126.i.i, i32 33555200) #13, !srcloc !326
  %535 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i126.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %536 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit128.i.i

ql_write_page2_reg.exit128.i.i:                   ; preds = %if.then.i127.i.i, %ql_write_page2_reg.exit122.i.i.ql_write_page2_reg.exit128.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %537 = tail call i32 @llvm.bswap.i32(i32 %conv27.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tcpHashTableCount.i.i, i32 %537) #13, !srcloc !326
  %538 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tcpHashTableCount.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %ncbBase.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 11
  %ncbTableBaseHi.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 19
  %539 = ptrtoint ptr %ncbTableBaseHi.i.i to i32
  call void @__asan_load2_noabort(i32 %539)
  %540 = load i16, ptr %ncbTableBaseHi.i.i, align 8
  %conv29.i.i = zext i16 %540 to i32
  %shl30.i.i = shl nuw i32 %conv29.i.i, 16
  %ncbTableBaseLo.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 20
  %541 = ptrtoint ptr %ncbTableBaseLo.i.i to i32
  call void @__asan_load2_noabort(i32 %541)
  %542 = load i16, ptr %ncbTableBaseLo.i.i, align 2
  %conv32.i.i = zext i16 %542 to i32
  %or33.i.i = or i32 %shl30.i.i, %conv32.i.i
  %543 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %544)
  %cmp.not.i130.i.i = icmp eq i32 %544, 2
  br i1 %cmp.not.i130.i.i, label %ql_write_page2_reg.exit128.i.i.ql_write_page2_reg.exit134.i.i_crit_edge, label %if.then.i133.i.i

ql_write_page2_reg.exit128.i.i.ql_write_page2_reg.exit134.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit128.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit134.i.i

if.then.i133.i.i:                                 ; preds = %ql_write_page2_reg.exit128.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %545 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i132.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %546, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i132.i.i, i32 33555200) #13, !srcloc !326
  %547 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i132.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %548 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit134.i.i

ql_write_page2_reg.exit134.i.i:                   ; preds = %if.then.i133.i.i, %ql_write_page2_reg.exit128.i.i.ql_write_page2_reg.exit134.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %549 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ncbBase.i.i, i32 %549) #13, !srcloc !326
  %550 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ncbBase.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %maxNcbCount.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 12
  %ncbTableSize.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 21
  %551 = ptrtoint ptr %ncbTableSize.i.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %ncbTableSize.i.i, align 4
  %conv35.i.i = zext i16 %552 to i32
  %553 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %554)
  %cmp.not.i136.i.i = icmp eq i32 %554, 2
  br i1 %cmp.not.i136.i.i, label %ql_write_page2_reg.exit134.i.i.ql_write_page2_reg.exit140.i.i_crit_edge, label %if.then.i139.i.i

ql_write_page2_reg.exit134.i.i.ql_write_page2_reg.exit140.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit140.i.i

if.then.i139.i.i:                                 ; preds = %ql_write_page2_reg.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %555 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i138.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %556, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i138.i.i, i32 33555200) #13, !srcloc !326
  %557 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i138.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %558 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit140.i.i

ql_write_page2_reg.exit140.i.i:                   ; preds = %if.then.i139.i.i, %ql_write_page2_reg.exit134.i.i.ql_write_page2_reg.exit140.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %559 = tail call i32 @llvm.bswap.i32(i32 %conv35.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maxNcbCount.i.i, i32 %559) #13, !srcloc !326
  %560 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maxNcbCount.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %drbBase.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 14
  %drbTableBaseHi.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 22
  %561 = ptrtoint ptr %drbTableBaseHi.i.i to i32
  call void @__asan_load2_noabort(i32 %561)
  %562 = load i16, ptr %drbTableBaseHi.i.i, align 2
  %conv37.i.i = zext i16 %562 to i32
  %shl38.i.i = shl nuw i32 %conv37.i.i, 16
  %drbTableBaseLo.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 23
  %563 = ptrtoint ptr %drbTableBaseLo.i.i to i32
  call void @__asan_load2_noabort(i32 %563)
  %564 = load i16, ptr %drbTableBaseLo.i.i, align 8
  %conv40.i.i = zext i16 %564 to i32
  %or41.i.i = or i32 %shl38.i.i, %conv40.i.i
  %565 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %566)
  %cmp.not.i142.i.i = icmp eq i32 %566, 2
  br i1 %cmp.not.i142.i.i, label %ql_write_page2_reg.exit140.i.i.ql_write_page2_reg.exit146.i.i_crit_edge, label %if.then.i145.i.i

ql_write_page2_reg.exit140.i.i.ql_write_page2_reg.exit146.i.i_crit_edge: ; preds = %ql_write_page2_reg.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page2_reg.exit146.i.i

if.then.i145.i.i:                                 ; preds = %ql_write_page2_reg.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %567 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i144.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %568, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i144.i.i, i32 33555200) #13, !srcloc !326
  %569 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i144.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %570 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page2_reg.exit146.i.i

ql_write_page2_reg.exit146.i.i:                   ; preds = %if.then.i145.i.i, %ql_write_page2_reg.exit140.i.i.ql_write_page2_reg.exit146.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %571 = tail call i32 @llvm.bswap.i32(i32 %or41.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %drbBase.i.i, i32 %571) #13, !srcloc !326
  %572 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %drbBase.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %maxDrbCount.i.i = getelementptr inbounds %struct.ql3xxx_local_ram_registers, ptr %450, i32 0, i32 15
  %drbTableSize.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 24
  %573 = ptrtoint ptr %drbTableSize.i.i to i32
  call void @__asan_load2_noabort(i32 %573)
  %574 = load i16, ptr %drbTableSize.i.i, align 2
  %conv43.i.i = zext i16 %574 to i32
  %575 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %576)
  %cmp.not.i148.i.i = icmp eq i32 %576, 2
  br i1 %cmp.not.i148.i.i, label %ql_write_page2_reg.exit146.i.i.if.end47.i_crit_edge, label %if.then.i151.i.i

ql_write_page2_reg.exit146.i.i.if.end47.i_crit_edge: ; preds = %ql_write_page2_reg.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.then.i151.i.i:                                 ; preds = %ql_write_page2_reg.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %577 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i150.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %578, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i150.i.i, i32 33555200) #13, !srcloc !326
  %579 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i150.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %580 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 2, ptr %current_page.i13.i.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then.i151.i.i, %ql_write_page2_reg.exit146.i.i.if.end47.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  tail call void @arm_heavy_mb() #13
  %581 = tail call i32 @llvm.bswap.i32(i32 %conv43.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maxDrbCount.i.i, i32 %581) #13, !srcloc !326
  %582 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maxDrbCount.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %583 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i.i415.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %584, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i.i415.i, i32 28672) #13, !srcloc !326
  %585 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i.i415.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  %tcpMaxWindowSize.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 27
  %586 = ptrtoint ptr %tcpMaxWindowSize.i to i32
  call void @__asan_load2_noabort(i32 %586)
  %587 = load i16, ptr %tcpMaxWindowSize.i, align 2
  %conv48.i = zext i16 %587 to i32
  %588 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %589)
  %cmp.not.i418.i = icmp eq i32 %589, 0
  br i1 %cmp.not.i418.i, label %if.end47.i.ql_write_page0_reg.exit.i_crit_edge, label %if.then.i421.i

if.end47.i.ql_write_page0_reg.exit.i_crit_edge:   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit.i

if.then.i421.i:                                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %590 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i420.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %591, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i420.i, i32 768) #13, !srcloc !326
  %592 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i420.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %593 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit.i

ql_write_page0_reg.exit.i:                        ; preds = %if.then.i421.i, %if.end47.i.ql_write_page0_reg.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %594 = tail call i32 @llvm.bswap.i32(i32 %conv48.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspLength.i, i32 %594) #13, !srcloc !326
  %595 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspLength.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %extHwConfig.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 5
  %596 = ptrtoint ptr %extHwConfig.i to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %extHwConfig.i, align 8
  %598 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %mac_index.i.i, align 4
  %mul.i102 = shl i32 %599, 14
  %or51.i = or i32 %mul.i102, 32768
  %call52.i = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %qdev, i32 noundef -536870912, i32 noundef %or51.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %ql_write_page0_reg.exit.i.if.then28_crit_edge

ql_write_page0_reg.exit.i.if.then28_crit_edge:    ; preds = %ql_write_page0_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

if.end55.i:                                       ; preds = %ql_write_page0_reg.exit.i
  %conv50.i = zext i16 %597 to i32
  %or.i = or i32 %conv50.i, -65536
  %ExternalHWConfig.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 1
  %600 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %601)
  %cmp.not.i423.i = icmp eq i32 %601, 0
  br i1 %cmp.not.i423.i, label %if.end55.i.ql_write_page0_reg.exit427.i_crit_edge, label %if.then.i426.i

if.end55.i.ql_write_page0_reg.exit427.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit427.i

if.then.i426.i:                                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  %602 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i425.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %603, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i425.i, i32 768) #13, !srcloc !326
  %604 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i425.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %605 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %605)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit427.i

ql_write_page0_reg.exit427.i:                     ; preds = %if.then.i426.i, %if.end55.i.ql_write_page0_reg.exit427.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %606 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ExternalHWConfig.i, i32 %606) #13, !srcloc !326
  %607 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ExternalHWConfig.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %InternalChipConfig.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 2
  %608 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %609)
  %cmp.not.i429.i = icmp eq i32 %609, 0
  br i1 %cmp.not.i429.i, label %ql_write_page0_reg.exit427.i.ql_write_page0_reg.exit433.i_crit_edge, label %if.then.i432.i

ql_write_page0_reg.exit427.i.ql_write_page0_reg.exit433.i_crit_edge: ; preds = %ql_write_page0_reg.exit427.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit433.i

if.then.i432.i:                                   ; preds = %ql_write_page0_reg.exit427.i
  call void @__sanitizer_cov_trace_pc() #15
  %610 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i431.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %611, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i431.i, i32 768) #13, !srcloc !326
  %612 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i431.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %613 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit433.i

ql_write_page0_reg.exit433.i:                     ; preds = %if.then.i432.i, %ql_write_page0_reg.exit427.i.ql_write_page0_reg.exit433.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %InternalChipConfig.i, i32 301994496) #13, !srcloc !326
  %614 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %InternalChipConfig.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %615 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %616, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i.i, i32 224) #13, !srcloc !326
  %617 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %if.end56.i

if.end56.i:                                       ; preds = %ql_write_page0_reg.exit433.i, %ql_read_page0_reg.exit.i.if.end56.i_crit_edge
  %618 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %mac_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %619)
  %tobool58.not.i = icmp eq i32 %619, 0
  br i1 %tobool58.not.i, label %if.else.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end56.i
  %mac1MaxFrameLengthReg.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 19
  %620 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %max_frame_size.i, align 8
  %622 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %623)
  %cmp.not.i436.i = icmp eq i32 %623, 0
  br i1 %cmp.not.i436.i, label %if.then59.i.ql_write_page0_reg.exit440.i_crit_edge, label %if.then.i439.i

if.then59.i.ql_write_page0_reg.exit440.i_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit440.i

if.then.i439.i:                                   ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #15
  %624 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i438.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %625, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i438.i, i32 768) #13, !srcloc !326
  %626 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i438.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %627 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %627)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit440.i

ql_write_page0_reg.exit440.i:                     ; preds = %if.then.i439.i, %if.then59.i.ql_write_page0_reg.exit440.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %628 = tail call i32 @llvm.bswap.i32(i32 %621) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac1MaxFrameLengthReg.i, i32 %628) #13, !srcloc !326
  %629 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1MaxFrameLengthReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end61.i

if.else.i:                                        ; preds = %if.end56.i
  %630 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %max_frame_size.i, align 8
  %632 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %633)
  %cmp.not.i442.i = icmp eq i32 %633, 0
  br i1 %cmp.not.i442.i, label %if.else.i.ql_write_page0_reg.exit446.i_crit_edge, label %if.then.i445.i

if.else.i.ql_write_page0_reg.exit446.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit446.i

if.then.i445.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %634 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i444.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %635, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i444.i, i32 768) #13, !srcloc !326
  %636 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i444.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %637 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit446.i

ql_write_page0_reg.exit446.i:                     ; preds = %if.then.i445.i, %if.else.i.ql_write_page0_reg.exit446.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %638 = tail call i32 @llvm.bswap.i32(i32 %631) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reqConsumerIndexAddrLow.i, i32 %638) #13, !srcloc !326
  %639 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reqConsumerIndexAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end61.i

if.end61.i:                                       ; preds = %ql_write_page0_reg.exit446.i, %ql_write_page0_reg.exit440.i
  %640 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %mac_index.i.i, align 4
  %mul63.i = shl i32 %641, 8
  %or64.i = or i32 %mul63.i, 512
  %call66.i = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %qdev, i32 noundef 58720256, i32 noundef %or64.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end61.i.if.then28_crit_edge

if.end61.i.if.then28_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

if.end69.i:                                       ; preds = %if.end61.i
  tail call fastcc void @PHY_Setup(ptr noundef %qdev) #13
  tail call fastcc void @ql_mii_enable_scan_mode(ptr noundef %qdev) #13
  %642 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load volatile i32, ptr %flags.i.i, align 4
  %644 = and i32 %643, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %644)
  %tobool.not.i447.i = icmp eq i32 %644, 0
  %645 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %mem_map_registers.i, align 8
  %647 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %mac_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %648)
  %switch.selectcmp.i16.i.i = icmp eq i32 %648, 1
  %switch.select.i17.i.i = select i1 %switch.selectcmp.i16.i.i, i32 134217728, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %648)
  %switch.selectcmp23.i18.i.i = icmp eq i32 %648, 0
  %switch.select24.i19.i.i = select i1 %switch.selectcmp23.i18.i.i, i32 33554432, i32 %switch.select.i17.i.i
  %portStatus.i20.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %646, i32 0, i32 4
  %649 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %650)
  %cmp.not.i.i22.i.i = icmp eq i32 %650, 0
  br i1 %tobool.not.i447.i, label %if.else.i.i108, label %if.then.i448.i

if.then.i448.i:                                   ; preds = %if.end69.i
  br i1 %cmp.not.i.i22.i.i, label %if.then.i448.i.ql_read_page0_reg.exit.i.i.i_crit_edge, label %if.then.i.i.i.i104

if.then.i448.i.ql_read_page0_reg.exit.i.i.i_crit_edge: ; preds = %if.then.i448.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i.i.i

if.then.i.i.i.i104:                               ; preds = %if.then.i448.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %646, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i.i.i, i32 768) #13, !srcloc !326
  %651 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %652 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_read_page0_reg.exit.i.i.i

ql_read_page0_reg.exit.i.i.i:                     ; preds = %if.then.i.i.i.i104, %if.then.i448.i.ql_read_page0_reg.exit.i.i.i_crit_edge
  %653 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i20.i.i) #13, !srcloc !327
  %654 = shl i32 %653, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i.i.i105 = and i32 %654, %switch.select24.i19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105)
  %tobool.not.i.i.i106 = icmp eq i32 %and.i.i.i105, 0
  %msg_enable7.i.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %655 = ptrtoint ptr %msg_enable7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %msg_enable7.i.i.i, align 8
  %and8.i.i.i = and i32 %656, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %ql_read_page0_reg.exit.i.i.i.ql_this_adapter_controls_port.exit.i.i_crit_edge, label %cleanup.sink.split.i.i.i

ql_read_page0_reg.exit.i.i.i.ql_this_adapter_controls_port.exit.i.i_crit_edge: ; preds = %ql_read_page0_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_this_adapter_controls_port.exit.i.i

cleanup.sink.split.i.i.i:                         ; preds = %ql_read_page0_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %.str.87..str.86.i.i.i = select i1 %tobool.not.i.i.i106, ptr @.str.87, ptr @.str.86
  %657 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %658, ptr noundef nonnull %.str.87..str.86.i.i.i) #16
  br label %ql_this_adapter_controls_port.exit.i.i

ql_this_adapter_controls_port.exit.i.i:           ; preds = %cleanup.sink.split.i.i.i, %ql_read_page0_reg.exit.i.i.i.ql_this_adapter_controls_port.exit.i.i_crit_edge
  br i1 %tobool.not.i.i.i106, label %if.then3.i.i, label %ql_this_adapter_controls_port.exit.i.i.ql_init_scan_mode.exit.i_crit_edge

ql_this_adapter_controls_port.exit.i.i.ql_init_scan_mode.exit.i_crit_edge: ; preds = %ql_this_adapter_controls_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_init_scan_mode.exit.i

if.then3.i.i:                                     ; preds = %ql_this_adapter_controls_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %659 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %mac_index.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %660
  %661 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %arrayidx.i.i.i.i, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext -32768, i32 noundef %662) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i.i.i) #13
  %663 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %663)
  store i16 -1, ptr %reg.i.i.i.i, align 2, !annotation !353
  %664 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %mac_index.i.i, align 4
  %arrayidx.i3.i.i.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %665
  %666 = ptrtoint ptr %arrayidx.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %arrayidx.i3.i.i.i, align 4
  %call.i.i.i.i = call fastcc i32 @ql_mii_read_reg_ex(ptr noundef %qdev, i16 noundef zeroext 17, ptr noundef nonnull %reg.i.i.i.i, i32 noundef %667) #13
  %668 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %668)
  %669 = load i16, ptr %reg.i.i.i.i, align 2
  %670 = or i16 %669, 256
  %671 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %mac_index.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %672
  %673 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %arrayidx3.i.i.i.i, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 17, i16 noundef zeroext %670, i32 noundef %674) #13
  %675 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %mac_index.i.i, align 4
  %arrayidx6.i.i.i.i107 = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %676
  %677 = ptrtoint ptr %arrayidx6.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %arrayidx6.i.i.i.i107, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 4, i16 noundef zeroext 160, i32 noundef %678) #13
  %679 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %mac_index.i.i, align 4
  %arrayidx9.i.i.i.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %680
  %681 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext 4928, i32 noundef %682) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i.i.i) #13
  br label %ql_init_scan_mode.exit.i

if.else.i.i108:                                   ; preds = %if.end69.i
  br i1 %cmp.not.i.i22.i.i, label %if.else.i.i108.ql_read_page0_reg.exit.i30.i.i_crit_edge, label %if.then.i.i24.i.i

if.else.i.i108.ql_read_page0_reg.exit.i30.i.i_crit_edge: ; preds = %if.else.i.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i30.i.i

if.then.i.i24.i.i:                                ; preds = %if.else.i.i108
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i23.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %646, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i23.i.i, i32 768) #13, !srcloc !326
  %683 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i23.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %684 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %684)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_read_page0_reg.exit.i30.i.i

ql_read_page0_reg.exit.i30.i.i:                   ; preds = %if.then.i.i24.i.i, %if.else.i.i108.ql_read_page0_reg.exit.i30.i.i_crit_edge
  %685 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i20.i.i) #13, !srcloc !327
  %686 = shl i32 %685, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i25.i.i = and i32 %686, %switch.select24.i19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i.i)
  %tobool.not.i26.i.i = icmp eq i32 %and.i25.i.i, 0
  %msg_enable7.i27.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %687 = ptrtoint ptr %msg_enable7.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %msg_enable7.i27.i.i, align 8
  %and8.i28.i.i = and i32 %688, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i28.i.i)
  %tobool9.not.i29.i.i = icmp eq i32 %and8.i28.i.i, 0
  br i1 %tobool9.not.i29.i.i, label %ql_read_page0_reg.exit.i30.i.i.ql_this_adapter_controls_port.exit35.i.i_crit_edge, label %cleanup.sink.split.i33.i.i

ql_read_page0_reg.exit.i30.i.i.ql_this_adapter_controls_port.exit35.i.i_crit_edge: ; preds = %ql_read_page0_reg.exit.i30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_this_adapter_controls_port.exit35.i.i

cleanup.sink.split.i33.i.i:                       ; preds = %ql_read_page0_reg.exit.i30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %.str.87..str.86.i31.i.i = select i1 %tobool.not.i26.i.i, ptr @.str.87, ptr @.str.86
  %689 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %690, ptr noundef nonnull %.str.87..str.86.i31.i.i) #16
  br label %ql_this_adapter_controls_port.exit35.i.i

ql_this_adapter_controls_port.exit35.i.i:         ; preds = %cleanup.sink.split.i33.i.i, %ql_read_page0_reg.exit.i30.i.i.ql_this_adapter_controls_port.exit35.i.i_crit_edge
  br i1 %tobool.not.i26.i.i, label %if.then6.i.i, label %ql_this_adapter_controls_port.exit35.i.i.ql_init_scan_mode.exit.i_crit_edge

ql_this_adapter_controls_port.exit35.i.i.ql_init_scan_mode.exit.i_crit_edge: ; preds = %ql_this_adapter_controls_port.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_init_scan_mode.exit.i

if.then6.i.i:                                     ; preds = %ql_this_adapter_controls_port.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_phy_init_ex(ptr noundef %qdev) #13
  br label %ql_init_scan_mode.exit.i

ql_init_scan_mode.exit.i:                         ; preds = %if.then6.i.i, %ql_this_adapter_controls_port.exit35.i.i.ql_init_scan_mode.exit.i_crit_edge, %if.then3.i.i, %ql_this_adapter_controls_port.exit.i.i.ql_init_scan_mode.exit.i_crit_edge
  %691 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %mem_map_registers.i, align 8
  %693 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %mac_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %694)
  %switch.selectcmp.i.i.i = icmp eq i32 %694, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 134217728, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %694)
  %switch.selectcmp23.i.i.i = icmp eq i32 %694, 0
  %switch.select24.i.i.i = select i1 %switch.selectcmp23.i.i.i, i32 33554432, i32 %switch.select.i.i.i
  %portStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %692, i32 0, i32 4
  %695 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %696)
  %cmp.not.i.i.i.i = icmp eq i32 %696, 0
  br i1 %cmp.not.i.i.i.i, label %ql_init_scan_mode.exit.i.ql_read_page0_reg.exit.i.i457.i_crit_edge, label %if.then.i.i.i451.i

ql_init_scan_mode.exit.i.ql_read_page0_reg.exit.i.i457.i_crit_edge: ; preds = %ql_init_scan_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i.i457.i

if.then.i.i.i451.i:                               ; preds = %ql_init_scan_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i.i450.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %692, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i.i450.i, i32 768) #13, !srcloc !326
  %697 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i.i450.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %698 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %698)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_read_page0_reg.exit.i.i457.i

ql_read_page0_reg.exit.i.i457.i:                  ; preds = %if.then.i.i.i451.i, %ql_init_scan_mode.exit.i.ql_read_page0_reg.exit.i.i457.i_crit_edge
  %699 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i.i.i) #13, !srcloc !327
  %700 = shl i32 %699, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i.i452.i = and i32 %700, %switch.select24.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i452.i)
  %tobool.not.i.i453.i = icmp eq i32 %and.i.i452.i, 0
  %msg_enable7.i.i454.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %701 = ptrtoint ptr %msg_enable7.i.i454.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %msg_enable7.i.i454.i, align 8
  %and8.i.i455.i = and i32 %702, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i455.i)
  %tobool9.not.i.i456.i = icmp eq i32 %and8.i.i455.i, 0
  br i1 %tobool9.not.i.i456.i, label %ql_read_page0_reg.exit.i.i457.i.ql_this_adapter_controls_port.exit.i462.i_crit_edge, label %cleanup.sink.split.i.i460.i

ql_read_page0_reg.exit.i.i457.i.ql_this_adapter_controls_port.exit.i462.i_crit_edge: ; preds = %ql_read_page0_reg.exit.i.i457.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_this_adapter_controls_port.exit.i462.i

cleanup.sink.split.i.i460.i:                      ; preds = %ql_read_page0_reg.exit.i.i457.i
  call void @__sanitizer_cov_trace_pc() #15
  %.str.87..str.86.i.i458.i = select i1 %tobool.not.i.i453.i, ptr @.str.87, ptr @.str.86
  %703 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %704, ptr noundef nonnull %.str.87..str.86.i.i458.i) #16
  br label %ql_this_adapter_controls_port.exit.i462.i

ql_this_adapter_controls_port.exit.i462.i:        ; preds = %cleanup.sink.split.i.i460.i, %ql_read_page0_reg.exit.i.i457.i.ql_this_adapter_controls_port.exit.i462.i_crit_edge
  br i1 %tobool.not.i.i453.i, label %if.then.i463.i, label %if.else.i464.i

if.then.i463.i:                                   ; preds = %ql_this_adapter_controls_port.exit.i462.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i.i) #13
  br label %ql_get_phy_owner.exit.i

if.else.i464.i:                                   ; preds = %ql_this_adapter_controls_port.exit.i462.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i.i) #13
  br label %ql_get_phy_owner.exit.i

ql_get_phy_owner.exit.i:                          ; preds = %if.else.i464.i, %if.then.i463.i
  %macAddrIndirectPtrReg.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 5
  %705 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %706)
  %cmp.not.i467.i = icmp eq i32 %706, 0
  br i1 %cmp.not.i467.i, label %ql_get_phy_owner.exit.i.ql_write_page0_reg.exit471.i_crit_edge, label %if.then.i470.i

ql_get_phy_owner.exit.i.ql_write_page0_reg.exit471.i_crit_edge: ; preds = %ql_get_phy_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit471.i

if.then.i470.i:                                   ; preds = %ql_get_phy_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %707 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i469.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %708, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i469.i, i32 768) #13, !srcloc !326
  %709 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i469.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %710 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit471.i

ql_write_page0_reg.exit471.i:                     ; preds = %if.then.i470.i, %ql_get_phy_owner.exit.i.ql_write_page0_reg.exit471.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrIndirectPtrReg.i, i32 768) #13, !srcloc !326
  %711 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrIndirectPtrReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %macAddrDataReg.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 6
  %712 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %ndev1, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %713, i32 0, i32 86
  %714 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i = getelementptr i8, ptr %715, i32 2
  %716 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %arrayidx.i, align 1
  %conv72.i = zext i8 %717 to i32
  %shl73.i = shl nuw i32 %conv72.i, 24
  %arrayidx76.i = getelementptr i8, ptr %715, i32 3
  %718 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %718)
  %719 = load i8, ptr %arrayidx76.i, align 1
  %conv77.i = zext i8 %719 to i32
  %shl78.i = shl nuw nsw i32 %conv77.i, 16
  %or79.i = or i32 %shl78.i, %shl73.i
  %arrayidx82.i = getelementptr i8, ptr %715, i32 4
  %720 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %arrayidx82.i, align 1
  %conv83.i = zext i8 %721 to i32
  %shl84.i = shl nuw nsw i32 %conv83.i, 8
  %or85.i = or i32 %or79.i, %shl84.i
  %arrayidx88.i = getelementptr i8, ptr %715, i32 5
  %722 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %arrayidx88.i, align 1
  %conv89.i = zext i8 %723 to i32
  %or90.i = or i32 %or85.i, %conv89.i
  %724 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %725)
  %cmp.not.i473.i = icmp eq i32 %725, 0
  br i1 %cmp.not.i473.i, label %ql_write_page0_reg.exit471.i.ql_write_page0_reg.exit477.i_crit_edge, label %if.then.i476.i

ql_write_page0_reg.exit471.i.ql_write_page0_reg.exit477.i_crit_edge: ; preds = %ql_write_page0_reg.exit471.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit477.i

if.then.i476.i:                                   ; preds = %ql_write_page0_reg.exit471.i
  call void @__sanitizer_cov_trace_pc() #15
  %726 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i475.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %727, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i475.i, i32 768) #13, !srcloc !326
  %728 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i475.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %729 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit477.i

ql_write_page0_reg.exit477.i:                     ; preds = %if.then.i476.i, %ql_write_page0_reg.exit471.i.ql_write_page0_reg.exit477.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %730 = tail call i32 @llvm.bswap.i32(i32 %or90.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrDataReg.i, i32 %730) #13, !srcloc !326
  %731 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrDataReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %732 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %733)
  %cmp.not.i479.i = icmp eq i32 %733, 0
  br i1 %cmp.not.i479.i, label %ql_write_page0_reg.exit477.i.ql_write_page0_reg.exit483.i_crit_edge, label %if.then.i482.i

ql_write_page0_reg.exit477.i.ql_write_page0_reg.exit483.i_crit_edge: ; preds = %ql_write_page0_reg.exit477.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit483.i

if.then.i482.i:                                   ; preds = %ql_write_page0_reg.exit477.i
  call void @__sanitizer_cov_trace_pc() #15
  %734 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i481.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %735, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i481.i, i32 768) #13, !srcloc !326
  %736 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i481.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %737 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit483.i

ql_write_page0_reg.exit483.i:                     ; preds = %if.then.i482.i, %ql_write_page0_reg.exit477.i.ql_write_page0_reg.exit483.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrIndirectPtrReg.i, i32 16777984) #13, !srcloc !326
  %738 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrIndirectPtrReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %739 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %ndev1, align 4
  %dev_addr94.i = getelementptr inbounds %struct.net_device, ptr %740, i32 0, i32 86
  %741 = ptrtoint ptr %dev_addr94.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %dev_addr94.i, align 64
  %743 = ptrtoint ptr %742 to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %742, align 1
  %conv96.i = zext i8 %744 to i32
  %shl97.i = shl nuw nsw i32 %conv96.i, 8
  %arrayidx100.i = getelementptr i8, ptr %742, i32 1
  %745 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load1_noabort(i32 %745)
  %746 = load i8, ptr %arrayidx100.i, align 1
  %conv101.i = zext i8 %746 to i32
  %or102.i = or i32 %shl97.i, %conv101.i
  %747 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %748)
  %cmp.not.i485.i = icmp eq i32 %748, 0
  br i1 %cmp.not.i485.i, label %ql_write_page0_reg.exit483.i.ql_write_page0_reg.exit489.i_crit_edge, label %if.then.i488.i

ql_write_page0_reg.exit483.i.ql_write_page0_reg.exit489.i_crit_edge: ; preds = %ql_write_page0_reg.exit483.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit489.i

if.then.i488.i:                                   ; preds = %ql_write_page0_reg.exit483.i
  call void @__sanitizer_cov_trace_pc() #15
  %749 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i487.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %750, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i487.i, i32 768) #13, !srcloc !326
  %751 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i487.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %752 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %752)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit489.i

ql_write_page0_reg.exit489.i:                     ; preds = %if.then.i488.i, %ql_write_page0_reg.exit483.i.ql_write_page0_reg.exit489.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %753 = tail call i32 @llvm.bswap.i32(i32 %or102.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrDataReg.i, i32 %753) #13, !srcloc !326
  %754 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrDataReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %755 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %756)
  %cmp.not.i491.i = icmp eq i32 %756, 0
  br i1 %cmp.not.i491.i, label %ql_write_page0_reg.exit489.i.ql_write_page0_reg.exit495.i_crit_edge, label %if.then.i494.i

ql_write_page0_reg.exit489.i.ql_write_page0_reg.exit495.i_crit_edge: ; preds = %ql_write_page0_reg.exit489.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit495.i

if.then.i494.i:                                   ; preds = %ql_write_page0_reg.exit489.i
  call void @__sanitizer_cov_trace_pc() #15
  %757 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i493.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %758, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i493.i, i32 768) #13, !srcloc !326
  %759 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i493.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %760 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit495.i

ql_write_page0_reg.exit495.i:                     ; preds = %if.then.i494.i, %ql_write_page0_reg.exit489.i.ql_write_page0_reg.exit495.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macAddrIndirectPtrReg.i, i32 -2147450880) #13, !srcloc !326
  %761 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macAddrIndirectPtrReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %762 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load i32, ptr %mac_index.i.i, align 4
  %shl105.i = shl i32 %763, 2
  %or106.i = or i32 %shl105.i, 983040
  %764 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %765)
  %cmp.not.i497.i = icmp eq i32 %765, 0
  br i1 %cmp.not.i497.i, label %ql_write_page0_reg.exit495.i.ql_write_page0_reg.exit501.i_crit_edge, label %if.then.i500.i

ql_write_page0_reg.exit495.i.ql_write_page0_reg.exit501.i_crit_edge: ; preds = %ql_write_page0_reg.exit495.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit501.i

if.then.i500.i:                                   ; preds = %ql_write_page0_reg.exit495.i
  call void @__sanitizer_cov_trace_pc() #15
  %766 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i499.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %767, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i499.i, i32 768) #13, !srcloc !326
  %768 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i499.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %769 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %769)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit501.i

ql_write_page0_reg.exit501.i:                     ; preds = %if.then.i500.i, %ql_write_page0_reg.exit495.i.ql_write_page0_reg.exit501.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %770 = tail call i32 @llvm.bswap.i32(i32 %or106.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspProducerIndexAddrHigh.i, i32 %770) #13, !srcloc !326
  %771 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspProducerIndexAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %772 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %773)
  %cmp.not.i503.i = icmp eq i32 %773, 0
  br i1 %cmp.not.i503.i, label %ql_write_page0_reg.exit501.i.ql_write_page0_reg.exit507.i_crit_edge, label %if.then.i506.i

ql_write_page0_reg.exit501.i.ql_write_page0_reg.exit507.i_crit_edge: ; preds = %ql_write_page0_reg.exit501.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit507.i

if.then.i506.i:                                   ; preds = %ql_write_page0_reg.exit501.i
  call void @__sanitizer_cov_trace_pc() #15
  %774 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i505.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %775, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i505.i, i32 768) #13, !srcloc !326
  %776 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i505.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %777 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %777)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit507.i

ql_write_page0_reg.exit507.i:                     ; preds = %if.then.i506.i, %ql_write_page0_reg.exit501.i.ql_write_page0_reg.exit507.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspBaseAddrLow.i, i32 0) #13, !srcloc !326
  %778 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspBaseAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %779 = ptrtoint ptr %mac_index.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %mac_index.i.i, align 4
  %shl109.i = shl i32 %780, 2
  %or110.i = or i32 %shl109.i, 983041
  %781 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %782)
  %cmp.not.i509.i = icmp eq i32 %782, 0
  br i1 %cmp.not.i509.i, label %ql_write_page0_reg.exit507.i.ql_write_page0_reg.exit513.i_crit_edge, label %if.then.i512.i

ql_write_page0_reg.exit507.i.ql_write_page0_reg.exit513.i_crit_edge: ; preds = %ql_write_page0_reg.exit507.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit513.i

if.then.i512.i:                                   ; preds = %ql_write_page0_reg.exit507.i
  call void @__sanitizer_cov_trace_pc() #15
  %783 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i511.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %784, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i511.i, i32 768) #13, !srcloc !326
  %785 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i511.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %786 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %786)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit513.i

ql_write_page0_reg.exit513.i:                     ; preds = %if.then.i512.i, %ql_write_page0_reg.exit507.i.ql_write_page0_reg.exit513.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %787 = tail call i32 @llvm.bswap.i32(i32 %or110.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspProducerIndexAddrHigh.i, i32 %787) #13, !srcloc !326
  %788 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspProducerIndexAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %789 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %790)
  %cmp.not.i515.i = icmp eq i32 %790, 0
  br i1 %cmp.not.i515.i, label %ql_write_page0_reg.exit513.i.ql_write_page0_reg.exit519.i_crit_edge, label %if.then.i518.i

ql_write_page0_reg.exit513.i.ql_write_page0_reg.exit519.i_crit_edge: ; preds = %ql_write_page0_reg.exit513.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit519.i

if.then.i518.i:                                   ; preds = %ql_write_page0_reg.exit513.i
  call void @__sanitizer_cov_trace_pc() #15
  %791 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i517.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %792, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i517.i, i32 768) #13, !srcloc !326
  %793 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i517.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %794 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %794)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit519.i

ql_write_page0_reg.exit519.i:                     ; preds = %if.then.i518.i, %ql_write_page0_reg.exit513.i.ql_write_page0_reg.exit519.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rspBaseAddrLow.i, i32 0) #13, !srcloc !326
  %795 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rspBaseAddrLow.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %796 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i521.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %797, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i521.i, i32 32771) #13, !srcloc !326
  %798 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i521.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  %portControl.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %226, i32 0, i32 3
  %799 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %800)
  %cmp.not.i523.i = icmp eq i32 %800, 0
  br i1 %cmp.not.i523.i, label %ql_write_page0_reg.exit519.i.ql_write_page0_reg.exit527.i_crit_edge, label %if.then.i526.i

ql_write_page0_reg.exit519.i.ql_write_page0_reg.exit527.i_crit_edge: ; preds = %ql_write_page0_reg.exit519.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit527.i

if.then.i526.i:                                   ; preds = %ql_write_page0_reg.exit519.i
  call void @__sanitizer_cov_trace_pc() #15
  %801 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i525.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %802, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i525.i, i32 768) #13, !srcloc !326
  %803 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i525.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %804 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit527.i

ql_write_page0_reg.exit527.i:                     ; preds = %if.then.i526.i, %ql_write_page0_reg.exit519.i.ql_write_page0_reg.exit527.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portControl.i, i32 8388736) #13, !srcloc !326
  %805 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portControl.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %do.body.i

do.body.i:                                        ; preds = %if.end117.i.do.body.i_crit_edge, %ql_write_page0_reg.exit527.i
  %delay.0.i = phi i32 [ 10, %ql_write_page0_reg.exit527.i ], [ %dec119.i, %if.end117.i.do.body.i_crit_edge ]
  %806 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %807)
  %cmp.not.i529.i = icmp eq i32 %807, 0
  br i1 %cmp.not.i529.i, label %do.body.i.ql_read_page0_reg.exit534.i_crit_edge, label %if.then.i532.i

do.body.i.ql_read_page0_reg.exit534.i_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit534.i

if.then.i532.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %808 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i531.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %809, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i531.i, i32 768) #13, !srcloc !326
  %810 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i531.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %811 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %811)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_read_page0_reg.exit534.i

ql_read_page0_reg.exit534.i:                      ; preds = %if.then.i532.i, %do.body.i.ql_read_page0_reg.exit534.i_crit_edge
  %812 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %813 = and i32 %812, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %813)
  %tobool115.not.i = icmp eq i32 %813, 0
  br i1 %tobool115.not.i, label %if.end117.i, label %if.end125.i

if.end117.i:                                      ; preds = %ql_read_page0_reg.exit534.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %hw_lock) #13
  tail call void @msleep(i32 noundef 500) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %hw_lock) #13
  %dec119.i = add nsw i32 %delay.0.i, -1
  %tobool120.not.i = icmp eq i32 %dec119.i, 0
  br i1 %tobool120.not.i, label %if.then123.i, label %if.end117.i.do.body.i_crit_edge

if.end117.i.do.body.i_crit_edge:                  ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then123.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  %814 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %815, ptr noundef nonnull @.str.74) #16
  br label %if.then28

if.end125.i:                                      ; preds = %ql_read_page0_reg.exit534.i
  %816 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %device_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12338, i32 %817)
  %cmp126.i = icmp eq i32 %817, 12338
  %818 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %current_page.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %819)
  %cmp.not.i536.i = icmp eq i32 %819, 0
  br i1 %cmp126.i, label %if.then128.i, label %if.else131.i

if.then128.i:                                     ; preds = %if.end125.i
  br i1 %cmp.not.i536.i, label %if.then128.i.ql_write_page0_reg.exit540.i_crit_edge, label %if.then.i539.i

if.then128.i.ql_write_page0_reg.exit540.i_crit_edge: ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit540.i

if.then.i539.i:                                   ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #15
  %820 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i538.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %821, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i538.i, i32 768) #13, !srcloc !326
  %822 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i538.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %823 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %823)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit540.i

ql_write_page0_reg.exit540.i:                     ; preds = %if.then.i539.i, %if.then128.i.ql_write_page0_reg.exit540.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxSmallQBaseAddrHigh.i, i32 1006779394) #13, !srcloc !326
  %824 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxSmallQBaseAddrHigh.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end29

if.else131.i:                                     ; preds = %if.end125.i
  br i1 %cmp.not.i536.i, label %if.else131.i.ql_write_page0_reg.exit546.i_crit_edge, label %if.then.i545.i

if.else131.i.ql_write_page0_reg.exit546.i_crit_edge: ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit546.i

if.then.i545.i:                                   ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #15
  %825 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i544.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %826, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i544.i, i32 768) #13, !srcloc !326
  %827 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i544.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %828 = ptrtoint ptr %current_page.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 0, ptr %current_page.i13.i.i, align 4
  br label %ql_write_page0_reg.exit546.i

ql_write_page0_reg.exit546.i:                     ; preds = %if.then.i545.i, %if.else131.i.ql_write_page0_reg.exit546.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %portControl.i, i32 503324160) #13, !srcloc !326
  %829 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portControl.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end29

if.then28:                                        ; preds = %if.then123.i, %if.end61.i.if.then28_crit_edge, %ql_write_page0_reg.exit.i.if.then28_crit_edge, %if.then43.i101.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.51) #16
  %830 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %831, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i, i32 3584) #13, !srcloc !326
  %832 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %err_lock

if.end29:                                         ; preds = %ql_write_page0_reg.exit546.i, %ql_write_page0_reg.exit540.i
  %833 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i112 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %834, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i112, i32 3584) #13, !srcloc !326
  %835 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i112) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call19) #13
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i.i) #13
  %adapter_timer = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %836 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %836, 100
  %call32 = tail call i32 @mod_timer(ptr noundef %adapter_timer, i32 noundef %add) #13
  %napi = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 4
  tail call void @napi_enable(ptr noundef %napi) #13
  %837 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %mem_map_registers.i, align 8
  %ispInterruptMaskReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %838, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispInterruptMaskReg.i, i32 67174144) #13, !srcloc !326
  %839 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispInterruptMaskReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2.i.i) #13
  br label %cleanup

err_lock:                                         ; preds = %if.then28, %if.then24
  %err.0 = phi i32 [ -1, %if.then28 ], [ -19, %if.then24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call19) #13
  %840 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %pdev.i, align 8
  %irq35 = getelementptr inbounds %struct.pci_dev, ptr %841, i32 0, i32 46
  %842 = ptrtoint ptr %irq35 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %irq35, align 4
  %call36 = tail call ptr @free_irq(i32 noundef %843, ptr noundef %1) #13
  br label %err_irq

err_irq:                                          ; preds = %err_lock, %if.then13
  %err.1 = phi i32 [ %call.i, %if.then13 ], [ %err.0, %err_lock ]
  %844 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load i32, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %845)
  %tobool38.not = icmp eq i32 %845, 0
  br i1 %tobool38.not, label %err_irq.cleanup_crit_edge, label %land.lhs.true

err_irq.cleanup_crit_edge:                        ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %err_irq
  %846 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load volatile i32, ptr %flags.i.i, align 4
  %848 = and i32 %847, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %848)
  %tobool41.not = icmp eq i32 %848, 0
  br i1 %tobool41.not, label %land.lhs.true.cleanup_crit_edge, label %if.then42

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.52) #16
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flags.i.i) #13
  %849 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msi(ptr noundef %850) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %land.lhs.true.cleanup_crit_edge, %err_irq.cleanup_crit_edge, %if.end29, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end29 ], [ %err.1, %if.then42 ], [ %err.1, %land.lhs.true.cleanup_crit_edge ], [ %err.1, %err_irq.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql3xxx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr i8, ptr %dev_id, i32 2696
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %ispControlStatus = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  %hw_lock.i = getelementptr i8, ptr %dev_id, i32 2648
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus) #13, !srcloc !327
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !332
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i) #13
  %and = and i32 %3, 16392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else12, label %if.then

if.then:                                          ; preds = %entry
  %adapter_lock = getelementptr i8, ptr %dev_id, i32 2604
  tail call void @_raw_spin_lock(ptr noundef %adapter_lock) #13
  %ndev2 = getelementptr i8, ptr %dev_id, i32 2316
  %4 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev2, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %8 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev2, align 4
  tail call void @netif_carrier_off(ptr noundef %9) #13
  %10 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem_map_registers, align 8
  %ispInterruptMaskReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %11, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispInterruptMaskReg.i, i32 1024) #13, !srcloc !326
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispInterruptMaskReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i.i) #13
  %port_link_state = getelementptr i8, ptr %dev_id, i32 45928
  %13 = ptrtoint ptr %port_link_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %port_link_state, align 8
  %flags = getelementptr i8, ptr %dev_id, i32 2308
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  %and4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %PortFatalErrStatus = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 43
  %call2.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  %current_page.i = getelementptr i8, ptr %dev_id, i32 2700
  %14 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.not.i = icmp eq i32 %15, 0
  br i1 %cmp5.not.i, label %if.then6.ql_read_page0_reg_l.exit_crit_edge, label %if.then.i

if.then6.ql_read_page0_reg_l.exit_crit_edge:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg_l.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %17, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %19 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_read_page0_reg_l.exit

ql_read_page0_reg_l.exit:                         ; preds = %if.then.i, %if.then6.ql_read_page0_reg_l.exit_crit_edge
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PortFatalErrStatus) #13, !srcloc !327
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i54) #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.69, i32 noundef %21) #16
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #13
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.70, i32 noundef %3) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %ql_read_page0_reg_l.exit
  %workqueue = getelementptr i8, ptr %dev_id, i32 45952
  %22 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %workqueue, align 8
  %reset_work = getelementptr i8, ptr %dev_id, i32 45956
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %reset_work, i32 noundef 0) #13
  tail call void @_raw_spin_unlock(ptr noundef %adapter_lock) #13
  br label %cleanup

if.else12:                                        ; preds = %entry
  %and13 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else12.cleanup_crit_edge, label %if.then15

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.else12
  %24 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_map_registers, align 8
  %ispInterruptMaskReg.i56 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %25, i32 0, i32 11
  %call2.i.i58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispInterruptMaskReg.i56, i32 1024) #13, !srcloc !326
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispInterruptMaskReg.i56) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i.i58) #13
  %napi = getelementptr i8, ptr %dev_id, i32 2320
  %call16 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call16, label %if.then19, label %if.then15.cleanup_crit_edge, !prof !344

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then15.cleanup_crit_edge, %if.else12.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ 0, %if.else12.cleanup_crit_edge ], [ 1, %if.then19 ], [ 1, %if.then15.cleanup_crit_edge ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_wait_for_drvr_lock(ptr nocapture noundef readonly %qdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_index = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %mem_map_registers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %mac_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_index, align 4
  %mul = shl i32 %1, 2
  %or = or i32 %mul, 8
  %2 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !362
  tail call void @arm_heavy_mb() #13
  %or.i = or i32 %mul, 917512
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %semaphoreReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %3, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i, i32 %4) #13, !srcloc !326
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i) #13, !srcloc !327
  %6 = lshr i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !363
  %and.i = and i32 %6, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %or)
  %cmp.i.not = icmp eq i32 %and.i, %or
  br i1 %cmp.i.not, label %if.then, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %8, ptr noundef nonnull @.str.72) #16
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body.while.body_crit_edge
  %__ms.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000, %do.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.06, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #13
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %ndev2 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %10 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev2, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.73) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_free_buffer_queues(ptr noundef %qdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %4, ptr noundef nonnull @.str.68) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lrg_buf = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 54
  %5 = ptrtoint ptr %lrg_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lrg_buf, align 4
  tail call void @kfree(ptr noundef %6) #13
  %pdev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 2
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %lrg_buf_q_alloc_size = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 43
  %9 = ptrtoint ptr %lrg_buf_q_alloc_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lrg_buf_q_alloc_size, align 8
  %lrg_buf_q_alloc_virt_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 45
  %11 = ptrtoint ptr %lrg_buf_q_alloc_virt_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lrg_buf_q_alloc_virt_addr, align 8
  %lrg_buf_q_alloc_phy_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 47
  %13 = ptrtoint ptr %lrg_buf_q_alloc_phy_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lrg_buf_q_alloc_phy_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef 0) #13
  %lrg_buf_q_virt_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 46
  %15 = ptrtoint ptr %lrg_buf_q_virt_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %lrg_buf_q_virt_addr, align 4
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %small_buf_q_alloc_size = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 61
  %18 = ptrtoint ptr %small_buf_q_alloc_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %small_buf_q_alloc_size, align 8
  %small_buf_q_alloc_virt_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 64
  %20 = ptrtoint ptr %small_buf_q_alloc_virt_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %small_buf_q_alloc_virt_addr, align 4
  %small_buf_q_alloc_phy_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 66
  %22 = ptrtoint ptr %small_buf_q_alloc_phy_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %small_buf_q_alloc_phy_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #13
  %small_buf_q_virt_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 65
  %24 = ptrtoint ptr %small_buf_q_virt_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %small_buf_q_virt_addr, align 8
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_free_net_req_rsp_queues(ptr noundef %qdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %4, ptr noundef nonnull @.str.68) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %req_q_size = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 22
  %7 = ptrtoint ptr %req_q_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req_q_size, align 8
  %req_q_virt_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 24
  %9 = ptrtoint ptr %req_q_virt_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req_q_virt_addr, align 8
  %req_q_phy_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 25
  %11 = ptrtoint ptr %req_q_phy_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req_q_phy_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 0) #13
  %13 = ptrtoint ptr %req_q_virt_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %req_q_virt_addr, align 8
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %rsp_q_size = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 33
  %16 = ptrtoint ptr %rsp_q_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rsp_q_size, align 4
  %rsp_q_virt_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 35
  %18 = ptrtoint ptr %rsp_q_virt_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rsp_q_virt_addr, align 4
  %rsp_q_phy_addr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 36
  %20 = ptrtoint ptr %rsp_q_phy_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rsp_q_phy_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef 0) #13
  %22 = ptrtoint ptr %rsp_q_virt_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rsp_q_virt_addr, align 4
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_free_large_buffers(ptr nocapture noundef readonly %qdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lrg_buf = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 54
  %num_large_buffers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 52
  %0 = ptrtoint ptr %num_large_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_large_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.then.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.then.for.body_crit_edge ]
  %2 = ptrtoint ptr %lrg_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lrg_buf, align 4
  %skb = getelementptr %struct.ql_rcv_buf_cb, ptr %3, i32 %i.011, i32 1
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.then

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.ql_rcv_buf_cb, ptr %3, i32 %i.011
  tail call void @consume_skb(ptr noundef nonnull %5) #13
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %mapaddr = getelementptr %struct.ql_rcv_buf_cb, ptr %3, i32 %i.011, i32 2
  %8 = ptrtoint ptr %mapaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapaddr, align 4
  %maplen = getelementptr %struct.ql_rcv_buf_cb, ptr %3, i32 %i.011, i32 3
  %10 = ptrtoint ptr %maplen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maplen, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %11, i32 noundef 2, i32 noundef 0) #13
  %12 = call ptr @memset(ptr %arrayidx, i32 0, i32 28)
  %inc = add nuw i32 %i.011, 1
  %13 = ptrtoint ptr %num_large_buffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_large_buffers, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.then.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_sem_spinlock(ptr nocapture noundef readonly %qdev, i32 noundef %sem_mask, i32 noundef %sem_bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %or = or i32 %sem_bits, %sem_mask
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %semaphoreReg = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 13
  %shr = lshr i32 %sem_mask, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg, i32 %2) #13, !srcloc !326
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg) #13, !srcloc !327
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !365
  %and = and i32 %4, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sem_bits)
  %cmp = icmp eq i32 %and, %sem_bits
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.014 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.014, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #13
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg, i32 %2) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg) #13, !srcloc !327
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !365
  %and.1 = and i32 %7, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %sem_bits)
  %cmp.1 = icmp eq i32 %and.1, %sem_bits
  br i1 %cmp.1, label %while.end.cleanup_crit_edge, label %while.end.while.body.1_crit_edge

while.end.while.body.1_crit_edge:                 ; preds = %while.end
  br label %while.body.1

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.end.while.body.1_crit_edge
  %__ms.014.1 = phi i32 [ %dec.1, %while.body.1.while.body.1_crit_edge ], [ 1000, %while.end.while.body.1_crit_edge ]
  %dec.1 = add nsw i32 %__ms.014.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #13
  %tobool.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool.not.1, label %while.end.1, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.1

while.end.1:                                      ; preds = %while.body.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg, i32 %2) #13, !srcloc !326
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg) #13, !srcloc !327
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !365
  %and.2 = and i32 %10, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2, i32 %sem_bits)
  %cmp.2 = icmp eq i32 %and.2, %sem_bits
  br i1 %cmp.2, label %while.end.1.cleanup_crit_edge, label %while.end.1.while.body.2_crit_edge

while.end.1.while.body.2_crit_edge:               ; preds = %while.end.1
  br label %while.body.2

while.end.1.cleanup_crit_edge:                    ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %while.end.1.while.body.2_crit_edge
  %__ms.014.2 = phi i32 [ %dec.2, %while.body.2.while.body.2_crit_edge ], [ 1000, %while.end.1.while.body.2_crit_edge ]
  %dec.2 = add nsw i32 %__ms.014.2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #13
  %tobool.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool.not.2, label %while.body.2.cleanup_crit_edge, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.2

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %while.body.2.cleanup_crit_edge, %while.end.1.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %while.end.1.cleanup_crit_edge ], [ -1, %while.body.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @PHY_Setup(ptr noundef %qdev) unnamed_addr #2 align 64 {
entry:
  %reg1 = alloca i16, align 2
  %reg2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg1) #13
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg1, align 2, !annotation !353
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg2) #13
  %1 = ptrtoint ptr %reg2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %reg2, align 2, !annotation !353
  %call = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 2, ptr noundef nonnull %reg1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.75) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 3, ptr noundef nonnull %reg2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ndev4 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %4 = ptrtoint ptr %ndev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev4, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.76) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp6 = icmp eq i16 %7, -1
  br i1 %cmp6, label %if.end5.if.then11_crit_edge, label %lor.lhs.false

if.end5.if.then11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end5
  %8 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp9 = icmp eq i16 %9, -1
  br i1 %cmp9, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end5.if.then11_crit_edge
  %mac_index = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %10 = ptrtoint ptr %mac_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12 = icmp eq i32 %11, 0
  %. = select i1 %cmp12, i32 4096, i32 4352
  %call16 = call fastcc i32 @ql_mii_read_reg_ex(ptr noundef %qdev, i16 noundef zeroext 2, ptr noundef nonnull %reg1, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %ndev20 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %12 = ptrtoint ptr %ndev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.77) #16
  br label %cleanup

if.end21:                                         ; preds = %if.then11
  %call22 = call fastcc i32 @ql_mii_read_reg_ex(ptr noundef %qdev, i16 noundef zeroext 3, ptr noundef nonnull %reg2, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %ndev26 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %14 = ptrtoint ptr %ndev26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev26, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.78) #16
  br label %cleanup

if.end28:                                         ; preds = %if.end21.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %agereAddrChangeNeeded.0.off0 = phi i1 [ true, %lor.lhs.false.if.end28_crit_edge ], [ false, %if.end21.if.end28_crit_edge ]
  %miiAddr.1 = phi i32 [ 0, %lor.lhs.false.if.end28_crit_edge ], [ %., %if.end21.if.end28_crit_edge ]
  %16 = ptrtoint ptr %reg1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg1, align 2
  %18 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp.i = icmp eq i16 %17, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp3.i = icmp eq i16 %19, -1
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %if.end28.if.else37.thread_crit_edge, label %if.end6.i

if.end28.if.else37.thread_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37.thread

if.end6.i:                                        ; preds = %if.end28
  %conv.i = zext i16 %17 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 6
  %20 = lshr i16 %19, 10
  %21 = zext i16 %20 to i32
  %or.i = or i32 %shl.i, %21
  %and10.i = lshr i16 %19, 4
  %22 = and i16 %and10.i, 63
  %23 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %or.i, label %if.end6.i.if.else37.thread_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1009, label %land.lhs.true.1.i
    i32 41148, label %land.lhs.true.2.i
  ]

if.end6.i.if.else37.thread_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37.thread

land.lhs.true.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp20.i = icmp eq i16 %22, 0
  br i1 %cmp20.i, label %land.lhs.true.i.getPhyType.exit_crit_edge, label %land.lhs.true.i.if.else37.thread_crit_edge

land.lhs.true.i.if.else37.thread_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37.thread

land.lhs.true.i.getPhyType.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %getPhyType.exit

land.lhs.true.1.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %22)
  %cmp20.1.i = icmp eq i16 %22, 11
  br i1 %cmp20.1.i, label %land.lhs.true.1.i.getPhyType.exit_crit_edge, label %land.lhs.true.1.i.if.else37.thread_crit_edge

land.lhs.true.1.i.if.else37.thread_crit_edge:     ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37.thread

land.lhs.true.1.i.getPhyType.exit_crit_edge:      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %getPhyType.exit

land.lhs.true.2.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp20.2.i = icmp eq i16 %22, 1
  br i1 %cmp20.2.i, label %land.lhs.true.2.i.getPhyType.exit_crit_edge, label %land.lhs.true.2.i.if.else37.thread_crit_edge

land.lhs.true.2.i.if.else37.thread_crit_edge:     ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else37.thread

land.lhs.true.2.i.getPhyType.exit_crit_edge:      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %getPhyType.exit

if.else37.thread:                                 ; preds = %land.lhs.true.2.i.if.else37.thread_crit_edge, %land.lhs.true.1.i.if.else37.thread_crit_edge, %land.lhs.true.i.if.else37.thread_crit_edge, %if.end6.i.if.else37.thread_crit_edge, %if.end28.if.else37.thread_crit_edge
  %phyType5 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 88
  %24 = ptrtoint ptr %phyType5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %phyType5, align 8
  br label %if.then42

getPhyType.exit:                                  ; preds = %land.lhs.true.2.i.getPhyType.exit_crit_edge, %land.lhs.true.1.i.getPhyType.exit_crit_edge, %land.lhs.true.i.getPhyType.exit_crit_edge
  %i.040.lcssa.i = phi i32 [ 0, %land.lhs.true.i.getPhyType.exit_crit_edge ], [ 1, %land.lhs.true.1.i.getPhyType.exit_crit_edge ], [ 2, %land.lhs.true.2.i.getPhyType.exit_crit_edge ]
  %arrayidx.le.i = getelementptr [3 x %struct.PHY_DEVICE_INFO], ptr @PHY_DEVICES, i32 0, i32 %i.040.lcssa.i
  %ndev.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %25 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev.i, align 4
  %name.i = getelementptr [3 x %struct.PHY_DEVICE_INFO], ptr @PHY_DEVICES, i32 0, i32 %i.040.lcssa.i, i32 3
  %27 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %26, ptr noundef nonnull @.str.81, ptr noundef %28) #16
  %29 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.le.i, align 4
  %conv30 = trunc i32 %30 to i16
  %phyType = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 88
  %31 = ptrtoint ptr %phyType to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv30, ptr %phyType, align 8
  %conv32 = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv32)
  %cmp33 = icmp ne i32 %conv32, 2
  %brmerge = or i1 %agereAddrChangeNeeded.0.off0, %cmp33
  br i1 %brmerge, label %if.else37, label %if.then36

if.then36:                                        ; preds = %getPhyType.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ndev.i1 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %32 = ptrtoint ptr %ndev.i1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev.i1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %33, ptr noundef nonnull @.str.85) #16
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext 6464, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 18, i16 noundef zeroext -31730, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 16, i16 noundef zeroext -30715, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 17, i16 noundef zeroext -4034, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 16, i16 noundef zeroext -30714, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 17, i16 noundef zeroext 62, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 16, i16 noundef zeroext -30713, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 17, i16 noundef zeroext 7936, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 16, i16 noundef zeroext 10246, i32 noundef %miiAddr.1) #13
  %mac_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %34 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mac_index.i, align 4
  %arrayidx.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %37, 8
  %38 = trunc i32 %shr.i to i16
  %conv.i2 = or i16 %38, 32
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 17, i16 noundef zeroext %conv.i2, i32 noundef %miiAddr.1) #13
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 18, i16 noundef zeroext -31734) #13
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext 4416) #13
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 28, i16 noundef zeroext -1296) #13
  br label %cleanup

if.else37:                                        ; preds = %getPhyType.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv30)
  %cmp40 = icmp eq i16 %conv30, 0
  br i1 %cmp40, label %if.else37.if.then42_crit_edge, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else37.if.then42_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then42:                                        ; preds = %if.else37.if.then42_crit_edge, %if.else37.thread
  %ndev43 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %39 = ptrtoint ptr %ndev43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev43, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.79) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.else37.cleanup_crit_edge, %if.then36, %if.then25, %if.then19, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg2) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_mii_read_reg(ptr nocapture noundef %qdev, i16 noundef zeroext %regAddr, ptr nocapture noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %call = tail call fastcc zeroext i8 @ql_mii_disable_scan_mode(ptr noundef %qdev)
  %2 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %3, i32 0, i32 10
  %current_page.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %count.06.i = phi i32 [ 1000, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %while.body.i.ql_read_page0_reg.exit.i_crit_edge, label %if.then.i.i

while.body.i.ql_read_page0_reg.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %9 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i

ql_read_page0_reg.exit.i:                         ; preds = %if.then.i.i, %while.body.i.ql_read_page0_reg.exit.i_crit_edge
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %ql_read_page0_reg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #13
  %dec.i = add nsw i32 %count.06.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.body:                                          ; preds = %if.end.i
  %msg_enable = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end4:                                          ; preds = %ql_read_page0_reg.exit.i
  %macMIIMgmtAddrReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 8
  %PHYAddr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 78
  %17 = ptrtoint ptr %PHYAddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %PHYAddr, align 8
  %conv = zext i16 %regAddr to i32
  %or = or i32 %18, %conv
  %19 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %if.end4.ql_write_page0_reg.exit_crit_edge, label %if.then.i

if.end4.ql_write_page0_reg.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %22, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %24 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i, %if.end4.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtAddrReg, i32 %25) #13, !srcloc !326
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtAddrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %macMIIMgmtControlReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i39 = icmp eq i32 %28, 0
  br i1 %cmp.not.i39, label %ql_write_page0_reg.exit.ql_write_page0_reg.exit43_crit_edge, label %if.then.i42

ql_write_page0_reg.exit.ql_write_page0_reg.exit43_crit_edge: ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit43

if.then.i42:                                      ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i41 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %30, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i41, i32 768) #13, !srcloc !326
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i41) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %32 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit43

ql_write_page0_reg.exit43:                        ; preds = %if.then.i42, %ql_write_page0_reg.exit.ql_write_page0_reg.exit43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg, i32 256) #13, !srcloc !326
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %34 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i45 = icmp eq i32 %35, 0
  br i1 %cmp.not.i45, label %ql_write_page0_reg.exit43.ql_write_page0_reg.exit49_crit_edge, label %if.then.i48

ql_write_page0_reg.exit43.ql_write_page0_reg.exit49_crit_edge: ; preds = %ql_write_page0_reg.exit43
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit49

if.then.i48:                                      ; preds = %ql_write_page0_reg.exit43
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i47 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %37, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i47, i32 768) #13, !srcloc !326
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i47) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %39 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit49

ql_write_page0_reg.exit49:                        ; preds = %if.then.i48, %ql_write_page0_reg.exit43.ql_write_page0_reg.exit49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg, i32 16777472) #13, !srcloc !326
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %41 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i51 = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %42, i32 0, i32 10
  br label %while.body.i55

while.body.i55:                                   ; preds = %if.end.i62.while.body.i55_crit_edge, %ql_write_page0_reg.exit49
  %count.06.i53 = phi i32 [ 1000, %ql_write_page0_reg.exit49 ], [ %dec.i60, %if.end.i62.while.body.i55_crit_edge ]
  %43 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i.i54 = icmp eq i32 %44, 0
  br i1 %cmp.not.i.i54, label %while.body.i55.ql_read_page0_reg.exit.i59_crit_edge, label %if.then.i.i57

while.body.i55.ql_read_page0_reg.exit.i59_crit_edge: ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i59

if.then.i.i57:                                    ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i56 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %46, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i56, i32 768) #13, !srcloc !326
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i56) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %48 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i59

ql_read_page0_reg.exit.i59:                       ; preds = %if.then.i.i57, %while.body.i55.ql_read_page0_reg.exit.i59_crit_edge
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i51) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %50 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool1.not.i58 = icmp eq i32 %50, 0
  br i1 %tobool1.not.i58, label %if.end18, label %if.end.i62

if.end.i62:                                       ; preds = %ql_read_page0_reg.exit.i59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #13
  %dec.i60 = add nsw i32 %count.06.i53, -1
  %tobool.not.i61 = icmp eq i32 %dec.i60, 0
  br i1 %tobool.not.i61, label %do.body9, label %if.end.i62.while.body.i55_crit_edge

if.end.i62.while.body.i55_crit_edge:              ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i55

do.body9:                                         ; preds = %if.end.i62
  %msg_enable10 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %52 = ptrtoint ptr %msg_enable10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable10, align 8
  %and11 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body9.cleanup_crit_edge, label %if.then13

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %ndev14 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %54 = ptrtoint ptr %ndev14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ndev14, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %55, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end18:                                         ; preds = %ql_read_page0_reg.exit.i59
  %macMIIMgmtDataReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 9
  %56 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not.i66 = icmp eq i32 %57, 0
  br i1 %cmp.not.i66, label %if.end18.ql_read_page0_reg.exit_crit_edge, label %if.then.i69

if.end18.ql_read_page0_reg.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit

if.then.i69:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i68 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %59, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i68, i32 768) #13, !srcloc !326
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i68) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %61 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit

ql_read_page0_reg.exit:                           ; preds = %if.then.i69, %if.end18.ql_read_page0_reg.exit_crit_edge
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtDataReg) #13, !srcloc !327
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %conv20 = trunc i32 %63 to i16
  %64 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv20, ptr %value, align 2
  tail call fastcc void @ql_mii_enable_scan_mode(ptr noundef %qdev)
  br label %cleanup

cleanup:                                          ; preds = %ql_read_page0_reg.exit, %if.then13, %do.body9.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ql_read_page0_reg.exit ], [ -1, %if.then3 ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %if.then13 ], [ -1, %do.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_mii_read_reg_ex(ptr nocapture noundef %qdev, i16 noundef zeroext %regAddr, ptr nocapture noundef writeonly %value, i32 noundef %phyAddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %call = tail call fastcc zeroext i8 @ql_mii_disable_scan_mode(ptr noundef %qdev)
  %2 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %3, i32 0, i32 10
  %current_page.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %count.06.i = phi i32 [ 1000, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %while.body.i.ql_read_page0_reg.exit.i_crit_edge, label %if.then.i.i

while.body.i.ql_read_page0_reg.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %9 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i

ql_read_page0_reg.exit.i:                         ; preds = %if.then.i.i, %while.body.i.ql_read_page0_reg.exit.i_crit_edge
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %ql_read_page0_reg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #13
  %dec.i = add nsw i32 %count.06.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.body:                                          ; preds = %if.end.i
  %msg_enable = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end4:                                          ; preds = %ql_read_page0_reg.exit.i
  %macMIIMgmtAddrReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 8
  %conv = zext i16 %regAddr to i32
  %or = or i32 %conv, %phyAddr
  %17 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %if.end4.ql_write_page0_reg.exit_crit_edge, label %if.then.i

if.end4.ql_write_page0_reg.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %20, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %22 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i, %if.end4.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtAddrReg, i32 %23) #13, !srcloc !326
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtAddrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %macMIIMgmtControlReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i42 = icmp eq i32 %26, 0
  br i1 %cmp.not.i42, label %ql_write_page0_reg.exit.ql_write_page0_reg.exit46_crit_edge, label %if.then.i45

ql_write_page0_reg.exit.ql_write_page0_reg.exit46_crit_edge: ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit46

if.then.i45:                                      ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i44 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %28, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i44, i32 768) #13, !srcloc !326
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i44) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %30 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit46

ql_write_page0_reg.exit46:                        ; preds = %if.then.i45, %ql_write_page0_reg.exit.ql_write_page0_reg.exit46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg, i32 256) #13, !srcloc !326
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %32 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i48 = icmp eq i32 %33, 0
  br i1 %cmp.not.i48, label %ql_write_page0_reg.exit46.ql_write_page0_reg.exit52_crit_edge, label %if.then.i51

ql_write_page0_reg.exit46.ql_write_page0_reg.exit52_crit_edge: ; preds = %ql_write_page0_reg.exit46
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit52

if.then.i51:                                      ; preds = %ql_write_page0_reg.exit46
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i50 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %35, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i50, i32 768) #13, !srcloc !326
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i50) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %37 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit52

ql_write_page0_reg.exit52:                        ; preds = %if.then.i51, %ql_write_page0_reg.exit46.ql_write_page0_reg.exit52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg, i32 16777472) #13, !srcloc !326
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %39 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i54 = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %40, i32 0, i32 10
  br label %while.body.i58

while.body.i58:                                   ; preds = %if.end.i65.while.body.i58_crit_edge, %ql_write_page0_reg.exit52
  %count.06.i56 = phi i32 [ 1000, %ql_write_page0_reg.exit52 ], [ %dec.i63, %if.end.i65.while.body.i58_crit_edge ]
  %41 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i.i57 = icmp eq i32 %42, 0
  br i1 %cmp.not.i.i57, label %while.body.i58.ql_read_page0_reg.exit.i62_crit_edge, label %if.then.i.i60

while.body.i58.ql_read_page0_reg.exit.i62_crit_edge: ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i62

if.then.i.i60:                                    ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i59 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %44, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i59, i32 768) #13, !srcloc !326
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i59) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %46 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i62

ql_read_page0_reg.exit.i62:                       ; preds = %if.then.i.i60, %while.body.i58.ql_read_page0_reg.exit.i62_crit_edge
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i54) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool1.not.i61 = icmp eq i32 %48, 0
  br i1 %tobool1.not.i61, label %if.end18, label %if.end.i65

if.end.i65:                                       ; preds = %ql_read_page0_reg.exit.i62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #13
  %dec.i63 = add nsw i32 %count.06.i56, -1
  %tobool.not.i64 = icmp eq i32 %dec.i63, 0
  br i1 %tobool.not.i64, label %do.body9, label %if.end.i65.while.body.i58_crit_edge

if.end.i65.while.body.i58_crit_edge:              ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i58

do.body9:                                         ; preds = %if.end.i65
  %msg_enable10 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %50 = ptrtoint ptr %msg_enable10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_enable10, align 8
  %and11 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body9.cleanup_crit_edge, label %if.then13

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %ndev14 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %52 = ptrtoint ptr %ndev14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev14, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %53, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end18:                                         ; preds = %ql_read_page0_reg.exit.i62
  %macMIIMgmtDataReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 9
  %54 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i69 = icmp eq i32 %55, 0
  br i1 %cmp.not.i69, label %if.end18.ql_read_page0_reg.exit_crit_edge, label %if.then.i72

if.end18.ql_read_page0_reg.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit

if.then.i72:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i71 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %57, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i71, i32 768) #13, !srcloc !326
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i71) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %59 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit

ql_read_page0_reg.exit:                           ; preds = %if.then.i72, %if.end18.ql_read_page0_reg.exit_crit_edge
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtDataReg) #13, !srcloc !327
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %conv20 = trunc i32 %61 to i16
  %62 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv20, ptr %value, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool21.not = icmp eq i8 %call, 0
  br i1 %tobool21.not, label %ql_read_page0_reg.exit.cleanup_crit_edge, label %if.then22

ql_read_page0_reg.exit.cleanup_crit_edge:         ; preds = %ql_read_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %ql_read_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_mii_enable_scan_mode(ptr noundef %qdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %ql_read_page0_reg.exit.cleanup_crit_edge, %if.then13, %do.body9.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %if.then13 ], [ -1, %do.body9.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %ql_read_page0_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ql_mii_disable_scan_mode(ptr nocapture noundef %qdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %macMIIMgmtControlReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 7
  %current_page.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %2 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.ql_read_page0_reg.exit_crit_edge, label %if.then.i

entry.ql_read_page0_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %5 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_read_page0_reg.exit

ql_read_page0_reg.exit:                           ; preds = %if.then.i, %entry.ql_read_page0_reg.exit_crit_edge
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %macMIIMgmtAddrReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i8 = icmp eq i32 %8, 0
  br i1 %cmp.not.i8, label %ql_read_page0_reg.exit.ql_write_page0_reg.exit_crit_edge, label %if.then.i11

ql_read_page0_reg.exit.ql_write_page0_reg.exit_crit_edge: ; preds = %ql_read_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i11:                                      ; preds = %ql_read_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i10 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %10, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i10, i32 768) #13, !srcloc !326
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i10) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %12 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i11, %ql_read_page0_reg.exit.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtAddrReg, i32 18743296) #13, !srcloc !326
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtAddrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %14 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i13 = icmp eq i32 %15, 0
  br i1 %cmp.not.i13, label %ql_write_page0_reg.exit.ql_write_page0_reg.exit17_crit_edge, label %if.then.i16

ql_write_page0_reg.exit.ql_write_page0_reg.exit17_crit_edge: ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit17

if.then.i16:                                      ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i15 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %17, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i15, i32 768) #13, !srcloc !326
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i15) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %19 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit17

ql_write_page0_reg.exit17:                        ; preds = %if.then.i16, %ql_write_page0_reg.exit.ql_write_page0_reg.exit17_crit_edge
  %20 = and i32 %6, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp ne i32 %20, 0
  %. = zext i1 %tobool.not to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg, i32 1792) #13, !srcloc !326
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_mii_enable_scan_mode(ptr nocapture noundef %qdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %numPorts = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 81
  %2 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numPorts, align 4
  %macMIIMgmtAddrReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 8
  %current_page.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %4 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.ql_write_page0_reg.exit_crit_edge, label %if.then.i

entry.ql_write_page0_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %7 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i, %entry.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtAddrReg, i32 18743296) #13, !srcloc !326
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtAddrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %9 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i7 = icmp eq i32 %10, 0
  br i1 %cmp.not.i7, label %ql_write_page0_reg.exit.ql_write_page0_reg.exit11_crit_edge, label %if.then.i10

ql_write_page0_reg.exit.ql_write_page0_reg.exit11_crit_edge: ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit11

if.then.i10:                                      ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i9 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %12, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i9, i32 768) #13, !srcloc !326
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i9) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %14 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit11

ql_write_page0_reg.exit11:                        ; preds = %if.then.i10, %ql_write_page0_reg.exit.ql_write_page0_reg.exit11_crit_edge
  %macMIIMgmtControlReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  %. = select i1 %cmp, i32 393222, i32 393218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %.) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtControlReg, i32 %15) #13, !srcloc !326
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtControlReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_mii_write_reg_ex(ptr nocapture noundef %qdev, i16 noundef zeroext %regAddr, i16 noundef zeroext %value, i32 noundef %phyAddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %call = tail call fastcc zeroext i8 @ql_mii_disable_scan_mode(ptr noundef %qdev)
  %2 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %3, i32 0, i32 10
  %current_page.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %count.06.i = phi i32 [ 1000, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %while.body.i.ql_read_page0_reg.exit.i_crit_edge, label %if.then.i.i

while.body.i.ql_read_page0_reg.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %9 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i

ql_read_page0_reg.exit.i:                         ; preds = %if.then.i.i, %while.body.i.ql_read_page0_reg.exit.i_crit_edge
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %ql_read_page0_reg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #13
  %dec.i = add nsw i32 %count.06.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.body:                                          ; preds = %if.end.i
  %msg_enable = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end4:                                          ; preds = %ql_read_page0_reg.exit.i
  %macMIIMgmtAddrReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 8
  %conv = zext i16 %regAddr to i32
  %or = or i32 %conv, %phyAddr
  %17 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %if.end4.ql_write_page0_reg.exit_crit_edge, label %if.then.i

if.end4.ql_write_page0_reg.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %20, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %22 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i, %if.end4.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtAddrReg, i32 %23) #13, !srcloc !326
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtAddrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %macMIIMgmtDataReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 9
  %conv5 = zext i16 %value to i32
  %25 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i2 = icmp eq i32 %26, 0
  br i1 %cmp.not.i2, label %ql_write_page0_reg.exit.ql_write_page0_reg.exit6_crit_edge, label %if.then.i5

ql_write_page0_reg.exit.ql_write_page0_reg.exit6_crit_edge: ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit6

if.then.i5:                                       ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i4 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %28, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i4, i32 768) #13, !srcloc !326
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i4) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %30 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit6

ql_write_page0_reg.exit6:                         ; preds = %if.then.i5, %ql_write_page0_reg.exit.ql_write_page0_reg.exit6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv5) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtDataReg, i32 %31) #13, !srcloc !326
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtDataReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %33 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i8 = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %34, i32 0, i32 10
  br label %while.body.i12

while.body.i12:                                   ; preds = %if.end.i19.while.body.i12_crit_edge, %ql_write_page0_reg.exit6
  %count.06.i10 = phi i32 [ 1000, %ql_write_page0_reg.exit6 ], [ %dec.i17, %if.end.i19.while.body.i12_crit_edge ]
  %35 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i.i11 = icmp eq i32 %36, 0
  br i1 %cmp.not.i.i11, label %while.body.i12.ql_read_page0_reg.exit.i16_crit_edge, label %if.then.i.i14

while.body.i12.ql_read_page0_reg.exit.i16_crit_edge: ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i16

if.then.i.i14:                                    ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i13 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %38, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i13, i32 768) #13, !srcloc !326
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i13) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %40 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i16

ql_read_page0_reg.exit.i16:                       ; preds = %if.then.i.i14, %while.body.i12.ql_read_page0_reg.exit.i16_crit_edge
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i8) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool1.not.i15 = icmp eq i32 %42, 0
  br i1 %tobool1.not.i15, label %if.end18, label %if.end.i19

if.end.i19:                                       ; preds = %ql_read_page0_reg.exit.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #13
  %dec.i17 = add nsw i32 %count.06.i10, -1
  %tobool.not.i18 = icmp eq i32 %dec.i17, 0
  br i1 %tobool.not.i18, label %do.body9, label %if.end.i19.while.body.i12_crit_edge

if.end.i19.while.body.i12_crit_edge:              ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i12

do.body9:                                         ; preds = %if.end.i19
  %msg_enable10 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %44 = ptrtoint ptr %msg_enable10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable10, align 8
  %and11 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body9.cleanup_crit_edge, label %if.then13

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %ndev14 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %46 = ptrtoint ptr %ndev14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev14, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end18:                                         ; preds = %ql_read_page0_reg.exit.i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool19.not = icmp eq i8 %call, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_mii_enable_scan_mode(ptr noundef %qdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %if.then13, %do.body9.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_mii_write_reg(ptr nocapture noundef %qdev, i16 noundef zeroext %regAddr, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %call = tail call fastcc zeroext i8 @ql_mii_disable_scan_mode(ptr noundef %qdev)
  %2 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %3, i32 0, i32 10
  %current_page.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %count.06.i = phi i32 [ 1000, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %while.body.i.ql_read_page0_reg.exit.i_crit_edge, label %if.then.i.i

while.body.i.ql_read_page0_reg.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %9 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i

ql_read_page0_reg.exit.i:                         ; preds = %if.then.i.i, %while.body.i.ql_read_page0_reg.exit.i_crit_edge
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %ql_read_page0_reg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #13
  %dec.i = add nsw i32 %count.06.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.body:                                          ; preds = %if.end.i
  %msg_enable = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end4:                                          ; preds = %ql_read_page0_reg.exit.i
  %macMIIMgmtAddrReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 8
  %PHYAddr = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 78
  %17 = ptrtoint ptr %PHYAddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %PHYAddr, align 8
  %conv = zext i16 %regAddr to i32
  %or = or i32 %18, %conv
  %19 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %if.end4.ql_write_page0_reg.exit_crit_edge, label %if.then.i

if.end4.ql_write_page0_reg.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %22, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %24 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i, %if.end4.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtAddrReg, i32 %25) #13, !srcloc !326
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtAddrReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %macMIIMgmtDataReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 9
  %conv5 = zext i16 %value to i32
  %27 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i2 = icmp eq i32 %28, 0
  br i1 %cmp.not.i2, label %ql_write_page0_reg.exit.ql_write_page0_reg.exit6_crit_edge, label %if.then.i5

ql_write_page0_reg.exit.ql_write_page0_reg.exit6_crit_edge: ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit6

if.then.i5:                                       ; preds = %ql_write_page0_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i4 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %30, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i4, i32 768) #13, !srcloc !326
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i4) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %32 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_write_page0_reg.exit6

ql_write_page0_reg.exit6:                         ; preds = %if.then.i5, %ql_write_page0_reg.exit.ql_write_page0_reg.exit6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv5) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macMIIMgmtDataReg, i32 %33) #13, !srcloc !326
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIMgmtDataReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %35 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mem_map_registers, align 8
  %macMIIStatusReg.i8 = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %36, i32 0, i32 10
  br label %while.body.i12

while.body.i12:                                   ; preds = %if.end.i19.while.body.i12_crit_edge, %ql_write_page0_reg.exit6
  %count.06.i10 = phi i32 [ 1000, %ql_write_page0_reg.exit6 ], [ %dec.i17, %if.end.i19.while.body.i12_crit_edge ]
  %37 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i.i11 = icmp eq i32 %38, 0
  br i1 %cmp.not.i.i11, label %while.body.i12.ql_read_page0_reg.exit.i16_crit_edge, label %if.then.i.i14

while.body.i12.ql_read_page0_reg.exit.i16_crit_edge: ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit.i16

if.then.i.i14:                                    ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem_map_registers, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i13 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %40, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i13, i32 768) #13, !srcloc !326
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i13) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %42 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_read_page0_reg.exit.i16

ql_read_page0_reg.exit.i16:                       ; preds = %if.then.i.i14, %while.body.i12.ql_read_page0_reg.exit.i16_crit_edge
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %macMIIStatusReg.i8) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool1.not.i15 = icmp eq i32 %44, 0
  br i1 %tobool1.not.i15, label %if.end18, label %if.end.i19

if.end.i19:                                       ; preds = %ql_read_page0_reg.exit.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #13
  %dec.i17 = add nsw i32 %count.06.i10, -1
  %tobool.not.i18 = icmp eq i32 %dec.i17, 0
  br i1 %tobool.not.i18, label %do.body9, label %if.end.i19.while.body.i12_crit_edge

if.end.i19.while.body.i12_crit_edge:              ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i12

do.body9:                                         ; preds = %if.end.i19
  %msg_enable10 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 17
  %46 = ptrtoint ptr %msg_enable10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable10, align 8
  %and11 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body9.cleanup_crit_edge, label %if.then13

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %ndev14 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %48 = ptrtoint ptr %ndev14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev14, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %49, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end18:                                         ; preds = %ql_read_page0_reg.exit.i16
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_mii_enable_scan_mode(ptr noundef %qdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13, %do.body9.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_phy_init_ex(ptr noundef %qdev) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %0 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_index.i, align 4
  %arrayidx.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext -32768, i32 noundef %3) #13
  tail call fastcc void @PHY_Setup(ptr noundef %qdev)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #13
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg.i, align 2, !annotation !353
  %phyType.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 88
  %5 = ptrtoint ptr %phyType.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phyType.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp.i = icmp eq i16 %6, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 19, i16 noundef zeroext 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %7 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp eq i32 %8, 0
  %portConfiguration5.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 6, i32 3
  %portConfiguration7.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 75, i32 7, i32 3
  %portConfiguration.0.in.i = select i1 %cmp2.i, ptr %portConfiguration5.i, ptr %portConfiguration7.i
  %9 = ptrtoint ptr %portConfiguration.0.in.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %portConfiguration.0.i = load i16, ptr %portConfiguration.0.in.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %portConfiguration.0.i)
  %cmp10.i = icmp eq i16 %portConfiguration.0.i, 0
  %spec.store.select.i = select i1 %cmp10.i, i16 -2304, i16 %portConfiguration.0.i
  %arrayidx.i4 = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %8
  %10 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i4, align 4
  %call15.i = call fastcc i32 @ql_mii_read_reg_ex(ptr noundef %qdev, i16 noundef zeroext 9, ptr noundef nonnull %reg.i, i32 noundef %11) #13
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reg.i, align 2
  %14 = and i16 %13, -769
  store i16 %14, ptr %reg.i, align 2
  %conv18.i = zext i16 %spec.store.select.i to i32
  %and19.i = and i32 %conv18.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i = icmp eq i32 %and19.i, 0
  %.pre.i = and i32 %conv18.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end32.i_crit_edge, label %if.then20.i

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

if.then20.i:                                      ; preds = %if.end.i
  br i1 %phi.cmp.i, label %if.else27.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = or i16 %14, 512
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %reg.i, align 2
  br label %if.end32.i

if.else27.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = or i16 %14, 256
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %reg.i, align 2
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else27.i, %if.then24.i, %if.end.i.if.end32.i_crit_edge
  %and51.pre-phi.i = phi i1 [ false, %if.then24.i ], [ true, %if.else27.i ], [ %phi.cmp.i, %if.end.i.if.end32.i_crit_edge ]
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reg.i, align 2
  %21 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mac_index.i, align 4
  %arrayidx34.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx34.i, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 9, i16 noundef zeroext %20, i32 noundef %24) #13
  %25 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac_index.i, align 4
  %arrayidx37.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx37.i, align 4
  %call38.i = call fastcc i32 @ql_mii_read_reg_ex(ptr noundef %qdev, i16 noundef zeroext 4, ptr noundef nonnull %reg.i, i32 noundef %28) #13
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %reg.i, align 2
  %31 = and i16 %30, -4065
  %and43.i = and i32 %conv18.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %32 = or i16 %31, 3072
  %spec.select.i = select i1 %tobool44.not.i, i16 %31, i16 %32
  %33 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %spec.select.i, ptr %reg.i, align 2
  br i1 %and51.pre-phi.i, label %if.end32.i.if.end70.i_crit_edge, label %if.then53.i

if.end32.i.if.end70.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then53.i:                                      ; preds = %if.end32.i
  %and55.i = and i32 %conv18.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.then53.i.if.end61.i_crit_edge, label %if.then57.i

if.then53.i.if.end61.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i

if.then57.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = or i16 %spec.select.i, 256
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %reg.i, align 2
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then57.i, %if.then53.i.if.end61.i_crit_edge
  %and63.i = and i32 %conv18.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end61.i.if.end70.i_crit_edge, label %if.then65.i

if.end61.i.if.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then65.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg.i, align 2
  %38 = or i16 %37, 64
  store i16 %38, ptr %reg.i, align 2
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then65.i, %if.end61.i.if.end70.i_crit_edge, %if.end32.i.if.end70.i_crit_edge
  %and72.i = and i32 %conv18.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end91.i_crit_edge, label %if.then74.i

if.end70.i.if.end91.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

if.then74.i:                                      ; preds = %if.end70.i
  %and76.i = and i32 %conv18.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.then74.i.if.end82.i_crit_edge, label %if.then78.i

if.then74.i.if.end82.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82.i

if.then78.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %reg.i, align 2
  %41 = or i16 %40, 128
  store i16 %41, ptr %reg.i, align 2
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then78.i, %if.then74.i.if.end82.i_crit_edge
  %and84.i = and i32 %conv18.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.end82.i.if.end91.i_crit_edge, label %if.then86.i

if.end82.i.if.end91.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

if.then86.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %reg.i, align 2
  %44 = or i16 %43, 32
  store i16 %44, ptr %reg.i, align 2
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then86.i, %if.end82.i.if.end91.i_crit_edge, %if.end70.i.if.end91.i_crit_edge
  br i1 %tobool.not.i, label %if.end91.i.ql_phy_start_neg_ex.exit_crit_edge, label %if.then95.i

if.end91.i.ql_phy_start_neg_ex.exit_crit_edge:    ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_phy_start_neg_ex.exit

if.then95.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %reg.i, align 2
  %47 = or i16 %46, 1
  store i16 %47, ptr %reg.i, align 2
  br label %ql_phy_start_neg_ex.exit

ql_phy_start_neg_ex.exit:                         ; preds = %if.then95.i, %if.end91.i.ql_phy_start_neg_ex.exit_crit_edge
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %reg.i, align 2
  %50 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mac_index.i, align 4
  %arrayidx101.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx101.i, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 4, i16 noundef zeroext %49, i32 noundef %53) #13
  %54 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mac_index.i, align 4
  %arrayidx104.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx104.i, align 4
  %call105.i = call fastcc i32 @ql_mii_read_reg_ex(ptr noundef %qdev, i16 noundef zeroext 0, ptr noundef nonnull %reg.i, i32 noundef %57) #13
  %58 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %reg.i, align 2
  %60 = or i16 %59, 4608
  %61 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mac_index.i, align 4
  %arrayidx111.i = getelementptr [2 x i32], ptr @PHYAddr, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx111.i, align 4
  tail call fastcc void @ql_mii_write_reg_ex(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext %60, i32 noundef %64) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_adapter_down(ptr noundef %qdev, i32 noundef %do_reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_carrier_off(ptr noundef %1) #13
  %flags = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #13
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #13
  %mem_map_registers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %4 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_map_registers.i, align 8
  %ispInterruptMaskReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %5, i32 0, i32 11
  %hw_lock.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 13
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispInterruptMaskReg.i, i32 1024) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispInterruptMaskReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i.i, i32 noundef %call2.i.i) #13
  %pdev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 2
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %10, ptr noundef %1) #13
  %msi = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 9
  %11 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.52) #16
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flags) #13
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_msi(ptr noundef %19) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %adapter_timer = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 11
  %call10 = tail call i32 @del_timer_sync(ptr noundef %adapter_timer) #13
  %napi = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 4
  tail call void @napi_disable(ptr noundef %napi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_reset)
  %tobool11.not = icmp eq i32 %do_reset, 0
  br i1 %tobool11.not, label %if.end.if.end27_crit_edge, label %if.then12

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then12:                                        ; preds = %if.end
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i.i) #13
  %call18 = tail call fastcc i32 @ql_wait_for_drvr_lock(ptr noundef %qdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then12.if.end25_crit_edge, label %if.then20

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then20:                                        ; preds = %if.then12
  %20 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  %22 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %23, ptr noundef nonnull @.str.91) #16
  %ispControlStatus.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %21, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i, i32 8388736) #13, !srcloc !326
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  %25 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %26, ptr noundef nonnull @.str.92) #16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %28 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %if.then20.do.end.i_crit_edge, label %if.then20.while.body.i_crit_edge

if.then20.while.body.i_crit_edge:                 ; preds = %if.then20
  br label %while.body.i

if.then20.do.end.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then20.while.body.i_crit_edge
  %__ms.079.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 1000, %if.then20.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.079.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #13
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %31 = and i32 %30, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.1.i = icmp eq i32 %31, 0
  br i1 %cmp.1.i, label %while.end.i.do.end.i_crit_edge, label %while.end.i.while.body.1.i_crit_edge

while.end.i.while.body.1.i_crit_edge:             ; preds = %while.end.i
  br label %while.body.1.i

while.end.i.do.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

while.body.1.i:                                   ; preds = %while.body.1.i.while.body.1.i_crit_edge, %while.end.i.while.body.1.i_crit_edge
  %__ms.079.1.i = phi i32 [ %dec.1.i, %while.body.1.i.while.body.1.i_crit_edge ], [ 1000, %while.end.i.while.body.1.i_crit_edge ]
  %dec.1.i = add nsw i32 %__ms.079.1.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #13
  %tobool.not.1.i = icmp eq i32 %dec.1.i, 0
  br i1 %tobool.not.1.i, label %while.end.1.i, label %while.body.1.i.while.body.1.i_crit_edge

while.body.1.i.while.body.1.i_crit_edge:          ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.1.i

while.end.1.i:                                    ; preds = %while.body.1.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %34 = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.2.i = icmp eq i32 %34, 0
  br i1 %cmp.2.i, label %while.end.1.i.do.end.i_crit_edge, label %while.end.1.i.while.body.2.i_crit_edge

while.end.1.i.while.body.2.i_crit_edge:           ; preds = %while.end.1.i
  br label %while.body.2.i

while.end.1.i.do.end.i_crit_edge:                 ; preds = %while.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

while.body.2.i:                                   ; preds = %while.body.2.i.while.body.2.i_crit_edge, %while.end.1.i.while.body.2.i_crit_edge
  %__ms.079.2.i = phi i32 [ %dec.2.i, %while.body.2.i.while.body.2.i_crit_edge ], [ 1000, %while.end.1.i.while.body.2.i_crit_edge ]
  %dec.2.i = add nsw i32 %__ms.079.2.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #13
  %tobool.not.2.i = icmp eq i32 %dec.2.i, 0
  br i1 %tobool.not.2.i, label %while.end.2.i, label %while.body.2.i.while.body.2.i_crit_edge

while.body.2.i.while.body.2.i_crit_edge:          ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.2.i

while.end.2.i:                                    ; preds = %while.body.2.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %37 = and i32 %36, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.3.i = icmp eq i32 %37, 0
  br i1 %cmp.3.i, label %while.end.2.i.do.end.i_crit_edge, label %while.end.2.i.while.body.3.i_crit_edge

while.end.2.i.while.body.3.i_crit_edge:           ; preds = %while.end.2.i
  br label %while.body.3.i

while.end.2.i.do.end.i_crit_edge:                 ; preds = %while.end.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

while.body.3.i:                                   ; preds = %while.body.3.i.while.body.3.i_crit_edge, %while.end.2.i.while.body.3.i_crit_edge
  %__ms.079.3.i = phi i32 [ %dec.3.i, %while.body.3.i.while.body.3.i_crit_edge ], [ 1000, %while.end.2.i.while.body.3.i_crit_edge ]
  %dec.3.i = add nsw i32 %__ms.079.3.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #13
  %tobool.not.3.i = icmp eq i32 %dec.3.i, 0
  br i1 %tobool.not.3.i, label %while.end.3.i, label %while.body.3.i.while.body.3.i_crit_edge

while.body.3.i.while.body.3.i_crit_edge:          ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.3.i

while.end.3.i:                                    ; preds = %while.body.3.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %40 = and i32 %39, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.4.i = icmp eq i32 %40, 0
  br i1 %cmp.4.i, label %while.end.3.i.do.end.i_crit_edge, label %while.end.3.i.while.body.4.i_crit_edge

while.end.3.i.while.body.4.i_crit_edge:           ; preds = %while.end.3.i
  br label %while.body.4.i

while.end.3.i.do.end.i_crit_edge:                 ; preds = %while.end.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

while.body.4.i:                                   ; preds = %while.body.4.i.while.body.4.i_crit_edge, %while.end.3.i.while.body.4.i_crit_edge
  %__ms.079.4.i = phi i32 [ %dec.4.i, %while.body.4.i.while.body.4.i_crit_edge ], [ 1000, %while.end.3.i.while.body.4.i_crit_edge ]
  %dec.4.i = add nsw i32 %__ms.079.4.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #13
  %tobool.not.4.i = icmp eq i32 %dec.4.i, 0
  br i1 %tobool.not.4.i, label %while.body.4.i.do.end.i_crit_edge, label %while.body.4.i.while.body.4.i_crit_edge

while.body.4.i.while.body.4.i_crit_edge:          ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.4.i

while.body.4.i.do.end.i_crit_edge:                ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %while.body.4.i.do.end.i_crit_edge, %while.end.3.i.do.end.i_crit_edge, %while.end.2.i.do.end.i_crit_edge, %while.end.1.i.do.end.i_crit_edge, %while.end.i.do.end.i_crit_edge, %if.then20.do.end.i_crit_edge
  %cmp21.i = phi i1 [ false, %while.end.3.i.do.end.i_crit_edge ], [ false, %while.end.2.i.do.end.i_crit_edge ], [ false, %while.end.1.i.do.end.i_crit_edge ], [ false, %while.end.i.do.end.i_crit_edge ], [ false, %if.then20.do.end.i_crit_edge ], [ true, %while.body.4.i.do.end.i_crit_edge ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %43 = and i32 %42, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool15.not.i = icmp eq i32 %43, 0
  br i1 %tobool15.not.i, label %do.end.i.if.end20.i_crit_edge, label %if.then16.i

do.end.i.if.end20.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then16.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.71, ptr noundef %45, ptr noundef nonnull @.str.93) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i, i32 134219776) #13, !srcloc !326
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %do.end.i.if.end20.i_crit_edge
  br i1 %cmp21.i, label %if.then23.i, label %if.end24.critedge

if.then23.i:                                      ; preds = %if.end20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i, i32 2097184) #13, !srcloc !326
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %49 = and i32 %48, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp33.i = icmp eq i32 %49, 0
  br i1 %cmp33.i, label %if.end24.critedge51, label %if.then23.i.while.body41.i_crit_edge

if.then23.i.while.body41.i_crit_edge:             ; preds = %if.then23.i
  br label %while.body41.i

while.body41.i:                                   ; preds = %while.body41.i.while.body41.i_crit_edge, %if.then23.i.while.body41.i_crit_edge
  %__ms37.080.i = phi i32 [ %dec39.i, %while.body41.i.while.body41.i_crit_edge ], [ 1000, %if.then23.i.while.body41.i_crit_edge ]
  %dec39.i = add nsw i32 %__ms37.080.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #13
  %tobool40.not.i = icmp eq i32 %dec39.i, 0
  br i1 %tobool40.not.i, label %while.end42.i, label %while.body41.i.while.body41.i_crit_edge

while.body41.i.while.body41.i_crit_edge:          ; preds = %while.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body41.i

while.end42.i:                                    ; preds = %while.body41.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %52 = and i32 %51, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp33.1.i = icmp eq i32 %52, 0
  br i1 %cmp33.1.i, label %if.end24.critedge52, label %while.end42.i.while.body41.1.i_crit_edge

while.end42.i.while.body41.1.i_crit_edge:         ; preds = %while.end42.i
  br label %while.body41.1.i

while.body41.1.i:                                 ; preds = %while.body41.1.i.while.body41.1.i_crit_edge, %while.end42.i.while.body41.1.i_crit_edge
  %__ms37.080.1.i = phi i32 [ %dec39.1.i, %while.body41.1.i.while.body41.1.i_crit_edge ], [ 1000, %while.end42.i.while.body41.1.i_crit_edge ]
  %dec39.1.i = add nsw i32 %__ms37.080.1.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #13
  %tobool40.not.1.i = icmp eq i32 %dec39.1.i, 0
  br i1 %tobool40.not.1.i, label %while.end42.1.i, label %while.body41.1.i.while.body41.1.i_crit_edge

while.body41.1.i.while.body41.1.i_crit_edge:      ; preds = %while.body41.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body41.1.i

while.end42.1.i:                                  ; preds = %while.body41.1.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %55 = and i32 %54, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp33.2.i = icmp eq i32 %55, 0
  br i1 %cmp33.2.i, label %if.end24.critedge53, label %while.end42.1.i.while.body41.2.i_crit_edge

while.end42.1.i.while.body41.2.i_crit_edge:       ; preds = %while.end42.1.i
  br label %while.body41.2.i

while.body41.2.i:                                 ; preds = %while.body41.2.i.while.body41.2.i_crit_edge, %while.end42.1.i.while.body41.2.i_crit_edge
  %__ms37.080.2.i = phi i32 [ %dec39.2.i, %while.body41.2.i.while.body41.2.i_crit_edge ], [ 1000, %while.end42.1.i.while.body41.2.i_crit_edge ]
  %dec39.2.i = add nsw i32 %__ms37.080.2.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #13
  %tobool40.not.2.i = icmp eq i32 %dec39.2.i, 0
  br i1 %tobool40.not.2.i, label %while.end42.2.i, label %while.body41.2.i.while.body41.2.i_crit_edge

while.body41.2.i.while.body41.2.i_crit_edge:      ; preds = %while.body41.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body41.2.i

while.end42.2.i:                                  ; preds = %while.body41.2.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %58 = and i32 %57, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp33.3.i = icmp eq i32 %58, 0
  br i1 %cmp33.3.i, label %if.end24.critedge54, label %while.end42.2.i.while.body41.3.i_crit_edge

while.end42.2.i.while.body41.3.i_crit_edge:       ; preds = %while.end42.2.i
  br label %while.body41.3.i

while.body41.3.i:                                 ; preds = %while.body41.3.i.while.body41.3.i_crit_edge, %while.end42.2.i.while.body41.3.i_crit_edge
  %__ms37.080.3.i = phi i32 [ %dec39.3.i, %while.body41.3.i.while.body41.3.i_crit_edge ], [ 1000, %while.end42.2.i.while.body41.3.i_crit_edge ]
  %dec39.3.i = add nsw i32 %__ms37.080.3.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #13
  %tobool40.not.3.i = icmp eq i32 %dec39.3.i, 0
  br i1 %tobool40.not.3.i, label %while.end42.3.i, label %while.body41.3.i.while.body41.3.i_crit_edge

while.body41.3.i.while.body41.3.i_crit_edge:      ; preds = %while.body41.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body41.3.i

while.end42.3.i:                                  ; preds = %while.body41.3.i
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %61 = and i32 %60, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp33.4.i = icmp eq i32 %61, 0
  br i1 %cmp33.4.i, label %if.end24.critedge55, label %while.end42.3.i.while.body41.4.i_crit_edge

while.end42.3.i.while.body41.4.i_crit_edge:       ; preds = %while.end42.3.i
  br label %while.body41.4.i

while.body41.4.i:                                 ; preds = %while.body41.4.i.while.body41.4.i_crit_edge, %while.end42.3.i.while.body41.4.i_crit_edge
  %__ms37.080.4.i = phi i32 [ %dec39.4.i, %while.body41.4.i.while.body41.4.i_crit_edge ], [ 1000, %while.end42.3.i.while.body41.4.i_crit_edge ]
  %dec39.4.i = add nsw i32 %__ms37.080.4.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #13
  %tobool40.not.4.i = icmp eq i32 %dec39.4.i, 0
  br i1 %tobool40.not.4.i, label %ql_adapter_reset.exit, label %while.body41.4.i.while.body41.4.i_crit_edge

while.body41.4.i.while.body41.4.i_crit_edge:      ; preds = %while.body41.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body41.4.i

ql_adapter_reset.exit:                            ; preds = %while.body41.4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  %index = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 10
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef %64) #16
  br label %if.end25

if.end24.critedge:                                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %if.end25

if.end24.critedge51:                              ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %if.end25

if.end24.critedge52:                              ; preds = %while.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %if.end25

if.end24.critedge53:                              ; preds = %while.end42.1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %if.end25

if.end24.critedge54:                              ; preds = %while.end42.2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %if.end25

if.end24.critedge55:                              ; preds = %while.end42.3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %if.end25

if.end25:                                         ; preds = %if.end24.critedge55, %if.end24.critedge54, %if.end24.critedge53, %if.end24.critedge52, %if.end24.critedge51, %if.end24.critedge, %ql_adapter_reset.exit, %if.then12.if.end25_crit_edge
  %.str.90.sink = phi ptr [ @.str.89, %if.end24.critedge55 ], [ @.str.89, %if.end24.critedge54 ], [ @.str.89, %if.end24.critedge53 ], [ @.str.89, %if.end24.critedge52 ], [ @.str.89, %if.end24.critedge51 ], [ @.str.89, %if.end24.critedge ], [ @.str.89, %ql_adapter_reset.exit ], [ @.str.90, %if.then12.if.end25_crit_edge ]
  %retval2.0 = phi i32 [ 0, %if.end24.critedge55 ], [ 0, %if.end24.critedge54 ], [ 0, %if.end24.critedge53 ], [ 0, %if.end24.critedge52 ], [ 0, %if.end24.critedge51 ], [ 0, %if.end24.critedge ], [ 0, %ql_adapter_reset.exit ], [ -1, %if.then12.if.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.90.sink) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i.i, i32 noundef %call15) #13
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end.if.end27_crit_edge
  %retval2.1 = phi i32 [ %retval2.0, %if.end25 ], [ 0, %if.end.if.end27_crit_edge ]
  %tx_buf.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end27
  %i.06.i.i = phi i32 [ 0, %if.end27 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %tx_cb.05.i.i = phi ptr [ %tx_buf.i.i, %if.end27 ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %oal.i.i = getelementptr inbounds %struct.ql_tx_buf_cb, ptr %tx_cb.05.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %oal.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %oal.i.i, align 4
  tail call void @kfree(ptr noundef %66) #13
  %67 = ptrtoint ptr %oal.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %oal.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.ql_tx_buf_cb, ptr %tx_cb.05.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %ql_free_send_free_list.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

ql_free_send_free_list.exit.i:                    ; preds = %for.body.i.i
  %lrg_buf.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 54
  %num_large_buffers.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 52
  %68 = ptrtoint ptr %num_large_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_large_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp10.not.i.i = icmp eq i32 %69, 0
  br i1 %cmp10.not.i.i, label %ql_free_send_free_list.exit.i.ql_free_large_buffers.exit.i_crit_edge, label %ql_free_send_free_list.exit.i.for.body.i12.i_crit_edge

ql_free_send_free_list.exit.i.for.body.i12.i_crit_edge: ; preds = %ql_free_send_free_list.exit.i
  br label %for.body.i12.i

ql_free_send_free_list.exit.i.ql_free_large_buffers.exit.i_crit_edge: ; preds = %ql_free_send_free_list.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_free_large_buffers.exit.i

for.body.i12.i:                                   ; preds = %if.then.i.i.for.body.i12.i_crit_edge, %ql_free_send_free_list.exit.i.for.body.i12.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i13.i, %if.then.i.i.for.body.i12.i_crit_edge ], [ 0, %ql_free_send_free_list.exit.i.for.body.i12.i_crit_edge ]
  %70 = ptrtoint ptr %lrg_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lrg_buf.i.i, align 4
  %skb.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %71, i32 %i.011.i.i, i32 1
  %72 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %for.body.i12.i.ql_free_large_buffers.exit.i_crit_edge, label %if.then.i.i

for.body.i12.i.ql_free_large_buffers.exit.i_crit_edge: ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_free_large_buffers.exit.i

if.then.i.i:                                      ; preds = %for.body.i12.i
  %arrayidx.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %71, i32 %i.011.i.i
  tail call void @consume_skb(ptr noundef nonnull %73) #13
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %mapaddr.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %71, i32 %i.011.i.i, i32 2
  %76 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mapaddr.i.i, align 4
  %maplen.i.i = getelementptr %struct.ql_rcv_buf_cb, ptr %71, i32 %i.011.i.i, i32 3
  %78 = ptrtoint ptr %maplen.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %maplen.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %77, i32 noundef %79, i32 noundef 2, i32 noundef 0) #13
  %80 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 28)
  %inc.i13.i = add nuw i32 %i.011.i.i, 1
  %81 = ptrtoint ptr %num_large_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_large_buffers.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i13.i, %82
  br i1 %cmp.i.i, label %if.then.i.i.for.body.i12.i_crit_edge, label %if.then.i.i.ql_free_large_buffers.exit.i_crit_edge

if.then.i.i.ql_free_large_buffers.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_free_large_buffers.exit.i

if.then.i.i.for.body.i12.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i12.i

ql_free_large_buffers.exit.i:                     ; preds = %if.then.i.i.ql_free_large_buffers.exit.i_crit_edge, %for.body.i12.i.ql_free_large_buffers.exit.i_crit_edge, %ql_free_send_free_list.exit.i.ql_free_large_buffers.exit.i_crit_edge
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags, align 4
  %85 = and i32 %84, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i14.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i14.i, label %if.then.i15.i, label %if.end.i.i

if.then.i15.i:                                    ; preds = %ql_free_large_buffers.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %87, ptr noundef nonnull @.str.68) #16
  br label %ql_free_small_buffers.exit.i

if.end.i.i:                                       ; preds = %ql_free_large_buffers.exit.i
  %small_buf_virt_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 69
  %88 = ptrtoint ptr %small_buf_virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %small_buf_virt_addr.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %89, null
  br i1 %cmp.not.i.i, label %if.end.i.i.ql_free_small_buffers.exit.i_crit_edge, label %if.then1.i.i

if.end.i.i.ql_free_small_buffers.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_free_small_buffers.exit.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev, align 8
  %dev.i17.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %small_buf_total_size.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 74
  %92 = ptrtoint ptr %small_buf_total_size.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %small_buf_total_size.i.i, align 4
  %small_buf_phy_addr.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 70
  %94 = ptrtoint ptr %small_buf_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %small_buf_phy_addr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i17.i, i32 noundef %93, ptr noundef nonnull %89, i32 noundef %95, i32 noundef 0) #13
  %96 = ptrtoint ptr %small_buf_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %small_buf_virt_addr.i.i, align 8
  br label %ql_free_small_buffers.exit.i

ql_free_small_buffers.exit.i:                     ; preds = %if.then1.i.i, %if.end.i.i.ql_free_small_buffers.exit.i_crit_edge, %if.then.i15.i
  tail call fastcc void @ql_free_buffer_queues(ptr noundef %qdev) #13
  tail call fastcc void @ql_free_net_req_rsp_queues(ptr noundef %qdev) #13
  %shadow_reg_virt_addr.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 20
  %97 = ptrtoint ptr %shadow_reg_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %shadow_reg_virt_addr.i, align 8
  %cmp.not.i = icmp eq ptr %98, null
  br i1 %cmp.not.i, label %ql_free_small_buffers.exit.i.ql_free_mem_resources.exit_crit_edge, label %if.then.i

ql_free_small_buffers.exit.i.ql_free_mem_resources.exit_crit_edge: ; preds = %ql_free_small_buffers.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_free_mem_resources.exit

if.then.i:                                        ; preds = %ql_free_small_buffers.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %shadow_reg_phy_addr.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 21
  %101 = ptrtoint ptr %shadow_reg_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %shadow_reg_phy_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %98, i32 noundef %102, i32 noundef 0) #13
  %103 = ptrtoint ptr %shadow_reg_virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %shadow_reg_virt_addr.i, align 8
  br label %ql_free_mem_resources.exit

ql_free_mem_resources.exit:                       ; preds = %if.then.i, %ql_free_small_buffers.exit.i.ql_free_mem_resources.exit_crit_edge
  ret i32 %retval2.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %drvinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @ql3xxx_driver_name, i32 noundef 32) #13
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @ql3xxx_driver_version, i32 noundef 32) #13
  %pdev = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ql_get_msglevel(ptr nocapture noundef readonly %ndev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2704
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ql_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %value) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2704
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ql_get_pauseparam(ptr noundef %ndev, ptr nocapture noundef writeonly %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr i8, ptr %ndev, i32 2696
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  %mac_index = getelementptr i8, ptr %ndev, i32 45932
  %2 = ptrtoint ptr %mac_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mac0ConfigReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 11
  %current_page.i = getelementptr i8, ptr %ndev, i32 2700
  %4 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.then.ql_read_page0_reg.exit_crit_edge, label %if.then.i

if.then.ql_read_page0_reg.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %7 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_read_page0_reg.exit

ql_read_page0_reg.exit:                           ; preds = %if.then.i, %if.then.ql_read_page0_reg.exit_crit_edge
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac0ConfigReg) #13, !srcloc !327
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  br label %if.end

if.else:                                          ; preds = %entry
  %mac1ConfigReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 16
  %current_page.i14 = getelementptr i8, ptr %ndev, i32 2700
  %10 = ptrtoint ptr %current_page.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_page.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i15 = icmp eq i32 %11, 0
  br i1 %cmp.not.i15, label %if.else.ql_read_page0_reg.exit19_crit_edge, label %if.then.i18

if.else.ql_read_page0_reg.exit19_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_read_page0_reg.exit19

if.then.i18:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i17 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i17, i32 768) #13, !srcloc !326
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i17) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %13 = ptrtoint ptr %current_page.i14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %current_page.i14, align 4
  br label %ql_read_page0_reg.exit19

ql_read_page0_reg.exit19:                         ; preds = %if.then.i18, %if.else.ql_read_page0_reg.exit19_crit_edge
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1ConfigReg) #13, !srcloc !327
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  br label %if.end

if.end:                                           ; preds = %ql_read_page0_reg.exit19, %ql_read_page0_reg.exit
  %reg.0 = phi i32 [ %9, %ql_read_page0_reg.exit ], [ %15, %ql_read_page0_reg.exit19 ]
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call3 = tail call fastcc i32 @ql_get_auto_cfg_status(ptr noundef %add.ptr.i)
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %16 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3, ptr %autoneg, align 4
  %and = lshr i32 %reg.0, 2
  %shr = and i32 %and, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %17 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %rx_pause, align 4
  %and4 = lshr i32 %reg.0, 1
  %shr5 = and i32 %and4, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %18 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr5, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ql_get_link_ksettings(ptr noundef %ndev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flags.i = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %port4 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %port4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %port4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %port4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %port4, align 1
  %PHYAddr = getelementptr i8, ptr %ndev, i32 45936
  %6 = ptrtoint ptr %PHYAddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %PHYAddr, align 8
  %conv = trunc i32 %7 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %8 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %phy_address, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %call7 = tail call fastcc i32 @ql_get_auto_cfg_status(ptr noundef %add.ptr.i)
  %conv8 = trunc i32 %call7 to i8
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %autoneg, align 1
  %hw_lock.i = getelementptr i8, ptr %ndev, i32 2648
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  %mac_index.i = getelementptr i8, ptr %ndev, i32 45932
  %12 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_index.i, align 4
  %mul.i = shl i32 %13, 8
  %or.i = or i32 %mul.i, 512
  %call5.i = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %add.ptr.i, i32 noundef 58720256, i32 noundef %or.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i35 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i35, label %if.end.i, label %if.end.ql_get_speed.exit_crit_edge

if.end.ql_get_speed.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_speed.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call fastcc i32 @ql_get_link_speed(ptr noundef %add.ptr.i) #13
  %mem_map_registers.i.i = getelementptr i8, ptr %ndev, i32 2696
  %14 = ptrtoint ptr %mem_map_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_map_registers.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %15, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i.i, i32 32771) #13, !srcloc !326
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %ql_get_speed.exit

ql_get_speed.exit:                                ; preds = %if.end.i, %if.end.ql_get_speed.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ 0, %if.end.ql_get_speed.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i) #13
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %speed, align 4
  %call2.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  %18 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mac_index.i, align 4
  %mul.i39 = shl i32 %19, 8
  %or.i40 = or i32 %mul.i39, 512
  %call5.i41 = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %add.ptr.i, i32 noundef 58720256, i32 noundef %or.i40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i41)
  %tobool.not.i42 = icmp eq i32 %call5.i41, 0
  br i1 %tobool.not.i42, label %if.end.i46, label %ql_get_speed.exit.ql_get_full_dup.exit_crit_edge

ql_get_speed.exit.ql_get_full_dup.exit_crit_edge: ; preds = %ql_get_speed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_get_full_dup.exit

if.end.i46:                                       ; preds = %ql_get_speed.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i43 = tail call fastcc i32 @ql_is_link_full_dup(ptr noundef %add.ptr.i) #13
  %mem_map_registers.i.i44 = getelementptr i8, ptr %ndev, i32 2696
  %20 = ptrtoint ptr %mem_map_registers.i.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_map_registers.i.i44, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i.i45 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %21, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i.i45, i32 32771) #13, !srcloc !326
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i.i45) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  %phi.cast = trunc i32 %call7.i43 to i8
  br label %ql_get_full_dup.exit

ql_get_full_dup.exit:                             ; preds = %if.end.i46, %ql_get_speed.exit.ql_get_full_dup.exit_crit_edge
  %retval.0.i47 = phi i8 [ %phi.cast, %if.end.i46 ], [ 0, %ql_get_speed.exit.ql_get_full_dup.exit_crit_edge ]
  %23 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i33 = icmp eq i32 %23, 0
  %..i34 = select i1 %tobool.not.i33, i32 255, i32 1120
  %24 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %..i = select i1 %tobool.not.i, i32 255, i32 1120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call2.i37) #13
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %25 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %retval.0.i47, ptr %duplex, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %..i) #13
  %advertising17 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising17, i32 noundef %..i34) #13
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_get_auto_cfg_status(ptr noundef %qdev) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %mac_index = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %0 = ptrtoint ptr %mac_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_index, align 4
  %mul = shl i32 %1, 8
  %or = or i32 %mul, 512
  %call5 = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %qdev, i32 noundef 58720256, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #13
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %reg.i, align 2, !annotation !353
  %call.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 0, ptr noundef nonnull %reg.i) #13
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %reg.i, align 2
  %5 = lshr i16 %4, 12
  %.lobit.i = and i16 %5, 1
  %6 = zext i16 %.lobit.i to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #13
  %mem_map_registers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %7 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %8, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i, i32 32771) #13, !srcloc !326
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_get_link_speed(ptr nocapture noundef %qdev) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers.i, align 8
  %mac_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %2 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_index.i, align 4
  %current_page.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %4 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %entry.ql_is_fiber.exit_crit_edge, label %if.then.i.i

entry.ql_is_fiber.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_fiber.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %7 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_is_fiber.exit

ql_is_fiber.exit:                                 ; preds = %if.then.i.i, %entry.ql_is_fiber.exit_crit_edge
  %portStatus.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp4.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 1, i32 %switch.select.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i) #13, !srcloc !327
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i = and i32 %9, %switch.select5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.else, label %ql_is_fiber.exit.return_crit_edge

ql_is_fiber.exit.return_crit_edge:                ; preds = %ql_is_fiber.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else:                                          ; preds = %ql_is_fiber.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #13
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %reg.i, align 2, !annotation !353
  %phyType.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 88
  %11 = ptrtoint ptr %phyType.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phyType.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cond.i = icmp eq i16 %12, 2
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.else
  %call.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 26, ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i3 = icmp slt i32 %call.i, 0
  br i1 %cmp.i3, label %sw.bb.i.ql_phy_get_speed.exit_crit_edge, label %if.end.i

sw.bb.i.ql_phy_get_speed.exit_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_phy_get_speed.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg.i, align 2
  %15 = lshr i16 %14, 8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.else
  %call4.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 28, ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %sw.default.i.ql_phy_get_speed.exit_crit_edge, label %if.end8.i

sw.default.i.ql_phy_get_speed.exit_crit_edge:     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_phy_get_speed.exit

if.end8.i:                                        ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg.i, align 2
  %18 = lshr i16 %17, 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end8.i, %if.end.i
  %.sink.off0.in = phi i16 [ %18, %if.end8.i ], [ %15, %if.end.i ]
  %19 = and i16 %.sink.off0.in, 3
  %20 = xor i16 %19, 2
  %21 = zext i16 %20 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ql_get_link_speed, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ql_phy_get_speed.exit

ql_phy_get_speed.exit:                            ; preds = %sw.epilog.i, %sw.default.i.ql_phy_get_speed.exit_crit_edge, %sw.bb.i.ql_phy_get_speed.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb.i.ql_phy_get_speed.exit_crit_edge ], [ 0, %sw.default.i.ql_phy_get_speed.exit_crit_edge ], [ %switch.load, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #13
  br label %return

return:                                           ; preds = %ql_phy_get_speed.exit, %ql_is_fiber.exit.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ql_phy_get_speed.exit ], [ 1000, %ql_is_fiber.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_is_link_full_dup(ptr nocapture noundef %qdev) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers.i, align 8
  %mac_index.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %2 = ptrtoint ptr %mac_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_index.i, align 4
  %current_page.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %4 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %entry.ql_is_fiber.exit_crit_edge, label %if.then.i.i

entry.ql_is_fiber.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_fiber.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %7 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_is_fiber.exit

ql_is_fiber.exit:                                 ; preds = %if.then.i.i, %entry.ql_is_fiber.exit_crit_edge
  %portStatus.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp4.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 1, i32 %switch.select.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i) #13, !srcloc !327
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i = and i32 %9, %switch.select5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.else, label %ql_is_fiber.exit.return_crit_edge

ql_is_fiber.exit.return_crit_edge:                ; preds = %ql_is_fiber.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else:                                          ; preds = %ql_is_fiber.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #13
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %reg.i, align 2, !annotation !353
  %phyType.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 88
  %11 = ptrtoint ptr %phyType.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phyType.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cond.i = icmp eq i16 %12, 2
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.else
  %call.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 26, ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.ql_is_full_dup.exit_crit_edge

sw.bb.i.ql_is_full_dup.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_full_dup.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg.i, align 2
  %conv1.i = zext i16 %14 to i32
  %and.i3 = and i32 %conv1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool2.not.i = icmp eq i32 %and.i3, 0
  %and4.i = lshr i32 %conv1.i, 12
  %and4.lobit.i = and i32 %and4.i, 1
  %15 = select i1 %tobool2.not.i, i32 0, i32 %and4.lobit.i
  br label %ql_is_full_dup.exit

sw.default.i:                                     ; preds = %if.else
  %call8.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 28, ptr noundef nonnull %reg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %sw.default.i.ql_is_full_dup.exit_crit_edge, label %if.end12.i

sw.default.i.ql_is_full_dup.exit_crit_edge:       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_full_dup.exit

if.end12.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg.i, align 2
  %18 = lshr i16 %17, 5
  %.lobit.i = and i16 %18, 1
  %19 = zext i16 %.lobit.i to i32
  br label %ql_is_full_dup.exit

ql_is_full_dup.exit:                              ; preds = %if.end12.i, %sw.default.i.ql_is_full_dup.exit_crit_edge, %if.end.i, %sw.bb.i.ql_is_full_dup.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end.i ], [ %19, %if.end12.i ], [ 0, %sw.bb.i.ql_is_full_dup.exit_crit_edge ], [ 0, %sw.default.i.ql_is_full_dup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #13
  br label %return

return:                                           ; preds = %ql_is_full_dup.exit, %ql_is_fiber.exit.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ql_is_full_dup.exit ], [ 1, %ql_is_fiber.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_release_to_lrg_buf_free_list(ptr nocapture noundef %qdev, ptr noundef %lrg_buf_cb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lrg_buf_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %lrg_buf_cb, align 4
  %lrg_buf_free_tail = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 56
  %1 = ptrtoint ptr %lrg_buf_free_tail to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lrg_buf_free_tail, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %lrg_buf_free_tail to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %lrg_buf_cb, ptr %lrg_buf_free_tail, align 4
  %lrg_buf_free_head = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 55
  %4 = ptrtoint ptr %lrg_buf_free_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lrg_buf_cb, ptr %lrg_buf_free_head, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lrg_buf_cb, ptr %2, align 4
  %6 = ptrtoint ptr %lrg_buf_free_tail to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lrg_buf_cb, ptr %lrg_buf_free_tail, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %skb = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb, i32 0, i32 1
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then5, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then5:                                         ; preds = %if.end
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %lrg_buffer_len = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 58
  %11 = ptrtoint ptr %lrg_buffer_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lrg_buffer_len, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %10, i32 noundef %12, i32 noundef 2592) #13
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %skb, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then12, label %if.else13, !prof !343

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %lrg_buf_skb_check = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 60
  %14 = ptrtoint ptr %lrg_buf_skb_check to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lrg_buf_skb_check, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %lrg_buf_skb_check, align 4
  br label %if.end37

if.else13:                                        ; preds = %if.then5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 32
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %19, i32 32
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %pdev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 2
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %lrg_buffer_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lrg_buffer_len, align 4
  %call.i72 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %25) #13
  br i1 %call.i72, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else13
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !344

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %27, -32
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %25, i32 noundef %sub) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %25 to i32
  %sub.i = add i32 %33, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i73 = getelementptr %struct.page, ptr %32, i32 %shr.i
  %and.i = and i32 %33, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i73, i32 noundef %and.i, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev19, i32 noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then22, label %if.end28

if.then22:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.65, i32 noundef -12) #16
  %38 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %39) #13
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %skb, align 4
  %lrg_buf_skb_check26 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 60
  %41 = ptrtoint ptr %lrg_buf_skb_check26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lrg_buf_skb_check26, align 4
  %inc27 = add i32 %42, 1
  store i32 %inc27, ptr %lrg_buf_skb_check26, align 4
  br label %cleanup

if.end28:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %43 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %buf_phy_addr_low = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb, i32 0, i32 4
  %44 = ptrtoint ptr %buf_phy_addr_low to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %buf_phy_addr_low, align 4
  %buf_phy_addr_high = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb, i32 0, i32 5
  %45 = ptrtoint ptr %buf_phy_addr_high to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %buf_phy_addr_high, align 4
  %mapaddr = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb, i32 0, i32 2
  %46 = ptrtoint ptr %mapaddr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i, ptr %mapaddr, align 4
  %47 = ptrtoint ptr %lrg_buffer_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lrg_buffer_len, align 4
  %sub35 = add i32 %48, -32
  %maplen = getelementptr inbounds %struct.ql_rcv_buf_cb, ptr %lrg_buf_cb, i32 0, i32 3
  %49 = ptrtoint ptr %maplen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub35, ptr %maplen, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end28, %if.then12, %if.end.if.end37_crit_edge
  %lrg_buf_free_count = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 57
  %50 = ptrtoint ptr %lrg_buf_free_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lrg_buf_free_count, align 8
  %inc38 = add i32 %51, 1
  store i32 %inc38, ptr %lrg_buf_free_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_cycle_adapter(ptr noundef %qdev, i32 noundef %reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ql_adapter_down(ptr noundef %qdev, i32 noundef %reset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @ql_adapter_up(ptr noundef %qdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.118) #16
  tail call void @rtnl_lock() #13
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void @dev_close(ptr noundef %3) #13
  tail call void @rtnl_unlock() #13
  br label %return

return:                                           ; preds = %if.then, %lor.lhs.false.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ql_port_start(ptr noundef %qdev) unnamed_addr #2 align 64 {
entry:
  %reg.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_index = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %0 = ptrtoint ptr %mac_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_index, align 4
  %mul = shl i32 %1, 8
  %or = or i32 %mul, 512
  %call = tail call fastcc i32 @ql_sem_spinlock(ptr noundef %qdev, i32 noundef 58720256, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ndev = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 3
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.122) #16
  br label %return

if.end:                                           ; preds = %entry
  %mem_map_registers.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %4 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_map_registers.i, align 8
  %6 = ptrtoint ptr %mac_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_index, align 4
  %current_page.i.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %8 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_page.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i.i, label %if.end.ql_is_fiber.exit_crit_edge, label %if.then.i.i

if.end.ql_is_fiber.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_is_fiber.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %5, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i.i, i32 768) #13, !srcloc !326
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %11 = ptrtoint ptr %current_page.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %current_page.i.i, align 4
  br label %ql_is_fiber.exit

ql_is_fiber.exit:                                 ; preds = %if.then.i.i, %if.end.ql_is_fiber.exit_crit_edge
  %portStatus.i = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %5, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.selectcmp4.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp.i = icmp eq i32 %7, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 1, i32 %switch.select.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %portStatus.i) #13, !srcloc !327
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %and.i = and i32 %13, %switch.select5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %ql_is_fiber.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext -32768) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #13
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %reg.i.i, align 2, !annotation !353
  %call.i.i = call fastcc i32 @ql_mii_read_reg(ptr noundef %qdev, i16 noundef zeroext 17, ptr noundef nonnull %reg.i.i) #13
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg.i.i, align 2
  %17 = or i16 %16, 256
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 17, i16 noundef zeroext %17) #13
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 4, i16 noundef zeroext 160) #13
  tail call fastcc void @ql_mii_write_reg(ptr noundef %qdev, i16 noundef zeroext 0, i16 noundef zeroext 4928) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #13
  br label %if.end4

if.else:                                          ; preds = %ql_is_fiber.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ql_phy_init_ex(ptr noundef %qdev)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %18 = ptrtoint ptr %mem_map_registers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_map_registers.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !330
  tail call void @arm_heavy_mb() #13
  %semaphoreReg.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %19, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %semaphoreReg.i, i32 32771) #13, !srcloc !326
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %semaphoreReg.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ql_mac_cfg_soft_reset(ptr nocapture noundef %qdev, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_map_registers = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 15
  %0 = ptrtoint ptr %mem_map_registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_map_registers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %. = select i1 %tobool.not, i32 -2147483648, i32 -2147450880
  %mac_index = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 77
  %2 = ptrtoint ptr %mac_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %entry
  %mac1ConfigReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 16
  %current_page.i = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %4 = ptrtoint ptr %current_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.then2.ql_write_page0_reg.exit_crit_edge, label %if.then.i

if.then2.ql_write_page0_reg.exit_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i, i32 768) #13, !srcloc !326
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %7 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_page.i, align 4
  br label %ql_write_page0_reg.exit

ql_write_page0_reg.exit:                          ; preds = %if.then.i, %if.then2.ql_write_page0_reg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %.) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac1ConfigReg, i32 %8) #13, !srcloc !326
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1ConfigReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end4

if.else3:                                         ; preds = %entry
  %mac0ConfigReg = getelementptr inbounds %struct.ql3xxx_port_registers, ptr %1, i32 0, i32 11
  %current_page.i10 = getelementptr inbounds %struct.ql3_adapter, ptr %qdev, i32 0, i32 16
  %10 = ptrtoint ptr %current_page.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_page.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i11 = icmp eq i32 %11, 0
  br i1 %cmp.not.i11, label %if.else3.ql_write_page0_reg.exit15_crit_edge, label %if.then.i14

if.else3.ql_write_page0_reg.exit15_crit_edge:     ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #15
  br label %ql_write_page0_reg.exit15

if.then.i14:                                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  tail call void @arm_heavy_mb() #13
  %ispControlStatus.i.i13 = getelementptr inbounds %struct.ql3xxx_common_registers, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ispControlStatus.i.i13, i32 768) #13, !srcloc !326
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ispControlStatus.i.i13) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %13 = ptrtoint ptr %current_page.i10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %current_page.i10, align 4
  br label %ql_write_page0_reg.exit15

ql_write_page0_reg.exit15:                        ; preds = %if.then.i14, %if.else3.ql_write_page0_reg.exit15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %.) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac0ConfigReg, i32 %14) #13, !srcloc !326
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac0ConfigReg) #13, !srcloc !327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  br label %if.end4

if.end4:                                          ; preds = %ql_write_page0_reg.exit15, %ql_write_page0_reg.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !242, !243, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !285, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314}
!llvm.module.flags = !{!316, !317, !318, !319, !320, !321, !322, !323}
!llvm.ident = !{!324}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 51, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 52, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version347, !8, !"__UNIQUE_ID_version347", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 53, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 60, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype348, !14, !"__UNIQUE_ID_debugtype348", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug349, !17, !"__UNIQUE_ID_debug349", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 61, i32 1}
!18 = !{ptr @__param_msi, !19, !"__param_msi", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 64, i32 1}
!20 = !{ptr @__UNIQUE_ID_msitype350, !19, !"__UNIQUE_ID_msitype350", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_msi351, !22, !"__UNIQUE_ID_msi351", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 65, i32 1}
!23 = !{ptr @__initcall__kmod_qla3xxx__352_3926_ql3xxx_driver_init6, !24, !"__initcall__kmod_qla3xxx__352_3926_ql3xxx_driver_init6", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3926, i32 1}
!25 = !{ptr @__exitcall_ql3xxx_driver_exit, !24, !"__exitcall_ql3xxx_driver_exit", i1 false, i1 false}
!26 = !{ptr @msi, !27, !"msi", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 63, i32 12}
!28 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @debug, !30, !"debug", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 59, i32 12}
!31 = !{ptr @__param_str_msi, !19, !"__param_str_msi", i1 false, i1 false}
!32 = !{ptr @ql3xxx_driver, !33, !"ql3xxx_driver", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3918, i32 26}
!34 = !{ptr @ql3xxx_pci_tbl, !35, !"ql3xxx_pci_tbl", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 67, i32 35}
!36 = !{ptr @ql3xxx_probe.cards_found, !37, !"cards_found", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3752, i32 13}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3757, i32 3}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ql3xxx_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @ql3xxx_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3763, i32 3}
!46 = !{ptr @ql3xxx_probe._entry.6, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ql3xxx_probe._entry_ptr.8, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3771, i32 3}
!50 = !{ptr @ql3xxx_probe._entry.9, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ql3xxx_probe._entry_ptr.11, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3802, i32 3}
!54 = !{ptr @ql3xxx_probe._entry.12, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ql3xxx_probe._entry_ptr.14, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ql3xxx_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3807, i32 2}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ql3xxx_probe.__key.16, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3808, i32 2}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3821, i32 3}
!64 = !{ptr @ql3xxx_probe._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ql3xxx_probe._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3852, i32 3}
!68 = !{ptr @ql3xxx_probe._entry.21, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ql3xxx_probe._entry_ptr.23, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3861, i32 20}
!72 = !{ptr @ql3xxx_probe.__key.25, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3868, i32 2}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ql3xxx_probe.__key.27, !73, !"__key", i1 false, i1 false}
!76 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ql3xxx_probe.__key.29, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3869, i32 2}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ql3xxx_probe.__key.31, !78, !"__key", i1 false, i1 false}
!81 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ql3xxx_probe.__key.33, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3870, i32 2}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ql3xxx_probe.__key.35, !83, !"__key", i1 false, i1 false}
!86 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ql3xxx_probe.__key.37, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3872, i32 2}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3876, i32 3}
!92 = !{ptr @ql3xxx_probe._entry.39, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ql3xxx_probe._entry_ptr.41, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3877, i32 3}
!97 = !{ptr @ql3xxx_probe._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ql3xxx_probe._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @ql3xxx_netdev_ops, !100, !"ql3xxx_netdev_ops", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3738, i32 36}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3456, i32 20}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3463, i32 8}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3466, i32 22}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3476, i32 7}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3484, i32 20}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3491, i32 20}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3513, i32 21}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2840, i32 26}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2873, i32 26}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2878, i32 26}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2883, i32 26}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2888, i32 26}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2893, i32 26}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2529, i32 26}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2539, i32 26}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2592, i32 26}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2612, i32 26}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2664, i32 26}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2756, i32 8}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2774, i32 9}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!143 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2629, i32 27}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2229, i32 9}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2238, i32 8}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 153, i32 18}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 154, i32 11}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 160, i32 25}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3218, i32 26}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 979, i32 26}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 985, i32 26}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1002, i32 8}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1008, i32 27}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1024, i32 26}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 741, i32 3}
!171 = !{ptr @PHYAddr, !172, !"PHYAddr", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 556, i32 18}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 897, i32 28}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 94, i32 39}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 95, i32 39}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 96, i32 39}
!181 = !{ptr @PHY_DEVICES, !182, !"PHY_DEVICES", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 93, i32 37}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 842, i32 26}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1314, i32 3}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1319, i32 2}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3432, i32 22}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3436, i32 8}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3439, i32 8}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3261, i32 40}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3268, i32 9}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3290, i32 10}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2473, i32 20}
!203 = !{ptr @__func__.ql3xxx_send, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2473, i32 52}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2490, i32 20}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2503, i32 2}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2363, i32 9}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2386, i32 8}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3593, i32 19}
!215 = !{ptr @ql3xxx_ethtool_ops, !216, !"ql3xxx_ethtool_ops", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1776, i32 33}
!217 = !{ptr @ql3xxx_driver_name, !218, !"ql3xxx_driver_name", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 44, i32 19}
!219 = !{ptr @ql3xxx_driver_version, !220, !"ql3xxx_driver_version", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 45, i32 19}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2150, i32 8}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1924, i32 8}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1932, i32 7}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1939, i32 26}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2086, i32 8}
!231 = !{ptr @__func__.ql_process_macip_rx_intr, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2087, i32 8}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2089, i32 9}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 2089, i32 17}
!237 = !{ptr @.str.107, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1798, i32 12}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 533, i32 3}
!241 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @ql_get_nvram_params._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @ql_get_nvram_params._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 546, i32 26}
!246 = distinct !{null, !247, !"addrBits", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 363, i32 12}
!248 = distinct !{null, !249, !"dataBits", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 364, i32 12}
!250 = !{ptr @.str.111, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3365, i32 10}
!252 = !{ptr @.str.112, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3628, i32 12}
!254 = !{ptr @.str.113, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3644, i32 20}
!256 = !{ptr @.str.114, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3661, i32 12}
!258 = !{ptr @.str.115, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3667, i32 12}
!260 = !{ptr @.str.116, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3689, i32 8}
!262 = !{ptr @.str.117, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3690, i32 21}
!264 = !{ptr @.str.118, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3524, i32 7}
!266 = !{ptr @.str.119, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1529, i32 3}
!268 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1549, i32 4}
!270 = !{ptr @.str.121, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1566, i32 4}
!272 = !{ptr @.str.122, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1442, i32 26}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1184, i32 3}
!276 = !{ptr @.str.124, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1187, i32 2}
!278 = !{ptr @.str.125, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1468, i32 4}
!280 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1484, i32 4}
!282 = !{ptr @.str.127, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1492, i32 3}
!284 = !{ptr @.str.128, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.130, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 1500, i32 4}
!288 = !{ptr @.str.131, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3378, i32 7}
!290 = !{ptr @.str.132, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3380, i32 45}
!292 = !{ptr @.str.133, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3380, i32 57}
!294 = !{ptr @.str.134, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3382, i32 20}
!296 = !{ptr @.str.135, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3383, i32 45}
!298 = !{ptr @.str.136, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3383, i32 57}
!300 = !{ptr @.str.137, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3388, i32 20}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3389, i32 34}
!304 = !{ptr @.str.139, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3389, i32 45}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3390, i32 24}
!308 = !{ptr @.str.141, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3390, i32 34}
!310 = !{ptr @.str.142, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3392, i32 20}
!312 = !{ptr @.str.143, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3394, i32 20}
!314 = !{ptr @.str.144, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/qlogic/qla3xxx.c", i32 3396, i32 2}
!316 = !{i32 1, !"wchar_size", i32 2}
!317 = !{i32 1, !"min_enum_size", i32 4}
!318 = !{i32 8, !"branch-target-enforcement", i32 0}
!319 = !{i32 8, !"sign-return-address", i32 0}
!320 = !{i32 8, !"sign-return-address-all", i32 0}
!321 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!322 = !{i32 7, !"uwtable", i32 1}
!323 = !{i32 7, !"frame-pointer", i32 2}
!324 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!325 = !{i64 2156700924}
!326 = !{i64 5081270}
!327 = !{i64 5081688}
!328 = !{i64 2156701521}
!329 = !{i64 2156697520}
!330 = !{i64 2156691990}
!331 = !{i64 2156692756}
!332 = !{i64 2156697090}
!333 = !{i64 2156695418}
!334 = !{i64 2156696288}
!335 = !{i64 2156698752}
!336 = !{i64 2156698322}
!337 = !{i64 2156699326}
!338 = !{i64 2156699923}
!339 = !{i64 2156726859}
!340 = !{i64 2148311033, i64 2148311059, i64 2148311088, i64 2148311122, i64 2148311153, i64 2148311176}
!341 = !{i64 808524}
!342 = !{i64 2156723974}
!343 = !{!"branch_weights", i32 1, i32 2000}
!344 = !{!"branch_weights", i32 2000, i32 1}
!345 = !{i64 2156724411}
!346 = !{i64 2156724679}
!347 = !{i64 2156728684}
!348 = !{i64 2156700125}
!349 = !{i64 2156700722}
!350 = !{i64 2156702259}
!351 = !{i64 2156702856}
!352 = !{i32 0, i32 2}
!353 = !{!"auto-init"}
!354 = !{i64 2156732974}
!355 = !{i64 2156733126}
!356 = !{i64 2148313498, i64 2148313524, i64 2148313553, i64 2148313587, i64 2148313618, i64 2148313641}
!357 = !{i64 2156733717}
!358 = !{i64 2156703058}
!359 = !{i64 2156703655}
!360 = !{i64 2156703857}
!361 = !{i64 2156704454}
!362 = !{i64 2156693006}
!363 = !{i64 2156693811}
!364 = !{i64 2156689630}
!365 = !{i64 2156690435}
