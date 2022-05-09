; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/drv.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/drv.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_dev_info = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.132, %struct.anon.133, %struct.iwl_dma_ptr }
%struct.anon.132 = type { i8, i8, i32 }
%struct.anon.133 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }

@iwl_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @iwl_hw_card_ids, ptr @iwl_pci_probe, ptr @iwl_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iwl_dev_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iwlwifi\00", [24 x i8] zeroinitializer }, align 32
@iwl_pci_register_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013iwlwifi: Unable to initialize PCI module\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iwl_pci_register_driver\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/drv.c\00", [50 x i8] zeroinitializer }, align 32
@iwl_pci_register_driver._entry_ptr = internal global ptr @iwl_pci_register_driver._entry, section ".printk_index", align 4
@iwl_hw_card_ids = internal constant { [408 x %struct.pci_device_id], [3264 x i8] } { [408 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4609, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4865, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4612, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4868, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4613, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4869, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4614, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4870, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4641, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4897, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4644, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4900, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4645, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4901, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4646, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16946, i32 -1, i32 4902, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4625, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4881, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4628, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4884, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4629, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4885, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4630, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16951, i32 -1, i32 4886, i32 0, i32 0, i32 ptrtoint (ptr @iwl5100_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4129, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4385, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4132, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4388, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4097, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4353, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4100, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16949, i32 -1, i32 4356, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16950, i32 -1, i32 4113, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16950, i32 -1, i32 4369, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16950, i32 -1, i32 4116, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16950, i32 -1, i32 4372, i32 0, i32 0, i32 ptrtoint (ptr @iwl5300_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16954, i32 -1, i32 4097, i32 0, i32 0, i32 ptrtoint (ptr @iwl5350_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16954, i32 -1, i32 4129, i32 0, i32 0, i32 ptrtoint (ptr @iwl5350_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16955, i32 -1, i32 4113, i32 0, i32 0, i32 ptrtoint (ptr @iwl5350_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16956, i32 -1, i32 4609, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16956, i32 -1, i32 4865, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16956, i32 -1, i32 4614, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16956, i32 -1, i32 4870, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16956, i32 -1, i32 4641, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16956, i32 -1, i32 4897, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16956, i32 -1, i32 4902, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16957, i32 -1, i32 4625, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16957, i32 -1, i32 4881, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16957, i32 -1, i32 4630, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16957, i32 -1, i32 4886, i32 0, i32 0, i32 ptrtoint (ptr @iwl5150_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16939, i32 -1, i32 4353, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000_3agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16939, i32 -1, i32 4360, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000_3agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16939, i32 -1, i32 4385, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000_3agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16939, i32 -1, i32 4392, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000_3agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16940, i32 -1, i32 4865, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000i_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16940, i32 -1, i32 4870, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000i_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16940, i32 -1, i32 4871, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000i_2bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16940, i32 -1, i32 4897, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000i_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16940, i32 -1, i32 4902, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000i_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16952, i32 -1, i32 4369, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000_3agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16952, i32 -1, i32 4376, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000_3agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16953, i32 -1, i32 4881, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000i_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16953, i32 -1, i32 4886, i32 0, i32 0, i32 ptrtoint (ptr @iwl6000i_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4865, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4870, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4871, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4872, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4897, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4902, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4904, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 133, i32 -1, i32 4881, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 133, i32 -1, i32 4888, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 133, i32 -1, i32 4886, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 49184, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_sff_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 133, i32 -1, i32 49696, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_sff_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 133, i32 -1, i32 49704, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_sff_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 18464, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_d_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4868, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_mow1_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 130, i32 -1, i32 4869, i32 0, i32 0, i32 ptrtoint (ptr @iwl6005_2agn_mow2_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 138, i32 -1, i32 21253, i32 0, i32 0, i32 ptrtoint (ptr @iwl1030_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 138, i32 -1, i32 21255, i32 0, i32 0, i32 ptrtoint (ptr @iwl1030_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 138, i32 -1, i32 21285, i32 0, i32 0, i32 ptrtoint (ptr @iwl1030_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 138, i32 -1, i32 21287, i32 0, i32 0, i32 ptrtoint (ptr @iwl1030_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 139, i32 -1, i32 21269, i32 0, i32 0, i32 ptrtoint (ptr @iwl1030_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 139, i32 -1, i32 21271, i32 0, i32 0, i32 ptrtoint (ptr @iwl1030_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 144, i32 -1, i32 21009, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 144, i32 -1, i32 21013, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 144, i32 -1, i32 21014, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 145, i32 -1, i32 20993, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 145, i32 -1, i32 20997, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 145, i32 -1, i32 20998, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 145, i32 -1, i32 20999, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 145, i32 -1, i32 21025, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 145, i32 -1, i32 21029, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 145, i32 -1, i32 21030, i32 0, i32 0, i32 ptrtoint (ptr @iwl6030_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 135, i32 -1, i32 4865, i32 0, i32 0, i32 ptrtoint (ptr @iwl6050_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 135, i32 -1, i32 4870, i32 0, i32 0, i32 ptrtoint (ptr @iwl6050_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 135, i32 -1, i32 4897, i32 0, i32 0, i32 ptrtoint (ptr @iwl6050_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 135, i32 -1, i32 4902, i32 0, i32 0, i32 ptrtoint (ptr @iwl6050_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 137, i32 -1, i32 4881, i32 0, i32 0, i32 ptrtoint (ptr @iwl6050_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 137, i32 -1, i32 4886, i32 0, i32 0, i32 ptrtoint (ptr @iwl6050_2abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2181, i32 -1, i32 4869, i32 0, i32 0, i32 ptrtoint (ptr @iwl6150_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2181, i32 -1, i32 4871, i32 0, i32 0, i32 ptrtoint (ptr @iwl6150_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2181, i32 -1, i32 4901, i32 0, i32 0, i32 ptrtoint (ptr @iwl6150_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2181, i32 -1, i32 4903, i32 0, i32 0, i32 ptrtoint (ptr @iwl6150_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2182, i32 -1, i32 4885, i32 0, i32 0, i32 ptrtoint (ptr @iwl6150_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2182, i32 -1, i32 4887, i32 0, i32 0, i32 ptrtoint (ptr @iwl6150_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4613, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4869, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4645, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4901, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 132, i32 -1, i32 4629, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 132, i32 -1, i32 4885, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4614, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4870, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4646, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 131, i32 -1, i32 4902, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 132, i32 -1, i32 4630, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 132, i32 -1, i32 4886, i32 0, i32 0, i32 ptrtoint (ptr @iwl1000_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2222, i32 -1, i32 4101, i32 0, i32 0, i32 ptrtoint (ptr @iwl100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2222, i32 -1, i32 4103, i32 0, i32 0, i32 ptrtoint (ptr @iwl100_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2223, i32 -1, i32 4117, i32 0, i32 0, i32 ptrtoint (ptr @iwl100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2223, i32 -1, i32 4119, i32 0, i32 0, i32 ptrtoint (ptr @iwl100_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2222, i32 -1, i32 4133, i32 0, i32 0, i32 ptrtoint (ptr @iwl100_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2222, i32 -1, i32 4135, i32 0, i32 0, i32 ptrtoint (ptr @iwl100_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2198, i32 -1, i32 20485, i32 0, i32 0, i32 ptrtoint (ptr @iwl130_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2198, i32 -1, i32 20487, i32 0, i32 0, i32 ptrtoint (ptr @iwl130_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2199, i32 -1, i32 20501, i32 0, i32 0, i32 ptrtoint (ptr @iwl130_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2199, i32 -1, i32 20503, i32 0, i32 0, i32 ptrtoint (ptr @iwl130_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2198, i32 -1, i32 20517, i32 0, i32 0, i32 ptrtoint (ptr @iwl130_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2198, i32 -1, i32 20519, i32 0, i32 0, i32 ptrtoint (ptr @iwl130_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2192, i32 -1, i32 16418, i32 0, i32 0, i32 ptrtoint (ptr @iwl2000_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2193, i32 -1, i32 16930, i32 0, i32 0, i32 ptrtoint (ptr @iwl2000_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2192, i32 -1, i32 17442, i32 0, i32 0, i32 ptrtoint (ptr @iwl2000_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2192, i32 -1, i32 18466, i32 0, i32 0, i32 ptrtoint (ptr @iwl2000_2bgn_d_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2183, i32 -1, i32 16482, i32 0, i32 0, i32 ptrtoint (ptr @iwl2030_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2184, i32 -1, i32 16994, i32 0, i32 0, i32 ptrtoint (ptr @iwl2030_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2183, i32 -1, i32 17506, i32 0, i32 0, i32 ptrtoint (ptr @iwl2030_2bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2190, i32 -1, i32 16480, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2190, i32 -1, i32 16490, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_sff_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2191, i32 -1, i32 16992, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2191, i32 -1, i32 17002, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_sff_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2190, i32 -1, i32 17504, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2190, i32 -1, i32 17514, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_sff_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2190, i32 -1, i32 18528, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2191, i32 -1, i32 21088, i32 0, i32 0, i32 ptrtoint (ptr @iwl6035_2agn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2196, i32 -1, i32 34, i32 0, i32 0, i32 ptrtoint (ptr @iwl105_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2197, i32 -1, i32 546, i32 0, i32 0, i32 ptrtoint (ptr @iwl105_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2196, i32 -1, i32 1058, i32 0, i32 0, i32 ptrtoint (ptr @iwl105_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2196, i32 -1, i32 2082, i32 0, i32 0, i32 ptrtoint (ptr @iwl105_bgn_d_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2194, i32 -1, i32 98, i32 0, i32 0, i32 ptrtoint (ptr @iwl135_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2195, i32 -1, i32 610, i32 0, i32 0, i32 ptrtoint (ptr @iwl135_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2194, i32 -1, i32 1122, i32 0, i32 0, i32 ptrtoint (ptr @iwl135_bgn_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16496, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16498, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16752, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 19552, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 19568, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16480, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16490, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16736, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16482, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16738, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 17008, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 17010, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 16992, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 17002, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 16994, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17520, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17522, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17504, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17514, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17506, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 18544, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 18542, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 19056, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg_high_temp to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 19054, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg_high_temp to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 19052, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg_high_temp to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17776, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17760, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 17264, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 17248, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 20592, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 20594, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 20848, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 22384, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16416, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 16426, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 16928, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 17440, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49264, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49266, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49520, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49248, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49258, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49504, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49250, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49506, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 51056, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 51040, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 49776, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 52336, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 52320, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 49778, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 49760, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 49770, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 49762, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50288, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50290, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50272, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50274, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50544, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50528, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 50032, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50016, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49184, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 49194, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2226, i32 -1, i32 49696, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2225, i32 -1, i32 50208, i32 0, i32 0, i32 ptrtoint (ptr @iwl7260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 112, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 114, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 368, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 370, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 96, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 98, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2228, i32 -1, i32 624, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2228, i32 -1, i32 626, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 1136, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 1138, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2228, i32 -1, i32 880, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 32880, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 32882, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 33136, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 33138, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 32864, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 32866, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2228, i32 -1, i32 33392, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2228, i32 -1, i32 33648, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2228, i32 -1, i32 33394, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 33904, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 34160, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 4208, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2227, i32 -1, i32 4464, i32 0, i32 0, i32 ptrtoint (ptr @iwl3160_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12645, i32 -1, i32 16400, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12645, i32 -1, i32 16402, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12646, i32 -1, i32 16914, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12645, i32 -1, i32 17424, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12645, i32 -1, i32 17680, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12645, i32 -1, i32 16656, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12646, i32 -1, i32 17168, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12646, i32 -1, i32 16912, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12645, i32 -1, i32 32784, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12645, i32 -1, i32 33040, i32 0, i32 0, i32 ptrtoint (ptr @iwl3165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9467, i32 -1, i32 8208, i32 0, i32 0, i32 ptrtoint (ptr @iwl3168_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9467, i32 -1, i32 8464, i32 0, i32 0, i32 ptrtoint (ptr @iwl3168_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9467, i32 -1, i32 8272, i32 0, i32 0, i32 ptrtoint (ptr @iwl3168_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9467, i32 -1, i32 8528, i32 0, i32 0, i32 ptrtoint (ptr @iwl3168_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9467, i32 -1, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @iwl3168_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20496, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20752, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20736, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 21264, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 21250, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 21008, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 23568, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20498, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 21522, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 21520, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 21776, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 21504, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 4112, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20480, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20490, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 20992, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20482, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20738, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 20994, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 36880, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 36882, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 36874, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 37136, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 37138, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 37392, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 37376, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 38160, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 37648, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 37904, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20512, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20522, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 21536, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20624, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 20880, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 21904, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 21136, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 21648, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 24336, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 21010, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2395, i32 -1, i32 21002, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 36864, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 37888, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2394, i32 -1, i32 40464, i32 0, i32 0, i32 ptrtoint (ptr @iwl7265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 16, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4112, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4272, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 304, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4400, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 306, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4402, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 272, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 496, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 18, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4114, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4368, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 80, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 592, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4176, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 336, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4432, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9460, i32 -1, i32 48, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9460, i32 -1, i32 4144, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 49168, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 49424, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 53264, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 49232, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 53328, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 53424, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 45232, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 32784, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 33040, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 36880, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 37136, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9460, i32 -1, i32 32816, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9460, i32 -1, i32 36912, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9460, i32 -1, i32 49200, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9460, i32 -1, i32 53296, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 33072, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 37168, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 33074, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 37170, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 32848, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 33104, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 36944, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 37200, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 4, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 68, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2n_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9461, i32 -1, i32 16, i32 0, i32 0, i32 ptrtoint (ptr @iwl4165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9462, i32 -1, i32 48, i32 0, i32 0, i32 ptrtoint (ptr @iwl4165_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 2064, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 2320, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 2128, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 2384, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 2352, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 0, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9459, i32 -1, i32 16400, i32 0, i32 0, i32 ptrtoint (ptr @iwl8260_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 16, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 272, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 4368, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 4400, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 304, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 4112, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 4304, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 80, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 336, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 36880, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 33040, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 32848, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 32784, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 2064, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 37136, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 33072, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 2320, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 2352, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 2384, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 2128, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 4116, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 15874, i32 0, i32 0, i32 ptrtoint (ptr @iwl8275_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 15873, i32 0, i32 0, i32 ptrtoint (ptr @iwl8275_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 4114, i32 0, i32 0, i32 ptrtoint (ptr @iwl8275_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 18, i32 0, i32 0, i32 ptrtoint (ptr @iwl8275_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 20, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9469, i32 -1, i32 36980, i32 0, i32 0, i32 ptrtoint (ptr @iwl8265_2ac_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 9510, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl9000_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10011, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl9000_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10012, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl9000_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12508, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl9560_long_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 12764, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl9560_shared_clk_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40432, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl9560_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 41840, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl9560_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 752, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qu_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 1776, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qu_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 13552, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qu_medium_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 15856, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qu_medium_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19952, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qu_medium_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 17392, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qu_long_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 41200, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qu_long_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10016, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_qnj_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10019, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_ax200_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10021, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_so_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10022, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_snj_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 31344, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_so_long_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 31472, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_so_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 20976, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_so_long_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 21744, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_so_long_latency_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10025, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_ma_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 32320, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_ma_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 32624, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_ma_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 10023, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr inbounds (i8, ptr @iwl_bz_trans_cfg, i64 1) to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [3264 x i8] zeroinitializer }, align 32
@iwl_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @iwl_pci_suspend, ptr @iwl_pci_resume, ptr @iwl_pci_suspend, ptr @iwl_pci_resume, ptr @iwl_pci_suspend, ptr @iwl_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iwl5100_agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl5100_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl5100_abg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl5300_agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl5350_agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl5150_agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl5150_abg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6000_3agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6000i_2agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6000i_2abg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6000i_2bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6005_2agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6005_2abg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6005_2bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6005_2agn_sff_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6005_2agn_d_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6005_2agn_mow1_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6005_2agn_mow2_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl1030_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl1030_bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6030_2agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6030_2bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6030_2abg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6030_2bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6050_2agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6050_2abg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6150_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6150_bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl1000_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl1000_bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl100_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl100_bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl130_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl130_bg_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl2000_2bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl2000_2bgn_d_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl2030_2bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6035_2agn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl6035_2agn_sff_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl105_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl105_bgn_d_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl135_bgn_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7260_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7260_2n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7260_n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7260_2ac_cfg_high_temp = external dso_local constant %struct.iwl_cfg, align 8
@iwl3160_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl3160_2n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl3160_n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl3165_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl3168_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7265_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7265_n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7265_2n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl8260_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl8260_2n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl4165_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl8265_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl8275_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl9000_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl9560_long_latency_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl9560_shared_clk_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl9560_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_qu_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_qu_medium_latency_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_qu_long_latency_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_qnj_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_ax200_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_so_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_snj_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_so_long_latency_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_ma_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl_bz_trans_cfg = external dso_local constant %struct.iwl_cfg_trans_params, align 4
@iwl7265d_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7265d_2n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl7265d_n_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax201_cfg_qu_hr = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax201_cfg_qu_c0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@killer1650s_2ax_cfg_qu_b0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@killer1650s_2ax_cfg_qu_c0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@killer1650i_2ax_cfg_qu_b0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@killer1650i_2ax_cfg_qu_c0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax201_cfg_quz_hr = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax1650s_cfg_quz_hr = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax1650i_cfg_quz_hr = external dso_local constant %struct.iwl_cfg, align 8
@iwl_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013iwlwifi: No config found for PCI dev %04x/%04x, rev=0x%x, rfid=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwl_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@iwl_pci_probe._entry_ptr = internal global ptr @iwl_pci_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to grab nic access before reading crf id\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can find a correct rfid for crf id 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Adding cdb to rf id\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Detected RF 0x%x from crf id 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_dev_info_table = internal constant { [255 x %struct.iwl_dev_info], [1528 x i8] } { [255 x %struct.iwl_dev_info] [%struct.iwl_dev_info { i16 9510, i16 5456, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9260_killer_1550_name }, %struct.iwl_dev_info { i16 9510, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 9510, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 12508, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 12508, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 12764, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 12764, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 -23696, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 -23696, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 21744, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_160_name }, %struct.iwl_dev_info { i16 21744, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 20976, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_160_name }, %struct.iwl_dev_info { i16 20976, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_160_name }, %struct.iwl_dev_info { i16 20976, i16 5777, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_killer_1690s_name }, %struct.iwl_dev_info { i16 20976, i16 5778, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_killer_1690i_name }, %struct.iwl_dev_info { i16 21744, i16 5777, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_killer_1690s_name }, %struct.iwl_dev_info { i16 21744, i16 5778, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_killer_1690i_name }, %struct.iwl_dev_info { i16 31344, i16 5777, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_killer_1690s_name }, %struct.iwl_dev_info { i16 31344, i16 5778, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_killer_1690i_name }, %struct.iwl_dev_info { i16 10012, i16 532, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9260_1_name }, %struct.iwl_dev_info { i16 32320, i16 5777, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_cfg_ma_a0_gf4_a0, ptr @iwl_ax411_killer_1690s_name }, %struct.iwl_dev_info { i16 32320, i16 5778, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_cfg_ma_a0_gf4_a0, ptr @iwl_ax411_killer_1690i_name }, %struct.iwl_dev_info { i16 10019, i16 -1, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax200_cfg_cc, ptr @iwl_ax200_name }, %struct.iwl_dev_info { i16 10019, i16 5715, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax200_cfg_cc, ptr @iwl_ax200_killer_1650w_name }, %struct.iwl_dev_info { i16 10019, i16 5716, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax200_cfg_cc, ptr @iwl_ax200_killer_1650x_name }, %struct.iwl_dev_info { i16 17392, i16 112, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 17392, i16 116, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 17392, i16 120, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 17392, i16 124, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 17392, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650s_2ax_cfg_qu_b0_hr_b0, ptr @iwl_ax201_killer_1650s_name }, %struct.iwl_dev_info { i16 17392, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650i_2ax_cfg_qu_b0_hr_b0, ptr @iwl_ax201_killer_1650i_name }, %struct.iwl_dev_info { i16 17392, i16 8308, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 17392, i16 16496, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 17392, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650s_2ax_cfg_qu_b0_hr_b0, ptr @iwl_ax201_killer_1650s_name }, %struct.iwl_dev_info { i16 -24336, i16 112, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 116, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 120, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 124, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 2576, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650s_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650i_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 8308, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 16496, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 -24336, i16 24692, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 112, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 116, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 24692, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 120, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 124, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax1650s_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax1650i_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 8308, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 752, i16 16496, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 112, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 116, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 120, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 124, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax1650s_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax1650i_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 8308, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 1776, i16 16496, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_quz_hr, ptr null }, %struct.iwl_dev_info { i16 13552, i16 112, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 13552, i16 116, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 13552, i16 120, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 13552, i16 124, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 13552, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 13552, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650s_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 13552, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650i_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 13552, i16 8308, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 13552, i16 16496, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 15856, i16 112, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 15856, i16 116, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 15856, i16 120, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 15856, i16 124, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 15856, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 15856, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650s_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 15856, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650i_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 15856, i16 8308, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 15856, i16 16496, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 112, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 116, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 120, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 124, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650s_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 19952, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @killer1650i_2ax_cfg_qu_b0_hr_b0, ptr null }, %struct.iwl_dev_info { i16 19952, i16 8308, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 16496, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 19952, i16 24692, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_ax201_cfg_qu_hr, ptr null }, %struct.iwl_dev_info { i16 10021, i16 144, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 32, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 8224, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 36, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 1296, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 2576, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 -8160, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 -8156, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 16416, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 24608, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 24612, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10021, i16 5747, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr @iwl_ax210_killer_1675w_name }, %struct.iwl_dev_info { i16 10021, i16 5748, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax210_2ax_cfg_ty_gf_a0, ptr @iwl_ax210_killer_1675x_name }, %struct.iwl_dev_info { i16 31344, i16 144, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0_long, ptr null }, %struct.iwl_dev_info { i16 31344, i16 152, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0_long, ptr null }, %struct.iwl_dev_info { i16 31344, i16 176, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0_long, ptr null }, %struct.iwl_dev_info { i16 31344, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0_long, ptr null }, %struct.iwl_dev_info { i16 31344, i16 1296, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0_long, ptr null }, %struct.iwl_dev_info { i16 31344, i16 2576, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0_long, ptr null }, %struct.iwl_dev_info { i16 31472, i16 144, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr null }, %struct.iwl_dev_info { i16 31472, i16 152, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr null }, %struct.iwl_dev_info { i16 31472, i16 176, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr null }, %struct.iwl_dev_info { i16 31472, i16 784, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr null }, %struct.iwl_dev_info { i16 31472, i16 1296, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr null }, %struct.iwl_dev_info { i16 31472, i16 2576, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr null }, %struct.iwl_dev_info { i16 31344, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_160_name }, %struct.iwl_dev_info { i16 31344, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_160_name }, %struct.iwl_dev_info { i16 31472, i16 5457, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550s_160_name }, %struct.iwl_dev_info { i16 31472, i16 5458, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_killer_1550i_160_name }, %struct.iwl_dev_info { i16 10021, i16 176, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_sosnj_gf4_a0, ptr null }, %struct.iwl_dev_info { i16 10022, i16 144, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_cfg_snj_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10022, i16 152, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_cfg_snj_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10022, i16 176, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_sosnj_gf4_a0, ptr null }, %struct.iwl_dev_info { i16 10022, i16 180, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_sosnj_gf4_a0, ptr null }, %struct.iwl_dev_info { i16 10022, i16 1296, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_cfg_snj_gf_a0, ptr null }, %struct.iwl_dev_info { i16 10022, i16 5713, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_cfg_snj_hr_b0, ptr @iwl_ax201_killer_1650s_name }, %struct.iwl_dev_info { i16 10022, i16 5714, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_cfg_snj_hr_b0, ptr @iwl_ax201_killer_1650i_name }, %struct.iwl_dev_info { i16 10022, i16 5777, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_sosnj_gf4_a0, ptr @iwl_ax411_killer_1690s_name }, %struct.iwl_dev_info { i16 10022, i16 5778, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_sosnj_gf4_a0, ptr @iwl_ax411_killer_1690i_name }, %struct.iwl_dev_info { i16 32624, i16 5777, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_sosnj_gf4_a0, ptr @iwl_ax411_killer_1690s_name }, %struct.iwl_dev_info { i16 32624, i16 5778, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax411_2ax_cfg_sosnj_gf4_a0, ptr @iwl_ax411_killer_1690i_name }, %struct.iwl_dev_info { i16 10022, i16 5745, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675s_name }, %struct.iwl_dev_info { i16 10022, i16 5746, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675i_name }, %struct.iwl_dev_info { i16 20976, i16 5745, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675s_name }, %struct.iwl_dev_info { i16 20976, i16 5746, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675i_name }, %struct.iwl_dev_info { i16 21744, i16 5745, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675s_name }, %struct.iwl_dev_info { i16 21744, i16 5746, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675i_name }, %struct.iwl_dev_info { i16 31344, i16 5745, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675s_name }, %struct.iwl_dev_info { i16 31344, i16 5746, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675i_name }, %struct.iwl_dev_info { i16 31472, i16 5745, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675s_name }, %struct.iwl_dev_info { i16 31472, i16 5746, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_killer_1675i_name }, %struct.iwl_dev_info { i16 32320, i16 5745, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_cfg_ma_a0_gf_a0, ptr @iwl_ax211_killer_1675s_name }, %struct.iwl_dev_info { i16 32320, i16 5746, i16 -1, i16 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, ptr @iwl_cfg_ma_a0_gf_a0, ptr @iwl_ax211_killer_1675i_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 49, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 49, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 49, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 49, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 49, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 49, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_2ac_cfg_soc, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 261, i8 -1, i8 -1, i8 0, i8 5, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9270_160_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 261, i8 -1, i8 -1, i8 1, i8 5, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9270_name }, %struct.iwl_dev_info { i16 10011, i16 -1, i16 50, i16 264, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9162_160_name }, %struct.iwl_dev_info { i16 10011, i16 -1, i16 50, i16 264, i8 -1, i8 -1, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9162_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 261, i8 -1, i8 -1, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9260_160_name }, %struct.iwl_dev_info { i16 9510, i16 -1, i16 50, i16 261, i8 -1, i8 -1, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9260_2ac_cfg, ptr @iwl9260_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 261, i8 1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 261, i8 1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 5457, i16 51, i16 261, i8 1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 -1, i16 5458, i16 51, i16 261, i8 1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_b0_jf_b0_cfg, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 2, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 2, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 2, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 264, i8 2, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 261, i8 2, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 261, i8 2, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 5457, i16 51, i16 261, i8 2, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 -1, i16 5458, i16 51, i16 261, i8 2, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qu_c0_jf_b0_cfg, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 5457, i16 53, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 -1, i16 5458, i16 53, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_quz_a0_jf_b0_cfg, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 54, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 54, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 54, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 54, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 54, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 54, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 5457, i16 54, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9560_killer_1550s_name }, %struct.iwl_dev_info { i16 -1, i16 5458, i16 54, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl9560_qnj_b0_jf_b0_cfg, ptr @iwl9560_killer_1550i_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 268, i8 1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_qu_b0_hr1_b0, ptr @iwl_ax101_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 266, i8 1, i8 -1, i8 1, i8 -1, i8 0, i8 -1, ptr @iwl_qu_b0_hr_b0, ptr @iwl_ax203_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 268, i8 2, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_qu_c0_hr1_b0, ptr @iwl_ax101_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 266, i8 2, i8 -1, i8 1, i8 -1, i8 0, i8 -1, ptr @iwl_qu_c0_hr_b0, ptr @iwl_ax203_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 51, i16 266, i8 2, i8 -1, i8 0, i8 -1, i8 0, i8 -1, ptr @iwl_qu_c0_hr_b0, ptr @iwl_ax201_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 268, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_quz_a0_hr1_b0, ptr @iwl_ax101_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 53, i16 266, i8 1, i8 -1, i8 1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_quz_a0_hr_b0, ptr @iwl_ax203_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 54, i16 266, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_qnj_b0_hr_b0_cfg, ptr @iwl_ax201_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwl_cfg_snj_a0_jf_b0, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwl_cfg_snj_a0_jf_b0, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwl_cfg_snj_a0_jf_b0, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwl_cfg_snj_a0_jf_b0, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwl_cfg_snj_a0_jf_b0, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwl_cfg_snj_a0_jf_b0, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 268, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_snj_hr_b0, ptr @iwl_ax101_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 266, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_snj_hr_b0, ptr @iwl_ax201_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 68, i16 266, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_ma_a0_hr_b0, ptr @iwl_ax201_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 68, i16 269, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_ma_a0_gf_a0, ptr @iwl_ax211_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 68, i16 269, i8 -1, i8 -1, i8 -1, i8 -1, i8 1, i8 -1, ptr @iwl_cfg_ma_a0_gf4_a0, ptr @iwl_ax211_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 68, i16 272, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_ma_a0_mr_a0, ptr @iwl_ax221_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 68, i16 274, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_ma_a0_fm_a0, ptr @iwl_ax231_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 66, i16 272, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_snj_a0_mr_a0, ptr @iwl_ax221_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 266, i8 -1, i8 -1, i8 1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_so_a0_hr_a0, ptr @iwl_ax203_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 268, i8 -1, i8 -1, i8 0, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_so_a0_hr_a0, ptr @iwl_ax101_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 266, i8 -1, i8 -1, i8 0, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_so_a0_hr_a0, ptr @iwl_ax201_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 266, i8 -1, i8 -1, i8 1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_so_a0_hr_a0, ptr @iwl_ax203_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 268, i8 -1, i8 -1, i8 0, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_so_a0_hr_a0, ptr @iwl_ax101_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 266, i8 -1, i8 -1, i8 0, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_so_a0_hr_a0, ptr @iwl_ax201_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 269, i8 -1, i8 -1, i8 0, i8 -1, i8 0, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 269, i8 -1, i8 -1, i8 0, i8 -1, i8 1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 70, i16 266, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_bz_a0_hr_b0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 70, i16 269, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_bz_a0_gf_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 70, i16 269, i8 -1, i8 -1, i8 -1, i8 -1, i8 1, i8 -1, ptr @iwl_cfg_bz_a0_gf4_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 70, i16 272, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_bz_a0_mr_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 70, i16 274, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_bz_a0_fm_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 71, i16 274, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 0, ptr @iwl_cfg_gl_a0_fm_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 70, i16 269, i8 15, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, ptr @iwl_cfg_bz_z0_gf_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 71, i16 274, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 1, ptr @iwl_cfg_bnj_a0_fm_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 71, i16 274, i8 -1, i8 -1, i8 -1, i8 -1, i8 1, i8 1, ptr @iwl_cfg_bnj_a0_fm4_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 71, i16 269, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 1, ptr @iwl_cfg_bnj_a0_gf_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 71, i16 269, i8 -1, i8 -1, i8 -1, i8 -1, i8 1, i8 1, ptr @iwl_cfg_bnj_a0_gf4_a0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 71, i16 268, i8 -1, i8 -1, i8 -1, i8 -1, i8 0, i8 1, ptr @iwl_cfg_bnj_a0_hr_b0, ptr @iwl_bz_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 67, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9462_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 269, i8 -1, i8 -1, i8 0, i8 -1, i8 0, i8 -1, ptr @iwlax211_2ax_cfg_so_gf_a0, ptr @iwl_ax211_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 269, i8 -1, i8 -1, i8 0, i8 -1, i8 1, i8 -1, ptr @iwlax411_2ax_cfg_so_gf4_a0, ptr @iwl_ax411_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 261, i8 -1, i8 3, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9560_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 261, i8 -1, i8 3, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9560_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 264, i8 -1, i8 6, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9461_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 264, i8 -1, i8 10, i8 0, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9462_160_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 264, i8 -1, i8 6, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9461_name }, %struct.iwl_dev_info { i16 -1, i16 -1, i16 55, i16 264, i8 -1, i8 10, i8 1, i8 0, i8 0, i8 -1, ptr @iwlax210_2ax_cfg_so_jf_b0, ptr @iwl9462_name }], [1528 x i8] zeroinitializer }, align 32
@iwl9260_2ac_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl9260_killer_1550_name = external dso_local constant [0 x i8], align 1
@iwl9560_2ac_cfg_soc = external dso_local constant %struct.iwl_cfg, align 8
@iwl9560_killer_1550s_name = external dso_local constant [0 x i8], align 1
@iwl9560_killer_1550i_name = external dso_local constant [0 x i8], align 1
@iwl9560_killer_1550s_160_name = external dso_local constant [0 x i8], align 1
@iwl9560_killer_1550i_160_name = external dso_local constant [0 x i8], align 1
@iwlax411_2ax_cfg_so_gf4_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax411_killer_1690s_name = external dso_local constant [0 x i8], align 1
@iwl_ax411_killer_1690i_name = external dso_local constant [0 x i8], align 1
@iwl9260_1_name = external dso_local constant [0 x i8], align 1
@iwl_cfg_ma_a0_gf4_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax200_cfg_cc = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax200_name = external dso_local constant [0 x i8], align 1
@iwl_ax200_killer_1650w_name = external dso_local constant [0 x i8], align 1
@iwl_ax200_killer_1650x_name = external dso_local constant [0 x i8], align 1
@iwl_ax201_killer_1650s_name = external dso_local constant [0 x i8], align 1
@iwl_ax201_killer_1650i_name = external dso_local constant [0 x i8], align 1
@iwlax211_2ax_cfg_so_gf_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwlax210_2ax_cfg_ty_gf_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax210_killer_1675w_name = external dso_local constant [0 x i8], align 1
@iwl_ax210_killer_1675x_name = external dso_local constant [0 x i8], align 1
@iwlax211_2ax_cfg_so_gf_a0_long = external dso_local constant %struct.iwl_cfg, align 8
@iwlax411_2ax_cfg_so_gf4_a0_long = external dso_local constant %struct.iwl_cfg, align 8
@iwlax411_2ax_cfg_sosnj_gf4_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwlax211_cfg_snj_gf_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_snj_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax211_killer_1675s_name = external dso_local constant [0 x i8], align 1
@iwl_ax211_killer_1675i_name = external dso_local constant [0 x i8], align 1
@iwl_cfg_ma_a0_gf_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl9461_160_name = external dso_local constant [0 x i8], align 1
@iwl9461_name = external dso_local constant [0 x i8], align 1
@iwl9462_160_name = external dso_local constant [0 x i8], align 1
@iwl9462_name = external dso_local constant [0 x i8], align 1
@iwl9560_160_name = external dso_local constant [0 x i8], align 1
@iwl9560_name = external dso_local constant [0 x i8], align 1
@iwl9270_160_name = external dso_local constant [0 x i8], align 1
@iwl9270_name = external dso_local constant [0 x i8], align 1
@iwl9162_160_name = external dso_local constant [0 x i8], align 1
@iwl9162_name = external dso_local constant [0 x i8], align 1
@iwl9260_160_name = external dso_local constant [0 x i8], align 1
@iwl9260_name = external dso_local constant [0 x i8], align 1
@iwl9560_qu_b0_jf_b0_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl9560_qu_c0_jf_b0_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl9560_quz_a0_jf_b0_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl9560_qnj_b0_jf_b0_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl_qu_b0_hr1_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax101_name = external dso_local constant [0 x i8], align 1
@iwl_qu_b0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax203_name = external dso_local constant [0 x i8], align 1
@iwl_qu_c0_hr1_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_qu_c0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax201_name = external dso_local constant [0 x i8], align 1
@iwl_quz_a0_hr1_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_quz_a0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_qnj_b0_hr_b0_cfg = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_snj_a0_jf_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_ma_a0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax211_name = external dso_local constant [0 x i8], align 1
@iwl_cfg_ma_a0_mr_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax221_name = external dso_local constant [0 x i8], align 1
@iwl_cfg_ma_a0_fm_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax231_name = external dso_local constant [0 x i8], align 1
@iwl_cfg_snj_a0_mr_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_so_a0_hr_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_ax411_name = external dso_local constant [0 x i8], align 1
@iwl_cfg_bz_a0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_bz_name = external dso_local constant [0 x i8], align 1
@iwl_cfg_bz_a0_gf_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bz_a0_gf4_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bz_a0_mr_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bz_a0_fm_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_gl_a0_fm_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bz_z0_gf_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bnj_a0_fm_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bnj_a0_fm4_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bnj_a0_gf_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bnj_a0_gf4_a0 = external dso_local constant %struct.iwl_cfg, align 8
@iwl_cfg_bnj_a0_hr_b0 = external dso_local constant %struct.iwl_cfg, align 8
@iwlax210_2ax_cfg_so_jf_b0 = external dso_local constant %struct.iwl_cfg, align 8
@__func__.iwl_enable_rfkill_int = private unnamed_addr constant [22 x i8] c"iwl_enable_rfkill_int\00", align 1
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabling rfkill interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 513, i64 514, i64 1040, i64 1283, i64 1284, i64 2064, i64 2320]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"iwl_pci_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1716, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1727, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1729, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"iwl_hw_card_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 36, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"iwl_dev_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1703, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1593, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1326, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1367, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1377, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1380, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"iwl_dev_info_table\00", align 1
@___asan_gen_.57 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 524, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 700, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @iwl_pci_probe._entry, ptr @iwl_pci_probe._entry_ptr, ptr @iwl_pci_register_driver._entry, ptr @iwl_pci_register_driver._entry_ptr, ptr @iwl_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @iwl_hw_card_ids, ptr @iwl_dev_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @iwl_dev_info_table, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pci_register_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_hw_card_ids to i32), i32 13056, i32 16320, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dev_info_table to i32), i32 6120, i32 7648, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pci_register_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @iwl_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pci_unregister_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @iwl_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_pci_probe(ptr noundef %pdev, ptr noundef %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %and = and i32 %1, -2
  %2 = inttoptr i32 %and to ptr
  %call = tail call ptr @iwl_trans_pcie_alloc(ptr noundef %pdev, ptr noundef %ent, ptr noundef %2) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @iwl_finish_nic_init(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.out_free_trans_crit_edge

if.then7.out_free_trans_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_trans

if.end11:                                         ; preds = %if.then7
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grab_nic_access, align 4
  %call12 = tail call zeroext i1 %7(ptr noundef %call) #4
  br i1 %call12, label %if.then15, label %if.end11.out_free_trans_crit_edge, !prof !41

if.end11.out_free_trans_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_trans

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %11(ptr noundef %call) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %call18 = tail call i32 @iwl_read32(ptr noundef %call, i32 noundef 156) #4
  %hw_rf_id = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 12
  %12 = ptrtoint ptr %hw_rf_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call18, ptr %hw_rf_id, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans_cfg, align 4
  %rf_id = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %rf_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %rf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool19.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool19.not, label %if.end17.if.end29_crit_edge, label %land.lhs.true

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end17
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp = icmp ugt i32 %17, 16
  %18 = and i32 %call18, 16773120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  %or.cond = select i1 %cmp, i1 %tobool24.not, i1 false
  br i1 %or.cond, label %land.lhs.true25, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true25:                                  ; preds = %land.lhs.true
  %ops.i328 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i328 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i328, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %grab_nic_access.i, align 4
  %call.i = tail call zeroext i1 %22(ptr noundef %call) #4
  br i1 %call.i, label %if.end6.i, label %get_crf_id.exit.thread, !prof !41

get_crf_id.exit.thread:                           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 8
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.6) #4
  br label %out_free_trans

if.end6.i:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %17)
  %cmp.i329 = icmp ugt i32 %17, 18
  %..i = select i1 %cmp.i329, i32 10663936, i32 10655232
  %25 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_cfg, align 4
  %umac_prph_offset.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %umac_prph_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %umac_prph_offset.i.i, align 4
  %add.i.i = add i32 %28, 10498096
  %call.i.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %call, i32 noundef %add.i.i) #4
  %or.i = or i32 %call.i.i, -2147483648
  %29 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans_cfg, align 4
  %umac_prph_offset.i78.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %umac_prph_offset.i78.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %umac_prph_offset.i78.i, align 4
  %add.i79.i = add i32 %32, 10498096
  tail call void @iwl_write_prph_no_grab(ptr noundef %call, i32 noundef %add.i79.i, i32 noundef %or.i) #4
  %call8.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %call, i32 noundef %..i) #4
  %33 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trans_cfg, align 4
  %umac_prph_offset.i81.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %umac_prph_offset.i81.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %umac_prph_offset.i81.i, align 4
  %add.i82.i = add i32 %36, 10498200
  %call.i83.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %call, i32 noundef %add.i82.i) #4
  %and.i = and i32 %call8.i, 4095
  %37 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default.i [
    i32 513, label %if.end6.i.sw.epilog.i_crit_edge
    i32 514, label %sw.bb10.i
    i32 1284, label %sw.bb12.i
    i32 1283, label %sw.bb14.i
    i32 1040, label %sw.bb16.i
    i32 2064, label %sw.bb18.i
    i32 2320, label %sw.bb20.i
  ]

if.end6.i.sw.epilog.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev26.i = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 8
  %38 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev26.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %39, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %and.i) #4
  %40 = ptrtoint ptr %ops.i328 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i328, align 4
  %release_nic_access.i.i.c = getelementptr inbounds %struct.iwl_trans_ops, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %release_nic_access.i.i.c to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %release_nic_access.i.i.c, align 4
  tail call void %43(ptr noundef %call) #4
  br label %out_free_trans

sw.epilog.i:                                      ; preds = %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %if.end6.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 1122304, %sw.bb20.i ], [ 1114112, %sw.bb18.i ], [ 1101824, %sw.bb16.i ], [ 1089536, %sw.bb14.i ], [ 1097728, %sw.bb12.i ], [ 1069056, %sw.bb10.i ], [ 1081344, %if.end6.i.sw.epilog.i_crit_edge ]
  %44 = ptrtoint ptr %hw_rf_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %hw_rf_id, align 8
  %and31.i = and i32 %call.i83.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %sw.epilog.i.do.end46.i_crit_edge, label %if.then33.i

sw.epilog.i.do.end46.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46.i

if.then33.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = or i32 %.sink.i, 268435456
  %45 = ptrtoint ptr %hw_rf_id to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %hw_rf_id, align 8
  %dev39.i = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 8
  %46 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev39.i, align 8
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %47, ptr noundef nonnull @.str.8) #4
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then33.i, %sw.epilog.i.do.end46.i_crit_edge
  %dev47.i = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 8
  %48 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev47.i, align 8
  %50 = ptrtoint ptr %hw_rf_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_rf_id, align 8
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %49, ptr noundef nonnull @.str.9, i32 noundef %51, i32 noundef %and.i) #4
  %52 = ptrtoint ptr %ops.i328 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i328, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %55(ptr noundef %call) #4
  br label %if.end29

if.end29:                                         ; preds = %do.end46.i, %land.lhs.true.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %device, align 2
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %58 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %subsystem_device, align 2
  %hw_rev = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 10
  %60 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_rev, align 8
  %62 = trunc i32 %61 to i16
  %63 = lshr i16 %62, 4
  %hw_rev_step = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 11
  %64 = ptrtoint ptr %hw_rev_step to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hw_rev_step, align 4
  %conv32 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %hw_rf_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hw_rf_id, align 8
  %and34 = lshr i32 %67, 12
  %68 = trunc i32 %and34 to i16
  %conv36 = and i16 %68, 4095
  %and38 = lshr i32 %67, 28
  %69 = trunc i32 %and38 to i8
  %conv40 = and i8 %69, 1
  %and42 = lshr i32 %67, 29
  %70 = trunc i32 %and42 to i8
  %conv44 = and i8 %70, 1
  %71 = trunc i16 %59 to i8
  %72 = lshr i8 %71, 4
  %and54 = lshr i16 %59, 9
  %73 = trunc i16 %and54 to i8
  %conv58 = and i8 %73, 1
  %74 = lshr i16 %59, 10
  %75 = trunc i16 %74 to i8
  %conv65 = and i8 %75, 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29
  %i.0159.i = phi i32 [ 254, %if.end29 ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %77)
  %cmp2.not.i = icmp eq i16 %77, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %57)
  %cmp7.not.i = icmp eq i16 %77, %57
  %or.cond.i = or i1 %cmp2.not.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end10.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end10.i:                                       ; preds = %for.body.i
  %subdevice.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 1
  %78 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %subdevice.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %79)
  %cmp12.not.i = icmp eq i16 %79, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %79, i16 %59)
  %cmp18.not.i = icmp eq i16 %79, %59
  %or.cond143.i = or i1 %cmp12.not.i, %cmp18.not.i
  br i1 %or.cond143.i, label %if.end21.i, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end21.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 145, i32 %i.0159.i)
  %cmp24.not.i = icmp ult i32 %i.0159.i, 145
  br i1 %cmp24.not.i, label %if.end33.i, label %land.lhs.true26.i

land.lhs.true26.i:                                ; preds = %if.end21.i
  %mac_type22.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 2
  %80 = ptrtoint ptr %mac_type22.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %mac_type22.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %63)
  %cmp30.not.i = icmp eq i16 %81, %63
  br i1 %cmp30.not.i, label %if.end33.thread.i, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end33.i:                                       ; preds = %if.end21.i
  %mac_step34.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 4
  %82 = ptrtoint ptr %mac_step34.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %mac_step34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp36.not.i = icmp eq i8 %83, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv32)
  %cmp42.not.i = icmp eq i8 %83, %conv32
  %or.cond144.i = or i1 %cmp36.not.i, %cmp42.not.i
  br i1 %or.cond144.i, label %if.end33.i.if.end69.i_crit_edge, label %if.end33.i.for.inc.i_crit_edge

if.end33.i.for.inc.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end33.i.if.end69.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

if.end33.thread.i:                                ; preds = %land.lhs.true26.i
  %mac_step34150.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 4
  %84 = ptrtoint ptr %mac_step34150.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %mac_step34150.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %85)
  %cmp36.not151.i = icmp eq i8 %85, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %conv32)
  %cmp42.not152.i = icmp eq i8 %85, %conv32
  %or.cond144153.i = or i1 %cmp36.not151.i, %cmp42.not152.i
  br i1 %or.cond144153.i, label %land.lhs.true50.i, label %if.end33.thread.i.for.inc.i_crit_edge

if.end33.thread.i.for.inc.i_crit_edge:            ; preds = %if.end33.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true50.i:                                ; preds = %if.end33.thread.i
  %rf_type46.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 3
  %86 = ptrtoint ptr %rf_type46.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %rf_type46.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %conv36)
  %cmp54.not.i = icmp eq i16 %87, %conv36
  br i1 %cmp54.not.i, label %land.lhs.true62.i, label %land.lhs.true50.i.for.inc.i_crit_edge

land.lhs.true50.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true62.i:                                ; preds = %land.lhs.true50.i
  %cdb58.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 8
  %88 = ptrtoint ptr %cdb58.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %cdb58.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %conv40)
  %cmp66.not.i = icmp eq i8 %89, %conv40
  br i1 %cmp66.not.i, label %land.lhs.true62.i.if.end69.i_crit_edge, label %land.lhs.true62.i.for.inc.i_crit_edge

land.lhs.true62.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true62.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

if.end69.i:                                       ; preds = %land.lhs.true62.i.if.end69.i_crit_edge, %if.end33.i.if.end69.i_crit_edge
  %jacket70.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 9
  %90 = ptrtoint ptr %jacket70.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %jacket70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %cmp72.not.i = icmp eq i8 %91, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %conv44)
  %cmp78.not.i = icmp eq i8 %91, %conv44
  %or.cond145.i = or i1 %cmp72.not.i, %cmp78.not.i
  br i1 %or.cond145.i, label %if.end81.i, label %if.end69.i.for.inc.i_crit_edge

if.end69.i.for.inc.i_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end81.i:                                       ; preds = %if.end69.i
  %rf_id82.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 5
  %92 = ptrtoint ptr %rf_id82.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %rf_id82.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %cmp84.not.i = icmp eq i8 %93, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %72)
  %cmp90.not.i = icmp eq i8 %93, %72
  %or.cond146.i = or i1 %cmp84.not.i, %cmp90.not.i
  br i1 %or.cond146.i, label %if.end93.i, label %if.end81.i.for.inc.i_crit_edge

if.end81.i.for.inc.i_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end93.i:                                       ; preds = %if.end81.i
  %no_16094.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 6
  %94 = ptrtoint ptr %no_16094.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %no_16094.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %95)
  %cmp96.not.i = icmp eq i8 %95, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %conv58)
  %cmp102.not.i = icmp eq i8 %95, %conv58
  %or.cond147.i = or i1 %cmp96.not.i, %cmp102.not.i
  br i1 %or.cond147.i, label %cleanup.i, label %if.end93.i.for.inc.i_crit_edge

if.end93.i.for.inc.i_crit_edge:                   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end93.i
  %cores106.i = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 7
  %96 = ptrtoint ptr %cores106.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cores106.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %cmp108.not.i = icmp eq i8 %97, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %conv65)
  %cmp114.not.i = icmp eq i8 %97, %conv65
  %or.cond148.i = or i1 %cmp108.not.i, %cmp114.not.i
  br i1 %or.cond148.i, label %iwl_pci_find_dev_info.exit, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %if.end93.i.for.inc.i_crit_edge, %if.end81.i.for.inc.i_crit_edge, %if.end69.i.for.inc.i_crit_edge, %land.lhs.true62.i.for.inc.i_crit_edge, %land.lhs.true50.i.for.inc.i_crit_edge, %if.end33.thread.i.for.inc.i_crit_edge, %if.end33.i.for.inc.i_crit_edge, %land.lhs.true26.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %i.0159.i, -1
  %cmp.not.i = icmp eq i32 %i.0159.i, 0
  br i1 %cmp.not.i, label %for.inc.i.if.end72_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end72_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

iwl_pci_find_dev_info.exit:                       ; preds = %cleanup.i
  %tobool67.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool67.not, label %iwl_pci_find_dev_info.exit.if.end72_crit_edge, label %if.then68

iwl_pci_find_dev_info.exit.if.end72_crit_edge:    ; preds = %iwl_pci_find_dev_info.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then68:                                        ; preds = %iwl_pci_find_dev_info.exit
  call void @__sanitizer_cov_trace_pc() #6
  %cfg69 = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 10
  %98 = ptrtoint ptr %cfg69 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg69, align 4
  %cfg70 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 4
  %100 = ptrtoint ptr %cfg70 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %cfg70, align 8
  %name = getelementptr [255 x %struct.iwl_dev_info], ptr @iwl_dev_info_table, i32 0, i32 %i.0159.i, i32 11
  %101 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name, align 4
  %name71 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 35
  %103 = ptrtoint ptr %name71 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %name71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %iwl_pci_find_dev_info.exit.if.end72_crit_edge, %for.inc.i.if.end72_crit_edge
  %104 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hw_rev, align 8
  %106 = and i32 %105, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %106)
  %cmp76 = icmp eq i32 %106, 1056
  br i1 %cmp76, label %if.then78, label %if.end72.if.end80_crit_edge

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  %107 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @iwl_so_trans_cfg, ptr %trans_cfg, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end72.if.end80_crit_edge
  %cmp81 = icmp eq ptr %2, @iwl7265_2ac_cfg
  br i1 %cmp81, label %if.end80.land.lhs.true96_crit_edge, label %if.else84

if.end80.land.lhs.true96_crit_edge:               ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true96

if.else84:                                        ; preds = %if.end80
  %cmp85 = icmp eq ptr %2, @iwl7265_2n_cfg
  br i1 %cmp85, label %if.else84.land.lhs.true96_crit_edge, label %if.end94

if.else84.land.lhs.true96_crit_edge:              ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true96

if.end94:                                         ; preds = %if.else84
  %cmp89 = icmp eq ptr %2, @iwl7265_n_cfg
  br i1 %cmp89, label %if.end94.land.lhs.true96_crit_edge, label %if.end94.if.end103thread-pre-split_crit_edge

if.end94.if.end103thread-pre-split_crit_edge:     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103thread-pre-split

if.end94.land.lhs.true96_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true96

land.lhs.true96:                                  ; preds = %if.end94.land.lhs.true96_crit_edge, %if.else84.land.lhs.true96_crit_edge, %if.end80.land.lhs.true96_crit_edge
  %cfg_7265d.0337 = phi ptr [ @iwl7265d_n_cfg, %if.end94.land.lhs.true96_crit_edge ], [ @iwl7265d_2n_cfg, %if.else84.land.lhs.true96_crit_edge ], [ @iwl7265d_2ac_cfg, %if.end80.land.lhs.true96_crit_edge ]
  %108 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hw_rev, align 8
  %and98 = and i32 %109, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 528, i32 %and98)
  %cmp99 = icmp eq i32 %and98, 528
  br i1 %cmp99, label %if.then101, label %land.lhs.true96.if.end103_crit_edge

land.lhs.true96.if.end103_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

if.then101:                                       ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #6
  %cfg102 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 4
  %110 = ptrtoint ptr %cfg102 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %cfg_7265d.0337, ptr %cfg102, align 8
  br label %if.end103thread-pre-split

if.end103thread-pre-split:                        ; preds = %if.then101, %if.end94.if.end103thread-pre-split_crit_edge
  %111 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr = load i32, ptr %hw_rev, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.end103thread-pre-split, %land.lhs.true96.if.end103_crit_edge
  %112 = phi i32 [ %.pr, %if.end103thread-pre-split ], [ %109, %land.lhs.true96.if.end103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 818, i32 %112)
  %cmp105 = icmp eq i32 %112, 818
  br i1 %cmp105, label %if.then107, label %if.end103.if.end128_crit_edge

if.end103.if.end128_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128

if.then107:                                       ; preds = %if.end103
  %cfg108 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 4
  %113 = ptrtoint ptr %cfg108 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg108, align 8
  %cmp109 = icmp eq ptr %114, @iwl_ax201_cfg_qu_hr
  br i1 %cmp109, label %if.then107.if.end128.sink.split_crit_edge, label %if.else113

if.then107.if.end128.sink.split_crit_edge:        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128.sink.split

if.else113:                                       ; preds = %if.then107
  %cmp115 = icmp eq ptr %114, @killer1650s_2ax_cfg_qu_b0_hr_b0
  br i1 %cmp115, label %if.else113.if.end128.sink.split_crit_edge, label %if.else119

if.else113.if.end128.sink.split_crit_edge:        ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128.sink.split

if.else119:                                       ; preds = %if.else113
  %cmp121 = icmp eq ptr %114, @killer1650i_2ax_cfg_qu_b0_hr_b0
  br i1 %cmp121, label %if.else119.if.end128.sink.split_crit_edge, label %if.else119.if.end128_crit_edge

if.else119.if.end128_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128

if.else119.if.end128.sink.split_crit_edge:        ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128.sink.split

if.end128.sink.split:                             ; preds = %if.else119.if.end128.sink.split_crit_edge, %if.else113.if.end128.sink.split_crit_edge, %if.then107.if.end128.sink.split_crit_edge
  %iwl_ax201_cfg_qu_c0_hr_b0.sink = phi ptr [ @iwl_ax201_cfg_qu_c0_hr_b0, %if.then107.if.end128.sink.split_crit_edge ], [ @killer1650s_2ax_cfg_qu_c0_hr_b0, %if.else113.if.end128.sink.split_crit_edge ], [ @killer1650i_2ax_cfg_qu_c0_hr_b0, %if.else119.if.end128.sink.split_crit_edge ]
  %115 = ptrtoint ptr %cfg108 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %iwl_ax201_cfg_qu_c0_hr_b0.sink, ptr %cfg108, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.end128.sink.split, %if.else119.if.end128_crit_edge, %if.end103.if.end128_crit_edge
  %116 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hw_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 849, i32 %117)
  %cmp130 = icmp eq i32 %117, 849
  br i1 %cmp130, label %if.then132, label %if.end128.if.end153_crit_edge

if.end128.if.end153_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.then132:                                       ; preds = %if.end128
  %cfg133 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 4
  %118 = ptrtoint ptr %cfg133 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cfg133, align 8
  %cmp134 = icmp eq ptr %119, @iwl_ax201_cfg_qu_hr
  br i1 %cmp134, label %if.then132.if.end153.sink.split_crit_edge, label %if.else138

if.then132.if.end153.sink.split_crit_edge:        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153.sink.split

if.else138:                                       ; preds = %if.then132
  %cmp140 = icmp eq ptr %119, @killer1650s_2ax_cfg_qu_b0_hr_b0
  br i1 %cmp140, label %if.else138.if.end153.sink.split_crit_edge, label %if.else144

if.else138.if.end153.sink.split_crit_edge:        ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153.sink.split

if.else144:                                       ; preds = %if.else138
  %cmp146 = icmp eq ptr %119, @killer1650i_2ax_cfg_qu_b0_hr_b0
  br i1 %cmp146, label %if.else144.if.end153.sink.split_crit_edge, label %if.else144.if.end153_crit_edge

if.else144.if.end153_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153

if.else144.if.end153.sink.split_crit_edge:        ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end153.sink.split

if.end153.sink.split:                             ; preds = %if.else144.if.end153.sink.split_crit_edge, %if.else138.if.end153.sink.split_crit_edge, %if.then132.if.end153.sink.split_crit_edge
  %iwl_ax201_cfg_quz_hr.sink = phi ptr [ @iwl_ax201_cfg_quz_hr, %if.then132.if.end153.sink.split_crit_edge ], [ @iwl_ax1650s_cfg_quz_hr, %if.else138.if.end153.sink.split_crit_edge ], [ @iwl_ax1650i_cfg_quz_hr, %if.else144.if.end153.sink.split_crit_edge ]
  %120 = ptrtoint ptr %cfg133 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %iwl_ax201_cfg_quz_hr.sink, ptr %cfg133, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.end153.sink.split, %if.else144.if.end153_crit_edge, %if.end128.if.end153_crit_edge
  %cfg154 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 4
  %121 = ptrtoint ptr %cfg154 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg154, align 8
  %tobool155.not = icmp eq ptr %122, null
  br i1 %tobool155.not, label %if.then156, label %if.end153.if.end173_crit_edge

if.end153.if.end173_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end173

if.then156:                                       ; preds = %if.end153
  %123 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %driver_data, align 4
  %and158 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end171, label %do.end163

do.end163:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #6
  %125 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %device, align 2
  %conv165 = zext i16 %126 to i32
  %127 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %subsystem_device, align 2
  %conv167 = zext i16 %128 to i32
  %129 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %hw_rev, align 8
  %131 = ptrtoint ptr %hw_rf_id to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %hw_rf_id, align 8
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv165, i32 noundef %conv167, i32 noundef %130, i32 noundef %132) #7
  br label %out_free_trans

if.end171:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #6
  %133 = ptrtoint ptr %cfg154 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %2, ptr %cfg154, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.end171, %if.end153.if.end173_crit_edge
  %name174 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 35
  %134 = ptrtoint ptr %name174 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %name174, align 4
  %tobool175.not = icmp eq ptr %135, null
  br i1 %tobool175.not, label %if.then176, label %if.end173.if.end180_crit_edge

if.end173.if.end180_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.then176:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #6
  %136 = ptrtoint ptr %cfg154 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cfg154, align 8
  %name178 = getelementptr inbounds %struct.iwl_cfg, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %name178 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name178, align 8
  %140 = ptrtoint ptr %name174 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %name174, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %if.end173.if.end180_crit_edge
  %141 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %143)
  %bf.load182 = load i16, ptr %mq_rx_supported, align 4
  %144 = and i16 %bf.load182, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool185.not = icmp eq i16 %144, 0
  br i1 %tobool185.not, label %if.end180.if.end227_crit_edge, label %if.then186

if.end180.if.end227_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end227

if.then186:                                       ; preds = %if.end180
  %145 = ptrtoint ptr %cfg154 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg154, align 8
  %num_rbds = getelementptr inbounds %struct.iwl_cfg, ptr %146, i32 0, i32 29
  %147 = ptrtoint ptr %num_rbds to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %num_rbds, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool188.not = icmp eq i16 %148, 0
  br i1 %tobool188.not, label %do.end206, label %if.then186.if.end227_crit_edge, !prof !42

if.then186.if.end227_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end227

do.end206:                                        ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1607, i32 noundef 9, ptr noundef null) #4
  br label %out_free_trans

if.end227:                                        ; preds = %if.then186.if.end227_crit_edge, %if.end180.if.end227_crit_edge
  %.sink = phi i16 [ %148, %if.then186.if.end227_crit_edge ], [ 256, %if.end180.if.end227_crit_edge ]
  %num_rx_bufs226 = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 1, i32 36, i32 2, i32 233
  %149 = ptrtoint ptr %num_rx_bufs226 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %.sink, ptr %num_rx_bufs226, align 16
  %call228 = tail call i32 @iwl_trans_init(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end231, label %if.end227.out_free_trans_crit_edge

if.end227.out_free_trans_crit_edge:               ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_trans

if.end231:                                        ; preds = %if.end227
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %150 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call232 = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %call) #4
  %call233 = tail call ptr @iwl_drv_start(ptr noundef %call) #4
  %drv = getelementptr inbounds %struct.iwl_trans, ptr %call, i32 0, i32 5
  %151 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call233, ptr %drv, align 4
  %cmp.i330 = icmp ugt ptr %call233, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i330, label %if.then236, label %if.end239

if.then236:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #6
  %152 = ptrtoint ptr %call233 to i32
  br label %out_free_trans

if.end239:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @iwl_trans_pcie_dbgfs_register(ptr noundef %call) #4
  br label %cleanup

out_free_trans:                                   ; preds = %if.then236, %if.end227.out_free_trans_crit_edge, %do.end206, %do.end163, %sw.default.i, %get_crf_id.exit.thread, %if.end11.out_free_trans_crit_edge, %if.then7.out_free_trans_crit_edge
  %ret.0 = phi i32 [ -22, %do.end206 ], [ %call228, %if.end227.out_free_trans_crit_edge ], [ %152, %if.then236 ], [ -22, %do.end163 ], [ %call8, %if.then7.out_free_trans_crit_edge ], [ -5, %if.end11.out_free_trans_crit_edge ], [ -22, %get_crf_id.exit.thread ], [ -22, %sw.default.i ]
  tail call void @iwl_trans_pcie_free(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free_trans, %if.end239, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %ret.0, %out_free_trans ], [ 0, %if.end239 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 4
  tail call void @iwl_drv_stop(ptr noundef %3) #4
  tail call void @iwl_trans_pcie_free(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_trans_pcie_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_prepare_card_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_finish_nic_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_drv_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_dbgfs_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph_no_grab(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_no_grab(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_drv_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_pci_suspend(ptr nocapture noundef readnone %device) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_pci_resume(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %device, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 37
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 65, i8 noundef zeroext 0) #4
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_mode, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @iwl_pcie_conf_msix_hw(ptr noundef %trans_specific.i) #4
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %8, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_rfkill_int, ptr noundef nonnull @.str.10) #4
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 322
  %9 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msix_enabled.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 190
  %11 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %1, i32 noundef 12, i32 noundef 128) #4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 325
  %12 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %1, i32 noundef 10244, i32 noundef %13) #4
  tail call void @iwl_write32(ptr noundef %1, i32 noundef 10252, i32 noundef -129) #4
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 328
  %14 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %hw_mask.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp.i = icmp ugt i32 %18, 16
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.iwl_enable_rfkill_int.exit_crit_edge

if.end.i.iwl_enable_rfkill_int.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iwl_enable_rfkill_int.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 34
  %21 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864) #4
  br label %iwl_enable_rfkill_int.exit

iwl_enable_rfkill_int.exit:                       ; preds = %if.then5.i, %if.end.i.iwl_enable_rfkill_int.exit_crit_edge
  %call7 = tail call zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %1) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %iwl_enable_rfkill_int.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_conf_msix_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1727, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1729, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @iwl_pci_register_driver._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @iwl_pci_register_driver._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @iwl_pci_driver, !9, !"iwl_pci_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1716, i32 26}
!10 = !{ptr @iwl_hw_card_ids, !11, !"iwl_hw_card_ids", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 36, i32 35}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1593, i32 4}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @iwl_pci_probe._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @iwl_pci_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1326, i32 3}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1367, i32 3}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1377, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1380, i32 2}
!25 = !{ptr @iwl_dev_info_table, !26, !"iwl_dev_info_table", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 524, i32 34}
!27 = !{ptr @iwl_dev_pm_ops, !28, !"iwl_dev_pm_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/drv.c", i32 1703, i32 32}
!29 = !{ptr @__func__.iwl_enable_rfkill_int, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 700, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i8 0, i8 2}
