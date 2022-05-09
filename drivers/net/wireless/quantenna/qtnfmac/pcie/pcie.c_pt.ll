; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qtnf_bus = type { ptr, i32, i32, i32, ptr, [3 x ptr], %struct.qtnf_qlink_transport, %struct.qtnf_hw_info, %struct.napi_struct, [32 x i8], %struct.net_device, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.mutex, ptr, %struct.notifier_block, [6 x i8], [2 x i8], [0 x i8], [44 x i8] }
%struct.qtnf_qlink_transport = type { %struct.qtnf_cmd_ctl_node, %struct.sk_buff_head, i32 }
%struct.qtnf_cmd_ctl_node = type { %struct.completion, ptr, i16, i8, %struct.spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.qtnf_hw_info = type { i32, i8, i8, i32, i8, i8, [32 x i8], i32, [2 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.152 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.qtnf_pcie_bus_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, %struct.tasklet_struct, ptr, ptr, ptr, %struct.qtnf_shm_ipc, %struct.qtnf_shm_ipc, i16, i16, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.154, i32 }
%union.anon.154 = type { ptr }
%struct.qtnf_shm_ipc = type { ptr, i32, i32, i32, i32, i8, %struct.qtnf_shm_ipc_int, %struct.qtnf_shm_ipc_rx_callback, ptr, ptr, %struct.work_struct, %struct.completion }
%struct.qtnf_shm_ipc_int = type { ptr, ptr }
%struct.qtnf_shm_ipc_rx_callback = type { ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.153, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.153 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__param_str_use_msi = internal constant [21 x i8] c"qtnfmac_pcie.use_msi\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_msi = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_msi = internal constant %struct.kernel_param { ptr @__param_str_use_msi, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @use_msi } }, section "__param", align 4
@__UNIQUE_ID_use_msitype465 = internal constant [35 x i8] c"qtnfmac_pcie.parmtype=use_msi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_msi466 = internal constant [56 x i8] c"qtnfmac_pcie.parm=use_msi:set 0 to use legacy interrupt\00", section ".modinfo", align 1
@__param_str_tx_bd_size_param = internal constant [30 x i8] c"qtnfmac_pcie.tx_bd_size_param\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@tx_bd_size_param = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tx_bd_size_param = internal constant %struct.kernel_param { ptr @__param_str_tx_bd_size_param, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @tx_bd_size_param } }, section "__param", align 4
@__UNIQUE_ID_tx_bd_size_paramtype467 = internal constant [44 x i8] c"qtnfmac_pcie.parmtype=tx_bd_size_param:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_bd_size_param468 = internal constant [61 x i8] c"qtnfmac_pcie.parm=tx_bd_size_param:Tx descriptors queue size\00", section ".modinfo", align 1
@__param_str_rx_bd_size_param = internal constant [30 x i8] c"qtnfmac_pcie.rx_bd_size_param\00", align 1
@rx_bd_size_param = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_bd_size_param = internal constant %struct.kernel_param { ptr @__param_str_rx_bd_size_param, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @rx_bd_size_param } }, section "__param", align 4
@__UNIQUE_ID_rx_bd_size_paramtype469 = internal constant [44 x i8] c"qtnfmac_pcie.parmtype=rx_bd_size_param:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_bd_size_param470 = internal constant [61 x i8] c"qtnfmac_pcie.parm=rx_bd_size_param:Rx descriptors queue size\00", section ".modinfo", align 1
@__param_str_flashboot = internal constant [23 x i8] c"qtnfmac_pcie.flashboot\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@flashboot = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_flashboot = internal constant %struct.kernel_param { ptr @__param_str_flashboot, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @flashboot } }, section "__param", align 4
@__UNIQUE_ID_flashboottype471 = internal constant [37 x i8] c"qtnfmac_pcie.parmtype=flashboot:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_flashboot472 = internal constant [65 x i8] c"qtnfmac_pcie.parm=flashboot:set to 0 to use FW binary file on FS\00", section ".modinfo", align 1
@__param_str_fw_blksize_param = internal constant [30 x i8] c"qtnfmac_pcie.fw_blksize_param\00", align 1
@fw_blksize_param = internal global { i32, [28 x i8] } { i32 1048576, [28 x i8] zeroinitializer }, align 32
@__param_fw_blksize_param = internal constant %struct.kernel_param { ptr @__param_str_fw_blksize_param, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @fw_blksize_param } }, section "__param", align 4
@__UNIQUE_ID_fw_blksize_paramtype473 = internal constant [44 x i8] c"qtnfmac_pcie.parmtype=fw_blksize_param:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_blksize_param474 = internal constant [72 x i8] c"qtnfmac_pcie.parm=fw_blksize_param:firmware loading block size in bytes\00", section ".modinfo", align 1
@qtnf_pcie_control_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qtnfmac_pcie: %s: EP firmware is dead\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qtnf_pcie_control_tx\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c\00", [45 x i8] zeroinitializer }, align 32
@qtnf_pcie_control_tx._entry_ptr = internal global ptr @qtnf_pcie_control_tx._entry, section ".printk_index", align 4
@qtnf_pcie_fw_boot_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qtnfmac_pcie: %s: failed to attach core\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qtnf_pcie_fw_boot_done\00", [41 x i8] zeroinitializer }, align 32
@qtnf_pcie_fw_boot_done._entry_ptr = internal global ptr @qtnf_pcie_fw_boot_done._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnfmac_pcie\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mps\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msi_enabled\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shm_stats\00", [22 x i8] zeroinitializer }, align 32
@__initcall__kmod_qtnfmac_pcie__480_481_qtnf_pcie_drv_data_init6 = internal global ptr @qtnf_pcie_drv_data_init, section ".initcall6.init", align 4
@qtnf_pcie_drv_data = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @qtnf_pcie_devid_table, ptr @qtnf_pcie_probe, ptr @qtnf_pcie_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qtnf_pcie_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_qtnf_pcie_drv_data_exit = internal global ptr @qtnf_pcie_drv_data_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author481 = internal constant [45 x i8] c"qtnfmac_pcie.author=Quantenna Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_description482 = internal constant [76 x i8] c"qtnfmac_pcie.description=Quantenna PCIe bus driver for 802.11 wireless LAN.\00", section ".modinfo", align 1
@__UNIQUE_ID_file483 = internal constant [70 x i8] c"qtnfmac_pcie.file=drivers/net/wireless/quantenna/qtnfmac/qtnfmac_pcie\00", section ".modinfo", align 1
@__UNIQUE_ID_license484 = internal constant [25 x i8] c"qtnfmac_pcie.license=GPL\00", section ".modinfo", align 1
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/quantenna/qtnfmac/bus.h\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qtnfmac: invalid bus pointer\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"shm_ipc_ep_in.tx_packet_count(%zu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"shm_ipc_ep_in.rx_packet_count(%zu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"shm_ipc_ep_out.tx_packet_count(%zu)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"shm_ipc_ep_out.rx_packet_count(%zu)\0A\00", [59 x i8] zeroinitializer }, align 32
@qtnf_pcie_control_rx_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014qtnfmac_pcie: %s: zero length packet received\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qtnf_pcie_control_rx_callback\00", [34 x i8] zeroinitializer }, align 32
@qtnf_pcie_control_rx_callback._entry_ptr = internal global ptr @qtnf_pcie_control_rx_callback._entry, section ".printk_index", align 4
@qtnf_pcie_control_rx_callback._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013qtnfmac_pcie: %s: failed to allocate skb\0A\00", [52 x i8] zeroinitializer }, align 32
@qtnf_pcie_control_rx_callback._entry_ptr.22 = internal global ptr @qtnf_pcie_control_rx_callback._entry.20, section ".printk_index", align 4
@qtnf_pcie_devid_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 7093, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qtnf_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qtnf_pcie_suspend, ptr @qtnf_pcie_resume, ptr @qtnf_pcie_suspend, ptr @qtnf_pcie_resume, ptr @qtnf_pcie_suspend, ptr @qtnf_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qtnfmac_pcie: %s: device %s is not PCI Express\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qtnf_pcie_probe\00", [16 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr = internal global ptr @qtnf_pcie_probe._entry, section ".printk_index", align 4
@qtnf_pcie_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qtnfmac_pcie: %s: failed to init PCI device %x\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.27 = internal global ptr @qtnf_pcie_probe._entry.25, section ".printk_index", align 4
@qtnf_pcie_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013qtnfmac_pcie: %s: failed to map BAR%u\0A\00", [55 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.30 = internal global ptr @qtnf_pcie_probe._entry.28, section ".printk_index", align 4
@qtnf_pcie_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.32 = internal global ptr @qtnf_pcie_probe._entry.31, section ".printk_index", align 4
@qtnf_pcie_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.34 = internal global ptr @qtnf_pcie_probe._entry.33, section ".printk_index", align 4
@qtnf_pcie_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016qtnfmac_pcie: %s: identified device: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.37 = internal global ptr @qtnf_pcie_probe._entry.35, section ".printk_index", align 4
@qtnf_pcie_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qtnfmac_pcie: %s: unsupported chip ID 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.40 = internal global ptr @qtnf_pcie_probe._entry.38, section ".printk_index", align 4
@qtnf_pcie_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&bus->bus_lock\00", [17 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pcie_priv->tx_lock\00", [44 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&pcie_priv->tx_reclaim_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QTNF_PCIE\00", [22 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.24, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qtnfmac_pcie: %s: failed to alloc bus workqueue\0A\00", [45 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.50 = internal global ptr @qtnf_pcie_probe._entry.48, section ".printk_index", align 4
@qtnf_pcie_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.24, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013qtnfmac_pcie: %s: PCIE DMA coherent mask init failed 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@qtnf_pcie_probe._entry_ptr.53 = internal global ptr @qtnf_pcie_probe._entry.51, section ".printk_index", align 4
@qtnf_tune_pcie_mps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013qtnfmac_pcie: %s: failed to set mps to %d, keep using current %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qtnf_tune_pcie_mps\00", [45 x i8] zeroinitializer }, align 32
@qtnf_tune_pcie_mps._entry_ptr = internal global ptr @qtnf_tune_pcie_mps._entry, section ".printk_index", align 4
@qtnf_tune_pcie_mps.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set mps to %d (was %d, max %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"qtnfmac_pcie: %s: set mps to %d (was %d, max %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@qtnf_map_bar.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qtnf_map_bar\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BAR%u vaddr=0x%p busaddr=%pad len=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"qtnfmac_pcie: %s: BAR%u vaddr=0x%p busaddr=%pad len=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@qtnf_pcie_init_irq.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qtnf_pcie_init_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enabled MSI interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"qtnfmac_pcie: %s: enabled MSI interrupt\0A\00", [55 x i8] zeroinitializer }, align 32
@qtnf_pcie_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014qtnfmac_pcie: %s: failed to enable MSI interrupts\00", [44 x i8] zeroinitializer }, align 32
@qtnf_pcie_init_irq._entry_ptr = internal global ptr @qtnf_pcie_init_irq._entry, section ".printk_index", align 4
@qtnf_pcie_init_irq._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014qtnfmac_pcie: %s: legacy PCIE interrupts enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@qtnf_pcie_init_irq._entry_ptr.67 = internal global ptr @qtnf_pcie_init_irq._entry.65, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"use_msi\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 28, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"tx_bd_size_param\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 32, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"rx_bd_size_param\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 36, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"flashboot\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 40, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"fw_blksize_param\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 44, i32 21 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 58, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 140, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 142, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 143, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 145, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 146, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 147, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"qtnf_pcie_drv_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 469, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/bus.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 94, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 99, i32 16 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 109, i32 16 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 119, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 121, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 123, i32 16 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 125, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 242, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 249, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"qtnf_pcie_devid_table\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 459, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"qtnf_pcie_pm_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 455, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 285, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 293, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 301, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 307, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 313, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 319, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 331, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 351, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 352, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 353, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 361, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 363, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 370, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 180, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 185, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 228, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 198, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 201, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private constant [54 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 206, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author481, ptr @__UNIQUE_ID_description482, ptr @__UNIQUE_ID_file483, ptr @__UNIQUE_ID_flashboot472, ptr @__UNIQUE_ID_flashboottype471, ptr @__UNIQUE_ID_fw_blksize_param474, ptr @__UNIQUE_ID_fw_blksize_paramtype473, ptr @__UNIQUE_ID_license484, ptr @__UNIQUE_ID_rx_bd_size_param470, ptr @__UNIQUE_ID_rx_bd_size_paramtype469, ptr @__UNIQUE_ID_tx_bd_size_param468, ptr @__UNIQUE_ID_tx_bd_size_paramtype467, ptr @__UNIQUE_ID_use_msi466, ptr @__UNIQUE_ID_use_msitype465, ptr @__exitcall_qtnf_pcie_drv_data_exit, ptr @__initcall__kmod_qtnfmac_pcie__480_481_qtnf_pcie_drv_data_init6, ptr @__param_flashboot, ptr @__param_fw_blksize_param, ptr @__param_rx_bd_size_param, ptr @__param_tx_bd_size_param, ptr @__param_use_msi, ptr @qtnf_pcie_control_rx_callback._entry, ptr @qtnf_pcie_control_rx_callback._entry.20, ptr @qtnf_pcie_control_rx_callback._entry_ptr, ptr @qtnf_pcie_control_rx_callback._entry_ptr.22, ptr @qtnf_pcie_control_tx._entry, ptr @qtnf_pcie_control_tx._entry_ptr, ptr @qtnf_pcie_drv_data_exit, ptr @qtnf_pcie_fw_boot_done._entry, ptr @qtnf_pcie_fw_boot_done._entry_ptr, ptr @qtnf_pcie_init_irq._entry, ptr @qtnf_pcie_init_irq._entry.65, ptr @qtnf_pcie_init_irq._entry_ptr, ptr @qtnf_pcie_init_irq._entry_ptr.67, ptr @qtnf_pcie_probe._entry, ptr @qtnf_pcie_probe._entry.25, ptr @qtnf_pcie_probe._entry.28, ptr @qtnf_pcie_probe._entry.31, ptr @qtnf_pcie_probe._entry.33, ptr @qtnf_pcie_probe._entry.35, ptr @qtnf_pcie_probe._entry.38, ptr @qtnf_pcie_probe._entry.48, ptr @qtnf_pcie_probe._entry.51, ptr @qtnf_pcie_probe._entry_ptr, ptr @qtnf_pcie_probe._entry_ptr.27, ptr @qtnf_pcie_probe._entry_ptr.30, ptr @qtnf_pcie_probe._entry_ptr.32, ptr @qtnf_pcie_probe._entry_ptr.34, ptr @qtnf_pcie_probe._entry_ptr.37, ptr @qtnf_pcie_probe._entry_ptr.40, ptr @qtnf_pcie_probe._entry_ptr.50, ptr @qtnf_pcie_probe._entry_ptr.53, ptr @qtnf_tune_pcie_mps._entry, ptr @qtnf_tune_pcie_mps._entry_ptr, ptr @use_msi, ptr @tx_bd_size_param, ptr @rx_bd_size_param, ptr @flashboot, ptr @fw_blksize_param, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @qtnf_pcie_drv_data, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @qtnf_pcie_devid_table, ptr @qtnf_pcie_pm_ops, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.36, ptr @.str.39, ptr @qtnf_pcie_probe.__key, ptr @.str.41, ptr @qtnf_pcie_probe.__key.42, ptr @.str.43, ptr @qtnf_pcie_probe.__key.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_msi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_bd_size_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_bd_size_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flashboot to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_blksize_param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_control_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_fw_boot_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_drv_data to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_control_rx_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_control_rx_callback._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_devid_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_tune_pcie_mps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtnf_pcie_init_irq._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_pcie_control_tx(ptr noundef %bus, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !184

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %shm_ipc_ep_in = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 13
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call1 = tail call i32 @qtnf_shm_ipc_send(ptr noundef %shm_ipc_ep_in, ptr noundef %1, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call1)
  %cmp = icmp eq i32 %call1, -110
  br i1 %cmp, label %do.end, label %get_bus_priv.exit.if.end_crit_edge

get_bus_priv.exit.if.end_crit_edge:               ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  %fw_state = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 1
  %4 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %fw_state, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %get_bus_priv.exit.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_shm_ipc_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_pcie_alloc_skb_array(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_bd_num, align 4
  %conv = zext i16 %1 to i32
  %rx_bd_num = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_bd_num, align 2
  %conv1 = zext i16 %3 to i32
  %mul14 = add nuw nsw i32 %conv1, %conv
  %add = shl nuw nsw i32 %mul14, 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 17
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %tx_skb, align 4
  %7 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_bd_num, align 4
  %conv4 = zext i16 %8 to i32
  %add.ptr = getelementptr ptr, ptr %call.i, i32 %conv4
  %rx_skb = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 18
  %9 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %rx_skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qtnf_pcie_fw_boot_done(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %card_id = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !184

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %card_id) #8
  %0 = call ptr @memset(ptr %card_id, i32 255, i32 64)
  %fw_state = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 1
  %1 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %fw_state, align 4
  %call1 = tail call i32 @qtnf_core_attach(ptr noundef %bus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  br label %if.end

if.else:                                          ; preds = %get_bus_priv.exit
  %2 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %retval.0.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.pci_name.exit_crit_edge

if.else.pci_name.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.else.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.else.pci_name.exit_crit_edge ]
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %card_id, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i)
  call void @qtnf_debugfs_init(ptr noundef %bus, ptr noundef nonnull %card_id) #8
  call void @qtnf_debugfs_add_entry(ptr noundef %bus, ptr noundef nonnull @.str.7, ptr noundef nonnull @qtnf_dbg_mps_show) #8
  call void @qtnf_debugfs_add_entry(ptr noundef %bus, ptr noundef nonnull @.str.8, ptr noundef nonnull @qtnf_dbg_msi_show) #8
  call void @qtnf_debugfs_add_entry(ptr noundef %bus, ptr noundef nonnull @.str.9, ptr noundef nonnull @qtnf_dbg_shm_stats) #8
  br label %if.end

if.end:                                           ; preds = %pci_name.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %card_id) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_core_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dbg_mps_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !184

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %4 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i, align 4
  %call2 = tail call i32 @pcie_get_mps(ptr noundef %5) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dbg_msi_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !184

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %msi_enabled = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 29
  %4 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msi_enabled, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i32 noundef %conv) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_dbg_shm_stats(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !184

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %3, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %tx_packet_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %tx_packet_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_packet_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %5) #8
  %rx_packet_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %rx_packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_packet_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %7) #8
  %tx_timeout_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_timeout_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %9) #8
  %rx_packet_count4 = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %retval.0.i, i32 0, i32 14, i32 3
  %10 = ptrtoint ptr %rx_packet_count4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_packet_count4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_pcie_init_shm_ipc(ptr noundef %priv, ptr noundef %ipc_tx_reg, ptr noundef %ipc_rx_reg, ptr noundef %ipc_int) local_unnamed_addr #0 align 64 {
entry:
  %rx_callback = alloca %struct.qtnf_shm_ipc_rx_callback, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_callback) #8
  %0 = getelementptr inbounds %struct.qtnf_shm_ipc_rx_callback, ptr %rx_callback, i32 0, i32 1
  %1 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qtnf_pcie_control_rx_callback, ptr %rx_callback, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %0, align 4
  %shm_ipc_ep_in = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 13
  %workqueue = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 8
  %3 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %workqueue, align 4
  %call = call i32 @qtnf_shm_ipc_init(ptr noundef %shm_ipc_ep_in, i32 noundef 1, ptr noundef %ipc_tx_reg, ptr noundef %4, ptr noundef %ipc_int, ptr noundef nonnull %rx_callback) #8
  %shm_ipc_ep_out = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 4
  %call2 = call i32 @qtnf_shm_ipc_init(ptr noundef %shm_ipc_ep_out, i32 noundef 2, ptr noundef %ipc_rx_reg, ptr noundef %6, ptr noundef %ipc_int, ptr noundef nonnull %rx_callback) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_callback) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_control_rx_callback(ptr nocapture noundef readonly %arg, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %do.end, label %if.end, !prof !184

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %len, i32 noundef 3264) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.end16, label %if.end19, !prof !184

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #8
  tail call void @mmiocpy(ptr noundef %call20, ptr noundef %buf, i32 noundef %len) #8
  %call21 = tail call i32 @qtnf_trans_handle_rx_ctl_packet(ptr noundef %3, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_shm_ipc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_drv_data_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @qtnf_pcie_drv_data, ptr noundef null, ptr noundef nonnull @.str.6) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_drv_data_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @qtnf_pcie_drv_data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_mps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qtnf_trans_handle_rx_ctl_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %busaddr.i195 = alloca i32, align 4
  %busaddr.i177 = alloca i32, align 4
  %busaddr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @qtnf_tune_pcie_mps(ptr noundef %pdev)
  %call3 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv = zext i16 %7 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %conv) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busaddr.i) #8
  %call.i = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = inttoptr i32 %call.i to ptr
  br label %qtnf_map_bar.exit

if.end.i:                                         ; preds = %if.end10
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  %11 = ptrtoint ptr %busaddr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %busaddr.i, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %13
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %call14.i = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %14 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call14.i, align 4
  %tobool17.not.i = icmp eq ptr %15, null
  br i1 %tobool17.not.i, label %qtnf_map_bar.exit.thread, label %do.body.i

qtnf_map_bar.exit.thread:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busaddr.i) #8
  br label %do.end16

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_map_bar.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_pcie_probe, %if.then25.i)) #8
          to label %qtnf_map_bar.exit [label %if.then25.i], !srcloc !185

if.then25.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_map_bar.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull %15, ptr noundef nonnull %busaddr.i, i32 noundef %cond.i) #8
  br label %qtnf_map_bar.exit

qtnf_map_bar.exit:                                ; preds = %if.then25.i, %do.body.i, %if.then.i
  %retval.0.i = phi ptr [ %8, %if.then.i ], [ %15, %if.then25.i ], [ %15, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busaddr.i) #8
  %cmp.i176 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %qtnf_map_bar.exit.do.end16_crit_edge, label %if.end20

qtnf_map_bar.exit.do.end16_crit_edge:             ; preds = %qtnf_map_bar.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end16:                                         ; preds = %qtnf_map_bar.exit.do.end16_crit_edge, %qtnf_map_bar.exit.thread
  %retval.0.i219 = phi ptr [ inttoptr (i32 -12 to ptr), %qtnf_map_bar.exit.thread ], [ %retval.0.i, %qtnf_map_bar.exit.do.end16_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef 0) #11
  %16 = ptrtoint ptr %retval.0.i219 to i32
  br label %cleanup

if.end20:                                         ; preds = %qtnf_map_bar.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busaddr.i177) #8
  %call.i178 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i179 = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i179, label %if.end.i189, label %if.then.i180

if.then.i180:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %17 = inttoptr i32 %call.i178 to ptr
  br label %qtnf_map_bar.exit193

if.end.i189:                                      ; preds = %if.end20
  %arrayidx.i181 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %18 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i181, align 8
  %20 = ptrtoint ptr %busaddr.i177 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %busaddr.i177, align 4
  %end.i182 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %21 = ptrtoint ptr %end.i182 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i183 = icmp eq i32 %22, 0
  %sub.i184 = sub i32 1, %19
  %add.i185 = add i32 %sub.i184, %22
  %cond.i186 = select i1 %cmp.i183, i32 0, i32 %add.i185
  %call14.i187 = call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %arrayidx16.i = getelementptr ptr, ptr %call14.i187, i32 3
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx16.i, align 4
  %tobool17.not.i188 = icmp eq ptr %24, null
  br i1 %tobool17.not.i188, label %qtnf_map_bar.exit193.thread, label %do.body.i190

qtnf_map_bar.exit193.thread:                      ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busaddr.i177) #8
  br label %do.end26

do.body.i190:                                     ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_map_bar.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_pcie_probe, %if.then25.i191)) #8
          to label %qtnf_map_bar.exit193 [label %if.then25.i191], !srcloc !185

if.then25.i191:                                   ; preds = %do.body.i190
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_map_bar.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 3, ptr noundef nonnull %24, ptr noundef nonnull %busaddr.i177, i32 noundef %cond.i186) #8
  br label %qtnf_map_bar.exit193

qtnf_map_bar.exit193:                             ; preds = %if.then25.i191, %do.body.i190, %if.then.i180
  %retval.0.i192 = phi ptr [ %17, %if.then.i180 ], [ %24, %if.then25.i191 ], [ %24, %do.body.i190 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busaddr.i177) #8
  %cmp.i194 = icmp ugt ptr %retval.0.i192, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %qtnf_map_bar.exit193.do.end26_crit_edge, label %if.end30

qtnf_map_bar.exit193.do.end26_crit_edge:          ; preds = %qtnf_map_bar.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end26:                                         ; preds = %qtnf_map_bar.exit193.do.end26_crit_edge, %qtnf_map_bar.exit193.thread
  %retval.0.i192222 = phi ptr [ inttoptr (i32 -12 to ptr), %qtnf_map_bar.exit193.thread ], [ %retval.0.i192, %qtnf_map_bar.exit193.do.end26_crit_edge ]
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef 3) #11
  %25 = ptrtoint ptr %retval.0.i192222 to i32
  br label %cleanup

if.end30:                                         ; preds = %qtnf_map_bar.exit193
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busaddr.i195) #8
  %call.i196 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool.not.i197 = icmp eq i32 %call.i196, 0
  br i1 %tobool.not.i197, label %if.end.i208, label %if.then.i198

if.then.i198:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %26 = inttoptr i32 %call.i196 to ptr
  br label %qtnf_map_bar.exit212

if.end.i208:                                      ; preds = %if.end30
  %arrayidx.i199 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %27 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i199, align 8
  %29 = ptrtoint ptr %busaddr.i195 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %busaddr.i195, align 4
  %end.i200 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %30 = ptrtoint ptr %end.i200 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i201 = icmp eq i32 %31, 0
  %sub.i202 = sub i32 1, %28
  %add.i203 = add i32 %sub.i202, %31
  %cond.i204 = select i1 %cmp.i201, i32 0, i32 %add.i203
  %call14.i205 = call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %arrayidx16.i206 = getelementptr ptr, ptr %call14.i205, i32 2
  %32 = ptrtoint ptr %arrayidx16.i206 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx16.i206, align 4
  %tobool17.not.i207 = icmp eq ptr %33, null
  br i1 %tobool17.not.i207, label %qtnf_map_bar.exit212.thread, label %do.body.i209

qtnf_map_bar.exit212.thread:                      ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busaddr.i195) #8
  br label %do.end36

do.body.i209:                                     ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_map_bar.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_pcie_probe, %if.then25.i210)) #8
          to label %qtnf_map_bar.exit212 [label %if.then25.i210], !srcloc !185

if.then25.i210:                                   ; preds = %do.body.i209
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_map_bar.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 2, ptr noundef nonnull %33, ptr noundef nonnull %busaddr.i195, i32 noundef %cond.i204) #8
  br label %qtnf_map_bar.exit212

qtnf_map_bar.exit212:                             ; preds = %if.then25.i210, %do.body.i209, %if.then.i198
  %retval.0.i211 = phi ptr [ %26, %if.then.i198 ], [ %33, %if.then25.i210 ], [ %33, %do.body.i209 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busaddr.i195) #8
  %cmp.i213 = icmp ugt ptr %retval.0.i211, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %qtnf_map_bar.exit212.do.end36_crit_edge, label %if.end40

qtnf_map_bar.exit212.do.end36_crit_edge:          ; preds = %qtnf_map_bar.exit212
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %qtnf_map_bar.exit212.do.end36_crit_edge, %qtnf_map_bar.exit212.thread
  %retval.0.i211225 = phi ptr [ inttoptr (i32 -12 to ptr), %qtnf_map_bar.exit212.thread ], [ %retval.0.i211, %qtnf_map_bar.exit212.do.end36_crit_edge ]
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef 2) #11
  %34 = ptrtoint ptr %retval.0.i211225 to i32
  br label %cleanup

if.end40:                                         ; preds = %qtnf_map_bar.exit212
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 20
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !186
  %36 = lshr i32 %35, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %and.i = and i32 %36, 240
  %call46 = call ptr @qtnf_chipid_to_string(i32 noundef %and.i) #8
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.24, ptr noundef %call46) #11
  %37 = add nsw i32 %and.i, -64
  %38 = lshr exact i32 %37, 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %do.end53 [
    i32 1, label %if.end40.sw.bb_crit_edge
    i32 2, label %if.end40.sw.bb_crit_edge228
    i32 3, label %if.end40.sw.bb_crit_edge229
    i32 0, label %sw.bb49
  ]

if.end40.sw.bb_crit_edge229:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end40.sw.bb_crit_edge228:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end40.sw.bb_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end40.sw.bb_crit_edge, %if.end40.sw.bb_crit_edge228, %if.end40.sw.bb_crit_edge229
  %call48 = call ptr @qtnf_pcie_pearl_alloc(ptr noundef %pdev) #8
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call ptr @qtnf_pcie_topaz_alloc(ptr noundef %pdev) #8
  br label %sw.epilog

do.end53:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.24, i32 noundef %and.i) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb49, %sw.bb
  %bus.0 = phi ptr [ %call50, %sw.bb49 ], [ %call48, %sw.bb ]
  %tobool56.not = icmp eq ptr %bus.0, null
  br i1 %tobool56.not, label %sw.epilog.cleanup_crit_edge, label %get_bus_priv.exit

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_bus_priv.exit:                                ; preds = %sw.epilog
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 0, i32 20
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %bus.0, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %41 = ptrtoint ptr %bus.0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %bus.0, align 128
  %fw_state = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 0, i32 1
  %42 = ptrtoint ptr %fw_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %fw_state, align 4
  %43 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %pdev, ptr %bus_priv.i, align 4
  %tx_stopped = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %bus_priv.i, i32 0, i32 30
  %44 = ptrtoint ptr %tx_stopped to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %tx_stopped, align 1
  %45 = load i8, ptr @flashboot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool62 = icmp ne i8 %45, 0
  %flashboot = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %bus_priv.i, i32 0, i32 31
  %frombool = zext i1 %tobool62 to i8
  %46 = ptrtoint ptr %flashboot to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool, ptr %flashboot, align 2
  %47 = load i32, ptr @fw_blksize_param, align 4
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 1048576)
  %49 = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 1, i32 8, i32 12, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %49, align 4
  %bus_lock = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 0, i32 15
  call void @__mutex_init(ptr noundef %bus_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @qtnf_pcie_probe.__key) #8
  %tx_lock = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 1, i32 5, i32 1
  call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @qtnf_pcie_probe.__key.42, i16 noundef signext 3) #8
  %tx_reclaim_lock = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 0, i32 21, i32 24
  call void @__raw_spin_lock_init(ptr noundef %tx_reclaim_lock, ptr noundef nonnull @.str.45, ptr noundef nonnull @qtnf_pcie_probe.__key.44, i16 noundef signext 3) #8
  %pcie_irq_count = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %bus_priv.i, i32 0, i32 24
  %51 = call ptr @memset(ptr %pcie_irq_count, i32 0, i32 20)
  %call78 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.46, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.47) #8
  %workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 1, i32 6, i32 0, i32 0, i32 1, i32 0, i32 4, i32 3
  %52 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call78, ptr %workqueue, align 4
  %tobool80.not = icmp eq ptr %call78, null
  br i1 %tobool80.not, label %do.end84, label %if.end87

do.end84:                                         ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end87:                                         ; preds = %get_bus_priv.exit
  %dma_mask_get_cb = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 0, i32 21, i32 20
  %53 = ptrtoint ptr %dma_mask_get_cb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_mask_get_cb, align 4
  %call89 = call i64 %54() #8
  %call90 = call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %call89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end100, label %do.end95

do.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dma_mask_get_cb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_mask_get_cb, align 4
  %call98 = call i64 %56() #8
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.24, i64 noundef %call98) #11
  br label %error

if.end100:                                        ; preds = %if.end87
  %mux_dev = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 0, i32 10
  %call101 = call i32 @init_dummy_netdev(ptr noundef %mux_dev) #8
  %57 = load i8, ptr @use_msi, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool102 = icmp ne i8 %57, 0
  call fastcc void @qtnf_pcie_init_irq(ptr noundef %bus_priv.i, i1 noundef zeroext %tobool102)
  %sysctl_bar103 = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 1, i32 6, i32 0, i32 4
  %58 = ptrtoint ptr %sysctl_bar103 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %retval.0.i, ptr %sysctl_bar103, align 4
  %dmareg_bar104 = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 1, i32 6, i32 0, i32 4, i32 0, i32 0, i32 2
  %59 = ptrtoint ptr %dmareg_bar104 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i192, ptr %dmareg_bar104, align 4
  %epmem_bar105 = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 1, i32 6, i32 0, i32 4, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %epmem_bar105 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %retval.0.i211, ptr %epmem_bar105, align 4
  %call106 = call i32 @pci_save_state(ptr noundef %pdev) #8
  %probe_cb = getelementptr inbounds %struct.qtnf_bus, ptr %bus.0, i32 0, i32 21, i32 4
  %61 = ptrtoint ptr %probe_cb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %probe_cb, align 4
  %63 = load i32, ptr @tx_bd_size_param, align 4
  %64 = load i32, ptr @rx_bd_size_param, align 4
  %call107 = call i32 %62(ptr noundef nonnull %bus.0, i32 noundef %63, i32 noundef %64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end100.error_crit_edge

if.end100.error_crit_edge:                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end110:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @qtnf_pcie_bringup_fw_async(ptr noundef nonnull %bus.0)
  br label %cleanup

error:                                            ; preds = %if.end100.error_crit_edge, %do.end95
  %ret.0 = phi i32 [ %call90, %do.end95 ], [ %call107, %if.end100.error_crit_edge ]
  %65 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %66) #8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end110, %do.end84, %sw.epilog.cleanup_crit_edge, %do.end53, %do.end36, %do.end26, %do.end16, %do.end7, %pci_name.exit
  %retval.0 = phi i32 [ %call3, %do.end7 ], [ %16, %do.end16 ], [ %25, %do.end26 ], [ %34, %do.end36 ], [ -524, %do.end53 ], [ %ret.0, %error ], [ 0, %if.end110 ], [ -19, %do.end84 ], [ -5, %pci_name.exit ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qtnf_pcie_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %get_bus_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_bus_priv.exit:                                ; preds = %entry
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 20
  %fw_work = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 13
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %fw_work) #8
  %fw_state.i = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fw_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state.i, align 4
  %.off.i = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then4, label %get_bus_priv.exit.if.end5_crit_edge

get_bus_priv.exit.if.end5_crit_edge:              ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %get_bus_priv.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qtnf_core_detach(ptr noundef nonnull %1) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %get_bus_priv.exit.if.end5_crit_edge
  %mux_napi = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 8
  tail call void @__netif_napi_del(ptr noundef %mux_napi) #8
  tail call void @synchronize_net() #8
  %workqueue = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 1, i32 6, i32 0, i32 0, i32 1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #8
  %reclaim_tq = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 1, i32 6, i32 0, i32 0, i32 1, i32 0, i32 4, i32 6
  tail call void @tasklet_kill(ptr noundef %reclaim_tq) #8
  %shm_ipc_ep_in.i = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 1, i32 6, i32 0, i32 4, i32 0, i32 0, i32 3
  tail call void @qtnf_shm_ipc_free(ptr noundef %shm_ipc_ep_in.i) #8
  %shm_ipc_ep_out.i = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 1, i32 8
  tail call void @qtnf_shm_ipc_free(ptr noundef %shm_ipc_ep_out.i) #8
  tail call void @qtnf_debugfs_remove(ptr noundef nonnull %1) #8
  %remove_cb = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 21, i32 8
  %6 = ptrtoint ptr %remove_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remove_cb, align 4
  tail call void %7(ptr noundef nonnull %1) #8
  %8 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_priv.i, align 4
  %driver_data.i.i18 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_tune_pcie_mps(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcie_get_mps(ptr noundef %pdev) #8
  %pcie_mpss = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 22
  %0 = ptrtoint ptr %pcie_mpss to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %pcie_mpss, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %conv = zext i8 %bf.lshr to i32
  %shl = shl nuw nsw i32 128, %conv
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %self = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %self, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.then.if.end9_crit_edge, label %if.then6

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @pcie_get_mps(ptr noundef nonnull %4) #8
  %7 = tail call i32 @llvm.smin.i32(i32 %shl, i32 %call7)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %mps.0 = phi i32 [ %7, %if.then6 ], [ %shl, %if.then.if.end9_crit_edge ], [ %shl, %land.lhs.true.if.end9_crit_edge ], [ %shl, %entry.if.end9_crit_edge ]
  %call10 = tail call i32 @pcie_set_mps(ptr noundef %pdev, i32 noundef %mps.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body16, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %mps.0, i32 noundef %call) #11
  br label %cleanup

do.body16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_tune_pcie_mps.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_tune_pcie_mps, %if.then22)) #8
          to label %cleanup [label %if.then22], !srcloc !185

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_tune_pcie_mps.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef %mps.0, i32 noundef %call, i32 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body16, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_chipid_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_pcie_pearl_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qtnf_pcie_topaz_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_pcie_init_irq(ptr nocapture noundef %priv, i1 noundef zeroext %use_msi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %msi_enabled = getelementptr inbounds %struct.qtnf_pcie_bus_priv, ptr %priv, i32 0, i32 29
  %2 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %msi_enabled, align 4
  br i1 %use_msi, label %if.then, label %entry.do.end23_crit_edge

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

if.then:                                          ; preds = %entry
  %call = tail call i32 @pci_enable_msi(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.body, label %if.end17

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qtnf_pcie_init_irq.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qtnf_pcie_init_irq, %if.then9)) #8
          to label %if.end17.thread33 [label %if.then9], !srcloc !185

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @qtnf_pcie_init_irq.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #8
  br label %if.end17.thread33

if.end17.thread33:                                ; preds = %if.then9, %do.body
  %3 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %msi_enabled, align 4
  br label %if.end26

if.end17:                                         ; preds = %if.then
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.61) #11
  %4 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %msi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool19.not = icmp eq i8 %.pr, 0
  br i1 %tobool19.not, label %if.end17.do.end23_crit_edge, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end23:                                         ; preds = %if.end17.do.end23_crit_edge, %entry.do.end23_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.61) #11
  tail call void @pci_intx(ptr noundef %1, i32 noundef 1) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end17.if.end26_crit_edge, %if.end17.thread33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qtnf_pcie_bringup_fw_async(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !184

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %get_bus_priv.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_priv.i = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 20
  br label %get_bus_priv.exit

get_bus_priv.exit:                                ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %bus_priv.i, %if.end23.i ]
  %0 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retval.0.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call2 = tail call ptr @get_device(ptr noundef %dev) #8
  %fw_work = getelementptr inbounds %struct.qtnf_bus, ptr %bus, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %fw_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_mps(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_core_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qtnf_shm_ipc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %get_bus_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_bus_priv.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %suspend_cb = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 21, i32 12
  %2 = ptrtoint ptr %suspend_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_cb, align 4
  %call2 = tail call i32 %3(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %get_bus_priv.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %get_bus_priv.exit ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qtnf_pcie_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %get_bus_priv.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_bus_priv.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %resume_cb = getelementptr inbounds %struct.qtnf_bus, ptr %1, i32 0, i32 21, i32 16
  %2 = ptrtoint ptr %resume_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume_cb, align 4
  %call2 = tail call i32 %3(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %get_bus_priv.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %get_bus_priv.exit ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !56, !58, !60, !61, !63, !64, !65, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__param_use_msi, !1, !"__param_use_msi", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_msitype465, !1, !"__UNIQUE_ID_use_msitype465", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_msi466, !4, !"__UNIQUE_ID_use_msi466", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 30, i32 1}
!5 = !{ptr @__param_tx_bd_size_param, !6, !"__param_tx_bd_size_param", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_tx_bd_size_paramtype467, !6, !"__UNIQUE_ID_tx_bd_size_paramtype467", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_tx_bd_size_param468, !9, !"__UNIQUE_ID_tx_bd_size_param468", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 34, i32 1}
!10 = !{ptr @__param_rx_bd_size_param, !11, !"__param_rx_bd_size_param", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_rx_bd_size_paramtype469, !11, !"__UNIQUE_ID_rx_bd_size_paramtype469", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_rx_bd_size_param470, !14, !"__UNIQUE_ID_rx_bd_size_param470", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 38, i32 1}
!15 = !{ptr @__param_flashboot, !16, !"__param_flashboot", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 41, i32 1}
!17 = !{ptr @__UNIQUE_ID_flashboottype471, !16, !"__UNIQUE_ID_flashboottype471", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_flashboot472, !19, !"__UNIQUE_ID_flashboot472", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 42, i32 1}
!20 = !{ptr @__param_fw_blksize_param, !21, !"__param_fw_blksize_param", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 45, i32 1}
!22 = !{ptr @__UNIQUE_ID_fw_blksize_paramtype473, !21, !"__UNIQUE_ID_fw_blksize_paramtype473", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_fw_blksize_param474, !24, !"__UNIQUE_ID_fw_blksize_param474", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 46, i32 1}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 58, i32 3}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qtnf_pcie_control_tx._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @qtnf_pcie_control_tx._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 140, i32 3}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qtnf_pcie_fw_boot_done._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @qtnf_pcie_fw_boot_done._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 142, i32 38}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 143, i32 5}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 145, i32 31}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 146, i32 31}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 147, i32 31}
!46 = !{ptr @__initcall__kmod_qtnfmac_pcie__480_481_qtnf_pcie_drv_data_init6, !47, !"__initcall__kmod_qtnfmac_pcie__480_481_qtnf_pcie_drv_data_init6", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 481, i32 1}
!48 = !{ptr @__exitcall_qtnf_pcie_drv_data_exit, !47, !"__exitcall_qtnf_pcie_drv_data_exit", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_author481, !50, !"__UNIQUE_ID_author481", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 483, i32 1}
!51 = !{ptr @__UNIQUE_ID_description482, !52, !"__UNIQUE_ID_description482", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 484, i32 1}
!53 = !{ptr @__UNIQUE_ID_file483, !54, !"__UNIQUE_ID_file483", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 485, i32 1}
!55 = !{ptr @__UNIQUE_ID_license484, !54, !"__UNIQUE_ID_license484", i1 false, i1 false}
!56 = !{ptr @tx_bd_size_param, !57, !"tx_bd_size_param", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 32, i32 21}
!58 = !{ptr @rx_bd_size_param, !59, !"rx_bd_size_param", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 36, i32 21}
!60 = !{ptr @__param_str_use_msi, !1, !"__param_str_use_msi", i1 false, i1 false}
!61 = !{ptr @use_msi, !62, !"use_msi", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 28, i32 13}
!63 = !{ptr @__param_str_tx_bd_size_param, !6, !"__param_str_tx_bd_size_param", i1 false, i1 false}
!64 = !{ptr @__param_str_rx_bd_size_param, !11, !"__param_str_rx_bd_size_param", i1 false, i1 false}
!65 = !{ptr @__param_str_flashboot, !16, !"__param_str_flashboot", i1 false, i1 false}
!66 = !{ptr @flashboot, !67, !"flashboot", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 40, i32 11}
!68 = !{ptr @__param_str_fw_blksize_param, !21, !"__param_str_fw_blksize_param", i1 false, i1 false}
!69 = !{ptr @fw_blksize_param, !70, !"fw_blksize_param", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 44, i32 21}
!71 = !{ptr @.str.10, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/quantenna/qtnfmac/bus.h", i32 94, i32 6}
!73 = !{ptr @.str.11, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.12, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 99, i32 16}
!76 = !{ptr @.str.13, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 109, i32 16}
!78 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 119, i32 16}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 121, i32 16}
!82 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 123, i32 16}
!84 = !{ptr @.str.17, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 125, i32 16}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 242, i32 3}
!88 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @qtnf_pcie_control_rx_callback._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @qtnf_pcie_control_rx_callback._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 249, i32 3}
!93 = !{ptr @qtnf_pcie_control_rx_callback._entry.20, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qtnf_pcie_control_rx_callback._entry_ptr.22, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @qtnf_pcie_drv_data, !96, !"qtnf_pcie_drv_data", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 469, i32 26}
!97 = !{ptr @qtnf_pcie_devid_table, !98, !"qtnf_pcie_devid_table", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 459, i32 35}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 285, i32 3}
!101 = !{ptr @.str.24, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @qtnf_pcie_probe._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @qtnf_pcie_probe._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 293, i32 3}
!106 = !{ptr @qtnf_pcie_probe._entry.25, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @qtnf_pcie_probe._entry_ptr.27, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 301, i32 3}
!110 = !{ptr @qtnf_pcie_probe._entry.28, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @qtnf_pcie_probe._entry_ptr.30, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @qtnf_pcie_probe._entry.31, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 307, i32 3}
!114 = !{ptr @qtnf_pcie_probe._entry_ptr.32, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @qtnf_pcie_probe._entry.33, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 313, i32 3}
!117 = !{ptr @qtnf_pcie_probe._entry_ptr.34, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.36, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 319, i32 2}
!120 = !{ptr @qtnf_pcie_probe._entry.35, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @qtnf_pcie_probe._entry_ptr.37, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 331, i32 3}
!124 = !{ptr @qtnf_pcie_probe._entry.38, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @qtnf_pcie_probe._entry_ptr.40, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @qtnf_pcie_probe.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 351, i32 2}
!128 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @qtnf_pcie_probe.__key.42, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 352, i32 2}
!131 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @qtnf_pcie_probe.__key.44, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 353, i32 2}
!134 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 361, i32 25}
!137 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 363, i32 3}
!140 = !{ptr @qtnf_pcie_probe._entry.48, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @qtnf_pcie_probe._entry_ptr.50, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 370, i32 3}
!144 = !{ptr @qtnf_pcie_probe._entry.51, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @qtnf_pcie_probe._entry_ptr.53, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 180, i32 3}
!148 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @qtnf_tune_pcie_mps._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @qtnf_tune_pcie_mps._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 185, i32 2}
!153 = !{ptr @qtnf_tune_pcie_mps.__UNIQUE_ID_ddebug477, !152, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!154 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.58, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 228, i32 2}
!157 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @qtnf_map_bar.__UNIQUE_ID_ddebug479, !156, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!159 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 198, i32 4}
!162 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @qtnf_pcie_init_irq.__UNIQUE_ID_ddebug478, !161, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!164 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 201, i32 4}
!167 = !{ptr @qtnf_pcie_init_irq._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qtnf_pcie_init_irq._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 206, i32 3}
!171 = !{ptr @qtnf_pcie_init_irq._entry.65, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qtnf_pcie_init_irq._entry_ptr.67, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @qtnf_pcie_pm_ops, !174, !"qtnf_pcie_pm_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/quantenna/qtnfmac/pcie/pcie.c", i32 455, i32 8}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2148963025, i64 2148963030, i64 2148963043, i64 2148963087, i64 2148963121, i64 2148963142}
!186 = !{i64 4989873}
!187 = !{i64 2158380255}
!188 = !{i8 0, i8 2}
