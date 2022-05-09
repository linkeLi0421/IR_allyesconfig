; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atlx/atl2.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atlx/atl2.c"
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
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atl2_spi_flash_dev = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.126 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.atl2_hw = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, [6 x i8], [6 x i8], i8 }
%struct.atl2_adapter = type { ptr, ptr, i32, i16, i16, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.timer_list, i32, i8, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i16, i16, i32, i32, i8, i8, %struct.atl2_hw, i32, [16 x i32], ptr }
%struct.atl2_option = type { i32, ptr, ptr, i32, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, i32 }
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
%struct.tx_pkt_header = type { i16, i16 }
%struct.tx_pkt_status = type { i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.132, %union.anon.133 }
%union.anon.132 = type { [16 x i8] }
%union.anon.133 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.rx_desc = type { %struct.rx_pkt_status, [1528 x i8] }
%struct.rx_pkt_status = type { i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.147, i32 }
%struct.anon.147 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.atl2_opt_list = type { i32, ptr }

@__UNIQUE_ID_author476 = internal constant [91 x i8] c"atl2.author=Atheros Corporation <xiong.huang@atheros.com>, Chris Snook <csnook@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [54 x i8] c"atl2.description=Atheros Fast Ethernet Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [49 x i8] c"atl2.file=drivers/net/ethernet/atheros/atlx/atl2\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [17 x i8] c"atl2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_atl2__480_1678_atl2_driver_init6 = internal global ptr @atl2_driver_init, section ".initcall6.init", align 4
@atl2_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @atl2_driver_name, ptr @atl2_pci_tbl, ptr @atl2_probe, ptr @atl2_remove, ptr @atl2_suspend, ptr @atl2_resume, ptr @atl2_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atl2_driver_exit = internal global ptr @atl2_driver_exit, section ".exitcall.exit", align 4
@__param_str_TxMemSize = internal constant [15 x i8] c"atl2.TxMemSize\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_TxMemSize = internal constant %struct.kparam_array { i32 5, i32 4, ptr @num_TxMemSize, ptr @param_ops_int, ptr @TxMemSize }, align 4
@__param_TxMemSize = internal constant %struct.kernel_param { ptr @__param_str_TxMemSize, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_TxMemSize } }, section "__param", align 4
@__UNIQUE_ID_TxMemSizetype481 = internal constant [37 x i8] c"atl2.parmtype=TxMemSize:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxMemSize482 = internal constant [45 x i8] c"atl2.parm=TxMemSize:Bytes of Transmit Memory\00", section ".modinfo", align 1
@__param_str_RxMemBlock = internal constant [16 x i8] c"atl2.RxMemBlock\00", align 1
@__param_arr_RxMemBlock = internal constant %struct.kparam_array { i32 5, i32 4, ptr @num_RxMemBlock, ptr @param_ops_int, ptr @RxMemBlock }, align 4
@__param_RxMemBlock = internal constant %struct.kernel_param { ptr @__param_str_RxMemBlock, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxMemBlock } }, section "__param", align 4
@__UNIQUE_ID_RxMemBlocktype483 = internal constant [38 x i8] c"atl2.parmtype=RxMemBlock:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxMemBlock484 = internal constant [52 x i8] c"atl2.parm=RxMemBlock:Number of receive memory block\00", section ".modinfo", align 1
@__param_str_MediaType = internal constant [15 x i8] c"atl2.MediaType\00", align 1
@__param_arr_MediaType = internal constant %struct.kparam_array { i32 5, i32 4, ptr @num_MediaType, ptr @param_ops_int, ptr @MediaType }, align 4
@__param_MediaType = internal constant %struct.kernel_param { ptr @__param_str_MediaType, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_MediaType } }, section "__param", align 4
@__UNIQUE_ID_MediaTypetype485 = internal constant [37 x i8] c"atl2.parmtype=MediaType:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_MediaType486 = internal constant [37 x i8] c"atl2.parm=MediaType:MediaType Select\00", section ".modinfo", align 1
@__param_str_IntModTimer = internal constant [17 x i8] c"atl2.IntModTimer\00", align 1
@__param_arr_IntModTimer = internal constant %struct.kparam_array { i32 5, i32 4, ptr @num_IntModTimer, ptr @param_ops_int, ptr @IntModTimer }, align 4
@__param_IntModTimer = internal constant %struct.kernel_param { ptr @__param_str_IntModTimer, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_IntModTimer } }, section "__param", align 4
@__UNIQUE_ID_IntModTimertype487 = internal constant [39 x i8] c"atl2.parmtype=IntModTimer:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_IntModTimer488 = internal constant [48 x i8] c"atl2.parm=IntModTimer:Interrupt Moderator Timer\00", section ".modinfo", align 1
@__param_str_FlashVendor = internal constant [17 x i8] c"atl2.FlashVendor\00", align 1
@__param_arr_FlashVendor = internal constant %struct.kparam_array { i32 5, i32 4, ptr @num_FlashVendor, ptr @param_ops_int, ptr @FlashVendor }, align 4
@__param_FlashVendor = internal constant %struct.kernel_param { ptr @__param_str_FlashVendor, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_FlashVendor } }, section "__param", align 4
@__UNIQUE_ID_FlashVendortype489 = internal constant [39 x i8] c"atl2.parmtype=FlashVendor:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_FlashVendor490 = internal constant [39 x i8] c"atl2.parm=FlashVendor:SPI Flash Vendor\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"atl2\00", [27 x i8] zeroinitializer }, align 32
@atl2_driver_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"atl2\00", [27 x i8] zeroinitializer }, align 32
@atl2_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6505, i32 8264, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@atl2_probe.cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@atl2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013atl2: No usable DMA configuration, aborting\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atl2_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/atheros/atlx/atl2.c\00", [55 x i8] zeroinitializer }, align 32
@atl2_probe._entry_ptr = internal global ptr @atl2_probe._entry, section ".printk_index", align 4
@atl2_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @atl2_open, ptr @atl2_close, ptr @atl2_xmit_frame, ptr null, ptr null, ptr null, ptr @atl2_set_multi, ptr @atl2_set_mac, ptr @eth_validate_addr, ptr null, ptr @atl2_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @atl2_change_mtu, ptr null, ptr @atl2_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl2_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl2_fix_features, ptr @atl2_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@atl2_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @atl2_get_drvinfo, ptr @atl2_get_regs_len, ptr @atl2_get_regs, ptr @atl2_get_wol, ptr @atl2_set_wol, ptr @atl2_get_msglevel, ptr @atl2_set_msglevel, ptr @atl2_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @atl2_get_eeprom_len, ptr @atl2_get_eeprom, ptr @atl2_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl2_get_link_ksettings, ptr @atl2_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@atl2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&adapter->watchdog_timer)\00", [37 x i8] zeroinitializer }, align 32
@atl2_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&adapter->phy_config_timer)\00", [35 x i8] zeroinitializer }, align 32
@atl2_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&adapter->reset_task)\00", [56 x i8] zeroinitializer }, align 32
@atl2_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&adapter->link_chg_task)\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@flash_table = internal constant { [3 x %struct.atl2_spi_flash_dev], [48 x i8] } { [3 x %struct.atl2_spi_flash_dev] [%struct.atl2_spi_flash_dev { ptr @.str.12, i8 0, i8 3, i8 2, i8 6, i8 4, i8 5, i8 21, i8 82, i8 98 }, %struct.atl2_spi_flash_dev { ptr @.str.13, i8 1, i8 3, i8 2, i8 6, i8 4, i8 5, i8 -112, i8 32, i8 96 }, %struct.atl2_spi_flash_dev { ptr @.str.14, i8 1, i8 3, i8 2, i8 6, i8 4, i8 5, i8 -85, i8 -40, i8 -57 }], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Atmel\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SST\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ST\00", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@atl2_check_for_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s NIC Link is Down\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atl2_check_for_link\00", [44 x i8] zeroinitializer }, align 32
@atl2_check_for_link._entry_ptr = internal global ptr @atl2_check_for_link._entry, section ".printk_index", align 4
@atl2_intr_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014%s: txs packet size not consistent with txd txd_:0x%08x, txs_:0x%08x!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atl2_intr_tx\00", [19 x i8] zeroinitializer }, align 32
@atl2_intr_tx._entry_ptr = internal global ptr @atl2_intr_tx._entry, section ".printk_index", align 4
@atl2_intr_tx._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014txd read ptr: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@atl2_intr_tx._entry_ptr.21 = internal global ptr @atl2_intr_tx._entry.19, section ".printk_index", align 4
@atl2_intr_tx._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014txs-behind:0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@atl2_intr_tx._entry_ptr.24 = internal global ptr @atl2_intr_tx._entry.22, section ".printk_index", align 4
@atl2_intr_tx._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014txs-before:0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@atl2_intr_tx._entry_ptr.27 = internal global ptr @atl2_intr_tx._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"L2\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atl2_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->stats_lock\00", [43 x i8] zeroinitializer }, align 32
@atl2_phy_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 2614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013atl2: PCIe link down for at least 25ms !\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl2_phy_commit\00", [16 x i8] zeroinitializer }, align 32
@atl2_phy_commit._entry_ptr = internal global ptr @atl2_phy_commit._entry, section ".printk_index", align 4
@atl2_check_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 2924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015Warning: no configuration for board #%i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atl2_check_options\00", [45 x i8] zeroinitializer }, align 32
@atl2_check_options._entry_ptr = internal global ptr @atl2_check_options._entry, section ".printk_index", align 4
@atl2_check_options._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 2925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015Using defaults for all values\0A\00", [63 x i8] zeroinitializer }, align 32
@atl2_check_options._entry_ptr.36 = internal global ptr @atl2_check_options._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bytes of Transmit Memory\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 8\00", [45 x i8] zeroinitializer }, align 32
@num_TxMemSize = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxMemSize = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Number of receive memory block\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"using default of 64\00", [44 x i8] zeroinitializer }, align 32
@num_RxMemBlock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxMemBlock = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Interrupt Moderate Timer\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 100\00", [43 x i8] zeroinitializer }, align 32
@num_IntModTimer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@IntModTimer = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SPI Flash Vendor\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 0\00", [45 x i8] zeroinitializer }, align 32
@num_FlashVendor = internal global { i32, [28 x i8] } zeroinitializer, align 32
@FlashVendor = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Speed/Duplex Selection\00", [41 x i8] zeroinitializer }, align 32
@num_MediaType = internal global { i32, [28 x i8] } zeroinitializer, align 32
@MediaType = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@atl2_validate_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 2875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016%s Enabled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atl2_validate_option\00", [43 x i8] zeroinitializer }, align 32
@atl2_validate_option._entry_ptr = internal global ptr @atl2_validate_option._entry, section ".printk_index", align 4
@atl2_validate_option._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 2878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s Disabled\0A\00", [17 x i8] zeroinitializer }, align 32
@atl2_validate_option._entry_ptr.50 = internal global ptr @atl2_validate_option._entry.48, section ".printk_index", align 4
@atl2_validate_option._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.3, i32 2884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s set to %i\0A\00", [16 x i8] zeroinitializer }, align 32
@atl2_validate_option._entry_ptr.53 = internal global ptr @atl2_validate_option._entry.51, section ".printk_index", align 4
@atl2_validate_option._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.3, i32 2893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@atl2_validate_option._entry_ptr.56 = internal global ptr @atl2_validate_option._entry.54, section ".printk_index", align 4
@atl2_validate_option._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.3, i32 2903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Invalid %s specified (%i) %s\0A\00", [32 x i8] zeroinitializer }, align 32
@atl2_validate_option._entry_ptr.59 = internal global ptr @atl2_validate_option._entry.57, section ".printk_index", align 4
@atl2_check_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: %s NIC Link is Up<%d Mbps %s>\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl2_check_link\00", [16 x i8] zeroinitializer }, align 32
@atl2_check_link._entry_ptr = internal global ptr @atl2_check_link._entry, section ".printk_index", align 4
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Full Duplex\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Half Duplex\00", [20 x i8] zeroinitializer }, align 32
@atl2_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: get speed&duplex error while suspend\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atl2_suspend\00", [19 x i8] zeroinitializer }, align 32
@atl2_suspend._entry_ptr = internal global ptr @atl2_suspend._entry, section ".printk_index", align 4
@atl2_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013atl2: Cannot enable PCI device from suspend\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atl2_resume\00", [20 x i8] zeroinitializer }, align 32
@atl2_resume._entry_ptr = internal global ptr @atl2_resume._entry, section ".printk_index", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@switch.table.atl2_phy_init = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 15, i16 8, i16 4, i16 2], [24 x i8] zeroinitializer }, align 32
@switch.table.atl2_phy_init.68 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 3552, i16 3328, i16 3200, i16 3136], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 5256, i64 5260]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 5256, i64 5260]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 16384]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.73 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 15]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"atl2_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1665, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1678, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"atl2_driver_name\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 39, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"atl2_pci_tbl\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 49, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1318, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1334, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"atl2_netdev_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1286, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"atl2_ethtool_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2038, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1416, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1418, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1420, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1421, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1423, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"flash_table\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2119, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2122, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2123, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2124, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 560, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 490, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 495, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 499, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 509, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1984, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 99, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2614, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2923, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2925, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2933, i32 13 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2934, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant [14 x i8] c"num_TxMemSize\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [10 x i8] c"TxMemSize\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2791, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2955, i32 13 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2956, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"num_RxMemBlock\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [11 x i8] c"RxMemBlock\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2801, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2980, i32 13 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2981, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"num_IntModTimer\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"IntModTimer\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2825, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2997, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2998, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"num_FlashVendor\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [12 x i8] c"FlashVendor\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2834, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 3014, i32 13 }
@___asan_gen_.268 = private unnamed_addr constant [14 x i8] c"num_MediaType\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2815, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2875, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2878, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2884, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2893, i32 6 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 2902, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1198, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1524, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [44 x i8] c"../drivers/net/ethernet/atheros/atlx/atl2.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1629, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [27 x i8] c"switch.table.atl2_phy_init\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [30 x i8] c"switch.table.atl2_phy_init.68\00", align 1
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_FlashVendor490, ptr @__UNIQUE_ID_FlashVendortype489, ptr @__UNIQUE_ID_IntModTimer488, ptr @__UNIQUE_ID_IntModTimertype487, ptr @__UNIQUE_ID_MediaType486, ptr @__UNIQUE_ID_MediaTypetype485, ptr @__UNIQUE_ID_RxMemBlock484, ptr @__UNIQUE_ID_RxMemBlocktype483, ptr @__UNIQUE_ID_TxMemSize482, ptr @__UNIQUE_ID_TxMemSizetype481, ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_atl2_driver_exit, ptr @__initcall__kmod_atl2__480_1678_atl2_driver_init6, ptr @__param_FlashVendor, ptr @__param_IntModTimer, ptr @__param_MediaType, ptr @__param_RxMemBlock, ptr @__param_TxMemSize, ptr @atl2_check_for_link._entry, ptr @atl2_check_for_link._entry_ptr, ptr @atl2_check_link._entry, ptr @atl2_check_link._entry_ptr, ptr @atl2_check_options._entry, ptr @atl2_check_options._entry.34, ptr @atl2_check_options._entry_ptr, ptr @atl2_check_options._entry_ptr.36, ptr @atl2_driver_exit, ptr @atl2_intr_tx._entry, ptr @atl2_intr_tx._entry.19, ptr @atl2_intr_tx._entry.22, ptr @atl2_intr_tx._entry.25, ptr @atl2_intr_tx._entry_ptr, ptr @atl2_intr_tx._entry_ptr.21, ptr @atl2_intr_tx._entry_ptr.24, ptr @atl2_intr_tx._entry_ptr.27, ptr @atl2_phy_commit._entry, ptr @atl2_phy_commit._entry_ptr, ptr @atl2_probe._entry, ptr @atl2_probe._entry_ptr, ptr @atl2_resume._entry, ptr @atl2_resume._entry_ptr, ptr @atl2_suspend._entry, ptr @atl2_suspend._entry_ptr, ptr @atl2_validate_option._entry, ptr @atl2_validate_option._entry.48, ptr @atl2_validate_option._entry.51, ptr @atl2_validate_option._entry.54, ptr @atl2_validate_option._entry.57, ptr @atl2_validate_option._entry_ptr, ptr @atl2_validate_option._entry_ptr.50, ptr @atl2_validate_option._entry_ptr.53, ptr @atl2_validate_option._entry_ptr.56, ptr @atl2_validate_option._entry_ptr.59, ptr @atl2_driver, ptr @.str, ptr @atl2_driver_name, ptr @atl2_pci_tbl, ptr @atl2_probe.cards_found, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @atl2_netdev_ops, ptr @atl2_ethtool_ops, ptr @atl2_probe.__key, ptr @.str.4, ptr @atl2_probe.__key.5, ptr @.str.6, ptr @atl2_probe.__key.7, ptr @.str.8, ptr @atl2_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @flash_table, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @atl2_sw_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @num_TxMemSize, ptr @TxMemSize, ptr @.str.39, ptr @.str.40, ptr @num_RxMemBlock, ptr @RxMemBlock, ptr @.str.41, ptr @.str.42, ptr @num_IntModTimer, ptr @IntModTimer, ptr @.str.43, ptr @.str.44, ptr @num_FlashVendor, ptr @FlashVendor, ptr @.str.45, ptr @num_MediaType, ptr @MediaType, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @switch.table.atl2_phy_init, ptr @switch.table.atl2_phy_init.68], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_driver_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_probe.cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_check_for_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_intr_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_intr_tx._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_intr_tx._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_intr_tx._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_phy_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_check_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_check_options._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxMemSize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxMemSize to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxMemBlock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxMemBlock to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_IntModTimer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IntModTimer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_FlashVendor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FlashVendor to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_MediaType to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MediaType to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_validate_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_validate_option._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_validate_option._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_validate_option._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_validate_option._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_check_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl2_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl2_phy_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl2_phy_init.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atl2_driver, ptr noundef null, ptr noundef nonnull @.str) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atl2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @atl2_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %do.end

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #19
  br label %err_dma

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @atl2_driver_name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_dma_crit_edge

if.end8.err_dma_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_dma

if.end12:                                         ; preds = %if.end8
  tail call void @pci_set_master(ptr noundef %pdev) #16
  %call13 = tail call ptr @alloc_etherdev_mqs(i32 noundef 496, i32 noundef 1, i32 noundef 1) #16
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.err_alloc_etherdev_crit_edge, label %if.end16

if.end12.err_alloc_etherdev_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_alloc_etherdev

if.end16:                                         ; preds = %if.end12
  %parent = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call13, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call13, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call13, ptr %add.ptr.i, align 4
  %pdev21 = getelementptr i8, ptr %call13, i32 2308
  %3 = ptrtoint ptr %pdev21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev21, align 4
  %hw = getelementptr i8, ptr %call13, i32 2644
  %back = getelementptr i8, ptr %call13, i32 2648
  %4 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %back, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %sub = sub i32 1, %6
  %add = add i32 %sub, %8
  %cond = select i1 %cmp, i32 0, i32 %add
  %mem_rang = getelementptr i8, ptr %call13, i32 2676
  %9 = ptrtoint ptr %mem_rang to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %mem_rang, align 4
  %call31 = tail call ptr @ioremap(i32 noundef %6, i32 noundef %cond) #16
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call31, ptr %hw, align 4
  %tobool35.not = icmp eq ptr %call31, null
  br i1 %tobool35.not, label %if.end16.err_ioremap_crit_edge, label %if.end37

if.end16.err_ioremap_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_ioremap

if.end37:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #16
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %cmd.i, align 2, !annotation !198
  %call.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %cmd.i) #16
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd.i, align 2
  %14 = and i16 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %if.end37.if.end.i_crit_edge, label %if.then.i

if.end37.if.end.i_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %and2.i = and i16 %13, -1025
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %and2.i, ptr %cmd.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end37.if.end.i_crit_edge
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cmd.i, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool6.not.i = icmp eq i16 %18, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then7.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %and9.i = and i16 %17, -2
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %and9.i, ptr %cmd.i, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cmd.i, align 2
  %22 = and i16 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i = icmp eq i16 %22, 0
  br i1 %cmp.i, label %if.then15.i, label %if.end11.i.if.end18.i_crit_edge

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  %or.i = or i16 %21, 2
  %23 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %or.i, ptr %cmd.i, align 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end18.i_crit_edge
  %24 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cmd.i, align 2
  %26 = and i16 %25, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp21.i = icmp eq i16 %26, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.end18.i.atl2_setup_pcicmd.exit_crit_edge

if.end18.i.atl2_setup_pcicmd.exit_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_setup_pcicmd.exit

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  %or25.i = or i16 %25, 4
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or25.i, ptr %cmd.i, align 2
  br label %atl2_setup_pcicmd.exit

atl2_setup_pcicmd.exit:                           ; preds = %if.then23.i, %if.end18.i.atl2_setup_pcicmd.exit_crit_edge
  %28 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cmd.i, align 2
  %call28.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext %29) #16
  %call29.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 68, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 16
  %30 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @atl2_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 44
  %31 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @atl2_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 115
  %32 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 500, ptr %watchdog_timeo, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 30
  %33 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 40, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 31
  %34 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1504, ptr %max_mtu, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %atl2_setup_pcicmd.exit.pci_name.exit_crit_edge

atl2_setup_pcicmd.exit.pci_name.exit_crit_edge:   ; preds = %atl2_setup_pcicmd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %atl2_setup_pcicmd.exit
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %atl2_setup_pcicmd.exit.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %atl2_setup_pcicmd.exit.pci_name.exit_crit_edge ]
  %call39 = call ptr @strncpy(ptr noundef nonnull %call13, ptr noundef %retval.0.i.i, i32 noundef 15)
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 4
  %39 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %6, ptr %mem_start, align 4
  %add40 = add i32 %cond, %6
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add40, ptr %mem_end, align 8
  %41 = load i32, ptr @atl2_probe.cards_found, align 4
  %bd_number = getelementptr i8, ptr %call13, i32 2636
  %42 = ptrtoint ptr %bd_number to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %bd_number, align 4
  %pci_using_64 = getelementptr i8, ptr %call13, i32 2640
  %43 = ptrtoint ptr %pci_using_64 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %pci_using_64, align 4
  %44 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev21, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vendor.i, align 8
  %vendor_id.i = getelementptr i8, ptr %call13, i32 2704
  %48 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %vendor_id.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 8
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %device.i, align 2
  %device_id.i = getelementptr i8, ptr %call13, i32 2702
  %51 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %device_id.i, align 2
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 9
  %52 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %subsystem_vendor.i, align 4
  %subsystem_vendor_id.i = getelementptr i8, ptr %call13, i32 2708
  %54 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %subsystem_vendor_id.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 10
  %55 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %subsystem_device.i, align 2
  %subsystem_id.i = getelementptr i8, ptr %call13, i32 2706
  %57 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %subsystem_id.i, align 2
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 12
  %58 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %revision.i, align 4
  %revision_id.i = getelementptr i8, ptr %call13, i32 2710
  %60 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %revision_id.i, align 2
  %pci_cmd_word.i = getelementptr i8, ptr %call13, i32 2672
  %call.i171 = call i32 @pci_read_config_word(ptr noundef %45, i32 noundef 4, ptr noundef %pci_cmd_word.i) #16
  %wol.i = getelementptr i8, ptr %call13, i32 2312
  %61 = ptrtoint ptr %wol.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %wol.i, align 4
  %ict.i = getelementptr i8, ptr %call13, i32 2630
  %62 = ptrtoint ptr %ict.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -15536, ptr %ict.i, align 2
  %link_speed.i = getelementptr i8, ptr %call13, i32 2316
  %63 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %link_speed.i, align 4
  %link_duplex.i = getelementptr i8, ptr %call13, i32 2318
  %64 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2, ptr %link_duplex.i, align 2
  %phy_configured.i = getelementptr i8, ptr %call13, i32 2725
  %65 = ptrtoint ptr %phy_configured.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %phy_configured.i, align 1
  %preamble_len.i = getelementptr i8, ptr %call13, i32 2652
  %66 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 7, ptr %preamble_len.i, align 4
  %ipgt.i = getelementptr i8, ptr %call13, i32 2655
  %67 = ptrtoint ptr %ipgt.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 96, ptr %ipgt.i, align 1
  %min_ifg.i = getelementptr i8, ptr %call13, i32 2656
  %68 = ptrtoint ptr %min_ifg.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 80, ptr %min_ifg.i, align 4
  %ipgr1.i = getelementptr i8, ptr %call13, i32 2657
  %69 = ptrtoint ptr %ipgr1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 64, ptr %ipgr1.i, align 1
  %ipgr2.i = getelementptr i8, ptr %call13, i32 2658
  %70 = ptrtoint ptr %ipgr2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 96, ptr %ipgr2.i, align 2
  %retry_buf.i = getelementptr i8, ptr %call13, i32 2659
  %71 = ptrtoint ptr %retry_buf.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %retry_buf.i, align 1
  %max_retry.i = getelementptr i8, ptr %call13, i32 2653
  %72 = ptrtoint ptr %max_retry.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 15, ptr %max_retry.i, align 1
  %lcol.i = getelementptr i8, ptr %call13, i32 2664
  %73 = ptrtoint ptr %lcol.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 55, ptr %lcol.i, align 4
  %jam_ipg.i = getelementptr i8, ptr %call13, i32 2654
  %74 = ptrtoint ptr %jam_ipg.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 7, ptr %jam_ipg.i, align 2
  %fc_rxd_hi.i = getelementptr i8, ptr %call13, i32 2660
  %75 = ptrtoint ptr %fc_rxd_hi.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %fc_rxd_hi.i, align 4
  %fc_rxd_lo.i = getelementptr i8, ptr %call13, i32 2662
  %76 = ptrtoint ptr %fc_rxd_lo.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %fc_rxd_lo.i, align 2
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 20
  %79 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mtu.i, align 4
  %conv.i = trunc i32 %80 to i16
  %max_frame_size.i = getelementptr i8, ptr %call13, i32 2666
  %81 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i, ptr %max_frame_size.i, align 2
  %stats_lock.i = getelementptr i8, ptr %call13, i32 2320
  call void @__raw_spin_lock_init(ptr noundef %stats_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @atl2_sw_init.__key, i16 noundef signext 3) #16
  %flags.i = getelementptr i8, ptr %call13, i32 2632
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 24
  %82 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 256, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 23
  %83 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %features, align 16
  %or = or i64 %84, 384
  store i64 %or, ptr %features, align 16
  %call46 = call fastcc i32 @atl2_phy_init(ptr noundef %hw)
  %call48 = call fastcc i32 @atl2_reset_hw(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %pci_name.exit.err_eeprom_crit_edge

pci_name.exit.err_eeprom_crit_edge:               ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_eeprom

if.end51:                                         ; preds = %pci_name.exit
  call fastcc void @atl2_read_mac_addr(ptr noundef %hw)
  %mac_addr = getelementptr i8, ptr %call13, i32 2713
  call void @dev_addr_mod(ptr noundef nonnull %call13, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 86
  %85 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_addr, align 64
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %89 = and i32 %88, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.i.not.i = icmp eq i32 %89, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end51.err_eeprom_crit_edge

if.end51.err_eeprom_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_eeprom

is_valid_ether_addr.exit:                         ; preds = %if.end51
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %91 to i32
  %or.i.i = or i32 %88, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.err_eeprom_crit_edge, label %if.end58

is_valid_ether_addr.exit.err_eeprom_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_eeprom

if.end58:                                         ; preds = %is_valid_ether_addr.exit
  call fastcc void @atl2_check_options(ptr noundef %add.ptr.i)
  %watchdog_timer = getelementptr i8, ptr %call13, i32 2452
  call void @init_timer_key(ptr noundef %watchdog_timer, ptr noundef nonnull @atl2_watchdog, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @atl2_probe.__key) #16
  %phy_config_timer = getelementptr i8, ptr %call13, i32 2500
  call void @init_timer_key(ptr noundef %phy_config_timer, ptr noundef nonnull @atl2_phy_config, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @atl2_probe.__key.5) #16
  %reset_task = getelementptr i8, ptr %call13, i32 2364
  call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #16
  %92 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -64, ptr %reset_task, align 4
  %lockdep_map = getelementptr i8, ptr %call13, i32 2380
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @atl2_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry69 = getelementptr i8, ptr %call13, i32 2368
  %93 = ptrtoint ptr %entry69 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %entry69, ptr %entry69, align 4
  %prev.i = getelementptr i8, ptr %call13, i32 2372
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %entry69, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call13, i32 2376
  %95 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @atl2_reset_task, ptr %func, align 4
  %link_chg_task = getelementptr i8, ptr %call13, i32 2408
  call void @__init_work(ptr noundef %link_chg_task, i32 noundef 0) #16
  %96 = ptrtoint ptr %link_chg_task to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -64, ptr %link_chg_task, align 4
  %lockdep_map79 = getelementptr i8, ptr %call13, i32 2424
  call void @lockdep_init_map_type(ptr noundef %lockdep_map79, ptr noundef nonnull @.str.10, ptr noundef nonnull @atl2_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry81 = getelementptr i8, ptr %call13, i32 2412
  %97 = ptrtoint ptr %entry81 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %entry81, ptr %entry81, align 4
  %prev.i172 = getelementptr i8, ptr %call13, i32 2416
  %98 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %entry81, ptr %prev.i172, align 4
  %func83 = getelementptr i8, ptr %call13, i32 2420
  %99 = ptrtoint ptr %func83 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @atl2_link_chg_task, ptr %func83, align 4
  %100 = call ptr @memcpy(ptr %call13, ptr @.str.11, i32 6)
  %call89 = call i32 @register_netdev(ptr noundef nonnull %call13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end58.err_eeprom_crit_edge

if.end58.err_eeprom_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_eeprom

if.end92:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  call void @netif_carrier_off(ptr noundef nonnull %call13) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call13, i32 0, i32 103
  %101 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %102, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %103 = load i32, ptr @atl2_probe.cards_found, align 4
  %inc = add i32 %103, 1
  store i32 %inc, ptr @atl2_probe.cards_found, align 4
  br label %cleanup

err_eeprom:                                       ; preds = %if.end58.err_eeprom_crit_edge, %is_valid_ether_addr.exit.err_eeprom_crit_edge, %if.end51.err_eeprom_crit_edge, %pci_name.exit.err_eeprom_crit_edge
  %err.0 = phi i32 [ %call89, %if.end58.err_eeprom_crit_edge ], [ -5, %pci_name.exit.err_eeprom_crit_edge ], [ -5, %is_valid_ether_addr.exit.err_eeprom_crit_edge ], [ -5, %if.end51.err_eeprom_crit_edge ]
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw, align 4
  call void @iounmap(ptr noundef %105) #16
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_eeprom, %if.end16.err_ioremap_crit_edge
  %err.1 = phi i32 [ %err.0, %err_eeprom ], [ -5, %if.end16.err_ioremap_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call13) #16
  br label %err_alloc_etherdev

err_alloc_etherdev:                               ; preds = %err_ioremap, %if.end12.err_alloc_etherdev_crit_edge
  %err.2 = phi i32 [ %err.1, %err_ioremap ], [ -12, %if.end12.err_alloc_etherdev_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #16
  br label %err_dma

err_dma:                                          ; preds = %err_alloc_etherdev, %if.end8.err_dma_crit_edge, %do.end
  %err.3 = phi i32 [ -5, %do.end ], [ %call9, %if.end8.err_dma_crit_edge ], [ %err.2, %err_alloc_etherdev ]
  call void @pci_disable_device(ptr noundef %pdev) #16
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %if.end92, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_dma ], [ 0, %if.end92 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr i8, ptr %1, i32 2632
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #16
  %watchdog_timer = getelementptr i8, ptr %1, i32 2452
  %call2 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #16
  %phy_config_timer = getelementptr i8, ptr %1, i32 2500
  %call3 = tail call i32 @del_timer_sync(ptr noundef %phy_config_timer) #16
  %reset_task = getelementptr i8, ptr %1, i32 2364
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task) #16
  %link_chg_task = getelementptr i8, ptr %1, i32 2408
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %link_chg_task) #16
  tail call void @unregister_netdev(ptr noundef %1) #16
  %hw = getelementptr i8, ptr %1, i32 2644
  tail call fastcc void @atl2_force_ps(ptr noundef %hw)
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @iounmap(ptr noundef %3) #16
  tail call void @pci_release_regions(ptr noundef %pdev) #16
  tail call void @free_netdev(ptr noundef %1) #16
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_suspend(ptr noundef %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %hw2 = getelementptr i8, ptr %1, i32 2644
  %wol = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol, align 4
  tail call void @netif_device_detach(ptr noundef %1) #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %1, i32 2632
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end, !prof !199

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1504, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call fastcc void @atl2_down(ptr noundef %add.ptr.i)
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry.if.end26_crit_edge
  %call27 = tail call i32 @pci_save_state(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup144_crit_edge

if.end26.cleanup144_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup144

if.end30:                                         ; preds = %if.end26
  %9 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw2, align 4
  %add.ptr.i217 = getelementptr i8, ptr %10, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 57600) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i

for.body.i:                                       ; preds = %do.body8.i.for.body.i_crit_edge, %if.end30
  %i.022.i = phi i32 [ 0, %if.end30 ], [ %inc.i, %do.body8.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #16
  %12 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw2, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 5140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #16, !srcloc !203
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i = and i32 %15, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %for.body.i.atl2_read_phy_reg.exit_crit_edge, label %do.body8.i

for.body.i.atl2_read_phy_reg.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit

do.body8.i:                                       ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body8.i.atl2_read_phy_reg.exit_crit_edge, label %do.body8.i.for.body.i_crit_edge

do.body8.i.for.body.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.body8.i.atl2_read_phy_reg.exit_crit_edge:      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit

atl2_read_phy_reg.exit:                           ; preds = %do.body8.i.atl2_read_phy_reg.exit_crit_edge, %for.body.i.atl2_read_phy_reg.exit_crit_edge
  %ctrl.sroa.0.0 = phi i32 [ 0, %do.body8.i.atl2_read_phy_reg.exit_crit_edge ], [ %15, %for.body.i.atl2_read_phy_reg.exit_crit_edge ]
  %16 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw2, align 4
  %add.ptr.i218 = getelementptr i8, ptr %17, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 57600) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i223

for.body.i223:                                    ; preds = %do.body8.i226.for.body.i223_crit_edge, %atl2_read_phy_reg.exit
  %i.022.i219 = phi i32 [ 0, %atl2_read_phy_reg.exit ], [ %inc.i224, %do.body8.i226.for.body.i223_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #16
  %19 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw2, align 4
  %add.ptr6.i220 = getelementptr i8, ptr %20, i32 5140
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i220) #16, !srcloc !203
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i221 = and i32 %22, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i221)
  %tobool.not.i222 = icmp eq i32 %and7.i221, 0
  br i1 %tobool.not.i222, label %for.body.i223.atl2_read_phy_reg.exit230_crit_edge, label %do.body8.i226

for.body.i223.atl2_read_phy_reg.exit230_crit_edge: ; preds = %for.body.i223
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit230

do.body8.i226:                                    ; preds = %for.body.i223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i224 = add nuw nsw i32 %i.022.i219, 1
  %exitcond.not.i225 = icmp eq i32 %inc.i224, 10
  br i1 %exitcond.not.i225, label %do.body8.i226.atl2_read_phy_reg.exit230_crit_edge, label %do.body8.i226.for.body.i223_crit_edge

do.body8.i226.for.body.i223_crit_edge:            ; preds = %do.body8.i226
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i223

do.body8.i226.atl2_read_phy_reg.exit230_crit_edge: ; preds = %do.body8.i226
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit230

atl2_read_phy_reg.exit230:                        ; preds = %do.body8.i226.atl2_read_phy_reg.exit230_crit_edge, %for.body.i223.atl2_read_phy_reg.exit230_crit_edge
  %ctrl.sroa.0.1 = phi i32 [ %ctrl.sroa.0.0, %do.body8.i226.atl2_read_phy_reg.exit230_crit_edge ], [ %22, %for.body.i223.atl2_read_phy_reg.exit230_crit_edge ]
  %and95 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %cmp96.not = icmp eq i32 %and95, 0
  br i1 %cmp96.not, label %wol_dis, label %if.then98

if.then98:                                        ; preds = %atl2_read_phy_reg.exit230
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl.sroa.0.0.insert.ext = shl i32 %ctrl.sroa.0.1, 16
  %or99 = or i32 %ctrl.sroa.0.0.insert.ext, 48
  %23 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw2, align 4
  %add.ptr101 = getelementptr i8, ptr %24, i32 5280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %25 = tail call i32 @llvm.bswap.i32(i32 %or99) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %25) #16, !srcloc !201
  %26 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw2, align 4
  %add.ptr103 = getelementptr i8, ptr %27, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 0) #16, !srcloc !201
  %28 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw2, align 4
  %add.ptr105 = getelementptr i8, ptr %29, i32 4096
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %31 = or i32 %30, 67108864
  %32 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw2, align 4
  %add.ptr109 = getelementptr i8, ptr %33, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %31) #16, !srcloc !201
  %34 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw2, align 4
  %add.ptr111 = getelementptr i8, ptr %35, i32 4356
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %37 = or i32 %36, 262144
  %38 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw2, align 4
  %add.ptr115 = getelementptr i8, ptr %39, i32 4356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %37) #16, !srcloc !201
  br label %suspend_exit

wol_dis:                                          ; preds = %atl2_read_phy_reg.exit230
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw2, align 4
  %add.ptr121 = getelementptr i8, ptr %41, i32 5280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #16, !srcloc !201
  %42 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw2, align 4
  %add.ptr123 = getelementptr i8, ptr %43, i32 4096
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %45 = or i32 %44, 67108864
  %46 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw2, align 4
  %add.ptr127 = getelementptr i8, ptr %47, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %45) #16, !srcloc !201
  %48 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw2, align 4
  %add.ptr129 = getelementptr i8, ptr %49, i32 4356
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %51 = or i32 %50, 262144
  %52 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw2, align 4
  %add.ptr133 = getelementptr i8, ptr %53, i32 4356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %51) #16, !srcloc !201
  tail call fastcc void @atl2_force_ps(ptr noundef %hw2)
  br label %suspend_exit

suspend_exit:                                     ; preds = %wol_dis, %if.then98
  %54 = xor i1 %cmp96.not, true
  %phy_configured134 = getelementptr i8, ptr %1, i32 2725
  %55 = ptrtoint ptr %phy_configured134 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %phy_configured134, align 1
  %call136 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #16
  %call137 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef %call136, i1 noundef zeroext %54) #16
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i, align 4
  %and1.i.i232 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i232)
  %tobool.i233.not = icmp eq i32 %and1.i.i232, 0
  br i1 %tobool.i233.not, label %suspend_exit.if.end140_crit_edge, label %if.then139

suspend_exit.if.end140_crit_edge:                 ; preds = %suspend_exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140

if.then139:                                       ; preds = %suspend_exit
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %pdev.i = getelementptr i8, ptr %1, i32 2308
  %60 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 46
  %62 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %63, ptr noundef %59) #16
  %have_msi.i = getelementptr i8, ptr %1, i32 2641
  %64 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %have_msi.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i234 = icmp eq i8 %65, 0
  br i1 %tobool.not.i234, label %if.then139.if.end140_crit_edge, label %if.then.i

if.then139.if.end140_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140

if.then.i:                                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %67) #16
  br label %if.end140

if.end140:                                        ; preds = %if.then.i, %if.then139.if.end140_crit_edge, %suspend_exit.if.end140_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  %call142 = tail call i32 @pci_choose_state(ptr noundef %pdev, [1 x i32] %state.coerce) #16
  %call143 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef %call142) #16
  br label %cleanup144

cleanup144:                                       ; preds = %if.end140, %if.end26.cleanup144_crit_edge
  %retval.0 = phi i32 [ 0, %if.end140 ], [ %call27, %if.end26.cleanup144_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #16
  tail call void @pci_restore_state(ptr noundef %pdev) #16
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #16
  %hw = getelementptr i8, ptr %1, i32 2644
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %call6 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 3, i1 noundef zeroext false) #16
  %call7 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 4, i1 noundef zeroext false) #16
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 5280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #16, !srcloc !201
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then12:                                        ; preds = %if.end
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %have_msi.i = getelementptr i8, ptr %1, i32 2641
  %11 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %have_msi.i, align 1
  %pdev.i = getelementptr i8, ptr %1, i32 2308
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %call.i = tail call i32 @pci_enable_msi(ptr noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then12.atl2_request_irq.exit_crit_edge, label %if.then.i

if.then12.atl2_request_irq.exit_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_request_irq.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %have_msi.i, align 1
  br label %atl2_request_irq.exit

atl2_request_irq.exit:                            ; preds = %if.then.i, %if.then12.atl2_request_irq.exit_crit_edge
  %15 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %have_msi.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not.i = icmp eq i8 %16, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 128, i32 0
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @atl2_intr, ptr noundef null, i32 noundef %spec.select.i, ptr noundef %10, ptr noundef %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not, label %atl2_request_irq.exit.if.end17_crit_edge, label %atl2_request_irq.exit.cleanup_crit_edge

atl2_request_irq.exit.cleanup_crit_edge:          ; preds = %atl2_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

atl2_request_irq.exit.if.end17_crit_edge:         ; preds = %atl2_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end17:                                         ; preds = %atl2_request_irq.exit.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call19 = tail call fastcc i32 @atl2_reset_hw(ptr noundef %hw)
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %and1.i.i43 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i43)
  %tobool.i44.not = icmp eq i32 %and1.i.i43, 0
  br i1 %tobool.i44.not, label %if.end17.if.end23_crit_edge, label %if.then21

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @atl2_up(ptr noundef %add.ptr.i)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %atl2_request_irq.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end23 ], [ %call.i.i, %atl2_request_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atl2_suspend(ptr noundef %pdev, [1 x i32] [i32 2])
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl2_phy_init(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_configured = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 34
  %0 = ptrtoint ptr %phy_configured to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_configured, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 256) #16, !srcloc !208
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  tail call void @msleep(i32 noundef 1) #16
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 56576) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i

for.body.i:                                       ; preds = %do.body10.i.for.body.i_crit_edge, %if.end
  %i.022.i = phi i32 [ 0, %if.end ], [ %inc.i, %do.body10.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #16
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 5140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %13 = and i32 %12, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.body.i.atl2_write_phy_reg.exit_crit_edge, label %do.body10.i

for.body.i.atl2_write_phy_reg.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit

do.body10.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body10.i.atl2_write_phy_reg.exit_crit_edge, label %do.body10.i.for.body.i_crit_edge

do.body10.i.for.body.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.body10.i.atl2_write_phy_reg.exit_crit_edge:    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit

atl2_write_phy_reg.exit:                          ; preds = %do.body10.i.atl2_write_phy_reg.exit_crit_edge, %for.body.i.atl2_write_phy_reg.exit_crit_edge
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i40 = getelementptr i8, ptr %15, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 65024) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i43

for.body.i43:                                     ; preds = %do.body8.i.for.body.i43_crit_edge, %atl2_write_phy_reg.exit
  %i.022.i41 = phi i32 [ 0, %atl2_write_phy_reg.exit ], [ %inc.i44, %do.body8.i.for.body.i43_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #16
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr6.i = getelementptr i8, ptr %18, i32 5140
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #16, !srcloc !203
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i = and i32 %20, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i42 = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i42, label %atl2_read_phy_reg.exit, label %do.body8.i

do.body8.i:                                       ; preds = %for.body.i43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i44 = add nuw nsw i32 %i.022.i41, 1
  %exitcond.not.i45 = icmp eq i32 %inc.i44, 10
  br i1 %exitcond.not.i45, label %do.body8.i.if.then5_crit_edge, label %do.body8.i.for.body.i43_crit_edge

do.body8.i.for.body.i43_crit_edge:                ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i43

do.body8.i.if.then5_crit_edge:                    ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

atl2_read_phy_reg.exit:                           ; preds = %for.body.i43
  %21 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  br i1 %tobool4.not, label %atl2_read_phy_reg.exit.if.end10_crit_edge, label %atl2_read_phy_reg.exit.if.then5_crit_edge

atl2_read_phy_reg.exit.if.then5_crit_edge:        ; preds = %atl2_read_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

atl2_read_phy_reg.exit.if.end10_crit_edge:        ; preds = %atl2_read_phy_reg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then5:                                         ; preds = %atl2_read_phy_reg.exit.if.then5_crit_edge, %do.body8.i.if.then5_crit_edge
  %phy_val.080 = phi i32 [ %20, %atl2_read_phy_reg.exit.if.then5_crit_edge ], [ 65535, %do.body8.i.if.then5_crit_edge ]
  %and7 = and i32 %phy_val.080, 61439
  %or4.i = or i32 %and7, 14548992
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr.i46 = getelementptr i8, ptr %23, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %24 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %24) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i50

for.body.i50:                                     ; preds = %do.body10.i53.for.body.i50_crit_edge, %if.then5
  %i.022.i47 = phi i32 [ 0, %if.then5 ], [ %inc.i51, %do.body10.i53.for.body.i50_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 429496) #16
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr8.i48 = getelementptr i8, ptr %27, i32 5140
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i48) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %29 = and i32 %28, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i49 = icmp eq i32 %29, 0
  br i1 %tobool.not.i49, label %for.body.i50.if.end10_crit_edge, label %do.body10.i53

for.body.i50.if.end10_crit_edge:                  ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

do.body10.i53:                                    ; preds = %for.body.i50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i51 = add nuw nsw i32 %i.022.i47, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, 10
  br i1 %exitcond.not.i52, label %do.body10.i53.if.end10_crit_edge, label %do.body10.i53.for.body.i50_crit_edge

do.body10.i53.for.body.i50_crit_edge:             ; preds = %do.body10.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i50

do.body10.i53.if.end10_crit_edge:                 ; preds = %do.body10.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %do.body10.i53.if.end10_crit_edge, %for.body.i50.if.end10_crit_edge, %atl2_read_phy_reg.exit.if.end10_crit_edge
  tail call void @msleep(i32 noundef 1) #16
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %add.ptr.i56 = getelementptr i8, ptr %31, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 840192) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i60

for.body.i60:                                     ; preds = %do.body10.i63.for.body.i60_crit_edge, %if.end10
  %i.022.i57 = phi i32 [ 0, %if.end10 ], [ %inc.i61, %do.body10.i63.for.body.i60_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 429496) #16
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr8.i58 = getelementptr i8, ptr %34, i32 5140
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i58) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %36 = and i32 %35, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i59 = icmp eq i32 %36, 0
  br i1 %tobool.not.i59, label %if.end14, label %do.body10.i63

do.body10.i63:                                    ; preds = %for.body.i60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i61 = add nuw nsw i32 %i.022.i57, 1
  %exitcond.not.i62 = icmp eq i32 %inc.i61, 10
  br i1 %exitcond.not.i62, label %do.body10.i63.cleanup_crit_edge, label %do.body10.i63.for.body.i60_crit_edge

do.body10.i63.for.body.i60_crit_edge:             ; preds = %do.body10.i63
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i60

do.body10.i63.cleanup_crit_edge:                  ; preds = %do.body10.i63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %for.body.i60
  %MediaType.i = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 14
  %37 = ptrtoint ptr %MediaType.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %MediaType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %38)
  %39 = icmp ult i16 %38, 4
  br i1 %39, label %switch.lookup, label %if.end14.sw.epilog.i_crit_edge

if.end14.sw.epilog.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %40 = sext i16 %38 to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.atl2_phy_init, i32 0, i32 %40
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %41)
  %switch.load = load i16, ptr %switch.gep, align 2
  %42 = sext i16 %38 to i32
  %switch.gep99 = getelementptr inbounds [4 x i16], ptr @switch.table.atl2_phy_init.68, i32 0, i32 %42
  %43 = ptrtoint ptr %switch.gep99 to i32
  call void @__asan_load2_noabort(i32 %43)
  %switch.load100 = load i16, ptr %switch.gep99, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end14.sw.epilog.i_crit_edge
  %.sink.i = phi i16 [ %switch.load, %switch.lookup ], [ 1, %if.end14.sw.epilog.i_crit_edge ]
  %mii_autoneg_adv_reg.0.i = phi i16 [ %switch.load100, %switch.lookup ], [ 3104, %if.end14.sw.epilog.i_crit_edge ]
  %autoneg_advertised23.i = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 15
  %44 = ptrtoint ptr %autoneg_advertised23.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %.sink.i, ptr %autoneg_advertised23.i, align 2
  %mii_autoneg_adv_reg27.i = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 17
  %45 = ptrtoint ptr %mii_autoneg_adv_reg27.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %mii_autoneg_adv_reg.0.i, ptr %mii_autoneg_adv_reg27.i, align 2
  %conv.i.i = zext i16 %mii_autoneg_adv_reg.0.i to i32
  %or4.i.i = or i32 %conv.i.i, 12845056
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %48 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %48) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.body10.i.i.for.body.i.i_crit_edge, %sw.epilog.i
  %i.022.i.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i.i, %do.body10.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 429496) #16
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %51, i32 5140
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %53 = and i32 %52, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %if.end18, label %do.body10.i.i

do.body10.i.i:                                    ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %do.body10.i.i.cleanup_crit_edge, label %do.body10.i.i.for.body.i.i_crit_edge

do.body10.i.i.for.body.i.i_crit_edge:             ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.body10.i.i.cleanup_crit_edge:                  ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %for.body.i.i
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %55, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 9617408) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i70

for.body.i.i70:                                   ; preds = %do.body10.i.i73.for.body.i.i70_crit_edge, %if.end18
  %i.022.i.i67 = phi i32 [ 0, %if.end18 ], [ %inc.i.i71, %do.body10.i.i73.for.body.i.i70_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 429496) #16
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %add.ptr8.i.i68 = getelementptr i8, ptr %58, i32 5140
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i68) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %60 = and i32 %59, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i69 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i69, label %for.body.i.i70.if.end22_crit_edge, label %do.body10.i.i73

for.body.i.i70.if.end22_crit_edge:                ; preds = %for.body.i.i70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

do.body10.i.i73:                                  ; preds = %for.body.i.i70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i.i71 = add nuw nsw i32 %i.022.i.i67, 1
  %exitcond.not.i.i72 = icmp eq i32 %inc.i.i71, 10
  br i1 %exitcond.not.i.i72, label %do.body10.i.i73.for.body.i77_crit_edge, label %do.body10.i.i73.for.body.i.i70_crit_edge

do.body10.i.i73.for.body.i.i70_crit_edge:         ; preds = %do.body10.i.i73
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i70

do.body10.i.i73.for.body.i77_crit_edge:           ; preds = %do.body10.i.i73
  br label %for.body.i77

for.cond.i:                                       ; preds = %for.body.i77
  %inc.i74 = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i75 = icmp eq i32 %inc.i74, 25
  br i1 %exitcond.not.i75, label %atl2_phy_commit.exit, label %for.cond.i.for.body.i77_crit_edge

for.cond.i.for.body.i77_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.cond.i.for.body.i77_crit_edge, %do.body10.i.i73.for.body.i77_crit_edge
  %i.019.i = phi i32 [ %inc.i74, %for.cond.i.for.body.i77_crit_edge ], [ 0, %do.body10.i.i73.for.body.i77_crit_edge ]
  tail call void @msleep(i32 noundef 1) #16
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 4
  %add.ptr.i76 = getelementptr i8, ptr %62, i32 5140
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %64 = and i32 %63, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool2.not.i = icmp eq i32 %64, 0
  br i1 %tobool2.not.i, label %for.body.i77.if.end22_crit_edge, label %for.cond.i

for.body.i77.if.end22_crit_edge:                  ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

atl2_phy_commit.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #19
  br label %cleanup

if.end22:                                         ; preds = %for.body.i77.if.end22_crit_edge, %for.body.i.i70.if.end22_crit_edge
  %65 = ptrtoint ptr %phy_configured to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %phy_configured, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %atl2_phy_commit.exit, %do.body10.i.i.cleanup_crit_edge, %do.body10.i63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ 2, %atl2_phy_commit.exit ], [ 2, %do.body10.i.i.cleanup_crit_edge ], [ 2, %do.body10.i63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl2_reset_hw(ptr nocapture noundef readonly %hw) unnamed_addr #2 align 64 {
entry:
  %pci_cfg_cmd_word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_cfg_cmd_word) #16
  %0 = ptrtoint ptr %pci_cfg_cmd_word to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pci_cfg_cmd_word, align 2, !annotation !198
  %back.i = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %back.i, align 4
  %pdev.i = getelementptr inbounds %struct.atl2_adapter, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %pci_cfg_cmd_word) #16
  %5 = ptrtoint ptr %pci_cfg_cmd_word to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pci_cfg_cmd_word, align 2
  %7 = and i16 %6, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %7)
  %cmp.not = icmp eq i16 %7, 7
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i16 %6, 7
  %8 = ptrtoint ptr %pci_cfg_cmd_word to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or, ptr %pci_cfg_cmd_word, align 2
  %9 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back.i, align 4
  %pdev.i31 = getelementptr inbounds %struct.atl2_adapter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pdev.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i31, align 4
  %call.i32 = call i32 @pci_write_config_word(ptr noundef %12, i32 noundef 4, i16 noundef zeroext %or) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 5120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  call void @arm_heavy_mb() #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #16, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !211
  call void @arm_heavy_mb() #16
  call void @msleep(i32 noundef 1) #16
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %16, i32 5136
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end9

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9:                                          ; preds = %if.end
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr7.1 = getelementptr i8, ptr %19, i32 5136
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1 = icmp eq i32 %20, 0
  br i1 %tobool.not.1, label %if.end9.for.end_crit_edge, label %if.end9.1

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.1:                                        ; preds = %if.end9
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr7.2 = getelementptr i8, ptr %22, i32 5136
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.2 = icmp eq i32 %23, 0
  br i1 %tobool.not.2, label %if.end9.1.for.end_crit_edge, label %if.end9.2

if.end9.1.for.end_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.2:                                        ; preds = %if.end9.1
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr7.3 = getelementptr i8, ptr %25, i32 5136
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.3 = icmp eq i32 %26, 0
  br i1 %tobool.not.3, label %if.end9.2.for.end_crit_edge, label %if.end9.3

if.end9.2.for.end_crit_edge:                      ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.3:                                        ; preds = %if.end9.2
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr7.4 = getelementptr i8, ptr %28, i32 5136
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.4) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.4 = icmp eq i32 %29, 0
  br i1 %tobool.not.4, label %if.end9.3.for.end_crit_edge, label %if.end9.4

if.end9.3.for.end_crit_edge:                      ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.4:                                        ; preds = %if.end9.3
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %add.ptr7.5 = getelementptr i8, ptr %31, i32 5136
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.5) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.5 = icmp eq i32 %32, 0
  br i1 %tobool.not.5, label %if.end9.4.for.end_crit_edge, label %if.end9.5

if.end9.4.for.end_crit_edge:                      ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.5:                                        ; preds = %if.end9.4
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr7.6 = getelementptr i8, ptr %34, i32 5136
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.6) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.6 = icmp eq i32 %35, 0
  br i1 %tobool.not.6, label %if.end9.5.for.end_crit_edge, label %if.end9.6

if.end9.5.for.end_crit_edge:                      ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.6:                                        ; preds = %if.end9.5
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %add.ptr7.7 = getelementptr i8, ptr %37, i32 5136
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.7) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.7 = icmp eq i32 %38, 0
  br i1 %tobool.not.7, label %if.end9.6.for.end_crit_edge, label %if.end9.7

if.end9.6.for.end_crit_edge:                      ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.7:                                        ; preds = %if.end9.6
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %add.ptr7.8 = getelementptr i8, ptr %40, i32 5136
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.8) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.8 = icmp eq i32 %41, 0
  br i1 %tobool.not.8, label %if.end9.7.for.end_crit_edge, label %if.end9.8

if.end9.7.for.end_crit_edge:                      ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.8:                                        ; preds = %if.end9.7
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %add.ptr7.9 = getelementptr i8, ptr %43, i32 5136
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.9) #16, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.9 = icmp eq i32 %44, 0
  br i1 %tobool.not.9, label %if.end9.8.for.end_crit_edge, label %if.end9.9

if.end9.8.for.end_crit_edge:                      ; preds = %if.end9.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end9.9:                                        ; preds = %if.end9.8
  call void @__sanitizer_cov_trace_pc() #18
  call void @msleep(i32 noundef 1) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %45 = call i32 @llvm.bswap.i32(i32 %44) #16
  br label %for.end

for.end:                                          ; preds = %if.end9.9, %if.end9.8.for.end_crit_edge, %if.end9.7.for.end_crit_edge, %if.end9.6.for.end_crit_edge, %if.end9.5.for.end_crit_edge, %if.end9.4.for.end_crit_edge, %if.end9.3.for.end_crit_edge, %if.end9.2.for.end_crit_edge, %if.end9.1.for.end_crit_edge, %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  %icr.1 = phi i32 [ %45, %if.end9.9 ], [ 0, %if.end9.8.for.end_crit_edge ], [ 0, %if.end9.7.for.end_crit_edge ], [ 0, %if.end9.6.for.end_crit_edge ], [ 0, %if.end9.5.for.end_crit_edge ], [ 0, %if.end9.4.for.end_crit_edge ], [ 0, %if.end9.3.for.end_crit_edge ], [ 0, %if.end9.2.for.end_crit_edge ], [ 0, %if.end9.1.for.end_crit_edge ], [ 0, %if.end9.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_cfg_cmd_word) #16
  ret i32 %icr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl2_read_mac_addr(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  %Control.i = alloca i32, align 4
  %EthAddr.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Control.i) #16
  %0 = ptrtoint ptr %Control.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %Control.i, align 4, !annotation !198
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %EthAddr.i)
  %perm_mac_addr.i = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 33
  %1 = call ptr @memset(ptr %EthAddr.i, i32 255, i32 6)
  %2 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %perm_mac_addr.i, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

is_valid_ether_addr.exit.i:                       ; preds = %entry
  %add.ptr.i.i.i = getelementptr %struct.atl2_hw, ptr %hw, i32 0, i32 33, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %6 to i32
  %or.i.i.i = or i32 %3, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.end.i_crit_edge, label %is_valid_ether_addr.exit.i.get_permanent_address.exit_crit_edge

is_valid_ether_addr.exit.i.get_permanent_address.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_permanent_address.exit

is_valid_ether_addr.exit.i.if.end.i_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 512
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !203
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.i.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.atl2_check_eeprom_exist.exit.i_crit_edge, label %if.then.i.i

if.end.i.atl2_check_eeprom_exist.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_eeprom_exist.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i.i = and i32 %10, -8193
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %12, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %13 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %13) #16, !srcloc !201
  br label %atl2_check_eeprom_exist.exit.i

atl2_check_eeprom_exist.exit.i:                   ; preds = %if.then.i.i, %if.end.i.atl2_check_eeprom_exist.exit.i_crit_edge
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %15, i32 88
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i) #16, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !215
  %.mask.i.i = and i16 %16, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %.mask.i.i)
  %cmp.i.not.i = icmp eq i16 %.mask.i.i, 108
  br i1 %cmp.i.not.i, label %while.cond.preheader.i, label %atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge

atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge: ; preds = %atl2_check_eeprom_exist.exit.i
  br label %while.cond64.i

while.cond.preheader.i:                           ; preds = %atl2_check_eeprom_exist.exit.i
  %call4249.i = call fastcc zeroext i1 @atl2_read_eeprom(ptr noundef %hw, i32 noundef 256, ptr noundef nonnull %Control.i) #16
  br i1 %call4249.i, label %while.cond.preheader.i.if.then5.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.cond.preheader.i.if.then5.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end27.i.if.then5.i_crit_edge, %while.cond.preheader.i.if.then5.i_crit_edge
  %KeyValid.0.off0254.i = phi i1 [ %24, %if.end27.i.if.then5.i_crit_edge ], [ false, %while.cond.preheader.i.if.then5.i_crit_edge ]
  %Register.0253.i = phi i16 [ %Register.1.i, %if.end27.i.if.then5.i_crit_edge ], [ 0, %while.cond.preheader.i.if.then5.i_crit_edge ]
  %i.0252.i = phi i32 [ %add28.i, %if.end27.i.if.then5.i_crit_edge ], [ 0, %while.cond.preheader.i.if.then5.i_crit_edge ]
  %Addr.sroa.0.0251.i = phi i32 [ %Addr.sroa.0.2.i, %if.end27.i.if.then5.i_crit_edge ], [ 0, %while.cond.preheader.i.if.then5.i_crit_edge ]
  %Addr.sroa.20.0250.i = phi i32 [ %Addr.sroa.20.2.i, %if.end27.i.if.then5.i_crit_edge ], [ 0, %while.cond.preheader.i.if.then5.i_crit_edge ]
  br i1 %KeyValid.0.off0254.i, label %if.then7.i, label %if.else18.i

if.then7.i:                                       ; preds = %if.then5.i
  %17 = zext i16 %Register.0253.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %Register.0253.i, label %if.then7.i.if.end27.i_crit_edge [
    i16 5256, label %if.then9.i
    i16 5260, label %if.then14.i
  ]

if.then7.i.if.end27.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %Control.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %Control.i, align 4
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %Control.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Control.i, align 4
  br label %if.end27.i

if.else18.i:                                      ; preds = %if.then5.i
  %22 = ptrtoint ptr %Control.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Control.i, align 4
  %and.i = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %and.i)
  %cmp19.i = icmp eq i32 %and.i, 90
  br i1 %cmp19.i, label %if.then21.i, label %if.else18.i.while.end.i_crit_edge

if.else18.i.while.end.i_crit_edge:                ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #18
  %shr.i = lshr i32 %23, 16
  %conv22.i = trunc i32 %shr.i to i16
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %if.then14.i, %if.then9.i, %if.then7.i.if.end27.i_crit_edge
  %Addr.sroa.20.2.i = phi i32 [ %Addr.sroa.20.0250.i, %if.then21.i ], [ %Addr.sroa.20.0250.i, %if.then9.i ], [ %21, %if.then14.i ], [ %Addr.sroa.20.0250.i, %if.then7.i.if.end27.i_crit_edge ]
  %Addr.sroa.0.2.i = phi i32 [ %Addr.sroa.0.0251.i, %if.then21.i ], [ %19, %if.then9.i ], [ %Addr.sroa.0.0251.i, %if.then14.i ], [ %Addr.sroa.0.0251.i, %if.then7.i.if.end27.i_crit_edge ]
  %Register.1.i = phi i16 [ %conv22.i, %if.then21.i ], [ 5256, %if.then9.i ], [ 5260, %if.then14.i ], [ %Register.0253.i, %if.then7.i.if.end27.i_crit_edge ]
  %24 = xor i1 %KeyValid.0.off0254.i, true
  %add28.i = add i32 %i.0252.i, 4
  %add.i = add i32 %i.0252.i, 260
  %call4.i = call fastcc zeroext i1 @atl2_read_eeprom(ptr noundef %hw, i32 noundef %add.i, ptr noundef nonnull %Control.i) #16
  br i1 %call4.i, label %if.end27.i.if.then5.i_crit_edge, label %if.end27.i.while.end.i_crit_edge

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end27.i.if.then5.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %if.else18.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %Addr.sroa.20.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %Addr.sroa.20.0250.i, %if.else18.i.while.end.i_crit_edge ], [ %Addr.sroa.20.2.i, %if.end27.i.while.end.i_crit_edge ]
  %Addr.sroa.0.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %Addr.sroa.0.0251.i, %if.else18.i.while.end.i_crit_edge ], [ %Addr.sroa.0.2.i, %if.end27.i.while.end.i_crit_edge ]
  %or43.i = tail call i32 @llvm.bswap.i32(i32 %Addr.sroa.0.0.lcssa.i) #16
  %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx8 = getelementptr inbounds i8, ptr %EthAddr.i, i32 2
  %25 = ptrtoint ptr %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx8 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %or43.i, ptr %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx8, align 2
  %Addr.sroa.20.4.extract.shift.i = lshr i32 %Addr.sroa.20.0.lcssa.i, 16
  %or51.i = tail call i32 @llvm.fshl.i32(i32 %Addr.sroa.20.4.extract.shift.i, i32 %Addr.sroa.20.0.lcssa.i, i32 8) #16
  %conv52.i = trunc i32 %or51.i to i16
  %26 = ptrtoint ptr %EthAddr.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv52.i, ptr %EthAddr.i, align 4
  %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0..i = load i32, ptr %EthAddr.i, align 4
  %27 = and i32 %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0..i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i218.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i218.i, label %is_valid_ether_addr.exit224.i, label %while.end.i.if.then_crit_edge

while.end.i.if.then_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

is_valid_ether_addr.exit224.i:                    ; preds = %while.end.i
  %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx10 = getelementptr inbounds i8, ptr %EthAddr.i, i32 4
  %28 = ptrtoint ptr %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx10 to i32
  call void @__asan_load2_noabort(i32 %28)
  %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..i = load i16, ptr %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx10, align 4
  %conv.i.i220.i = zext i16 %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..i to i32
  %or.i.i221.i = or i32 %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0..i, %conv.i.i220.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i221.i)
  %cmp.i.i222.not.i = icmp eq i32 %or.i.i221.i, 0
  br i1 %cmp.i.i222.not.i, label %is_valid_ether_addr.exit224.i.if.then_crit_edge, label %is_valid_ether_addr.exit224.i.cleanup.sink.split.i_crit_edge

is_valid_ether_addr.exit224.i.cleanup.sink.split.i_crit_edge: ; preds = %is_valid_ether_addr.exit224.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

is_valid_ether_addr.exit224.i.if.then_crit_edge:  ; preds = %is_valid_ether_addr.exit224.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

while.cond64.i:                                   ; preds = %if.end95.i, %atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge
  %Addr.sroa.20.3.i = phi i32 [ %Addr.sroa.20.5.i, %if.end95.i ], [ 0, %atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge ]
  %Addr.sroa.0.3.i = phi i32 [ %Addr.sroa.0.5.i, %if.end95.i ], [ 0, %atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge ]
  %i.1.i = phi i32 [ %add96.i, %if.end95.i ], [ 0, %atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge ]
  %Register.2.i = phi i16 [ %Register.3.i, %if.end95.i ], [ 0, %atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge ]
  %KeyValid.2.off0.i = phi i1 [ %83, %if.end95.i ], [ false, %atl2_check_eeprom_exist.exit.i.while.cond64.i_crit_edge ]
  %add66.i = add i32 %i.1.i, 126976
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr.i225.i = getelementptr i8, ptr %30, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225.i, i32 0) #16, !srcloc !201
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %32, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %33 = tail call i32 @llvm.bswap.i32(i32 %add66.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %33) #16, !srcloc !201
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %35, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 109330) #16, !srcloc !201
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %37, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 633618) #16, !srcloc !201
  tail call void @msleep(i32 noundef 1) #16
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %39, i32 512
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #16, !srcloc !203
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.i226.i = and i32 %41, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226.i)
  %tobool.not.i227.i = icmp eq i32 %and.i226.i, 0
  br i1 %tobool.not.i227.i, label %while.cond64.i.for.end.i.i_crit_edge, label %for.cond.i.i

while.cond64.i.for.end.i.i_crit_edge:             ; preds = %while.cond64.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %while.cond64.i
  tail call void @msleep(i32 noundef 1) #16
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %add.ptr8.1.i.i = getelementptr i8, ptr %43, i32 512
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1.i.i) #16, !srcloc !203
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.1.i.i = and i32 %45, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  tail call void @msleep(i32 noundef 1) #16
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %add.ptr8.2.i.i = getelementptr i8, ptr %47, i32 512
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2.i.i) #16, !srcloc !203
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.2.i.i = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.1.i.i.for.end.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  tail call void @msleep(i32 noundef 1) #16
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 4
  %add.ptr8.3.i.i = getelementptr i8, ptr %51, i32 512
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3.i.i) #16, !srcloc !203
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.3.i.i = and i32 %53, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.2.i.i.for.end.i.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  tail call void @msleep(i32 noundef 1) #16
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %add.ptr8.4.i.i = getelementptr i8, ptr %55, i32 512
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.4.i.i) #16, !srcloc !203
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.4.i.i = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond.3.i.i.for.end.i.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  tail call void @msleep(i32 noundef 1) #16
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %add.ptr8.5.i.i = getelementptr i8, ptr %59, i32 512
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.5.i.i) #16, !srcloc !203
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.5.i.i = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond.4.i.i.for.end.i.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  tail call void @msleep(i32 noundef 1) #16
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %add.ptr8.6.i.i = getelementptr i8, ptr %63, i32 512
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.6.i.i) #16, !srcloc !203
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.6.i.i = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.cond.5.i.i.for.end.i.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  tail call void @msleep(i32 noundef 1) #16
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %add.ptr8.7.i.i = getelementptr i8, ptr %67, i32 512
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.7.i.i) #16, !srcloc !203
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.7.i.i = and i32 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.cond.6.i.i.for.end.i.i_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  tail call void @msleep(i32 noundef 1) #16
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %add.ptr8.8.i.i = getelementptr i8, ptr %71, i32 512
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.8.i.i) #16, !srcloc !203
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.8.i.i = and i32 %73, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %and.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %for.cond.7.i.i.for.end.i.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @msleep(i32 noundef 1) #16
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 4
  %add.ptr8.9.i.i = getelementptr i8, ptr %75, i32 512
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.9.i.i) #16, !srcloc !203
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.cond.8.i.i, %for.cond.7.i.i.for.end.i.i_crit_edge, %for.cond.6.i.i.for.end.i.i_crit_edge, %for.cond.5.i.i.for.end.i.i_crit_edge, %for.cond.4.i.i.for.end.i.i_crit_edge, %for.cond.3.i.i.for.end.i.i_crit_edge, %for.cond.2.i.i.for.end.i.i_crit_edge, %for.cond.1.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge, %while.cond64.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %41, %while.cond64.i.for.end.i.i_crit_edge ], [ %45, %for.cond.i.i.for.end.i.i_crit_edge ], [ %49, %for.cond.1.i.i.for.end.i.i_crit_edge ], [ %53, %for.cond.2.i.i.for.end.i.i_crit_edge ], [ %57, %for.cond.3.i.i.for.end.i.i_crit_edge ], [ %61, %for.cond.4.i.i.for.end.i.i_crit_edge ], [ %65, %for.cond.5.i.i.for.end.i.i_crit_edge ], [ %69, %for.cond.6.i.i.for.end.i.i_crit_edge ], [ %73, %for.cond.7.i.i.for.end.i.i_crit_edge ], [ %77, %for.cond.8.i.i ]
  %and9.i.i = and i32 %.lcssa.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then68.i, label %for.end.i.i.while.end97.i_crit_edge

for.end.i.i.while.end97.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end97.i

if.then68.i:                                      ; preds = %for.end.i.i
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %79, i32 520
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #16, !srcloc !203
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  br i1 %KeyValid.2.off0.i, label %if.then70.i, label %if.else84.i

if.then70.i:                                      ; preds = %if.then68.i
  %82 = zext i16 %Register.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %Register.2.i, label %if.then70.i.if.end95.i_crit_edge [
    i16 5256, label %if.then74.i
    i16 5260, label %if.then80.i
  ]

if.then70.i.if.end95.i_crit_edge:                 ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95.i

if.then74.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95.i

if.then80.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95.i

if.else84.i:                                      ; preds = %if.then68.i
  %and85.i = and i32 %81, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %and85.i)
  %cmp86.i = icmp eq i32 %and85.i, 90
  br i1 %cmp86.i, label %if.then88.i, label %if.else84.i.while.end97.i_crit_edge

if.else84.i.while.end97.i_crit_edge:              ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end97.i

if.then88.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #18
  %shr89.i = lshr i32 %81, 16
  %conv90.i = trunc i32 %shr89.i to i16
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then88.i, %if.then80.i, %if.then74.i, %if.then70.i.if.end95.i_crit_edge
  %Addr.sroa.20.5.i = phi i32 [ %Addr.sroa.20.3.i, %if.then88.i ], [ %Addr.sroa.20.3.i, %if.then74.i ], [ %81, %if.then80.i ], [ %Addr.sroa.20.3.i, %if.then70.i.if.end95.i_crit_edge ]
  %Addr.sroa.0.5.i = phi i32 [ %Addr.sroa.0.3.i, %if.then88.i ], [ %81, %if.then74.i ], [ %Addr.sroa.0.3.i, %if.then80.i ], [ %Addr.sroa.0.3.i, %if.then70.i.if.end95.i_crit_edge ]
  %Register.3.i = phi i16 [ %conv90.i, %if.then88.i ], [ %Register.2.i, %if.then74.i ], [ %Register.2.i, %if.then80.i ], [ %Register.2.i, %if.then70.i.if.end95.i_crit_edge ]
  %83 = xor i1 %KeyValid.2.off0.i, true
  %add96.i = add i32 %i.1.i, 4
  br label %while.cond64.i

while.end97.i:                                    ; preds = %if.else84.i.while.end97.i_crit_edge, %for.end.i.i.while.end97.i_crit_edge
  %or114.i = tail call i32 @llvm.bswap.i32(i32 %Addr.sroa.0.3.i) #16
  %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx = getelementptr inbounds i8, ptr %EthAddr.i, i32 2
  %84 = ptrtoint ptr %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %or114.i, ptr %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx, align 2
  %Addr.sroa.20.4.extract.shift199.i = lshr i32 %Addr.sroa.20.3.i, 16
  %or122.i = tail call i32 @llvm.fshl.i32(i32 %Addr.sroa.20.4.extract.shift199.i, i32 %Addr.sroa.20.3.i, i32 8) #16
  %conv123.i = trunc i32 %or122.i to i16
  %85 = ptrtoint ptr %EthAddr.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv123.i, ptr %EthAddr.i, align 4
  %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0.242.i = load i32, ptr %EthAddr.i, align 4
  %86 = and i32 %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0.242.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i228.i = icmp eq i32 %86, 0
  br i1 %tobool.i.not.i228.i, label %is_valid_ether_addr.exit234.i, label %while.end97.i.if.end131.i_crit_edge

while.end97.i.if.end131.i_crit_edge:              ; preds = %while.end97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131.i

is_valid_ether_addr.exit234.i:                    ; preds = %while.end97.i
  %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx9 = getelementptr inbounds i8, ptr %EthAddr.i, i32 4
  %87 = ptrtoint ptr %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx9 to i32
  call void @__asan_load2_noabort(i32 %87)
  %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4.247.i = load i16, ptr %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx9, align 4
  %conv.i.i230.i = zext i16 %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4.247.i to i32
  %or.i.i231.i = or i32 %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0.242.i, %conv.i.i230.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i231.i)
  %cmp.i.i232.not.i = icmp eq i32 %or.i.i231.i, 0
  br i1 %cmp.i.i232.not.i, label %is_valid_ether_addr.exit234.i.if.end131.i_crit_edge, label %is_valid_ether_addr.exit234.i.cleanup.sink.split.i_crit_edge

is_valid_ether_addr.exit234.i.cleanup.sink.split.i_crit_edge: ; preds = %is_valid_ether_addr.exit234.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

is_valid_ether_addr.exit234.i.if.end131.i_crit_edge: ; preds = %is_valid_ether_addr.exit234.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end131.i

if.end131.i:                                      ; preds = %is_valid_ether_addr.exit234.i.if.end131.i_crit_edge, %while.end97.i.if.end131.i_crit_edge
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %89, i32 5256
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %91 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw, align 4
  %add.ptr135.i = getelementptr i8, ptr %92, i32 5260
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135.i) #16, !srcloc !203
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %95 = ptrtoint ptr %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %90, ptr %EthAddr.i.2.EthAddr.i.2.EthAddr.2.EthAddr.2..sroa_idx, align 2
  %Addr.sroa.20.4.extract.shift205.i = lshr i32 %94, 16
  %or162.i = tail call i32 @llvm.fshl.i32(i32 %Addr.sroa.20.4.extract.shift205.i, i32 %94, i32 8) #16
  %conv163.i = trunc i32 %or162.i to i16
  %96 = ptrtoint ptr %EthAddr.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv163.i, ptr %EthAddr.i, align 4
  %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0.243.i = load i32, ptr %EthAddr.i, align 4
  %97 = and i32 %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0.243.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i.not.i235.i = icmp eq i32 %97, 0
  br i1 %tobool.i.not.i235.i, label %is_valid_ether_addr.exit241.i, label %if.end131.i.if.then_crit_edge

if.end131.i.if.then_crit_edge:                    ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

is_valid_ether_addr.exit241.i:                    ; preds = %if.end131.i
  %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx = getelementptr inbounds i8, ptr %EthAddr.i, i32 4
  %98 = ptrtoint ptr %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %98)
  %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4.248.i = load i16, ptr %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4..sroa_idx, align 4
  %conv.i.i237.i = zext i16 %EthAddr.i.4.EthAddr.i.4.EthAddr.4.EthAddr.4.248.i to i32
  %or.i.i238.i = or i32 %EthAddr.i.0.EthAddr.i.0.EthAddr.0.EthAddr.0.243.i, %conv.i.i237.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i238.i)
  %cmp.i.i239.not.i = icmp eq i32 %or.i.i238.i, 0
  br i1 %cmp.i.i239.not.i, label %is_valid_ether_addr.exit241.i.if.then_crit_edge, label %is_valid_ether_addr.exit241.i.cleanup.sink.split.i_crit_edge

is_valid_ether_addr.exit241.i.cleanup.sink.split.i_crit_edge: ; preds = %is_valid_ether_addr.exit241.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

is_valid_ether_addr.exit241.i.if.then_crit_edge:  ; preds = %is_valid_ether_addr.exit241.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

cleanup.sink.split.i:                             ; preds = %is_valid_ether_addr.exit241.i.cleanup.sink.split.i_crit_edge, %is_valid_ether_addr.exit234.i.cleanup.sink.split.i_crit_edge, %is_valid_ether_addr.exit224.i.cleanup.sink.split.i_crit_edge
  %99 = call ptr @memcpy(ptr %perm_mac_addr.i, ptr %EthAddr.i, i32 6)
  br label %get_permanent_address.exit

get_permanent_address.exit:                       ; preds = %cleanup.sink.split.i, %is_valid_ether_addr.exit.i.get_permanent_address.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %EthAddr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Control.i) #16
  br label %if.end

if.then:                                          ; preds = %is_valid_ether_addr.exit241.i.if.then_crit_edge, %if.end131.i.if.then_crit_edge, %is_valid_ether_addr.exit224.i.if.then_crit_edge, %while.end.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %EthAddr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Control.i) #16
  %100 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %perm_mac_addr.i, align 1
  %arrayidx2 = getelementptr %struct.atl2_hw, ptr %hw, i32 0, i32 33, i32 1
  %101 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 19, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.atl2_hw, ptr %hw, i32 0, i32 33, i32 2
  %102 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 116, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.atl2_hw, ptr %hw, i32 0, i32 33, i32 3
  %103 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.atl2_hw, ptr %hw, i32 0, i32 33, i32 4
  %104 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 92, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.atl2_hw, ptr %hw, i32 0, i32 33, i32 5
  %105 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 56, ptr %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %get_permanent_address.exit
  %mac_addr = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 32
  %106 = call ptr @memcpy(ptr %mac_addr, ptr %perm_mac_addr.i, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl2_check_options(ptr nocapture noundef %adapter) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %opt = alloca %struct.atl2_option, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #16
  %0 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %bd_number = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 33
  %5 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp sgt i32 %6, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %6) #19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %opt, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.37, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.38, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %4, align 4
  %13 = load i32, ptr @num_TxMemSize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %6)
  %cmp7 = icmp ugt i32 %13, %6
  br i1 %cmp7, label %if.end13, label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %14 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 21
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %14, align 4
  br label %23

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [5 x i32], ptr @TxMemSize, i32 0, i32 %6
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  call fastcc void @atl2_validate_option(ptr noundef nonnull %val, ptr noundef nonnull %opt)
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %mul = shl i32 %20, 10
  %21 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 21
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %21, align 4
  %div138 = lshr exact i32 %mul, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20607, i32 %mul)
  %cmp16 = icmp ugt i32 %mul, 20607
  %spec.select = select i1 %cmp16, i32 160, i32 %div138
  br label %23

23:                                               ; preds = %if.end13, %if.end13.thread
  %24 = phi i32 [ 64, %if.end13.thread ], [ %spec.select, %if.end13 ]
  %txs_ring_size148 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 22
  %25 = ptrtoint ptr %txs_ring_size148 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %txs_ring_size148, align 4
  %26 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %opt, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.39, ptr %0, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.40, ptr %1, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %2, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %3, align 4
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %4, align 4
  %32 = load i32, ptr @num_RxMemBlock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %6)
  %cmp28 = icmp ugt i32 %32, %6
  br i1 %cmp28, label %if.then29, label %.if.end35_crit_edge

.if.end35_crit_edge:                              ; preds = %23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then29:                                        ; preds = %23
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx30 = getelementptr [5 x i32], ptr @RxMemBlock, i32 0, i32 %6
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx30, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val, align 4
  call fastcc void @atl2_validate_option(ptr noundef nonnull %val, ptr noundef nonnull %opt)
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %.if.end35_crit_edge
  %.sink140 = phi i32 [ %37, %if.then29 ], [ 64, %.if.end35_crit_edge ]
  %38 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 23
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink140, ptr %38, align 4
  %div37139 = lshr i32 %.sink140, 3
  %40 = trunc i32 %div37139 to i16
  %conv = mul i16 %40, 7
  %fc_rxd_hi = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 10
  %41 = ptrtoint ptr %fc_rxd_hi to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv, ptr %fc_rxd_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.sink140)
  %cmp41 = icmp ult i32 %.sink140, 24
  %div40 = udiv i32 %.sink140, 12
  %phi.cast = trunc i32 %div40 to i16
  %spec.select149 = select i1 %cmp41, i16 2, i16 %phi.cast
  %fc_rxd_lo = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 11
  %42 = ptrtoint ptr %fc_rxd_lo to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %spec.select149, ptr %fc_rxd_lo, align 2
  %43 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %opt, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.41, ptr %0, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.42, ptr %1, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 100, ptr %2, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 50, ptr %3, align 4
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65000, ptr %4, align 4
  %49 = load i32, ptr @num_IntModTimer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %6)
  %cmp55 = icmp ugt i32 %49, %6
  br i1 %cmp55, label %if.then57, label %if.end35.if.end65_crit_edge

if.end35.if.end65_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then57:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx58 = getelementptr [5 x i32], ptr @IntModTimer, i32 0, i32 %6
  %50 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx58, align 4
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %val, align 4
  call fastcc void @atl2_validate_option(ptr noundef nonnull %val, ptr noundef nonnull %opt)
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val, align 4
  %conv60 = trunc i32 %54 to i16
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %if.end35.if.end65_crit_edge
  %.sink141 = phi i16 [ %conv60, %if.then57 ], [ 100, %if.end35.if.end65_crit_edge ]
  %55 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 30
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %.sink141, ptr %55, align 4
  %57 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %opt, align 4
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.43, ptr %0, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.44, ptr %1, align 4
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %2, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %3, align 4
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %4, align 4
  %63 = load i32, ptr @num_FlashVendor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %6)
  %cmp74 = icmp ugt i32 %63, %6
  br i1 %cmp74, label %if.then76, label %if.end65.if.end86_crit_edge

if.end65.if.end86_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then76:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx77 = getelementptr [5 x i32], ptr @FlashVendor, i32 0, i32 %6
  %64 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx77, align 4
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %val, align 4
  call fastcc void @atl2_validate_option(ptr noundef nonnull %val, ptr noundef nonnull %opt)
  %67 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val, align 4
  %conv79 = trunc i32 %68 to i8
  br label %if.end86

if.end86:                                         ; preds = %if.then76, %if.end65.if.end86_crit_edge
  %.sink142 = phi i8 [ %conv79, %if.then76 ], [ 0, %if.end65.if.end86_crit_edge ]
  %69 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 30
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %.sink142, ptr %69, align 1
  %71 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %opt, align 4
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.45, ptr %0, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.44, ptr %1, align 4
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %2, align 4
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %3, align 4
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %4, align 4
  %77 = load i32, ptr @num_MediaType, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %6)
  %cmp95 = icmp ugt i32 %77, %6
  br i1 %cmp95, label %if.then97, label %if.end86.if.end107_crit_edge

if.end86.if.end107_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107

if.then97:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx98 = getelementptr [5 x i32], ptr @MediaType, i32 0, i32 %6
  %78 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx98, align 4
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %val, align 4
  call fastcc void @atl2_validate_option(ptr noundef nonnull %val, ptr noundef nonnull %opt)
  %81 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val, align 4
  %conv100 = trunc i32 %82 to i16
  br label %if.end107

if.end107:                                        ; preds = %if.then97, %if.end86.if.end107_crit_edge
  %.sink143 = phi i16 [ %conv100, %if.then97 ], [ 0, %if.end86.if.end107_crit_edge ]
  %83 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 14
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %.sink143, ptr %83, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_watchdog(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %t, i32 180
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %t, i32 -148
  %stats_lock = getelementptr i8, ptr %t, i32 -132
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stats_lock) #16
  %hw = getelementptr i8, ptr %t, i32 192
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr8 = getelementptr i8, ptr %4, i32 5892
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #16, !srcloc !203
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 5896
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #16, !srcloc !203
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stats_lock, i32 noundef %call5) #16
  %add = add i32 %10, %6
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 11
  %13 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_over_errors, align 4
  %add15 = add i32 %add, %14
  store i32 %add15, ptr %rx_over_errors, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add16 = add i32 %15, 400
  %call17 = tail call i32 @round_jiffies(i32 noundef %add16) #16
  %call18 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call17) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_phy_config(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %t, i32 144
  %stats_lock = getelementptr i8, ptr %t, i32 -180
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stats_lock) #16
  %mii_autoneg_adv_reg = getelementptr i8, ptr %t, i32 174
  %0 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mii_autoneg_adv_reg, align 2
  %conv.i = zext i16 %1 to i32
  %or4.i = or i32 %conv.i, 12845056
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i

for.body.i:                                       ; preds = %do.body10.i.for.body.i_crit_edge, %entry
  %i.022.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body10.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #16
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %add.ptr8.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %9 = and i32 %8, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.i.atl2_write_phy_reg.exit_crit_edge, label %do.body10.i

for.body.i.atl2_write_phy_reg.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit

do.body10.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body10.i.atl2_write_phy_reg.exit_crit_edge, label %do.body10.i.for.body.i_crit_edge

do.body10.i.for.body.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.body10.i.atl2_write_phy_reg.exit_crit_edge:    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit

atl2_write_phy_reg.exit:                          ; preds = %do.body10.i.atl2_write_phy_reg.exit_crit_edge, %for.body.i.atl2_write_phy_reg.exit_crit_edge
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 4
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 9617408) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i19

for.body.i19:                                     ; preds = %do.body10.i22.for.body.i19_crit_edge, %atl2_write_phy_reg.exit
  %i.022.i16 = phi i32 [ 0, %atl2_write_phy_reg.exit ], [ %inc.i20, %do.body10.i22.for.body.i19_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496) #16
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 4
  %add.ptr8.i17 = getelementptr i8, ptr %14, i32 5140
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i17) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %16 = and i32 %15, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i18 = icmp eq i32 %16, 0
  br i1 %tobool.not.i18, label %for.body.i19.atl2_write_phy_reg.exit24_crit_edge, label %do.body10.i22

for.body.i19.atl2_write_phy_reg.exit24_crit_edge: ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit24

do.body10.i22:                                    ; preds = %for.body.i19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i20 = add nuw nsw i32 %i.022.i16, 1
  %exitcond.not.i21 = icmp eq i32 %inc.i20, 10
  br i1 %exitcond.not.i21, label %do.body10.i22.atl2_write_phy_reg.exit24_crit_edge, label %do.body10.i22.for.body.i19_crit_edge

do.body10.i22.for.body.i19_crit_edge:             ; preds = %do.body10.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i19

do.body10.i22.atl2_write_phy_reg.exit24_crit_edge: ; preds = %do.body10.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit24

atl2_write_phy_reg.exit24:                        ; preds = %do.body10.i22.atl2_write_phy_reg.exit24_crit_edge, %for.body.i19.atl2_write_phy_reg.exit24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stats_lock, i32 noundef %call4) #16
  %cfg_phy = getelementptr i8, ptr %t, i32 48
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cfg_phy) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_reset_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr i8, ptr %work, i32 268
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not7.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not7.i, label %entry.atl2_reinit_locked.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.atl2_reinit_locked.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_reinit_locked.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #16
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #16
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.atl2_reinit_locked.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.atl2_reinit_locked.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_reinit_locked.exit

atl2_reinit_locked.exit:                          ; preds = %while.body.i.atl2_reinit_locked.exit_crit_edge, %entry.atl2_reinit_locked.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  tail call fastcc void @atl2_down(ptr noundef %add.ptr) #16
  tail call fastcc void @atl2_up(ptr noundef %add.ptr) #16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_link_chg_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %stats_lock = getelementptr i8, ptr %work, i32 -88
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stats_lock) #16
  %hw1.i = getelementptr i8, ptr %work, i32 236
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 57600) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.body8.i.i.for.body.i.i_crit_edge, %entry
  %i.022.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %do.body8.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #16
  %5 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #16, !srcloc !203
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i.i = and i32 %8, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.then13.i.i, label %do.body8.i.i

do.body8.i.i:                                     ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %do.body8.i.i.atl2_read_phy_reg.exit.i_crit_edge, label %do.body8.i.i.for.body.i.i_crit_edge

do.body8.i.i.for.body.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.body8.i.i.atl2_read_phy_reg.exit.i_crit_edge:  ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit.i

if.then13.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv14.i.i = trunc i32 %8 to i16
  br label %atl2_read_phy_reg.exit.i

atl2_read_phy_reg.exit.i:                         ; preds = %if.then13.i.i, %do.body8.i.i.atl2_read_phy_reg.exit.i_crit_edge
  %phy_data.0.i = phi i16 [ %conv14.i.i, %if.then13.i.i ], [ -1, %do.body8.i.i.atl2_read_phy_reg.exit.i_crit_edge ]
  %9 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %10, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 57600) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %do.body8.i15.i.for.body.i12.i_crit_edge, %atl2_read_phy_reg.exit.i
  %i.022.i8.i = phi i32 [ 0, %atl2_read_phy_reg.exit.i ], [ %inc.i13.i, %do.body8.i15.i.for.body.i12.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #16
  %12 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1.i, align 4
  %add.ptr6.i9.i = getelementptr i8, ptr %13, i32 5140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i9.i) #16, !srcloc !203
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i10.i = and i32 %15, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and7.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.then13.i17.i, label %do.body8.i15.i

do.body8.i15.i:                                   ; preds = %for.body.i12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i13.i = add nuw nsw i32 %i.022.i8.i, 1
  %exitcond.not.i14.i = icmp eq i32 %inc.i13.i, 10
  br i1 %exitcond.not.i14.i, label %do.body8.i15.i.atl2_read_phy_reg.exit19.i_crit_edge, label %do.body8.i15.i.for.body.i12.i_crit_edge

do.body8.i15.i.for.body.i12.i_crit_edge:          ; preds = %do.body8.i15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i12.i

do.body8.i15.i.atl2_read_phy_reg.exit19.i_crit_edge: ; preds = %do.body8.i15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit19.i

if.then13.i17.i:                                  ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv14.i16.i = trunc i32 %15 to i16
  br label %atl2_read_phy_reg.exit19.i

atl2_read_phy_reg.exit19.i:                       ; preds = %if.then13.i17.i, %do.body8.i15.i.atl2_read_phy_reg.exit19.i_crit_edge
  %phy_data.1.i = phi i16 [ %conv14.i16.i, %if.then13.i17.i ], [ %phy_data.0.i, %do.body8.i15.i.atl2_read_phy_reg.exit19.i_crit_edge ]
  %16 = and i16 %phy_data.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end10.i

if.then.i:                                        ; preds = %atl2_read_phy_reg.exit19.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i20.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i20.i, label %if.then5.i, label %if.then.i.atl2_check_link.exit_crit_edge

if.then.i.atl2_check_link.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_link.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 5248
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %23 = and i32 %22, -33554433
  %24 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw1.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %25, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %23) #16, !srcloc !201
  %link_speed.i = getelementptr i8, ptr %work, i32 -92
  %26 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %link_speed.i, align 4
  tail call void @netif_carrier_off(ptr noundef %1) #16
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #16
  br label %atl2_check_link.exit

if.end10.i:                                       ; preds = %atl2_read_phy_reg.exit19.i
  %29 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 61696) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %do.body8.i.i.i.for.body.i.i.i_crit_edge, %if.end10.i
  %i.022.i.i.i = phi i32 [ 0, %if.end10.i ], [ %inc.i.i.i, %do.body8.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 429496) #16
  %32 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw1.i, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %33, i32 5140
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #16, !srcloc !203
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i.i.i = and i32 %35, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %for.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %do.body8.i.i.i.atl2_check_link.exit_crit_edge, label %do.body8.i.i.i.for.body.i.i.i_crit_edge

do.body8.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

do.body8.i.i.i.atl2_check_link.exit_crit_edge:    ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_link.exit

if.end.i.i:                                       ; preds = %for.body.i.i.i
  %conv14.i.i.i = trunc i32 %35 to i16
  %36 = and i16 %conv14.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool1.not.i.i = icmp eq i16 %36, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.atl2_check_link.exit_crit_edge, label %if.end3.i.i

if.end.i.i.atl2_check_link.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_link.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %and5.i.i = and i16 %conv14.i.i.i, -16384
  %37 = zext i16 %and5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %and5.i.i, label %if.end3.i.i.atl2_check_link.exit_crit_edge [
    i16 16384, label %if.end3.i.i.if.end14.i_crit_edge
    i16 0, label %sw.bb6.i.i
  ]

if.end3.i.i.if.end14.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.end3.i.i.atl2_check_link.exit_crit_edge:       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_link.exit

sw.bb6.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.end14.i:                                       ; preds = %sw.bb6.i.i, %if.end3.i.i.if.end14.i_crit_edge
  %cmp45.not.i = phi i1 [ true, %sw.bb6.i.i ], [ false, %if.end3.i.i.if.end14.i_crit_edge ]
  %cmp25.not.i = phi i1 [ false, %sw.bb6.i.i ], [ true, %if.end3.i.i.if.end14.i_crit_edge ]
  %storemerge.i.i = phi i16 [ 10, %sw.bb6.i.i ], [ 100, %if.end3.i.i.if.end14.i_crit_edge ]
  %38 = and i16 %conv14.i.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool9.not.i.i = icmp eq i16 %38, 0
  %..i.i = select i1 %tobool9.not.i.i, i16 1, i16 2
  %MediaType.i = getelementptr i8, ptr %work, i32 260
  %39 = ptrtoint ptr %MediaType.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %MediaType.i, align 4
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %40, label %if.end14.i.if.then55.i_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb23.i
    i16 3, label %sw.bb33.i
    i16 4, label %sw.bb43.i
  ]

if.end14.i.if.then55.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then55.i

sw.bb.i:                                          ; preds = %if.end14.i
  %not.tobool9.not.i47.i = xor i1 %tobool9.not.i.i, true
  %or.cond.i = select i1 %cmp25.not.i, i1 %not.tobool9.not.i47.i, i1 false
  br i1 %or.cond.i, label %sw.bb.i.if.then55.i_crit_edge, label %sw.bb.i.if.end80.i_crit_edge

sw.bb.i.if.end80.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

sw.bb.i.if.then55.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then55.i

sw.bb23.i:                                        ; preds = %if.end14.i
  %or.cond44.i = select i1 %cmp25.not.i, i1 %tobool9.not.i.i, i1 false
  br i1 %or.cond44.i, label %sw.bb23.i.if.then55.i_crit_edge, label %sw.bb23.i.if.end80.i_crit_edge

sw.bb23.i.if.end80.i_crit_edge:                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

sw.bb23.i.if.then55.i_crit_edge:                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then55.i

sw.bb33.i:                                        ; preds = %if.end14.i
  %not.tobool9.not.i.i = xor i1 %tobool9.not.i.i, true
  %or.cond45.i = select i1 %cmp45.not.i, i1 %not.tobool9.not.i.i, i1 false
  br i1 %or.cond45.i, label %sw.bb33.i.if.then55.i_crit_edge, label %sw.bb33.i.if.end80.i_crit_edge

sw.bb33.i.if.end80.i_crit_edge:                   ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

sw.bb33.i.if.then55.i_crit_edge:                  ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then55.i

sw.bb43.i:                                        ; preds = %if.end14.i
  %or.cond46.i = select i1 %cmp45.not.i, i1 %tobool9.not.i.i, i1 false
  br i1 %or.cond46.i, label %sw.bb43.i.if.then55.i_crit_edge, label %sw.bb43.i.if.end80.i_crit_edge

sw.bb43.i.if.end80.i_crit_edge:                   ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

sw.bb43.i.if.then55.i_crit_edge:                  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then55.i

if.then55.i:                                      ; preds = %sw.bb43.i.if.then55.i_crit_edge, %sw.bb33.i.if.then55.i_crit_edge, %sw.bb23.i.if.then55.i_crit_edge, %sw.bb.i.if.then55.i_crit_edge, %if.end14.i.if.then55.i_crit_edge
  %link_speed56.i = getelementptr i8, ptr %work, i32 -92
  %42 = ptrtoint ptr %link_speed56.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %link_speed56.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %storemerge.i.i)
  %cmp59.not.i = icmp eq i16 %43, %storemerge.i.i
  br i1 %cmp59.not.i, label %lor.lhs.false61.i, label %if.then55.i.if.then66.i_crit_edge

if.then55.i.if.then66.i_crit_edge:                ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then66.i

lor.lhs.false61.i:                                ; preds = %if.then55.i
  %link_duplex.i = getelementptr i8, ptr %work, i32 -90
  %44 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %link_duplex.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %..i.i)
  %cmp64.not.i = icmp eq i16 %45, %..i.i
  br i1 %cmp64.not.i, label %lor.lhs.false61.i.if.end76.i_crit_edge, label %lor.lhs.false61.i.if.then66.i_crit_edge

lor.lhs.false61.i.if.then66.i_crit_edge:          ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then66.i

lor.lhs.false61.i.if.end76.i_crit_edge:           ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76.i

if.then66.i:                                      ; preds = %lor.lhs.false61.i.if.then66.i_crit_edge, %if.then55.i.if.then66.i_crit_edge
  %46 = ptrtoint ptr %link_speed56.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %storemerge.i.i, ptr %link_speed56.i, align 4
  %link_duplex68.i = getelementptr i8, ptr %work, i32 -90
  %47 = ptrtoint ptr %link_duplex68.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %..i.i, ptr %link_duplex68.i, align 2
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 4
  %or5.i = select i1 %tobool9.not.i.i, i32 134217935, i32 134217967
  %preamble_len.i = getelementptr i8, ptr %work, i32 244
  %50 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %preamble_len.i, align 4
  %52 = and i8 %51, 15
  %and.i = zext i8 %52 to i32
  %shl.i = shl nuw nsw i32 %and.i, 10
  %or8.i = or i32 %shl.i, %or5.i
  %features.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 23
  %53 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %features.i, align 16
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 6
  %57 = and i32 %56, 16384
  %storemerge.i.i11 = or i32 %or8.i, %57
  %flags.i12 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 14
  %58 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i12, align 8
  %and10.i = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i13 = icmp eq i32 %and10.i, 0
  %and14.i = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %spec.select.v.i = select i1 %tobool15.not.i, i32 67108864, i32 100663296
  %spec.select.v.sink.i = select i1 %tobool.not.i13, i32 %spec.select.v.i, i32 67141632
  %spec.select.i = or i32 %spec.select.v.sink.i, %storemerge.i.i11
  %retry_buf.i = getelementptr i8, ptr %work, i32 251
  %60 = ptrtoint ptr %retry_buf.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %retry_buf.i, align 1
  %and22.i = zext i8 %61 to i32
  %shl23.i = shl i32 %and22.i, 28
  %or24.i = or i32 %spec.select.i, %shl23.i
  %62 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %63, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %64 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %64) #16, !srcloc !201
  %65 = ptrtoint ptr %link_speed56.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %link_speed56.i, align 4
  %conv70.i = zext i16 %66 to i32
  %67 = ptrtoint ptr %link_duplex68.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %link_duplex68.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %68)
  %cmp73.i = icmp eq i16 %68, 2
  %cond.i = select i1 %cmp73.i, ptr @.str.62, ptr @.str.63
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @atl2_driver_name, ptr noundef %1, i32 noundef %conv70.i, ptr noundef nonnull %cond.i) #19
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then66.i, %lor.lhs.false61.i.if.end76.i_crit_edge
  %state.i22.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %state.i22.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %state.i22.i, align 4
  %71 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i23.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i23.i, label %if.end76.i.atl2_check_link.exit_crit_edge, label %if.then78.i

if.end76.i.atl2_check_link.exit_crit_edge:        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_link.exit

if.then78.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_carrier_on(ptr noundef %1) #16
  %_tx.i.i24.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %72 = ptrtoint ptr %_tx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %_tx.i.i24.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %73) #16
  br label %atl2_check_link.exit

if.end80.i:                                       ; preds = %sw.bb43.i.if.end80.i_crit_edge, %sw.bb33.i.if.end80.i_crit_edge, %sw.bb23.i.if.end80.i_crit_edge, %sw.bb.i.if.end80.i_crit_edge
  %state.i25.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %state.i25.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %state.i25.i, align 4
  %76 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i26.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i26.i, label %if.then82.i, label %if.end80.i.if.end91.i_crit_edge

if.end80.i.if.end91.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91.i

if.then82.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #18
  %77 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw1.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %78, i32 5248
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %80 = and i32 %79, -33554433
  %81 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw1.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %82, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 %80) #16, !srcloc !201
  %link_speed90.i = getelementptr i8, ptr %work, i32 -92
  %83 = ptrtoint ptr %link_speed90.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %link_speed90.i, align 4
  tail call void @netif_carrier_off(ptr noundef %1) #16
  %_tx.i.i27.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %84 = ptrtoint ptr %_tx.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %_tx.i.i27.i, align 128
  %state.i.i28.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i28.i) #16
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then82.i, %if.end80.i.if.end91.i_crit_edge
  %flags.i = getelementptr i8, ptr %work, i32 224
  %86 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags.i, align 4
  %88 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool93.not.i = icmp eq i32 %88, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %if.end91.i.atl2_check_link.exit_crit_edge

if.end91.i.atl2_check_link.exit_crit_edge:        ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_link.exit

if.then94.i:                                      ; preds = %if.end91.i
  %cfg_phy.i = getelementptr i8, ptr %work, i32 140
  %call95.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %cfg_phy.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.then97.i, label %if.then94.i.atl2_check_link.exit_crit_edge

if.then94.i.atl2_check_link.exit_crit_edge:       ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_link.exit

if.then97.i:                                      ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #18
  %phy_config_timer.i = getelementptr i8, ptr %work, i32 92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %89, 500
  %call98.i = tail call i32 @round_jiffies(i32 noundef %add.i) #16
  %call99.i = tail call i32 @mod_timer(ptr noundef %phy_config_timer.i, i32 noundef %call98.i) #16
  br label %atl2_check_link.exit

atl2_check_link.exit:                             ; preds = %if.then97.i, %if.then94.i.atl2_check_link.exit_crit_edge, %if.end91.i.atl2_check_link.exit_crit_edge, %if.then78.i, %if.end76.i.atl2_check_link.exit_crit_edge, %if.end3.i.i.atl2_check_link.exit_crit_edge, %if.end.i.i.atl2_check_link.exit_crit_edge, %do.body8.i.i.i.atl2_check_link.exit_crit_edge, %if.then5.i, %if.then.i.atl2_check_link.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stats_lock, i32 noundef %call3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 2632
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 4
  %txd_ring_size.i = getelementptr i8, ptr %netdev, i32 2592
  %4 = ptrtoint ptr %txd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txd_ring_size.i, align 4
  %txs_ring_size.i = getelementptr i8, ptr %netdev, i32 2596
  %6 = ptrtoint ptr %txs_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txs_ring_size.i, align 4
  %mul2.i = shl i32 %7, 2
  %rxd_ring_size.i = getelementptr i8, ptr %netdev, i32 2600
  %8 = ptrtoint ptr %rxd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxd_ring_size.i, align 4
  %mul5.i = mul i32 %9, 1536
  %add4.i = add i32 %5, 141
  %add6.i = add i32 %add4.i, %mul2.i
  %add7.i = add i32 %add6.i, %mul5.i
  %ring_size.i = getelementptr i8, ptr %netdev, i32 2564
  %10 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add7.i, ptr %ring_size.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %ring_dma.i = getelementptr i8, ptr %netdev, i32 2556
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add7.i, ptr noundef %ring_dma.i, i32 noundef 3264, i32 noundef 0) #16
  %ring_vir_addr.i = getelementptr i8, ptr %netdev, i32 2560
  %11 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %ring_vir_addr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_dma.i, align 4
  %txd_dma.i = getelementptr i8, ptr %netdev, i32 2572
  %and.i = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  %phi.cast.i = sub nuw nsw i32 8, %and.i
  %spec.select.i = select i1 %tobool11.not.i, i32 0, i32 %phi.cast.i
  %add16.i = add i32 %spec.select.i, %13
  %14 = ptrtoint ptr %txd_dma.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add16.i, ptr %txd_dma.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %call.i.i, i32 %spec.select.i
  %txd_ring.i = getelementptr i8, ptr %netdev, i32 2568
  %15 = ptrtoint ptr %txd_ring.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i48, ptr %txd_ring.i, align 4
  %16 = ptrtoint ptr %txd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txd_ring_size.i, align 4
  %add21.i = add i32 %add16.i, %17
  %txs_dma.i = getelementptr i8, ptr %netdev, i32 2580
  %and23.i = and i32 %add21.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %phi.cast118.i = sub nuw nsw i32 8, %and23.i
  %cond31.i = select i1 %tobool24.not.i, i32 0, i32 %phi.cast118.i
  %add35.i = add i32 %cond31.i, %add21.i
  %18 = ptrtoint ptr %txs_dma.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add35.i, ptr %txs_dma.i, align 4
  %add39.i = add i32 %cond31.i, %17
  %add.ptr40.i = getelementptr i8, ptr %add.ptr.i48, i32 %add39.i
  %txs_ring.i = getelementptr i8, ptr %netdev, i32 2576
  %19 = ptrtoint ptr %txs_ring.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr40.i, ptr %txs_ring.i, align 4
  %20 = ptrtoint ptr %txs_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txs_ring_size.i, align 4
  %mul43.i = shl i32 %21, 2
  %add44.i = add i32 %add35.i, %mul43.i
  %rxd_dma.i = getelementptr i8, ptr %netdev, i32 2588
  %and46.i = and i32 %add44.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  %phi.cast120.i = sub nuw nsw i32 128, %and46.i
  %cond54.i = select i1 %tobool47.not.i, i32 0, i32 %phi.cast120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cond54.i)
  %cmp.i = icmp ugt i32 %cond54.i, 7
  %offset.0.v.i = select i1 %cmp.i, i32 -8, i32 120
  %offset.0.i = add nsw i32 %offset.0.v.i, %cond54.i
  %add68.i = add i32 %offset.0.i, %add44.i
  %22 = ptrtoint ptr %rxd_dma.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add68.i, ptr %rxd_dma.i, align 4
  %add73.i = add i32 %offset.0.i, %mul43.i
  %add.ptr74.i = getelementptr i8, ptr %add.ptr40.i, i32 %add73.i
  %rxd_ring.i = getelementptr i8, ptr %netdev, i32 2584
  %23 = ptrtoint ptr %rxd_ring.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr74.i, ptr %rxd_ring.i, align 4
  %hw = getelementptr i8, ptr %netdev, i32 2644
  %call6 = tail call fastcc i32 @atl2_init_hw(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_config_crit_edge

if.end5.err_config_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_config

if.end9:                                          ; preds = %if.end5
  tail call void @atl2_set_multi(ptr noundef %netdev)
  %txd_write_ptr.i = getelementptr i8, ptr %netdev, i32 2604
  %24 = ptrtoint ptr %txd_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %txd_write_ptr.i, align 4
  %txd_read_ptr.i = getelementptr i8, ptr %netdev, i32 2616
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txd_read_ptr.i, i32 noundef 4) #16
  %25 = ptrtoint ptr %txd_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %txd_read_ptr.i, align 4
  %rxd_read_ptr.i = getelementptr i8, ptr %netdev, i32 2612
  %26 = ptrtoint ptr %rxd_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rxd_read_ptr.i, align 4
  %rxd_write_ptr.i = getelementptr i8, ptr %netdev, i32 2624
  %27 = ptrtoint ptr %rxd_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rxd_write_ptr.i, align 4
  %txs_write_ptr.i = getelementptr i8, ptr %netdev, i32 2620
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txs_write_ptr.i, i32 noundef 4) #16
  %28 = ptrtoint ptr %txs_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %txs_write_ptr.i, align 4
  %txs_next_clear.i = getelementptr i8, ptr %netdev, i32 2608
  %29 = ptrtoint ptr %txs_next_clear.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %txs_next_clear.i, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features.i, align 16
  %hw.i.i.i = getelementptr i8, ptr %31, i32 2644
  %34 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %35, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #16, !srcloc !201
  %36 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw.i.i.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %pdev.i.i.i = getelementptr i8, ptr %31, i32 2308
  %39 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i.i, align 4
  %irq.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i.i.i, align 4
  tail call void @synchronize_irq(i32 noundef %42) #16
  %43 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 5248
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %46 = and i32 %45, -4194305
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #16
  %48 = trunc i64 %33 to i32
  %49 = shl i32 %48, 6
  %50 = and i32 %49, 16384
  %storemerge.i.i.i = or i32 %47, %50
  %51 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %52, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %53 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %53) #16, !srcloc !201
  %54 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %55, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 34472720) #16, !srcloc !201
  %56 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw.i.i.i, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %call10 = tail call fastcc i32 @atl2_configure(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_config_crit_edge

if.end9.err_config_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_config

if.end13:                                         ; preds = %if.end9
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 4
  %have_msi.i = getelementptr i8, ptr %netdev, i32 2641
  %61 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %have_msi.i, align 1
  %62 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev1.i, align 4
  %call.i = tail call i32 @pci_enable_msi(ptr noundef %63) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i49 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i49, label %if.end13.atl2_request_irq.exit_crit_edge, label %if.then.i

if.end13.atl2_request_irq.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_request_irq.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %have_msi.i, align 1
  br label %atl2_request_irq.exit

atl2_request_irq.exit:                            ; preds = %if.then.i, %if.end13.atl2_request_irq.exit_crit_edge
  %65 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %have_msi.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool4.not.i = icmp eq i8 %66, 0
  %spec.select.i50 = select i1 %tobool4.not.i, i32 128, i32 0
  %67 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev1.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 46
  %69 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq.i, align 4
  %call.i.i51 = tail call i32 @request_threaded_irq(i32 noundef %70, ptr noundef nonnull @atl2_intr, ptr noundef null, i32 noundef %spec.select.i50, ptr noundef %60, ptr noundef %60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %tobool15.not = icmp eq i32 %call.i.i51, 0
  br i1 %tobool15.not, label %if.end17, label %atl2_request_irq.exit.err_config_crit_edge

atl2_request_irq.exit.err_config_crit_edge:       ; preds = %atl2_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_config

if.end17:                                         ; preds = %atl2_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #16
  %watchdog_timer = getelementptr i8, ptr %netdev, i32 2452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %71, 400
  %call19 = tail call i32 @round_jiffies(i32 noundef %add) #16
  %call20 = tail call i32 @mod_timer(ptr noundef %watchdog_timer, i32 noundef %call19) #16
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %73, i32 5120
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %75 = or i32 %74, 134217728
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 4
  %add.ptr25 = getelementptr i8, ptr %77, i32 5120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %75) #16, !srcloc !201
  tail call fastcc void @atl2_irq_enable(ptr noundef %add.ptr.i)
  br label %cleanup

err_config:                                       ; preds = %atl2_request_irq.exit.err_config_crit_edge, %if.end9.err_config_crit_edge, %if.end5.err_config_crit_edge
  %err.0 = phi i32 [ %call.i.i51, %atl2_request_irq.exit.err_config_crit_edge ], [ -5, %if.end5.err_config_crit_edge ], [ -5, %if.end9.err_config_crit_edge ]
  %78 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev1.i, align 4
  %dev.i54 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %80 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ring_size.i, align 4
  %82 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring_vir_addr.i, align 4
  %84 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i54, i32 noundef %81, ptr noundef %83, i32 noundef %85, i32 noundef 0) #16
  %call27 = tail call fastcc i32 @atl2_reset_hw(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %err_config, %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_config ], [ 0, %if.end17 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 2632
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !199

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 791, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @atl2_down(ptr noundef %add.ptr.i)
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %8, ptr noundef %4) #16
  %have_msi.i = getelementptr i8, ptr %netdev, i32 2641
  %9 = ptrtoint ptr %have_msi.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %have_msi.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.atl2_free_irq.exit_crit_edge, label %if.then.i

if.end.atl2_free_irq.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_free_irq.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %12) #16
  br label %atl2_free_irq.exit

atl2_free_irq.exit:                               ; preds = %if.then.i, %if.end.atl2_free_irq.exit_crit_edge
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %ring_size.i = getelementptr i8, ptr %netdev, i32 2564
  %15 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ring_size.i, align 4
  %ring_vir_addr.i = getelementptr i8, ptr %netdev, i32 2560
  %17 = ptrtoint ptr %ring_vir_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring_vir_addr.i, align 4
  %ring_dma.i = getelementptr i8, ptr %netdev, i32 2556
  %19 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 0) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 2632
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then4, label %if.end5, !prof !216

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %txs_write_ptr1.i = getelementptr i8, ptr %netdev, i32 2620
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %txs_write_ptr1.i, i32 noundef 4) #16
  %5 = ptrtoint ptr %txs_write_ptr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %txs_write_ptr1.i, align 4
  %txs_next_clear.i = getelementptr i8, ptr %netdev, i32 2608
  %7 = ptrtoint ptr %txs_next_clear.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txs_next_clear.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp ugt i32 %6, %8
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %txs_ring_size.i = getelementptr i8, ptr %netdev, i32 2596
  %9 = ptrtoint ptr %txs_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txs_ring_size.i, align 4
  %11 = xor i32 %8, -1
  %add.i = add i32 %6, %11
  %sub3.i = add i32 %add.i, %10
  br label %TxsFreeUnit.exit

cond.false.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %12 = xor i32 %8, -1
  %sub6.i = add i32 %6, %12
  br label %TxsFreeUnit.exit

TxsFreeUnit.exit:                                 ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub3.i, %cond.true.i ], [ %sub6.i, %cond.false.i ]
  %txd_read_ptr1.i = getelementptr i8, ptr %netdev, i32 2616
  %call.i.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %txd_read_ptr1.i, i32 noundef 4) #16
  %13 = ptrtoint ptr %txd_read_ptr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %txd_read_ptr1.i, align 4
  %txd_write_ptr.i = getelementptr i8, ptr %netdev, i32 2604
  %15 = ptrtoint ptr %txd_write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txd_write_ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not.i143 = icmp ugt i32 %14, %16
  br i1 %cmp.not.i143, label %cond.false.i148, label %cond.true.i146

cond.true.i146:                                   ; preds = %TxsFreeUnit.exit
  call void @__sanitizer_cov_trace_pc() #18
  %txd_ring_size.i = getelementptr i8, ptr %netdev, i32 2592
  %17 = ptrtoint ptr %txd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txd_ring_size.i, align 4
  %19 = xor i32 %16, -1
  %add.i144 = add i32 %14, %19
  %sub3.i145 = add i32 %add.i144, %18
  br label %TxdFreeBytes.exit

cond.false.i148:                                  ; preds = %TxsFreeUnit.exit
  call void @__sanitizer_cov_trace_pc() #18
  %20 = xor i32 %16, -1
  %sub6.i147 = add i32 %14, %20
  br label %TxdFreeBytes.exit

TxdFreeBytes.exit:                                ; preds = %cond.false.i148, %cond.true.i146
  %cond.i149 = phi i32 [ %sub3.i145, %cond.true.i146 ], [ %sub6.i147, %cond.false.i148 ]
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add9 = add i32 %22, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %cond.i149)
  %cmp10 = icmp ugt i32 %add9, %cond.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp11 = icmp slt i32 %cond.i, 1
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then12, label %if.end13

if.then12:                                        ; preds = %TxdFreeBytes.exit
  call void @__sanitizer_cov_trace_pc() #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %cleanup

if.end13:                                         ; preds = %TxdFreeBytes.exit
  %txd_ring = getelementptr i8, ptr %netdev, i32 2568
  %25 = ptrtoint ptr %txd_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %txd_ring, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %16
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %30 = trunc i32 %29 to i16
  %bf.shl = shl i16 %30, 5
  store i16 %bf.shl, ptr %add.ptr, align 4
  %add15 = add i32 %16, 4
  %txd_ring_size = getelementptr i8, ptr %netdev, i32 2592
  %31 = ptrtoint ptr %txd_ring_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txd_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %32)
  %cmp16.not = icmp ult i32 %add15, %32
  %sub = select i1 %cmp16.not, i32 0, i32 %32
  %spec.select = sub i32 %add15, %sub
  %sub21 = sub i32 %32, %spec.select
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21, i32 %34)
  %cmp23.not = icmp ult i32 %sub21, %34
  %35 = ptrtoint ptr %txd_ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txd_ring, align 4
  %add.ptr32 = getelementptr i8, ptr %36, i32 %spec.select
  %data33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data33, align 4
  br i1 %cmp23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %39 = call ptr @memcpy(ptr %add.ptr32, ptr %38, i32 %34)
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %add29 = add i32 %41, 3
  %and = and i32 %add29, -4
  %add30 = add i32 %and, %spec.select
  br label %if.end43

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %42 = call ptr @memcpy(ptr %add.ptr32, ptr %38, i32 %sub21)
  %43 = ptrtoint ptr %txd_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txd_ring, align 4
  %45 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data33, align 4
  %add.ptr36 = getelementptr i8, ptr %46, i32 %sub21
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %sub38 = sub i32 %48, %sub21
  %49 = call ptr @memcpy(ptr %44, ptr %add.ptr36, i32 %sub38)
  %50 = load i32, ptr %len, align 4
  %sub40 = sub i32 3, %sub21
  %add41 = add i32 %sub40, %50
  %and42 = and i32 %add41, -4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then24
  %offset.1 = phi i32 [ %add30, %if.then24 ], [ %and42, %if.else ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load44 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load44)
  %tobool45.not = icmp sgt i32 %bf.load44, -1
  br i1 %tobool45.not, label %if.end43.if.end56_crit_edge, label %if.then46

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end56

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %52 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vlan_tci, align 2
  %shl = shl i16 %53, 4
  %54 = lshr i16 %53, 13
  %or = or i16 %shl, %54
  %55 = lshr i16 %53, 9
  %and50 = and i16 %55, 8
  %or51 = or i16 %or, %and50
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load53 = load i16, ptr %add.ptr, align 4
  %bf.set55 = or i16 %bf.load53, 1
  store i16 %bf.set55, ptr %add.ptr, align 4
  %vlan = getelementptr inbounds %struct.tx_pkt_header, ptr %add.ptr, i32 0, i32 1
  %57 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or51, ptr %vlan, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then46, %if.end43.if.end56_crit_edge
  %58 = ptrtoint ptr %txd_ring_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %txd_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1, i32 %59)
  %cmp58.not = icmp ult i32 %offset.1, %59
  %sub62 = select i1 %cmp58.not, i32 0, i32 %59
  %spec.select141 = sub i32 %offset.1, %sub62
  %60 = ptrtoint ptr %txd_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select141, ptr %txd_write_ptr.i, align 4
  %txs_ring = getelementptr i8, ptr %netdev, i32 2576
  %61 = ptrtoint ptr %txs_ring to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %txs_ring, align 4
  %63 = ptrtoint ptr %txs_next_clear.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %txs_next_clear.i, align 4
  %arrayidx = getelementptr %struct.tx_pkt_status, ptr %62, i32 %64
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load65 = load i32, ptr %arrayidx, align 4
  %bf.clear66 = and i32 %bf.load65, -2
  store i32 %bf.clear66, ptr %arrayidx, align 4
  %66 = load i32, ptr %txs_next_clear.i, align 4
  %inc = add i32 %66, 1
  %txs_ring_size = getelementptr i8, ptr %netdev, i32 2596
  %67 = ptrtoint ptr %txs_ring_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %txs_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %68)
  %cmp69 = icmp eq i32 %inc, %68
  %spec.store.select = select i1 %cmp69, i32 0, i32 %inc
  %69 = ptrtoint ptr %txs_next_clear.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.store.select, ptr %txs_next_clear.i, align 4
  %70 = ptrtoint ptr %txd_write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %txd_write_ptr.i, align 4
  %shr75 = lshr i32 %71, 2
  %conv76 = trunc i32 %shr75 to i16
  %hw = getelementptr i8, ptr %netdev, i32 2644
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 4
  %add.ptr77 = getelementptr i8, ptr %73, i32 5616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv76) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr77, i16 %74) #16, !srcloc !208
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then12, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 16, %if.then12 ], [ 0, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_set_multi(ptr noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2644
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !203
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %3, 32768
  %and10 = and i32 %3, -33587201
  %and4 = shl i32 %5, 16
  %6 = and i32 %and4, 33554432
  %7 = or i32 %6, %and10
  %rctl.0 = select i1 %tobool.not, i32 %7, i32 %or
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %10 = tail call i32 @llvm.bswap.i32(i32 %rctl.0) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #16, !srcloc !201
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 5264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #16, !srcloc !201
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 4
  %add.ptr18 = getelementptr i8, ptr %14, i32 5268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #16, !srcloc !201
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %15 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.047 = load ptr, ptr %mc, align 4
  %cmp.not48 = icmp eq ptr %ha.047, %mc
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %atl2_hash_mc_addr.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.049 = phi ptr [ %ha.0, %atl2_hash_mc_addr.exit.for.body_crit_edge ], [ %ha.047, %entry.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.049, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.02.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.01.i = phi i32 [ 0, %for.body ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %shr.i = lshr i32 %call.i, %i.02.i
  %and.i = and i32 %shr.i, 1
  %sub.i = sub nuw nsw i32 31, %i.02.i
  %shl.i = shl nuw i32 %and.i, %sub.i
  %or.i = or i32 %shl.i, %value.01.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %atl2_hash_mc_addr.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

atl2_hash_mc_addr.exit:                           ; preds = %for.body.i
  %shr1.i = lshr i32 %or.i, 26
  %and2.i = and i32 %shr1.i, 31
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 5264
  %18 = lshr i32 %or.i, 29
  %shl.i45 = and i32 %18, 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i44, i32 %shl.i45
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #16, !srcloc !203
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %shl4.i = shl nuw i32 1, %and2.i
  %or.i46 = or i32 %20, %shl4.i
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 5264
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %shl.i45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i46) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %23) #16, !srcloc !201
  %24 = ptrtoint ptr %ha.049 to i32
  call void @__asan_load4_noabort(i32 %24)
  %ha.0 = load ptr, ptr %ha.049, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %atl2_hash_mc_addr.exit.for.end_crit_edge, label %atl2_hash_mc_addr.exit.for.body_crit_edge

atl2_hash_mc_addr.exit.for.body_crit_edge:        ; preds = %atl2_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

atl2_hash_mc_addr.exit.for.end_crit_edge:         ; preds = %atl2_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %atl2_hash_mc_addr.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_set_mac(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #16
  %hw = getelementptr i8, ptr %netdev, i32 2644
  %mac_addr = getelementptr i8, ptr %netdev, i32 2713
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %8 to i32
  %9 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 %conv)
  %arrayidx.i = getelementptr i8, ptr %netdev, i32 2715
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %netdev, i32 2716
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %13 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx6.i = getelementptr i8, ptr %netdev, i32 2717
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %15 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i, %shl8.i
  %arrayidx11.i = getelementptr i8, ptr %netdev, i32 2718
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %17 to i32
  %or13.i = or i32 %or9.i, %conv12.i
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr.i18 = getelementptr i8, ptr %19, i32 5256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %20 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %20) #16, !srcloc !201
  %21 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mac_addr, align 1
  %conv17.i = zext i8 %22 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %arrayidx20.i = getelementptr i8, ptr %netdev, i32 2714
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %24 to i32
  %or22.i = or i32 %shl18.i, %conv21.i
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr25.i = getelementptr i8, ptr %26, i32 5260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %27 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %27) #16, !srcloc !201
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_ioctl(ptr noundef %netdev, ptr nocapture noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %entry
  %ifr_ifru.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %cmd, label %sw.bb.return_crit_edge [
    i32 35143, label %sw.bb.i
    i32 35144, label %do.body3.i
    i32 35145, label %sw.bb13.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %ifr_ifru.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ifr_ifru.i.i, align 2
  br label %return

do.body3.i:                                       ; preds = %sw.bb
  %stats_lock.i = getelementptr i8, ptr %netdev, i32 2320
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stats_lock.i) #16
  %hw.i = getelementptr i8, ptr %netdev, i32 2644
  %reg_num.i = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg_num.i, align 2
  %val_out.i = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i.i, i32 0, i32 3
  %4 = shl i16 %3, 8
  %5 = or i16 %4, -8192
  %or2.i.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %7, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %or2.i.i) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.body8.i.i.for.body.i.i_crit_edge, %do.body3.i
  %i.022.i.i = phi i32 [ 0, %do.body3.i ], [ %inc.i.i, %do.body8.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #16
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %10, i32 5140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #16, !srcloc !203
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i.i = and i32 %12, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %do.body8.i.i

do.body8.i.i:                                     ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %if.then.i, label %do.body8.i.i.for.body.i.i_crit_edge

do.body8.i.i.for.body.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

if.then.i:                                        ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stats_lock.i, i32 noundef %call5.i) #16
  br label %return

if.end.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv14.i.i = trunc i32 %12 to i16
  %13 = ptrtoint ptr %val_out.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14.i.i, ptr %val_out.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stats_lock.i, i32 noundef %call5.i) #16
  br label %return

sw.bb13.i:                                        ; preds = %sw.bb
  %reg_num14.i = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %reg_num14.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg_num14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %15)
  %tobool17.not.i = icmp ult i16 %15, 32
  br i1 %tobool17.not.i, label %do.body21.i, label %sw.bb13.i.return_crit_edge

sw.bb13.i.return_crit_edge:                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.body21.i:                                      ; preds = %sw.bb13.i
  %stats_lock27.i = getelementptr i8, ptr %netdev, i32 2320
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stats_lock27.i) #16
  %hw34.i = getelementptr i8, ptr %netdev, i32 2644
  %16 = ptrtoint ptr %reg_num14.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_num14.i, align 2
  %conv36.i = zext i16 %17 to i32
  %val_in.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %val_in.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val_in.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %and1.i.i = shl nuw i32 %conv36.i, 16
  %shl2.i.i = and i32 %and1.i.i, 2031616
  %or.i.i = or i32 %shl2.i.i, %conv.i.i
  %or4.i.i = or i32 %or.i.i, 12582912
  %20 = ptrtoint ptr %hw34.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw34.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %21, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %22 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %22) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i64.i

for.body.i64.i:                                   ; preds = %do.body10.i.i.for.body.i64.i_crit_edge, %do.body21.i
  %i.022.i62.i = phi i32 [ 0, %do.body21.i ], [ %inc.i65.i, %do.body10.i.i.for.body.i64.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #16
  %24 = ptrtoint ptr %hw34.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw34.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %25, i32 5140
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %27 = and i32 %26, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i63.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i63.i, label %if.end41.i, label %do.body10.i.i

do.body10.i.i:                                    ; preds = %for.body.i64.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i65.i = add nuw nsw i32 %i.022.i62.i, 1
  %exitcond.not.i66.i = icmp eq i32 %inc.i65.i, 10
  br i1 %exitcond.not.i66.i, label %if.then39.i, label %do.body10.i.i.for.body.i64.i_crit_edge

do.body10.i.i.for.body.i64.i_crit_edge:           ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i64.i

if.then39.i:                                      ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stats_lock27.i, i32 noundef %call29.i) #16
  br label %return

if.end41.i:                                       ; preds = %for.body.i64.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stats_lock27.i, i32 noundef %call29.i) #16
  br label %return

return:                                           ; preds = %if.end41.i, %if.then39.i, %sw.bb13.i.return_crit_edge, %if.end.i, %if.then.i, %sw.bb.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -5, %if.then39.i ], [ -5, %if.then.i ], [ -14, %sw.bb13.i.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ 0, %if.end41.i ], [ 0, %if.end.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_change_mtu(ptr nocapture noundef %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2644
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %conv = trunc i32 %new_mtu to i16
  %max_frame_size = getelementptr i8, ptr %netdev, i32 2666
  %1 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %max_frame_size, align 2
  %add3 = add i32 %new_mtu, 22
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %add3) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #16, !srcloc !201
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_task = getelementptr i8, ptr %netdev, i32 2364
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %reset_task) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_poll_controller(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #16
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @atl2_intr(i32 noundef %3, ptr noundef %netdev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @atl2_fix_features(ptr nocapture noundef readnone %netdev, i64 noundef %features) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i64 %features, -129
  %and = lshr i64 %features, 1
  %0 = and i64 %and, 128
  %features.addr.0 = or i64 %0, %and1
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_set_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %hw.i.i = getelementptr i8, ptr %netdev, i32 2644
  %2 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %3, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #16, !srcloc !201
  %4 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %pdev.i.i = getelementptr i8, ptr %netdev, i32 2308
  %7 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i.i, align 4
  tail call void @synchronize_irq(i32 noundef %10) #16
  %11 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 5248
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %14 = and i32 %13, -4194305
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #16
  %16 = trunc i64 %features to i32
  %17 = shl i32 %16, 6
  %18 = and i32 %17, 16384
  %storemerge.i.i = or i32 %15, %18
  %19 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %20, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %21 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %21) #16, !srcloc !201
  %22 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %23, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 34472720) #16, !srcloc !201
  %24 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl2_init_hw(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4860
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 6619136) #16, !srcloc !201
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 4356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 1745158144) #16, !srcloc !201
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 5264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !201
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 5268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #16, !srcloc !201
  %flash_vendor.i = getelementptr inbounds %struct.atl2_hw, ptr %hw, i32 0, i32 30
  %8 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flash_vendor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp ugt i8 %9, 2
  br i1 %cmp.i, label %if.then.i, label %entry.atl2_init_flash_opcode.exit_crit_edge

entry.atl2_init_flash_opcode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_init_flash_opcode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %flash_vendor.i, align 1
  br label %atl2_init_flash_opcode.exit

atl2_init_flash_opcode.exit:                      ; preds = %if.then.i, %entry.atl2_init_flash_opcode.exit_crit_edge
  %11 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flash_vendor.i, align 1
  %idxprom.i = zext i8 %12 to i32
  %cmdPROGRAM.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom.i, i32 3
  %13 = ptrtoint ptr %cmdPROGRAM.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmdPROGRAM.i, align 2
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr.i8 = getelementptr i8, ptr %16, i32 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 %14) #16, !srcloc !218
  %17 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flash_vendor.i, align 1
  %idxprom5.i = zext i8 %18 to i32
  %cmdSECTOR_ERASE.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom5.i, i32 8
  %19 = ptrtoint ptr %cmdSECTOR_ERASE.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmdSECTOR_ERASE.i, align 1
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %22, i32 529
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %20) #16, !srcloc !218
  %23 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flash_vendor.i, align 1
  %idxprom10.i = zext i8 %24 to i32
  %cmdCHIP_ERASE.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom10.i, i32 9
  %25 = ptrtoint ptr %cmdCHIP_ERASE.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmdCHIP_ERASE.i, align 4
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr13.i = getelementptr i8, ptr %28, i32 530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 %26) #16, !srcloc !218
  %29 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flash_vendor.i, align 1
  %idxprom15.i = zext i8 %30 to i32
  %cmdRDID.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom15.i, i32 7
  %31 = ptrtoint ptr %cmdRDID.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cmdRDID.i, align 2
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr18.i = getelementptr i8, ptr %34, i32 531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i, i8 %32) #16, !srcloc !218
  %35 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flash_vendor.i, align 1
  %idxprom20.i = zext i8 %36 to i32
  %cmdWREN.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom20.i, i32 4
  %37 = ptrtoint ptr %cmdWREN.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cmdWREN.i, align 1
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %add.ptr23.i = getelementptr i8, ptr %40, i32 532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 %38) #16, !srcloc !218
  %41 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flash_vendor.i, align 1
  %idxprom25.i = zext i8 %42 to i32
  %cmdRDSR.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom25.i, i32 6
  %43 = ptrtoint ptr %cmdRDSR.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cmdRDSR.i, align 1
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %add.ptr28.i = getelementptr i8, ptr %46, i32 533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 %44) #16, !srcloc !218
  %47 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flash_vendor.i, align 1
  %idxprom30.i = zext i8 %48 to i32
  %cmdWRSR.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom30.i, i32 1
  %49 = ptrtoint ptr %cmdWRSR.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cmdWRSR.i, align 4
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  %add.ptr33.i = getelementptr i8, ptr %52, i32 534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 %50) #16, !srcloc !218
  %53 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flash_vendor.i, align 1
  %idxprom35.i = zext i8 %54 to i32
  %cmdREAD.i = getelementptr [3 x %struct.atl2_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom35.i, i32 2
  %55 = ptrtoint ptr %cmdREAD.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cmdREAD.i, align 1
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %add.ptr38.i = getelementptr i8, ptr %58, i32 535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38.i, i8 %56) #16, !srcloc !218
  %call = tail call fastcc i32 @atl2_phy_init(ptr noundef %hw)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl2_configure(ptr noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #16, !srcloc !201
  %mac_addr = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 32
  %arrayidx = getelementptr %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 32, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx4 = getelementptr %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 32, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %arrayidx8 = getelementptr %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 32, i32 4
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or11 = or i32 %or, %shl10
  %arrayidx13 = getelementptr %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 32, i32 5
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %or15 = or i32 %or11, %conv14
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 5256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %12 = tail call i32 @llvm.bswap.i32(i32 %or15) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #16, !srcloc !201
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mac_addr, align 1
  %conv20 = zext i8 %14 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %arrayidx23 = getelementptr %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 32, i32 1
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %16 to i32
  %or25 = or i32 %shl21, %conv24
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 4
  %add.ptr27 = getelementptr i8, ptr %18, i32 5260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %19 = tail call i32 @llvm.bswap.i32(i32 %or25) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %19) #16, !srcloc !201
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 4
  %add.ptr31 = getelementptr i8, ptr %21, i32 5440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #16, !srcloc !201
  %txd_dma = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 16
  %22 = ptrtoint ptr %txd_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txd_dma, align 4
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw1, align 4
  %add.ptr36 = getelementptr i8, ptr %25, i32 5444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %26) #16, !srcloc !201
  %txs_dma = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 18
  %27 = ptrtoint ptr %txs_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txs_dma, align 4
  %29 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1, align 4
  %add.ptr41 = getelementptr i8, ptr %30, i32 5452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %31) #16, !srcloc !201
  %rxd_dma = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 20
  %32 = ptrtoint ptr %rxd_dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxd_dma, align 4
  %34 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw1, align 4
  %add.ptr46 = getelementptr i8, ptr %35, i32 5460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %36 = tail call i32 @llvm.bswap.i32(i32 %33) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %36) #16, !srcloc !201
  %txd_ring_size = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 21
  %37 = ptrtoint ptr %txd_ring_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %txd_ring_size, align 4
  %div181 = lshr i32 %38, 2
  %conv47 = trunc i32 %div181 to i16
  %39 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1, align 4
  %add.ptr49 = getelementptr i8, ptr %40, i32 5448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv47) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49, i16 %41) #16, !srcloc !208
  %txs_ring_size = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 22
  %42 = ptrtoint ptr %txs_ring_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %txs_ring_size, align 4
  %conv50 = trunc i32 %43 to i16
  %44 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw1, align 4
  %add.ptr52 = getelementptr i8, ptr %45, i32 5456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv50) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr52, i16 %46) #16, !srcloc !208
  %rxd_ring_size = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 23
  %47 = ptrtoint ptr %rxd_ring_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxd_ring_size, align 4
  %conv53 = trunc i32 %48 to i16
  %49 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw1, align 4
  %add.ptr55 = getelementptr i8, ptr %50, i32 5464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv53) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 %51) #16, !srcloc !208
  %ipgt = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 5
  %52 = ptrtoint ptr %ipgt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ipgt, align 1
  %54 = and i8 %53, 127
  %and57 = zext i8 %54 to i32
  %min_ifg = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 6
  %55 = ptrtoint ptr %min_ifg to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %min_ifg, align 4
  %conv59 = zext i8 %56 to i32
  %shl61 = shl nuw nsw i32 %conv59, 8
  %or62 = or i32 %shl61, %and57
  %ipgr1 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 7
  %57 = ptrtoint ptr %ipgr1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ipgr1, align 1
  %59 = and i8 %58, 127
  %and64 = zext i8 %59 to i32
  %shl65 = shl nuw nsw i32 %and64, 16
  %or66 = or i32 %shl65, %or62
  %ipgr2 = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 8
  %60 = ptrtoint ptr %ipgr2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ipgr2, align 2
  %62 = and i8 %61, 127
  %and68 = zext i8 %62 to i32
  %shl69 = shl nuw nsw i32 %and68, 24
  %or70 = or i32 %or66, %shl69
  %63 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw1, align 4
  %add.ptr72 = getelementptr i8, ptr %64, i32 5252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %65 = tail call i32 @llvm.bswap.i32(i32 %or70) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %65) #16, !srcloc !201
  %lcol = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 12
  %66 = ptrtoint ptr %lcol to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %lcol, align 4
  %68 = and i16 %67, 1023
  %and74 = zext i16 %68 to i32
  %max_retry = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 3
  %69 = ptrtoint ptr %max_retry to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %max_retry, align 1
  %71 = and i8 %70, 15
  %and76 = zext i8 %71 to i32
  %shl77 = shl nuw nsw i32 %and76, 12
  %or78 = or i32 %shl77, %and74
  %jam_ipg = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 4
  %72 = ptrtoint ptr %jam_ipg to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %jam_ipg, align 2
  %74 = and i8 %73, 15
  %and82 = zext i8 %74 to i32
  %shl83 = shl nuw nsw i32 %and82, 24
  %or80 = or i32 %or78, %shl83
  %or84 = or i32 %or80, 10551296
  %75 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw1, align 4
  %add.ptr86 = getelementptr i8, ptr %76, i32 5272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %77 = tail call i32 @llvm.bswap.i32(i32 %or84) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %77) #16, !srcloc !201
  %imt = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 30
  %78 = ptrtoint ptr %imt to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %imt, align 4
  %80 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw1, align 4
  %add.ptr88 = getelementptr i8, ptr %81, i32 5128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %82 = tail call i16 @llvm.bswap.i16(i16 %79) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr88, i16 %82) #16, !srcloc !208
  %83 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw1, align 4
  %add.ptr90 = getelementptr i8, ptr %84, i32 5120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 67108864) #16, !srcloc !201
  %ict = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 31
  %85 = ptrtoint ptr %ict to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ict, align 2
  %87 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw1, align 4
  %add.ptr92 = getelementptr i8, ptr %88, i32 5134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %89 = tail call i16 @llvm.bswap.i16(i16 %86) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr92, i16 %89) #16, !srcloc !208
  %90 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adapter, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 20
  %92 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mtu, align 4
  %add94 = add i32 %93, 22
  %94 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw1, align 4
  %add.ptr96 = getelementptr i8, ptr %95, i32 5276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %96 = tail call i32 @llvm.bswap.i32(i32 %add94) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %96) #16, !srcloc !201
  %97 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw1, align 4
  %add.ptr98 = getelementptr i8, ptr %98, i32 5520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 1996554240) #16, !srcloc !201
  %fc_rxd_hi = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 10
  %99 = ptrtoint ptr %fc_rxd_hi to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %fc_rxd_hi, align 4
  %101 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw1, align 4
  %add.ptr100 = getelementptr i8, ptr %102, i32 5544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %103 = tail call i16 @llvm.bswap.i16(i16 %100) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr100, i16 %103) #16, !srcloc !208
  %fc_rxd_lo = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36, i32 11
  %104 = ptrtoint ptr %fc_rxd_lo to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %fc_rxd_lo, align 2
  %106 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw1, align 4
  %add.ptr102 = getelementptr i8, ptr %107, i32 5546
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %108 = tail call i16 @llvm.bswap.i16(i16 %105) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr102, i16 %108) #16, !srcloc !208
  %txd_write_ptr = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 24
  %109 = ptrtoint ptr %txd_write_ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %txd_write_ptr, align 4
  %conv103 = trunc i32 %110 to i16
  %111 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw1, align 4
  %add.ptr105 = getelementptr i8, ptr %112, i32 5616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %113 = tail call i16 @llvm.bswap.i16(i16 %conv103) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr105, i16 %113) #16, !srcloc !208
  %rxd_read_ptr = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 26
  %114 = ptrtoint ptr %rxd_read_ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rxd_read_ptr, align 4
  %conv106 = trunc i32 %115 to i16
  %116 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw1, align 4
  %add.ptr108 = getelementptr i8, ptr %117, i32 5620
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %118 = tail call i16 @llvm.bswap.i16(i16 %conv106) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr108, i16 %118) #16, !srcloc !208
  %119 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw1, align 4
  %add.ptr110 = getelementptr i8, ptr %120, i32 5504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr110, i8 1) #16, !srcloc !218
  %121 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw1, align 4
  %add.ptr112 = getelementptr i8, ptr %122, i32 5536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !217
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr112, i8 1) #16, !srcloc !218
  %123 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hw1, align 4
  %add.ptr115 = getelementptr i8, ptr %124, i32 5632
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %126 = lshr i32 %125, 4
  %.lobit = and i32 %126, 1
  %127 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw1, align 4
  %add.ptr120 = getelementptr i8, ptr %128, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 -193) #16, !srcloc !201
  %129 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw1, align 4
  %add.ptr123 = getelementptr i8, ptr %130, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #16, !srcloc !201
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl2_irq_enable(ptr nocapture noundef readonly %adapter) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %hw = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 34472720) #16, !srcloc !201
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_intr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  %hw1 = getelementptr i8, ptr %data, i32 2644
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5632
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !203
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %stats_lock.i = getelementptr i8, ptr %data, i32 2320
  tail call void @_raw_spin_lock(ptr noundef %stats_lock.i) #16
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 62208) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.body8.i.i.for.body.i.i_crit_edge, %if.then3
  %i.022.i.i = phi i32 [ 0, %if.then3 ], [ %inc.i.i, %do.body8.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #16
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %8, i32 5140
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %10 = and i32 %9, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.atl2_clear_phy_int.exit_crit_edge, label %do.body8.i.i

for.body.i.i.atl2_clear_phy_int.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_clear_phy_int.exit

do.body8.i.i:                                     ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %do.body8.i.i.atl2_clear_phy_int.exit_crit_edge, label %do.body8.i.i.for.body.i.i_crit_edge

do.body8.i.i.for.body.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.body8.i.i.atl2_clear_phy_int.exit_crit_edge:   ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_clear_phy_int.exit

atl2_clear_phy_int.exit:                          ; preds = %do.body8.i.i.atl2_clear_phy_int.exit_crit_edge, %for.body.i.i.atl2_clear_phy_int.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock.i) #16
  br label %if.end4

if.end4:                                          ; preds = %atl2_clear_phy_int.exit, %if.end.if.end4_crit_edge
  %or = or i32 %3, -2147483648
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %13) #16, !srcloc !201
  %and7 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.if.end20_crit_edge, label %if.then9

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then9:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then9.if.end20_crit_edge, label %if.then11

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw1, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #16, !srcloc !201
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 4
  %add.ptr15 = getelementptr i8, ptr %21, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #16, !srcloc !201
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %reset_task = getelementptr i8, ptr %data, i32 2364
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %reset_task) #16
  br label %cleanup

if.end20:                                         ; preds = %if.then9.if.end20_crit_edge, %if.end4.if.end20_crit_edge
  %and21 = and i32 %3, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end32, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #16, !srcloc !201
  %28 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw1, align 4
  %add.ptr27 = getelementptr i8, ptr %29, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #16, !srcloc !201
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw1, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %reset_task30 = getelementptr i8, ptr %data, i32 2364
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i74 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %reset_task30) #16
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %and33 = and i32 %3, 2050
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 17
  %36 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_carrier_errors, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %tx_carrier_errors, align 4
  %38 = load ptr, ptr %add.ptr.i, align 4
  %stats_lock.i75 = getelementptr i8, ptr %data, i32 2320
  tail call void @_raw_spin_lock(ptr noundef %stats_lock.i75) #16
  %39 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %40, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77, i32 57600) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i81

for.body.i.i81:                                   ; preds = %do.body8.i.i84.for.body.i.i81_crit_edge, %if.then35
  %i.022.i.i78 = phi i32 [ 0, %if.then35 ], [ %inc.i.i82, %do.body8.i.i84.for.body.i.i81_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 429496) #16
  %42 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw1, align 4
  %add.ptr6.i.i79 = getelementptr i8, ptr %43, i32 5140
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i79) #16, !srcloc !203
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i.i = and i32 %45, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i80 = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i80, label %if.then13.i.i, label %do.body8.i.i84

do.body8.i.i84:                                   ; preds = %for.body.i.i81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i.i82 = add nuw nsw i32 %i.022.i.i78, 1
  %exitcond.not.i.i83 = icmp eq i32 %inc.i.i82, 10
  br i1 %exitcond.not.i.i83, label %do.body8.i.i84.atl2_read_phy_reg.exit.i_crit_edge, label %do.body8.i.i84.for.body.i.i81_crit_edge

do.body8.i.i84.for.body.i.i81_crit_edge:          ; preds = %do.body8.i.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i81

do.body8.i.i84.atl2_read_phy_reg.exit.i_crit_edge: ; preds = %do.body8.i.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit.i

if.then13.i.i:                                    ; preds = %for.body.i.i81
  call void @__sanitizer_cov_trace_pc() #18
  %conv14.i.i = trunc i32 %45 to i16
  br label %atl2_read_phy_reg.exit.i

atl2_read_phy_reg.exit.i:                         ; preds = %if.then13.i.i, %do.body8.i.i84.atl2_read_phy_reg.exit.i_crit_edge
  %phy_data.0.i = phi i16 [ %conv14.i.i, %if.then13.i.i ], [ 0, %do.body8.i.i84.atl2_read_phy_reg.exit.i_crit_edge ]
  %46 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw1, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %47, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 57600) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i24.i

for.body.i24.i:                                   ; preds = %do.body8.i27.i.for.body.i24.i_crit_edge, %atl2_read_phy_reg.exit.i
  %i.022.i20.i = phi i32 [ 0, %atl2_read_phy_reg.exit.i ], [ %inc.i25.i, %do.body8.i27.i.for.body.i24.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 429496) #16
  %49 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw1, align 4
  %add.ptr6.i21.i = getelementptr i8, ptr %50, i32 5140
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i21.i) #16, !srcloc !203
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i22.i = and i32 %52, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i22.i)
  %tobool.not.i23.i = icmp eq i32 %and7.i22.i, 0
  br i1 %tobool.not.i23.i, label %if.then13.i29.i, label %do.body8.i27.i

do.body8.i27.i:                                   ; preds = %for.body.i24.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i25.i = add nuw nsw i32 %i.022.i20.i, 1
  %exitcond.not.i26.i = icmp eq i32 %inc.i25.i, 10
  br i1 %exitcond.not.i26.i, label %do.body8.i27.i.atl2_read_phy_reg.exit31.i_crit_edge, label %do.body8.i27.i.for.body.i24.i_crit_edge

do.body8.i27.i.for.body.i24.i_crit_edge:          ; preds = %do.body8.i27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i24.i

do.body8.i27.i.atl2_read_phy_reg.exit31.i_crit_edge: ; preds = %do.body8.i27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit31.i

if.then13.i29.i:                                  ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv14.i28.i = trunc i32 %52 to i16
  br label %atl2_read_phy_reg.exit31.i

atl2_read_phy_reg.exit31.i:                       ; preds = %if.then13.i29.i, %do.body8.i27.i.atl2_read_phy_reg.exit31.i_crit_edge
  %phy_data.1.i = phi i16 [ %conv14.i28.i, %if.then13.i29.i ], [ %phy_data.0.i, %do.body8.i27.i.atl2_read_phy_reg.exit31.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock.i75) #16
  %53 = and i16 %phy_data.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i, label %if.then.i, label %atl2_read_phy_reg.exit31.i.atl2_check_for_link.exit_crit_edge

atl2_read_phy_reg.exit31.i.atl2_check_for_link.exit_crit_edge: ; preds = %atl2_read_phy_reg.exit31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_for_link.exit

if.then.i:                                        ; preds = %atl2_read_phy_reg.exit31.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %54 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i.i, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i32.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i32.i, label %do.end.i, label %if.then.i.atl2_check_for_link.exit_crit_edge

if.then.i.atl2_check_for_link.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_for_link.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @atl2_driver_name, ptr noundef %38) #19
  %link_speed.i = getelementptr i8, ptr %data, i32 2316
  %57 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %link_speed.i, align 4
  tail call void @netif_carrier_off(ptr noundef %38) #16
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 103
  %58 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #16
  br label %atl2_check_for_link.exit

atl2_check_for_link.exit:                         ; preds = %do.end.i, %if.then.i.atl2_check_for_link.exit_crit_edge, %atl2_read_phy_reg.exit31.i.atl2_check_for_link.exit_crit_edge
  %link_chg_task.i = getelementptr i8, ptr %data, i32 2408
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %60 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %60, ptr noundef %link_chg_task.i) #16
  br label %if.end37

if.end37:                                         ; preds = %atl2_check_for_link.exit, %if.end32.if.end37_crit_edge
  %and38 = and i32 %3, 327832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  %txs_write_ptr2.i = getelementptr i8, ptr %data, i32 2620
  %call.i.i167.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %txs_write_ptr2.i, i32 noundef 4) #16
  %63 = ptrtoint ptr %txs_write_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %txs_write_ptr2.i, align 4
  %txs_ring.i = getelementptr i8, ptr %data, i32 2576
  %65 = ptrtoint ptr %txs_ring.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %txs_ring.i, align 4
  %add.ptr168.i = getelementptr %struct.tx_pkt_status, ptr %66, i32 %64
  %67 = ptrtoint ptr %add.ptr168.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load169.i = load i32, ptr %add.ptr168.i, align 4
  %bf.clear170.i = and i32 %bf.load169.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear170.i)
  %tobool.not171.i = icmp eq i32 %bf.clear170.i, 0
  br i1 %tobool.not171.i, label %if.then40.if.end41_crit_edge, label %if.end.lr.ph.i

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end.lr.ph.i:                                   ; preds = %if.then40
  %txs_ring_size.i = getelementptr i8, ptr %data, i32 2596
  %txd_read_ptr8.i = getelementptr i8, ptr %data, i32 2616
  %txd_ring.i = getelementptr i8, ptr %data, i32 2568
  %txd_ring_size.i = getelementptr i8, ptr %data, i32 2592
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 1
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 5
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 9
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 16
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 20
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 18
  br label %if.end.i

if.end.i:                                         ; preds = %do.cond103.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %bf.load173.i = phi i32 [ %bf.load169.i, %if.end.lr.ph.i ], [ %bf.load.i, %do.cond103.i.if.end.i_crit_edge ]
  %add.ptr172.i = phi ptr [ %add.ptr168.i, %if.end.lr.ph.i ], [ %add.ptr.i86, %do.cond103.i.if.end.i_crit_edge ]
  %68 = phi i32 [ %64, %if.end.lr.ph.i ], [ %121, %do.cond103.i.if.end.i_crit_edge ]
  %bf.clear4.i = and i32 %bf.load173.i, -2
  %69 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %bf.clear4.i, ptr %add.ptr172.i, align 4
  %inc.i = add i32 %68, 1
  %70 = ptrtoint ptr %txs_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %txs_ring_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %71)
  %cmp.i = icmp eq i32 %inc.i, %71
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %call.i.i163.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txs_write_ptr2.i, i32 noundef 4) #16
  %72 = ptrtoint ptr %txs_write_ptr2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %spec.store.select.i, ptr %txs_write_ptr2.i, align 4
  %call.i.i164.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %txd_read_ptr8.i, i32 noundef 4) #16
  %73 = ptrtoint ptr %txd_read_ptr8.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %txd_read_ptr8.i, align 4
  %75 = ptrtoint ptr %txd_ring.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %txd_ring.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %76, i32 %74
  %77 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load11.i = load i16, ptr %add.ptr10.i, align 4
  %bf.lshr.i = lshr i16 %bf.load11.i, 5
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %78 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load12.i = load i32, ptr %add.ptr172.i, align 4
  %bf.lshr13.i = lshr i32 %bf.load12.i, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr13.i, i32 %bf.cast.i)
  %cmp14.not.i = icmp eq i32 %bf.lshr13.i, %bf.cast.i
  br i1 %cmp14.not.i, label %if.end.i.if.end45.i_crit_edge, label %if.then15.i

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45.i

if.then15.i:                                      ; preds = %if.end.i
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 4
  %81 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr10.i, align 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %80, i32 noundef %82, i32 noundef %bf.load12.i) #19
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %74) #19
  %83 = ptrtoint ptr %txs_ring.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %txs_ring.i, align 4
  %add.ptr25.i = getelementptr %struct.tx_pkt_status, ptr %84, i32 %spec.store.select.i
  %85 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr25.i, align 4
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %86) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.store.select.i)
  %cmp31.i = icmp ult i32 %spec.store.select.i, 2
  %87 = ptrtoint ptr %txs_ring.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %txs_ring.i, align 4
  br i1 %cmp31.i, label %if.then32.i, label %if.else.i

if.then32.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %txs_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %txs_ring_size.i, align 4
  %add.i = add nuw nsw i32 %spec.store.select.i, -2
  %sub.i = add i32 %add.i, %90
  br label %do.end42.i

if.else.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub37.i = add i32 %spec.store.select.i, -2
  br label %do.end42.i

do.end42.i:                                       ; preds = %if.else.i, %if.then32.i
  %sub.sink.i = phi i32 [ %sub.i, %if.then32.i ], [ %sub37.i, %if.else.i ]
  %add.ptr35.i = getelementptr %struct.tx_pkt_status, ptr %88, i32 %sub.sink.i
  %91 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr35.i, align 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %92) #19
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end42.i, %if.end.i.if.end45.i_crit_edge
  %93 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load46.i = load i16, ptr %add.ptr10.i, align 4
  %bf.lshr47.i = lshr i16 %bf.load46.i, 5
  %narrow.i = add nuw nsw i16 %bf.lshr47.i, 7
  %94 = and i16 %narrow.i, 4092
  %and.i = zext i16 %94 to i32
  %add50.i = add i32 %74, %and.i
  %95 = ptrtoint ptr %txd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %txd_ring_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.i, i32 %96)
  %cmp51.not.i = icmp ult i32 %add50.i, %96
  %sub54.i = select i1 %cmp51.not.i, i32 0, i32 %96
  %spec.select.i = sub i32 %add50.i, %sub54.i
  %call.i.i165.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txd_read_ptr8.i, i32 noundef 4) #16
  %97 = ptrtoint ptr %txd_read_ptr8.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 %spec.select.i, ptr %txd_read_ptr8.i, align 4
  %98 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load57.i = load i32, ptr %add.ptr172.i, align 4
  %99 = and i32 %bf.load57.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool60.not.i = icmp eq i32 %99, 0
  br i1 %tobool60.not.i, label %if.end45.i.if.end70.i_crit_edge, label %if.then61.i

if.end45.i.if.end70.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70.i

if.then61.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.lshr63.i = lshr i32 %bf.load57.i, 21
  %100 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_bytes.i, align 4
  %add64.i = add i32 %101, %bf.lshr63.i
  store i32 %add64.i, ptr %tx_bytes.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then61.i, %if.end45.i.if.end70.i_crit_edge
  %tx_errors.sink174.i = phi ptr [ %tx_packets.i, %if.then61.i ], [ %tx_errors.i, %if.end45.i.if.end70.i_crit_edge ]
  %102 = ptrtoint ptr %tx_errors.sink174.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_errors.sink174.i, align 4
  %inc69.i = add i32 %103, 1
  store i32 %inc69.i, ptr %tx_errors.sink174.i, align 4
  %104 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load71.i = load i32, ptr %add.ptr172.i, align 4
  %105 = and i32 %bf.load71.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool74.not.i = icmp eq i32 %105, 0
  br i1 %tobool74.not.i, label %if.end70.i.if.end78.i_crit_edge, label %if.then75.i

if.end70.i.if.end78.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78.i

if.then75.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %collisions.i, align 4
  %inc77.i = add i32 %107, 1
  store i32 %inc77.i, ptr %collisions.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then75.i, %if.end70.i.if.end78.i_crit_edge
  %108 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load79.i = load i32, ptr %add.ptr172.i, align 4
  %109 = and i32 %bf.load79.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool82.not.i = icmp eq i32 %109, 0
  br i1 %tobool82.not.i, label %if.end78.i.if.end86.i_crit_edge, label %if.then83.i

if.end78.i.if.end86.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86.i

if.then83.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #18
  %110 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc85.i = add i32 %111, 1
  store i32 %inc85.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then83.i, %if.end78.i.if.end86.i_crit_edge
  %112 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load87.i = load i32, ptr %add.ptr172.i, align 4
  %113 = and i32 %bf.load87.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool90.not.i = icmp eq i32 %113, 0
  br i1 %tobool90.not.i, label %if.end86.i.if.end94.i_crit_edge, label %if.then91.i

if.end86.i.if.end94.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94.i

if.then91.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #18
  %114 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx_window_errors.i, align 8
  %inc93.i = add i32 %115, 1
  store i32 %inc93.i, ptr %tx_window_errors.i, align 8
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then91.i, %if.end86.i.if.end94.i_crit_edge
  %116 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %bf.load95.i = load i32, ptr %add.ptr172.i, align 4
  %117 = and i32 %bf.load95.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool98.not.i = icmp eq i32 %117, 0
  br i1 %tobool98.not.i, label %if.end94.i.do.cond103.i_crit_edge, label %if.then99.i

if.end94.i.do.cond103.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond103.i

if.then99.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #18
  %118 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc101.i = add i32 %119, 1
  store i32 %inc101.i, ptr %tx_fifo_errors.i, align 8
  br label %do.cond103.i

do.cond103.i:                                     ; preds = %if.then99.i, %if.end94.i.do.cond103.i_crit_edge
  %call.i.i.i85 = tail call zeroext i1 @__kasan_check_read(ptr noundef %txs_write_ptr2.i, i32 noundef 4) #16
  %120 = ptrtoint ptr %txs_write_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %txs_write_ptr2.i, align 4
  %122 = ptrtoint ptr %txs_ring.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %txs_ring.i, align 4
  %add.ptr.i86 = getelementptr %struct.tx_pkt_status, ptr %123, i32 %121
  %124 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_load4_noabort(i32 %124)
  %bf.load.i = load i32, ptr %add.ptr.i86, align 4
  %bf.clear.i = and i32 %bf.load.i, 1
  %tobool.not.i87 = icmp eq i32 %bf.clear.i, 0
  br i1 %tobool.not.i87, label %if.then106.i, label %do.cond103.i.if.end.i_crit_edge

do.cond103.i.if.end.i_crit_edge:                  ; preds = %do.cond103.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then106.i:                                     ; preds = %do.cond103.i
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr.i, align 4
  %_tx.i.i.i88 = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 103
  %127 = ptrtoint ptr %_tx.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %_tx.i.i.i88, align 128
  %state.i.i.i89 = getelementptr inbounds %struct.netdev_queue, ptr %128, i32 0, i32 13
  %129 = ptrtoint ptr %state.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %state.i.i.i89, align 4
  %and1.i.i.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then106.i.if.end41_crit_edge, label %land.lhs.true.i

if.then106.i.if.end41_crit_edge:                  ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.lhs.true.i:                                  ; preds = %if.then106.i
  %state.i.i90 = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 6
  %131 = ptrtoint ptr %state.i.i90 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state.i.i90, align 4
  %133 = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i.i91 = icmp eq i32 %133, 0
  br i1 %tobool.not.i.i91, label %if.then111.i, label %land.lhs.true.i.if.end41_crit_edge

land.lhs.true.i.if.end41_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then111.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_tx_wake_queue(ptr noundef %128) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then111.i, %land.lhs.true.i.if.end41_crit_edge, %if.then106.i.if.end41_crit_edge, %if.then40.if.end41_crit_edge, %if.end37.if.end41_crit_edge
  %and42 = and i32 %3, 131364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 4
  %rxd_ring.i = getelementptr i8, ptr %data, i32 2584
  %rxd_write_ptr.i = getelementptr i8, ptr %data, i32 2624
  %136 = ptrtoint ptr %rxd_ring.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rxd_ring.i, align 4
  %138 = ptrtoint ptr %rxd_write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rxd_write_ptr.i, align 4
  %add.ptr145.i = getelementptr %struct.rx_desc, ptr %137, i32 %139
  %140 = ptrtoint ptr %add.ptr145.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load146.i = load i32, ptr %add.ptr145.i, align 4
  %bf.clear147.i = and i32 %bf.load146.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear147.i)
  %tobool.not148.i = icmp eq i32 %bf.clear147.i, 0
  br i1 %tobool.not148.i, label %if.then44.atl2_intr_rx.exit_crit_edge, label %if.end.lr.ph.i92

if.then44.atl2_intr_rx.exit_crit_edge:            ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_intr_rx.exit

if.end.lr.ph.i92:                                 ; preds = %if.then44
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 10
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 8
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 12
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 13
  %stats40.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 2
  %rxd_ring_size.i = getelementptr i8, ptr %data, i32 2600
  br label %if.end.i95

if.end.i95:                                       ; preds = %if.end87.i.if.end.i95_crit_edge, %if.end.lr.ph.i92
  %bf.load150.i = phi i32 [ %bf.load146.i, %if.end.lr.ph.i92 ], [ %bf.load.i109, %if.end87.i.if.end.i95_crit_edge ]
  %add.ptr149.i = phi ptr [ %add.ptr145.i, %if.end.lr.ph.i92 ], [ %add.ptr.i108, %if.end87.i.if.end.i95_crit_edge ]
  %141 = phi i32 [ %139, %if.end.lr.ph.i92 ], [ %spec.store.select.i107, %if.end87.i.if.end.i95_crit_edge ]
  %142 = phi ptr [ %137, %if.end.lr.ph.i92 ], [ %189, %if.end87.i.if.end.i95_crit_edge ]
  %bf.clear4.i93 = and i32 %bf.load150.i, -2
  %143 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %bf.clear4.i93, ptr %add.ptr149.i, align 4
  %144 = and i32 %bf.load150.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool8.not.i = icmp ne i32 %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 125829119, i32 %bf.load150.i)
  %cmp.i94 = icmp ugt i32 %bf.load150.i, 125829119
  %or.cond.i = and i1 %cmp.i94, %tobool8.not.i
  br i1 %or.cond.i, label %if.then12.i, label %if.else.i102

if.then12.i:                                      ; preds = %if.end.i95
  %bf.lshr11.i = lshr i32 %bf.load150.i, 21
  %sub.i96 = add nsw i32 %bf.lshr11.i, -4
  %add.i.i.i = add nsw i32 %bf.lshr11.i, -2
  %call.i.i.i97 = tail call ptr @__netdev_alloc_skb(ptr noundef %135, i32 noundef %add.i.i.i, i32 noundef 2592) #16
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i97, null
  br i1 %tobool.not.i.i.i, label %cleanup.i, label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 19
  %145 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %146, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 16
  %147 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %148, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %packet.i = getelementptr %struct.rx_desc, ptr %142, i32 %141, i32 1
  %149 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %packet.i, i32 %sub.i96)
  %call19.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i97, i32 noundef %sub.i96) #16
  %call20.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i97, ptr noundef %135) #16
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 15, i32 0, i32 18
  %150 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %call20.i, ptr %protocol.i, align 8
  %151 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %bf.load22.i = load i32, ptr %add.ptr149.i, align 4
  %152 = and i32 %bf.load22.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool25.not.i = icmp eq i32 %152, 0
  br i1 %tobool25.not.i, label %if.end18.i.cleanup.thread.i_crit_edge, label %if.then26.i

if.end18.i.cleanup.thread.i_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i

if.then26.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  %vtag.i = getelementptr inbounds %struct.rx_pkt_status, ptr %add.ptr149.i, i32 0, i32 1
  %153 = ptrtoint ptr %vtag.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %vtag.i, align 4
  %155 = lshr i16 %154, 4
  %and.i98 = shl i16 %154, 13
  %or.i = or i16 %155, %and.i98
  %and34.i = shl i16 %154, 9
  %shl35.i = and i16 %and34.i, 4096
  %or36.i = or i16 %or.i, %shl35.i
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 15, i32 0, i32 9
  %156 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 15, i32 0, i32 10
  %157 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %or36.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i97, i32 0, i32 15, i32 0, i32 3
  %158 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then26.i, %if.end18.i.cleanup.thread.i_crit_edge
  %call39.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i97) #16
  %159 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_bytes.i, align 8
  %add.i99 = add i32 %160, %sub.i96
  store i32 %add.i99, ptr %rx_bytes.i, align 8
  %161 = ptrtoint ptr %stats40.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %stats40.i, align 8
  %inc42.i = add i32 %162, 1
  store i32 %inc42.i, ptr %stats40.i, align 8
  br label %if.end87.i

cleanup.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 36, i32 6
  %163 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rx_dropped.i, align 8
  %inc.i100 = add i32 %164, 1
  store i32 %inc.i100, ptr %rx_dropped.i, align 8
  br label %atl2_intr_rx.exit

if.else.i102:                                     ; preds = %if.end.i95
  %165 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rx_errors.i, align 8
  %inc44.i = add i32 %166, 1
  store i32 %inc44.i, ptr %rx_errors.i, align 8
  %167 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %bf.load46.i101 = load i32, ptr %add.ptr149.i, align 4
  %168 = and i32 %bf.load46.i101, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool49.not.i = icmp ne i32 %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127926272, i32 %bf.load46.i101)
  %cmp54.i = icmp ult i32 %bf.load46.i101, 127926272
  %or.cond140.i = and i1 %cmp54.i, %tobool49.not.i
  br i1 %or.cond140.i, label %if.then56.i, label %if.else.i102.if.end59.i_crit_edge

if.else.i102.if.end59.i_crit_edge:                ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.else.i102
  call void @__sanitizer_cov_trace_pc() #18
  %169 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_length_errors.i, align 8
  %inc58.i = add i32 %170, 1
  store i32 %inc58.i, ptr %rx_length_errors.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.else.i102.if.end59.i_crit_edge
  %171 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %bf.load61.i = load i32, ptr %add.ptr149.i, align 4
  %172 = and i32 %bf.load61.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool64.not.i = icmp eq i32 %172, 0
  br i1 %tobool64.not.i, label %if.end59.i.if.end68.i_crit_edge, label %if.then65.i

if.end59.i.if.end68.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i

if.then65.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #18
  %173 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %multicast.i, align 8
  %inc67.i = add i32 %174, 1
  store i32 %inc67.i, ptr %multicast.i, align 8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then65.i, %if.end59.i.if.end68.i_crit_edge
  %175 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %bf.load70.i = load i32, ptr %add.ptr149.i, align 4
  %176 = and i32 %bf.load70.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool73.not.i = icmp eq i32 %176, 0
  br i1 %tobool73.not.i, label %if.end68.i.if.end77.i_crit_edge, label %if.then74.i

if.end68.i.if.end77.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.i

if.then74.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #18
  %177 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rx_crc_errors.i, align 8
  %inc76.i = add i32 %178, 1
  store i32 %inc76.i, ptr %rx_crc_errors.i, align 8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %if.end68.i.if.end77.i_crit_edge
  %179 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %bf.load79.i103 = load i32, ptr %add.ptr149.i, align 4
  %180 = and i32 %bf.load79.i103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool82.not.i104 = icmp eq i32 %180, 0
  br i1 %tobool82.not.i104, label %if.end77.i.if.end87.i_crit_edge, label %if.then83.i106

if.end77.i.if.end87.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87.i

if.then83.i106:                                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #18
  %181 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rx_frame_errors.i, align 4
  %inc85.i105 = add i32 %182, 1
  store i32 %inc85.i105, ptr %rx_frame_errors.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then83.i106, %if.end77.i.if.end87.i_crit_edge, %cleanup.thread.i
  %183 = ptrtoint ptr %rxd_write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rxd_write_ptr.i, align 4
  %inc89.i = add i32 %184, 1
  %185 = ptrtoint ptr %rxd_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rxd_ring_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc89.i, i32 %186)
  %cmp90.i = icmp eq i32 %inc89.i, %186
  %spec.store.select.i107 = select i1 %cmp90.i, i32 0, i32 %inc89.i
  %187 = ptrtoint ptr %rxd_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %spec.store.select.i107, ptr %rxd_write_ptr.i, align 4
  %188 = ptrtoint ptr %rxd_ring.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rxd_ring.i, align 4
  %add.ptr.i108 = getelementptr %struct.rx_desc, ptr %189, i32 %spec.store.select.i107
  %190 = ptrtoint ptr %add.ptr.i108 to i32
  call void @__asan_load4_noabort(i32 %190)
  %bf.load.i109 = load i32, ptr %add.ptr.i108, align 4
  %bf.clear.i110 = and i32 %bf.load.i109, 1
  %tobool.not.i111 = icmp eq i32 %bf.clear.i110, 0
  br i1 %tobool.not.i111, label %if.end87.i.atl2_intr_rx.exit_crit_edge, label %if.end87.i.if.end.i95_crit_edge

if.end87.i.if.end.i95_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i95

if.end87.i.atl2_intr_rx.exit_crit_edge:           ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_intr_rx.exit

atl2_intr_rx.exit:                                ; preds = %if.end87.i.atl2_intr_rx.exit_crit_edge, %cleanup.i, %if.then44.atl2_intr_rx.exit_crit_edge
  %191 = ptrtoint ptr %rxd_write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rxd_write_ptr.i, align 4
  %rxd_read_ptr.i = getelementptr i8, ptr %data, i32 2612
  %193 = ptrtoint ptr %rxd_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %rxd_read_ptr.i, align 4
  %conv97.i = trunc i32 %192 to i16
  %194 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw1, align 4
  %add.ptr98.i = getelementptr i8, ptr %195, i32 5620
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !207
  tail call void @arm_heavy_mb() #16
  %196 = tail call i16 @llvm.bswap.i16(i16 %conv97.i) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr98.i, i16 %196) #16, !srcloc !208
  br label %if.end45

if.end45:                                         ; preds = %atl2_intr_rx.exit, %if.end41.if.end45_crit_edge
  %197 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %hw1, align 4
  %add.ptr48 = getelementptr i8, ptr %198, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #16, !srcloc !201
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then23, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 1, %if.then23 ], [ 1, %if.end45 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl2_down(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %flags = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #16
  tail call fastcc void @local_bh_disable() #16
  %2 = tail call i32 @llvm.read_register.i32(metadata !188) #16
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %5, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %11 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %hw = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36
  %call = tail call fastcc i32 @atl2_reset_hw(ptr noundef %hw)
  tail call void @msleep(i32 noundef 1) #16
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #16, !srcloc !201
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %pdev.i = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 1
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %22) #16
  %watchdog_timer = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 8
  %call2 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #16
  %phy_config_timer = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 9
  %call3 = tail call i32 @del_timer_sync(ptr noundef %phy_config_timer) #16
  %cfg_phy = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cfg_phy) #16
  tail call void @netif_carrier_off(ptr noundef %1) #16
  %link_speed = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 3
  %23 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %link_speed, align 4
  %link_duplex = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 4
  %24 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %link_duplex, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @atl2_driver_name, i32 noundef 32) #16
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call3 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.28, i32 noundef 32) #16
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl2_get_regs_len(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 168
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl2_get_regs(ptr noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2644
  %0 = call ptr @memset(ptr %p, i32 0, i32 168)
  %revision_id = getelementptr i8, ptr %netdev, i32 2710
  %1 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision_id, align 2
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 2702
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %4 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or3, ptr %version, align 4
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 108
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !203
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %p, align 4
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #16, !srcloc !203
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx8 = getelementptr i32, ptr %p, i32 1
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx8, align 4
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %add.ptr10 = getelementptr i8, ptr %17, i32 524
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #16, !srcloc !203
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx12 = getelementptr i32, ptr %p, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx12, align 4
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1, align 4
  %add.ptr14 = getelementptr i8, ptr %22, i32 536
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #16, !srcloc !203
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx16 = getelementptr i32, ptr %p, i32 3
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx16, align 4
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 4
  %add.ptr18 = getelementptr i8, ptr %27, i32 540
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #16, !srcloc !203
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx20 = getelementptr i32, ptr %p, i32 4
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx20, align 4
  %31 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1, align 4
  %add.ptr22 = getelementptr i8, ptr %32, i32 5120
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #16, !srcloc !203
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx24 = getelementptr i32, ptr %p, i32 5
  %35 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx24, align 4
  %36 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw1, align 4
  %add.ptr26 = getelementptr i8, ptr %37, i32 5124
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #16, !srcloc !203
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx28 = getelementptr i32, ptr %p, i32 6
  %40 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx28, align 4
  %41 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw1, align 4
  %add.ptr30 = getelementptr i8, ptr %42, i32 5128
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #16, !srcloc !203
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx32 = getelementptr i32, ptr %p, i32 7
  %45 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx32, align 4
  %46 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw1, align 4
  %add.ptr34 = getelementptr i8, ptr %47, i32 5132
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #16, !srcloc !203
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx36 = getelementptr i32, ptr %p, i32 8
  %50 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx36, align 4
  %51 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw1, align 4
  %add.ptr38 = getelementptr i8, ptr %52, i32 5134
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #16, !srcloc !203
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx40 = getelementptr i32, ptr %p, i32 9
  %55 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx40, align 4
  %56 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw1, align 4
  %add.ptr42 = getelementptr i8, ptr %57, i32 5136
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #16, !srcloc !203
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx44 = getelementptr i32, ptr %p, i32 10
  %60 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx44, align 4
  %61 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw1, align 4
  %add.ptr46 = getelementptr i8, ptr %62, i32 5140
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #16, !srcloc !203
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx48 = getelementptr i32, ptr %p, i32 11
  %65 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx48, align 4
  %66 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw1, align 4
  %add.ptr50 = getelementptr i8, ptr %67, i32 5156
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #16, !srcloc !203
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx52 = getelementptr i32, ptr %p, i32 12
  %70 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx52, align 4
  %71 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw1, align 4
  %add.ptr54 = getelementptr i8, ptr %72, i32 5248
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #16, !srcloc !203
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx56 = getelementptr i32, ptr %p, i32 13
  %75 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx56, align 4
  %76 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw1, align 4
  %add.ptr58 = getelementptr i8, ptr %77, i32 5252
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #16, !srcloc !203
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx60 = getelementptr i32, ptr %p, i32 14
  %80 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx60, align 4
  %81 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw1, align 4
  %add.ptr62 = getelementptr i8, ptr %82, i32 5256
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #16, !srcloc !203
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx64 = getelementptr i32, ptr %p, i32 15
  %85 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx64, align 4
  %86 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw1, align 4
  %add.ptr66 = getelementptr i8, ptr %87, i32 5260
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #16, !srcloc !203
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx68 = getelementptr i32, ptr %p, i32 16
  %90 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx68, align 4
  %91 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw1, align 4
  %add.ptr70 = getelementptr i8, ptr %92, i32 5264
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #16, !srcloc !203
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx72 = getelementptr i32, ptr %p, i32 17
  %95 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx72, align 4
  %96 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw1, align 4
  %add.ptr74 = getelementptr i8, ptr %97, i32 5268
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #16, !srcloc !203
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx76 = getelementptr i32, ptr %p, i32 18
  %100 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx76, align 4
  %101 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw1, align 4
  %add.ptr78 = getelementptr i8, ptr %102, i32 5272
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #16, !srcloc !203
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx80 = getelementptr i32, ptr %p, i32 19
  %105 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx80, align 4
  %106 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw1, align 4
  %add.ptr82 = getelementptr i8, ptr %107, i32 5276
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #16, !srcloc !203
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx84 = getelementptr i32, ptr %p, i32 20
  %110 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx84, align 4
  %111 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw1, align 4
  %add.ptr86 = getelementptr i8, ptr %112, i32 5280
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #16, !srcloc !203
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx88 = getelementptr i32, ptr %p, i32 21
  %115 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx88, align 4
  %116 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw1, align 4
  %add.ptr90 = getelementptr i8, ptr %117, i32 5376
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #16, !srcloc !203
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx92 = getelementptr i32, ptr %p, i32 22
  %120 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx92, align 4
  %121 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw1, align 4
  %add.ptr94 = getelementptr i8, ptr %122, i32 5440
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #16, !srcloc !203
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx96 = getelementptr i32, ptr %p, i32 23
  %125 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx96, align 4
  %126 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw1, align 4
  %add.ptr98 = getelementptr i8, ptr %127, i32 5444
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #16, !srcloc !203
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx100 = getelementptr i32, ptr %p, i32 24
  %130 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %arrayidx100, align 4
  %131 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw1, align 4
  %add.ptr102 = getelementptr i8, ptr %132, i32 5448
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #16, !srcloc !203
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx104 = getelementptr i32, ptr %p, i32 25
  %135 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx104, align 4
  %136 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw1, align 4
  %add.ptr106 = getelementptr i8, ptr %137, i32 5452
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #16, !srcloc !203
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx108 = getelementptr i32, ptr %p, i32 26
  %140 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx108, align 4
  %141 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hw1, align 4
  %add.ptr110 = getelementptr i8, ptr %142, i32 5456
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #16, !srcloc !203
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx112 = getelementptr i32, ptr %p, i32 27
  %145 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx112, align 4
  %146 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw1, align 4
  %add.ptr114 = getelementptr i8, ptr %147, i32 5460
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #16, !srcloc !203
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx116 = getelementptr i32, ptr %p, i32 28
  %150 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %arrayidx116, align 4
  %151 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw1, align 4
  %add.ptr118 = getelementptr i8, ptr %152, i32 5464
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #16, !srcloc !203
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx120 = getelementptr i32, ptr %p, i32 29
  %155 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx120, align 4
  %156 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw1, align 4
  %add.ptr122 = getelementptr i8, ptr %157, i32 5504
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #16, !srcloc !203
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx124 = getelementptr i32, ptr %p, i32 30
  %160 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx124, align 4
  %161 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw1, align 4
  %add.ptr126 = getelementptr i8, ptr %162, i32 5520
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #16, !srcloc !203
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx128 = getelementptr i32, ptr %p, i32 31
  %165 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx128, align 4
  %166 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw1, align 4
  %add.ptr130 = getelementptr i8, ptr %167, i32 5536
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #16, !srcloc !203
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx132 = getelementptr i32, ptr %p, i32 32
  %170 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx132, align 4
  %171 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw1, align 4
  %add.ptr134 = getelementptr i8, ptr %172, i32 5544
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #16, !srcloc !203
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx136 = getelementptr i32, ptr %p, i32 33
  %175 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx136, align 4
  %176 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw1, align 4
  %add.ptr138 = getelementptr i8, ptr %177, i32 5546
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #16, !srcloc !203
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx140 = getelementptr i32, ptr %p, i32 34
  %180 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx140, align 4
  %181 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw1, align 4
  %add.ptr142 = getelementptr i8, ptr %182, i32 5616
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #16, !srcloc !203
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx144 = getelementptr i32, ptr %p, i32 35
  %185 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx144, align 4
  %186 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw1, align 4
  %add.ptr146 = getelementptr i8, ptr %187, i32 5620
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #16, !srcloc !203
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx148 = getelementptr i32, ptr %p, i32 36
  %190 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %arrayidx148, align 4
  %191 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hw1, align 4
  %add.ptr150 = getelementptr i8, ptr %192, i32 5632
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #16, !srcloc !203
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx152 = getelementptr i32, ptr %p, i32 38
  %195 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %arrayidx152, align 4
  %196 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw1, align 4
  %add.ptr154 = getelementptr i8, ptr %197, i32 5636
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr154) #16, !srcloc !203
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %arrayidx156 = getelementptr i32, ptr %p, i32 39
  %200 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx156, align 4
  %201 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hw1, align 4
  %add.ptr.i246 = getelementptr i8, ptr %202, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246, i32 57344) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i

for.body.i:                                       ; preds = %do.body8.i.for.body.i_crit_edge, %entry
  %i.022.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body8.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 429496) #16
  %204 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hw1, align 4
  %add.ptr6.i = getelementptr i8, ptr %205, i32 5140
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #16, !srcloc !203
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i = and i32 %207, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %if.then13.i, label %do.body8.i

do.body8.i:                                       ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body8.i.atl2_read_phy_reg.exit_crit_edge, label %do.body8.i.for.body.i_crit_edge

do.body8.i.for.body.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.body8.i.atl2_read_phy_reg.exit_crit_edge:      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast = and i32 %207, 65535
  br label %atl2_read_phy_reg.exit

atl2_read_phy_reg.exit:                           ; preds = %if.then13.i, %do.body8.i.atl2_read_phy_reg.exit_crit_edge
  %phy_data.0 = phi i32 [ %phi.cast, %if.then13.i ], [ 65535, %do.body8.i.atl2_read_phy_reg.exit_crit_edge ]
  %arrayidx159 = getelementptr i32, ptr %p, i32 40
  %208 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %phy_data.0, ptr %arrayidx159, align 4
  %209 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hw1, align 4
  %add.ptr.i247 = getelementptr i8, ptr %210, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 57600) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i252

for.body.i252:                                    ; preds = %do.body8.i255.for.body.i252_crit_edge, %atl2_read_phy_reg.exit
  %i.022.i248 = phi i32 [ 0, %atl2_read_phy_reg.exit ], [ %inc.i253, %do.body8.i255.for.body.i252_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 429496) #16
  %212 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hw1, align 4
  %add.ptr6.i249 = getelementptr i8, ptr %213, i32 5140
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i249) #16, !srcloc !203
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i250 = and i32 %215, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i250)
  %tobool.not.i251 = icmp eq i32 %and7.i250, 0
  br i1 %tobool.not.i251, label %if.then13.i257, label %do.body8.i255

do.body8.i255:                                    ; preds = %for.body.i252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i253 = add nuw nsw i32 %i.022.i248, 1
  %exitcond.not.i254 = icmp eq i32 %inc.i253, 10
  br i1 %exitcond.not.i254, label %do.body8.i255.atl2_read_phy_reg.exit259_crit_edge, label %do.body8.i255.for.body.i252_crit_edge

do.body8.i255.for.body.i252_crit_edge:            ; preds = %do.body8.i255
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i252

do.body8.i255.atl2_read_phy_reg.exit259_crit_edge: ; preds = %do.body8.i255
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit259

if.then13.i257:                                   ; preds = %for.body.i252
  call void @__sanitizer_cov_trace_pc() #18
  %.pre = and i32 %215, 65535
  br label %atl2_read_phy_reg.exit259

atl2_read_phy_reg.exit259:                        ; preds = %if.then13.i257, %do.body8.i255.atl2_read_phy_reg.exit259_crit_edge
  %conv161.pre-phi = phi i32 [ %.pre, %if.then13.i257 ], [ %phy_data.0, %do.body8.i255.atl2_read_phy_reg.exit259_crit_edge ]
  %arrayidx162 = getelementptr i32, ptr %p, i32 41
  %216 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %conv161.pre-phi, ptr %arrayidx162, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atl2_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %wol1 = getelementptr i8, ptr %netdev, i32 2312
  %2 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol1, align 4
  %and = lshr i32 %3, 1
  %4 = and i32 %and, 2
  store i32 %4, ptr %wolopts, align 4
  %5 = load i32, ptr %wol1, align 4
  %and4 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %or8 = or i32 %4, 4
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %7 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wol1, align 4
  %and11 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %or15 = or i32 %10, 8
  store i32 %or15, ptr %wolopts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %11 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wol1, align 4
  %and18 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %or22 = or i32 %14, 32
  store i32 %or22, ptr %wolopts, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %15 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol1, align 4
  %and25 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or29 = or i32 %18, 1
  store i32 %or29, ptr %wolopts, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl2_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %2 = and i32 %1, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %entry
  %wol6 = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %wol6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wol6, align 4
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  %and8 = lshr i32 %6, 4
  %7 = and i32 %and8, 2
  store i32 %7, ptr %wol6, align 4
  %8 = load i32, ptr %wolopts, align 4
  %and14 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end5.cleanup_crit_edge, label %if.then16

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %or18 = or i32 %7, 1
  %9 = ptrtoint ptr %wol6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or18, ptr %wol6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl2_get_msglevel(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atl2_set_msglevel(ptr nocapture noundef %netdev, i32 noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_nway_reset(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr i8, ptr %netdev, i32 2632
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not7.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not7.i, label %if.then.atl2_reinit_locked.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.atl2_reinit_locked.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_reinit_locked.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #16
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #16
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.atl2_reinit_locked.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.atl2_reinit_locked.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_reinit_locked.exit

atl2_reinit_locked.exit:                          ; preds = %while.body.i.atl2_reinit_locked.exit_crit_edge, %if.then.atl2_reinit_locked.exit_crit_edge
  tail call fastcc void @atl2_down(ptr noundef %add.ptr.i) #16
  tail call fastcc void @atl2_up(ptr noundef %add.ptr.i) #16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #16
  br label %if.end

if.end:                                           ; preds = %atl2_reinit_locked.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_get_eeprom_len(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %netdev, i32 2644
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #16, !srcloc !203
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.atl2_check_eeprom_exist.exit_crit_edge, label %if.then.i

entry.atl2_check_eeprom_exist.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_eeprom_exist.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i = and i32 %3, -8193
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %6 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #16, !srcloc !201
  br label %atl2_check_eeprom_exist.exit

atl2_check_eeprom_exist.exit:                     ; preds = %if.then.i, %entry.atl2_check_eeprom_exist.exit_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 88
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i) #16, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !215
  %.mask.i = and i16 %9, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %.mask.i)
  %cmp.i.not = icmp eq i16 %.mask.i, 108
  %. = select i1 %cmp.i.not, i32 512, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_get_eeprom(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2644
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %add.ptr.i47 = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #16, !srcloc !203
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.atl2_check_eeprom_exist.exit_crit_edge, label %if.then.i

if.end.atl2_check_eeprom_exist.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_check_eeprom_exist.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i = and i32 %5, -8193
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %8 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #16, !srcloc !201
  br label %atl2_check_eeprom_exist.exit

atl2_check_eeprom_exist.exit:                     ; preds = %if.then.i, %if.end.atl2_check_eeprom_exist.exit_crit_edge
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 88
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i) #16, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !215
  %.mask.i = and i16 %11, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %.mask.i)
  %cmp.i.not = icmp eq i16 %.mask.i, 108
  br i1 %cmp.i.not, label %if.end4, label %atl2_check_eeprom_exist.exit.cleanup_crit_edge

atl2_check_eeprom_exist.exit.cleanup_crit_edge:   ; preds = %atl2_check_eeprom_exist.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %atl2_check_eeprom_exist.exit
  %vendor_id = getelementptr i8, ptr %netdev, i32 2704
  %12 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %13 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 2702
  %14 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device_id, align 2
  %conv5 = zext i16 %15 to i32
  %shl = shl nuw i32 %conv5, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %16 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %shr = lshr i32 %18, 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add = add i32 %18, -1
  %sub = add i32 %add, %20
  %shr8 = lshr i32 %sub, 2
  %sub9 = sub nsw i32 %shr8, %shr
  %add10 = add nsw i32 %sub9, 1
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add10, i32 4) #16
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.end4.cleanup_crit_edge, label %if.end7.i, !prof !216

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #21
  %tobool12.not = icmp eq ptr %call8.i, null
  br i1 %tobool12.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8, i32 %shr)
  %cmp1551 = icmp ugt i32 %shr8, %shr
  br i1 %cmp1551, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %shr8
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ %shr, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.052, 2
  %sub17 = sub nuw nsw i32 %i.052, %shr
  %arrayidx = getelementptr i32, ptr %call8.i, i32 %sub17
  %call18 = tail call fastcc zeroext i1 @atl2_read_eeprom(ptr noundef %hw1, i32 noundef %mul, ptr noundef %arrayidx)
  br i1 %call18, label %for.cond, label %for.body.free_crit_edge

for.body.free_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %and = and i32 %25, 3
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %27)
  br label %free

free:                                             ; preds = %for.end, %for.body.free_crit_edge
  %ret_val.0 = phi i32 [ 0, %for.end ], [ -5, %for.body.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #16
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end7.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %atl2_check_eeprom_exist.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %free ], [ -22, %entry.cleanup_crit_edge ], [ -22, %atl2_check_eeprom_exist.exit.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_set_eeprom(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 2644
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  %vendor_id = getelementptr i8, ptr %netdev, i32 2704
  %4 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %5 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 2702
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or)
  %cmp3.not = icmp eq i32 %3, %or
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %shr = lshr i32 %9, 2
  %add = add i32 %1, -1
  %sub = add i32 %add, %9
  %shr9 = lshr i32 %sub, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 512) #22
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  %mul = and i32 %9, -4
  %call16 = tail call fastcc zeroext i1 @atl2_read_eeprom(ptr noundef %hw1, i32 noundef %mul, ptr noundef nonnull %call7.i)
  br i1 %call16, label %if.end18, label %if.then15.out_crit_edge

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end18:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr = getelementptr i32, ptr %call7.i, i32 1
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end12.if.end19_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.end18 ], [ %call7.i, %if.end12.if.end19_crit_edge ]
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add22 = add i32 %16, %14
  %and23 = and i32 %add22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end19.if.end32_crit_edge, label %if.then25

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then25:                                        ; preds = %if.end19
  %mul26 = and i32 %sub, -4
  %sub27 = sub nsw i32 %shr9, %shr
  %arrayidx28 = getelementptr i32, ptr %call7.i, i32 %sub27
  %call29 = tail call fastcc zeroext i1 @atl2_read_eeprom(ptr noundef %hw1, i32 noundef %mul26, ptr noundef %arrayidx28)
  br i1 %call29, label %if.then25.if.end32_crit_edge, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end32:                                         ; preds = %if.then25.if.end32_crit_edge, %if.end19.if.end32_crit_edge
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %18)
  br label %out

out:                                              ; preds = %if.end32, %if.then25.out_crit_edge, %if.then15.out_crit_edge
  %ret_val.0 = phi i32 [ -5, %if.then15.out_crit_edge ], [ -5, %if.then25.out_crit_edge ], [ 0, %if.end32 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 2670
  %0 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %autoneg_advertised, align 2
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %phy_address, align 2
  %link_speed = getelementptr i8, ptr %netdev, i32 2316
  %4 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp.not = icmp eq i16 %5, -1
  br i1 %cmp.not, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  %conv4 = zext i16 %5 to i32
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv4, ptr %speed, align 4
  %link_duplex = getelementptr i8, ptr %netdev, i32 2318
  %7 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp10 = icmp eq i16 %8, 2
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %duplex, align 4
  br label %if.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %duplex, align 4
  br label %if.end21

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %speed18 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %speed18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %speed18, align 4
  %duplex20 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %duplex20 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %duplex20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.else, %if.then12
  %13 = or i16 %1, 192
  %or2 = zext i16 %13 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %autoneg, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 207) #16
  %advertising25 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising25, i32 noundef %or2) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl2_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 2644
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #16
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !198
  %advertising2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call3 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising2) #16
  %flags = getelementptr i8, ptr %netdev, i32 2632
  %call478 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call478)
  %tobool.not79 = icmp eq i32 %call478, 0
  br i1 %tobool.not79, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @msleep(i32 noundef 1) #16
  %call4 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #16
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %if.then, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %while.end
  %3 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %advertising, align 4
  %and = and i32 %4, 15
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %and, label %if.then.cleanup_crit_edge [
    i32 15, label %if.then.if.end41_crit_edge
    i32 8, label %if.then12
    i32 4, label %if.then19
    i32 2, label %if.then26
    i32 1, label %if.then33
  ]

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then26:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then33:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.then26, %if.then19, %if.then12, %if.then.if.end41_crit_edge
  %.sink80 = phi i16 [ 1, %if.then12 ], [ 3, %if.then26 ], [ 4, %if.then33 ], [ 2, %if.then19 ], [ 0, %if.then.if.end41_crit_edge ]
  %.sink = phi i16 [ 8, %if.then12 ], [ 2, %if.then26 ], [ 1, %if.then33 ], [ 4, %if.then19 ], [ 15, %if.then.if.end41_crit_edge ]
  %MediaType13 = getelementptr i8, ptr %netdev, i32 2668
  %6 = ptrtoint ptr %MediaType13 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink80, ptr %MediaType13, align 4
  %autoneg_advertised14 = getelementptr i8, ptr %netdev, i32 2670
  %7 = ptrtoint ptr %autoneg_advertised14 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink, ptr %autoneg_advertised14, align 2
  %8 = or i16 %.sink, 192
  %or44 = zext i16 %8 to i32
  %9 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or44, ptr %advertising, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @atl2_down(ptr noundef %add.ptr.i)
  call fastcc void @atl2_up(ptr noundef %add.ptr.i)
  br label %cleanup

if.else52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %call54 = call fastcc i32 @atl2_reset_hw(ptr noundef %hw1)
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.then50, %if.then.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ 0, %if.else52 ], [ 0, %if.then50 ]
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #16
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl2_up(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %hw = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 36
  %call = tail call fastcc i32 @atl2_init_hw(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @atl2_set_multi(ptr noundef %1)
  %txd_write_ptr.i = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 24
  %2 = ptrtoint ptr %txd_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %txd_write_ptr.i, align 4
  %txd_read_ptr.i = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 27
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txd_read_ptr.i, i32 noundef 4) #16
  %3 = ptrtoint ptr %txd_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %txd_read_ptr.i, align 4
  %rxd_read_ptr.i = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 26
  %4 = ptrtoint ptr %rxd_read_ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rxd_read_ptr.i, align 4
  %rxd_write_ptr.i = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 29
  %5 = ptrtoint ptr %rxd_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rxd_write_ptr.i, align 4
  %txs_write_ptr.i = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 28
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txs_write_ptr.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %txs_write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %txs_write_ptr.i, align 4
  %txs_next_clear.i = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 25
  %7 = ptrtoint ptr %txs_next_clear.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %txs_next_clear.i, align 4
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features.i, align 16
  %hw.i.i.i = getelementptr i8, ptr %9, i32 2644
  %12 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %13, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #16, !srcloc !201
  %14 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %pdev.i.i.i = getelementptr i8, ptr %9, i32 2308
  %17 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i.i.i, align 4
  %irq.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i.i.i, align 4
  tail call void @synchronize_irq(i32 noundef %20) #16
  %21 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 5248
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %24 = and i32 %23, -4194305
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #16
  %26 = trunc i64 %11 to i32
  %27 = shl i32 %26, 6
  %28 = and i32 %27, 16384
  %storemerge.i.i.i = or i32 %25, %28
  %29 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %30, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %31 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %31) #16, !srcloc !201
  %32 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %33, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 34472720) #16, !srcloc !201
  %34 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i.i.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %call2 = tail call fastcc i32 @atl2_configure(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.atl2_adapter, ptr %adapter, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #16
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 5120
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %40 = or i32 %39, 134217728
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %add.ptr10 = getelementptr i8, ptr %42, i32 5120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %40) #16, !srcloc !201
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 34472720) #16, !srcloc !201
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @atl2_read_eeprom(ptr nocapture noundef readonly %hw, i32 noundef %Offset, ptr nocapture noundef writeonly %pValue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %Offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #16, !srcloc !201
  %and1 = shl i32 %Offset, 16
  %shl = and i32 %and1, 2147418112
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #16, !srcloc !201
  tail call void @msleep(i32 noundef 2) #16
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 108
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool7.not = icmp eq i32 %.mask, 0
  br i1 %tobool7.not, label %for.cond, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 2) #16
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr5.1 = getelementptr i8, ptr %9, i32 108
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.1 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.1)
  %tobool7.not.1 = icmp eq i32 %.mask.1, 0
  br i1 %tobool7.not.1, label %for.cond.1, label %for.cond.if.then12_crit_edge

for.cond.if.then12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.1:                                       ; preds = %for.cond
  tail call void @msleep(i32 noundef 2) #16
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr5.2 = getelementptr i8, ptr %12, i32 108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.2) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.2 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.2)
  %tobool7.not.2 = icmp eq i32 %.mask.2, 0
  br i1 %tobool7.not.2, label %for.cond.2, label %for.cond.1.if.then12_crit_edge

for.cond.1.if.then12_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @msleep(i32 noundef 2) #16
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr5.3 = getelementptr i8, ptr %15, i32 108
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.3) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.3 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.3)
  %tobool7.not.3 = icmp eq i32 %.mask.3, 0
  br i1 %tobool7.not.3, label %for.cond.3, label %for.cond.2.if.then12_crit_edge

for.cond.2.if.then12_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @msleep(i32 noundef 2) #16
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr5.4 = getelementptr i8, ptr %18, i32 108
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.4) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.4 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.4)
  %tobool7.not.4 = icmp eq i32 %.mask.4, 0
  br i1 %tobool7.not.4, label %for.cond.4, label %for.cond.3.if.then12_crit_edge

for.cond.3.if.then12_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @msleep(i32 noundef 2) #16
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr5.5 = getelementptr i8, ptr %21, i32 108
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.5) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.5 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.5)
  %tobool7.not.5 = icmp eq i32 %.mask.5, 0
  br i1 %tobool7.not.5, label %for.cond.5, label %for.cond.4.if.then12_crit_edge

for.cond.4.if.then12_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @msleep(i32 noundef 2) #16
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr5.6 = getelementptr i8, ptr %24, i32 108
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.6) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.6 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.6)
  %tobool7.not.6 = icmp eq i32 %.mask.6, 0
  br i1 %tobool7.not.6, label %for.cond.6, label %for.cond.5.if.then12_crit_edge

for.cond.5.if.then12_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @msleep(i32 noundef 2) #16
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr5.7 = getelementptr i8, ptr %27, i32 108
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.7) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.7 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.7)
  %tobool7.not.7 = icmp eq i32 %.mask.7, 0
  br i1 %tobool7.not.7, label %for.cond.7, label %for.cond.6.if.then12_crit_edge

for.cond.6.if.then12_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @msleep(i32 noundef 2) #16
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr5.8 = getelementptr i8, ptr %30, i32 108
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.8) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.8 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.8)
  %tobool7.not.8 = icmp eq i32 %.mask.8, 0
  br i1 %tobool7.not.8, label %for.cond.8, label %for.cond.7.if.then12_crit_edge

for.cond.7.if.then12_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.8:                                       ; preds = %for.cond.7
  tail call void @msleep(i32 noundef 2) #16
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr5.9 = getelementptr i8, ptr %33, i32 108
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.9) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %.mask.9 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.9)
  %tobool7.not.9 = icmp eq i32 %.mask.9, 0
  br i1 %tobool7.not.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.8.if.then12_crit_edge

for.cond.8.if.then12_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %for.cond.8.if.then12_crit_edge, %for.cond.7.if.then12_crit_edge, %for.cond.6.if.then12_crit_edge, %for.cond.5.if.then12_crit_edge, %for.cond.4.if.then12_crit_edge, %for.cond.3.if.then12_crit_edge, %for.cond.2.if.then12_crit_edge, %for.cond.1.if.then12_crit_edge, %for.cond.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr14 = getelementptr i8, ptr %36, i32 112
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #16, !srcloc !203
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %39 = ptrtoint ptr %pValue to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pValue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %for.cond.8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then12 ], [ false, %entry.cleanup_crit_edge ], [ false, %for.cond.8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl2_validate_option(ptr nocapture noundef %value, ptr nocapture noundef readonly %opt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %def = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 3
  %2 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %6, label %do.body40 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %if.end
  %arg22 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 4
  %8 = ptrtoint ptr %arg22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp232 = icmp sgt i32 %9, 0
  br i1 %cmp232, label %for.body.lr.ph, label %for.cond.preheader.do.end49_crit_edge

for.cond.preheader.do.end49_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end49

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  br label %for.body

sw.bb:                                            ; preds = %if.end
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %1, label %sw.bb.do.end49_crit_edge [
    i32 1, label %do.end
    i32 0, label %do.end5
  ]

sw.bb.do.end49_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end49

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %14) #19
  br label %cleanup

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %name7 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 1
  %15 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name7, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %16) #19
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %arg = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 4
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %18)
  %cmp10.not = icmp slt i32 %1, %18
  br i1 %cmp10.not, label %sw.bb9.do.end49_crit_edge, label %land.lhs.true

sw.bb9.do.end49_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end49

land.lhs.true:                                    ; preds = %sw.bb9
  %max = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %20)
  %cmp12.not = icmp sgt i32 %1, %20
  br i1 %cmp12.not, label %land.lhs.true.do.end49_crit_edge, label %do.end16

land.lhs.true.do.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end49

do.end16:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %name18 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 1
  %21 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %22, i32 noundef %1) #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.atl2_opt_list, ptr %11, i32 %i.03
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %24)
  %cmp26 = icmp eq i32 %1, %24
  br i1 %cmp26, label %if.then27, label %for.inc

if.then27:                                        ; preds = %for.body
  %str = getelementptr %struct.atl2_opt_list, ptr %11, i32 %i.03, i32 1
  %25 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %str, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp29.not = icmp eq i8 %28, 0
  br i1 %cmp29.not, label %if.then27.cleanup_crit_edge, label %do.end34

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %26) #19
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.do.end49_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.do.end49_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end49

do.body40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/atheros/atlx/atl2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2899, 0\0A.popsection", ""() #16, !srcloc !219
  unreachable

do.end49:                                         ; preds = %for.inc.do.end49_crit_edge, %land.lhs.true.do.end49_crit_edge, %sw.bb9.do.end49_crit_edge, %sw.bb.do.end49_crit_edge, %for.cond.preheader.do.end49_crit_edge
  %name51 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 1
  %29 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name51, align 4
  %err = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 2
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %err, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %30, i32 noundef %1, ptr noundef %32) #19
  %def53 = getelementptr inbounds %struct.atl2_option, ptr %opt, i32 0, i32 3
  %33 = ptrtoint ptr %def53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %def53, align 4
  %35 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end34, %if.then27.cleanup_crit_edge, %do.end16, %do.end5, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl2_force_ps(ptr nocapture noundef readonly %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 56576) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i

for.body.i:                                       ; preds = %do.body10.i.for.body.i_crit_edge, %entry
  %i.022.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body10.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #16
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %4, i32 5140
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %6 = and i32 %5, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %for.body.i.atl2_write_phy_reg.exit_crit_edge, label %do.body10.i

for.body.i.atl2_write_phy_reg.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit

do.body10.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.body10.i.atl2_write_phy_reg.exit_crit_edge, label %do.body10.i.for.body.i_crit_edge

do.body10.i.for.body.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.body10.i.atl2_write_phy_reg.exit_crit_edge:    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit

atl2_write_phy_reg.exit:                          ; preds = %do.body10.i.atl2_write_phy_reg.exit_crit_edge, %for.body.i.atl2_write_phy_reg.exit_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 65024) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !202
  tail call void @arm_heavy_mb() #16
  br label %for.body.i17

for.body.i17:                                     ; preds = %do.body8.i.for.body.i17_crit_edge, %atl2_write_phy_reg.exit
  %i.022.i15 = phi i32 [ 0, %atl2_write_phy_reg.exit ], [ %inc.i18, %do.body8.i.for.body.i17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #16
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 5140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #16, !srcloc !203
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %and7.i = and i32 %13, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i16 = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i16, label %if.then13.i, label %do.body8.i

do.body8.i:                                       ; preds = %for.body.i17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void @arm_heavy_mb() #16
  %inc.i18 = add nuw nsw i32 %i.022.i15, 1
  %exitcond.not.i19 = icmp eq i32 %inc.i18, 10
  br i1 %exitcond.not.i19, label %do.body8.i.atl2_read_phy_reg.exit_crit_edge, label %do.body8.i.for.body.i17_crit_edge

do.body8.i.for.body.i17_crit_edge:                ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i17

do.body8.i.atl2_read_phy_reg.exit_crit_edge:      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_read_phy_reg.exit

if.then13.i:                                      ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo = and i32 %13, 61439
  %phi.bo71 = or i32 %phi.bo, 14553088
  br label %atl2_read_phy_reg.exit

atl2_read_phy_reg.exit:                           ; preds = %if.then13.i, %do.body8.i.atl2_read_phy_reg.exit_crit_edge
  %phy_val.0 = phi i32 [ %phi.bo71, %if.then13.i ], [ 14614527, %do.body8.i.atl2_read_phy_reg.exit_crit_edge ]
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr.i20 = getelementptr i8, ptr %15, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  %16 = tail call i32 @llvm.bswap.i32(i32 %phy_val.0) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %16) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i24

for.body.i24:                                     ; preds = %do.body10.i27.for.body.i24_crit_edge, %atl2_read_phy_reg.exit
  %i.022.i21 = phi i32 [ 0, %atl2_read_phy_reg.exit ], [ %inc.i25, %do.body10.i27.for.body.i24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496) #16
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr8.i22 = getelementptr i8, ptr %19, i32 5140
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i22) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %21 = and i32 %20, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i23 = icmp eq i32 %21, 0
  br i1 %tobool.not.i23, label %for.body.i24.atl2_write_phy_reg.exit29_crit_edge, label %do.body10.i27

for.body.i24.atl2_write_phy_reg.exit29_crit_edge: ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit29

do.body10.i27:                                    ; preds = %for.body.i24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i25 = add nuw nsw i32 %i.022.i21, 1
  %exitcond.not.i26 = icmp eq i32 %inc.i25, 10
  br i1 %exitcond.not.i26, label %do.body10.i27.atl2_write_phy_reg.exit29_crit_edge, label %do.body10.i27.for.body.i24_crit_edge

do.body10.i27.for.body.i24_crit_edge:             ; preds = %do.body10.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i24

do.body10.i27.atl2_write_phy_reg.exit29_crit_edge: ; preds = %do.body10.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit29

atl2_write_phy_reg.exit29:                        ; preds = %do.body10.i27.atl2_write_phy_reg.exit29_crit_edge, %for.body.i24.atl2_write_phy_reg.exit29_crit_edge
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr.i30 = getelementptr i8, ptr %23, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 33611008) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i34

for.body.i34:                                     ; preds = %do.body10.i37.for.body.i34_crit_edge, %atl2_write_phy_reg.exit29
  %i.022.i31 = phi i32 [ 0, %atl2_write_phy_reg.exit29 ], [ %inc.i35, %do.body10.i37.for.body.i34_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 429496) #16
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr8.i32 = getelementptr i8, ptr %26, i32 5140
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i32) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %28 = and i32 %27, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i33 = icmp eq i32 %28, 0
  br i1 %tobool.not.i33, label %for.body.i34.atl2_write_phy_reg.exit39_crit_edge, label %do.body10.i37

for.body.i34.atl2_write_phy_reg.exit39_crit_edge: ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit39

do.body10.i37:                                    ; preds = %for.body.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i35 = add nuw nsw i32 %i.022.i31, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, 10
  br i1 %exitcond.not.i36, label %do.body10.i37.atl2_write_phy_reg.exit39_crit_edge, label %do.body10.i37.for.body.i34_crit_edge

do.body10.i37.for.body.i34_crit_edge:             ; preds = %do.body10.i37
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i34

do.body10.i37.atl2_write_phy_reg.exit39_crit_edge: ; preds = %do.body10.i37
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit39

atl2_write_phy_reg.exit39:                        ; preds = %do.body10.i37.atl2_write_phy_reg.exit39_crit_edge, %for.body.i34.atl2_write_phy_reg.exit39_crit_edge
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr.i40 = getelementptr i8, ptr %30, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 3202560) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i44

for.body.i44:                                     ; preds = %do.body10.i47.for.body.i44_crit_edge, %atl2_write_phy_reg.exit39
  %i.022.i41 = phi i32 [ 0, %atl2_write_phy_reg.exit39 ], [ %inc.i45, %do.body10.i47.for.body.i44_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 429496) #16
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr8.i42 = getelementptr i8, ptr %33, i32 5140
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i42) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %35 = and i32 %34, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i43 = icmp eq i32 %35, 0
  br i1 %tobool.not.i43, label %for.body.i44.atl2_write_phy_reg.exit49_crit_edge, label %do.body10.i47

for.body.i44.atl2_write_phy_reg.exit49_crit_edge: ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit49

do.body10.i47:                                    ; preds = %for.body.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i45 = add nuw nsw i32 %i.022.i41, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, 10
  br i1 %exitcond.not.i46, label %do.body10.i47.atl2_write_phy_reg.exit49_crit_edge, label %do.body10.i47.for.body.i44_crit_edge

do.body10.i47.for.body.i44_crit_edge:             ; preds = %do.body10.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i44

do.body10.i47.atl2_write_phy_reg.exit49_crit_edge: ; preds = %do.body10.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit49

atl2_write_phy_reg.exit49:                        ; preds = %do.body10.i47.atl2_write_phy_reg.exit49_crit_edge, %for.body.i44.atl2_write_phy_reg.exit49_crit_edge
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %add.ptr.i50 = getelementptr i8, ptr %37, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 50388224) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i54

for.body.i54:                                     ; preds = %do.body10.i57.for.body.i54_crit_edge, %atl2_write_phy_reg.exit49
  %i.022.i51 = phi i32 [ 0, %atl2_write_phy_reg.exit49 ], [ %inc.i55, %do.body10.i57.for.body.i54_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 429496) #16
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %add.ptr8.i52 = getelementptr i8, ptr %40, i32 5140
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i52) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %42 = and i32 %41, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i53 = icmp eq i32 %42, 0
  br i1 %tobool.not.i53, label %for.body.i54.atl2_write_phy_reg.exit59_crit_edge, label %do.body10.i57

for.body.i54.atl2_write_phy_reg.exit59_crit_edge: ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit59

do.body10.i57:                                    ; preds = %for.body.i54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i55 = add nuw nsw i32 %i.022.i51, 1
  %exitcond.not.i56 = icmp eq i32 %inc.i55, 10
  br i1 %exitcond.not.i56, label %do.body10.i57.atl2_write_phy_reg.exit59_crit_edge, label %do.body10.i57.for.body.i54_crit_edge

do.body10.i57.for.body.i54_crit_edge:             ; preds = %do.body10.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i54

do.body10.i57.atl2_write_phy_reg.exit59_crit_edge: ; preds = %do.body10.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit59

atl2_write_phy_reg.exit59:                        ; preds = %do.body10.i57.atl2_write_phy_reg.exit59_crit_edge, %for.body.i54.atl2_write_phy_reg.exit59_crit_edge
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %add.ptr.i60 = getelementptr i8, ptr %44, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !200
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 56832) #16, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @arm_heavy_mb() #16
  br label %for.body.i64

for.body.i64:                                     ; preds = %do.body10.i67.for.body.i64_crit_edge, %atl2_write_phy_reg.exit59
  %i.022.i61 = phi i32 [ 0, %atl2_write_phy_reg.exit59 ], [ %inc.i65, %do.body10.i67.for.body.i64_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 429496) #16
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %add.ptr8.i62 = getelementptr i8, ptr %47, i32 5140
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i62) #16, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !204
  %49 = and i32 %48, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i63 = icmp eq i32 %49, 0
  br i1 %tobool.not.i63, label %for.body.i64.atl2_write_phy_reg.exit69_crit_edge, label %do.body10.i67

for.body.i64.atl2_write_phy_reg.exit69_crit_edge: ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit69

do.body10.i67:                                    ; preds = %for.body.i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !210
  tail call void @arm_heavy_mb() #16
  %inc.i65 = add nuw nsw i32 %i.022.i61, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, 10
  br i1 %exitcond.not.i66, label %do.body10.i67.atl2_write_phy_reg.exit69_crit_edge, label %do.body10.i67.for.body.i64_crit_edge

do.body10.i67.for.body.i64_crit_edge:             ; preds = %do.body10.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i64

do.body10.i67.atl2_write_phy_reg.exit69_crit_edge: ; preds = %do.body10.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %atl2_write_phy_reg.exit69

atl2_write_phy_reg.exit69:                        ; preds = %do.body10.i67.atl2_write_phy_reg.exit69_crit_edge, %for.body.i64.atl2_write_phy_reg.exit69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_choose_state(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!llvm.named.register.sp = !{!188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__UNIQUE_ID_author476, !1, !"__UNIQUE_ID_author476", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_description477, !3, !"__UNIQUE_ID_description477", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_file478, !5, !"__UNIQUE_ID_file478", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_license479, !5, !"__UNIQUE_ID_license479", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_atl2__480_1678_atl2_driver_init6, !8, !"__initcall__kmod_atl2__480_1678_atl2_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1678, i32 1}
!9 = !{ptr @__exitcall_atl2_driver_exit, !8, !"__exitcall_atl2_driver_exit", i1 false, i1 false}
!10 = !{ptr @__param_TxMemSize, !11, !"__param_TxMemSize", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2791, i32 1}
!12 = !{ptr @__UNIQUE_ID_TxMemSizetype481, !11, !"__UNIQUE_ID_TxMemSizetype481", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_TxMemSize482, !11, !"__UNIQUE_ID_TxMemSize482", i1 false, i1 false}
!14 = !{ptr @__param_RxMemBlock, !15, !"__param_RxMemBlock", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2801, i32 1}
!16 = !{ptr @__UNIQUE_ID_RxMemBlocktype483, !15, !"__UNIQUE_ID_RxMemBlocktype483", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_RxMemBlock484, !15, !"__UNIQUE_ID_RxMemBlock484", i1 false, i1 false}
!18 = !{ptr @__param_MediaType, !19, !"__param_MediaType", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2815, i32 1}
!20 = !{ptr @__UNIQUE_ID_MediaTypetype485, !19, !"__UNIQUE_ID_MediaTypetype485", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_MediaType486, !19, !"__UNIQUE_ID_MediaType486", i1 false, i1 false}
!22 = !{ptr @__param_IntModTimer, !23, !"__param_IntModTimer", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2825, i32 1}
!24 = !{ptr @__UNIQUE_ID_IntModTimertype487, !23, !"__UNIQUE_ID_IntModTimertype487", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_IntModTimer488, !23, !"__UNIQUE_ID_IntModTimer488", i1 false, i1 false}
!26 = !{ptr @__param_FlashVendor, !27, !"__param_FlashVendor", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2834, i32 1}
!28 = !{ptr @__UNIQUE_ID_FlashVendortype489, !27, !"__UNIQUE_ID_FlashVendortype489", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_FlashVendor490, !27, !"__UNIQUE_ID_FlashVendor490", i1 false, i1 false}
!30 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @atl2_driver, !32, !"atl2_driver", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1665, i32 26}
!33 = !{ptr @atl2_driver_name, !34, !"atl2_driver_name", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 39, i32 19}
!35 = !{ptr @atl2_pci_tbl, !36, !"atl2_pci_tbl", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 49, i32 35}
!37 = !{ptr @atl2_probe.cards_found, !38, !"cards_found", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1318, i32 13}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1334, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @atl2_probe._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @atl2_probe._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @atl2_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1416, i32 2}
!47 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @atl2_probe.__key.5, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1418, i32 2}
!50 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @atl2_probe.__key.7, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1420, i32 2}
!53 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @atl2_probe.__key.9, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1421, i32 2}
!56 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1423, i32 23}
!59 = !{ptr @atl2_netdev_ops, !60, !"atl2_netdev_ops", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1286, i32 36}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2122, i32 2}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2123, i32 2}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2124, i32 2}
!67 = !{ptr @flash_table, !68, !"flash_table", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2119, i32 34}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 560, i32 3}
!71 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @atl2_check_for_link._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @atl2_check_for_link._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 490, i32 4}
!76 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @atl2_intr_tx._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @atl2_intr_tx._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 495, i32 4}
!81 = !{ptr @atl2_intr_tx._entry.19, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @atl2_intr_tx._entry_ptr.21, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 499, i32 4}
!85 = !{ptr @atl2_intr_tx._entry.22, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @atl2_intr_tx._entry_ptr.24, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 509, i32 4}
!89 = !{ptr @atl2_intr_tx._entry.25, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @atl2_intr_tx._entry_ptr.27, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @atl2_ethtool_ops, !92, !"atl2_ethtool_ops", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2038, i32 33}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1984, i32 31}
!95 = !{ptr @atl2_sw_init.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 99, i32 2}
!97 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2614, i32 4}
!100 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @atl2_phy_commit._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @atl2_phy_commit._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2923, i32 3}
!105 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @atl2_check_options._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @atl2_check_options._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2925, i32 3}
!110 = !{ptr @atl2_check_options._entry.34, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @atl2_check_options._entry_ptr.36, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2933, i32 13}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2934, i32 12}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2955, i32 13}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2956, i32 12}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2980, i32 13}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2981, i32 12}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2997, i32 13}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2998, i32 12}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 3014, i32 13}
!130 = !{ptr @num_TxMemSize, !11, !"num_TxMemSize", i1 false, i1 false}
!131 = !{ptr @TxMemSize, !11, !"TxMemSize", i1 false, i1 false}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2875, i32 4}
!134 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @atl2_validate_option._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @atl2_validate_option._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2878, i32 4}
!139 = !{ptr @atl2_validate_option._entry.48, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @atl2_validate_option._entry_ptr.50, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2884, i32 4}
!143 = !{ptr @atl2_validate_option._entry.51, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @atl2_validate_option._entry_ptr.53, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2893, i32 6}
!147 = !{ptr @atl2_validate_option._entry.54, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @atl2_validate_option._entry_ptr.56, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 2902, i32 2}
!151 = !{ptr @atl2_validate_option._entry.57, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @atl2_validate_option._entry_ptr.59, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @num_RxMemBlock, !15, !"num_RxMemBlock", i1 false, i1 false}
!154 = !{ptr @RxMemBlock, !15, !"RxMemBlock", i1 false, i1 false}
!155 = !{ptr @num_IntModTimer, !23, !"num_IntModTimer", i1 false, i1 false}
!156 = !{ptr @IntModTimer, !23, !"IntModTimer", i1 false, i1 false}
!157 = !{ptr @num_FlashVendor, !27, !"num_FlashVendor", i1 false, i1 false}
!158 = !{ptr @FlashVendor, !27, !"FlashVendor", i1 false, i1 false}
!159 = !{ptr @num_MediaType, !19, !"num_MediaType", i1 false, i1 false}
!160 = !{ptr @MediaType, !19, !"MediaType", i1 false, i1 false}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1198, i32 4}
!163 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @atl2_check_link._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @atl2_check_link._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1524, i32 4}
!170 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @atl2_suspend._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @atl2_suspend._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/atheros/atlx/atl2.c", i32 1629, i32 3}
!175 = !{ptr @.str.67, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @atl2_resume._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @atl2_resume._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @__param_str_TxMemSize, !11, !"__param_str_TxMemSize", i1 false, i1 false}
!179 = !{ptr @__param_arr_TxMemSize, !11, !"__param_arr_TxMemSize", i1 false, i1 false}
!180 = !{ptr @__param_str_RxMemBlock, !15, !"__param_str_RxMemBlock", i1 false, i1 false}
!181 = !{ptr @__param_arr_RxMemBlock, !15, !"__param_arr_RxMemBlock", i1 false, i1 false}
!182 = !{ptr @__param_str_MediaType, !19, !"__param_str_MediaType", i1 false, i1 false}
!183 = !{ptr @__param_arr_MediaType, !19, !"__param_arr_MediaType", i1 false, i1 false}
!184 = !{ptr @__param_str_IntModTimer, !23, !"__param_str_IntModTimer", i1 false, i1 false}
!185 = !{ptr @__param_arr_IntModTimer, !23, !"__param_arr_IntModTimer", i1 false, i1 false}
!186 = !{ptr @__param_str_FlashVendor, !27, !"__param_str_FlashVendor", i1 false, i1 false}
!187 = !{ptr @__param_arr_FlashVendor, !27, !"__param_arr_FlashVendor", i1 false, i1 false}
!188 = !{!"sp"}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"auto-init"}
!199 = !{!"branch_weights", i32 2000, i32 1}
!200 = !{i64 2153843654}
!201 = !{i64 6301532}
!202 = !{i64 2157763443}
!203 = !{i64 6301950}
!204 = !{i64 2153842299}
!205 = !{i64 2157764208}
!206 = !{i8 0, i8 2}
!207 = !{i64 2153843104}
!208 = !{i64 6300912}
!209 = !{i64 2157764496}
!210 = !{i64 2157765261}
!211 = !{i64 2157759458}
!212 = !{i64 2157759792}
!213 = !{i64 2157759634}
!214 = !{i64 6301112}
!215 = !{i64 2153841687}
!216 = !{!"branch_weights", i32 1, i32 2000}
!217 = !{i64 2153842680}
!218 = !{i64 6301335}
!219 = !{i64 2157797948, i64 2157798454, i64 2157797985, i64 2157798041, i64 2157798075, i64 2157798099, i64 2157798140, i64 2157798161, i64 2157798189, i64 2157798223}
