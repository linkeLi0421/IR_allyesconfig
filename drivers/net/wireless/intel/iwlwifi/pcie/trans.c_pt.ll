; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/pcie/trans.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/pcie/trans.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iwl_causes_list = type { i32, i32, i8 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_pcie = type { ptr, ptr, ptr, %struct.iwl_rb_allocator, %union.anon.134, ptr, ptr, ptr, i32, i32, i32, i32, ptr, [92 x i8], %struct.net_device, ptr, i32, i32, i8, i8, i8, i8, %struct.isr_statistics, %struct.spinlock, %struct.mutex, i32, i32, %struct.iwl_dma_ptr, %struct.iwl_dram_data, %struct.iwl_dram_data, ptr, ptr, ptr, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, [6 x i8], i16, i32, i8, i8, i32, i32, i32, %struct.spinlock, ptr, i32, %struct.spinlock, i8, %struct.cont_rec, [16 x %struct.msix_entry], i8, i8, i32, i32, i32, i32, i32, i32, [16 x %struct.cpumask], i16, i8, ptr, i32, i8, i32, %struct.wait_queue_head, [32 x i8], [104 x i8] }
%struct.iwl_rb_allocator = type { %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.134 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.isr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cont_rec = type { i32, i32, i8, %struct.mutex }
%struct.msix_entry = type { i32, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.135, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.135 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_dbg_dest_tlv_v1 = type <{ i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, [0 x %struct.iwl_fw_dbg_reg_op] }>
%struct.iwl_fw_dbg_reg_op = type { i8, [3 x i8], i32, i32 }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_trans_pcie_removal = type { ptr, %struct.work_struct }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.file = type { %union.anon.22, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iwl_rxq = type { i32, ptr, i32, %union.anon.133, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i8, i8, ptr, i32, %struct.spinlock, %struct.napi_struct, [256 x ptr] }
%union.anon.133 = type { ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.129, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.130, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.131, ptr, %struct.address_space, %struct.list_head, %union.anon.132, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.129 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.130 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.132 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.iwl_txq = type { ptr, ptr, i32, ptr, %struct.spinlock, i32, %struct.timer_list, ptr, i8, i8, i8, i32, i32, %struct.sk_buff_head, %struct.iwl_dma_ptr, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.iwl_trans_rxq_dma_data = type { i64, i32, i64, i64 }
%struct.iwl_trans_config = type { ptr, i8, i8, i32, ptr, i32, i32, i8, i8, ptr, i32, i8, i8 }
%struct.iwl_trans_dump_data = type { i32, [0 x i8] }
%struct.iwl_dump_sanitize_ops = type { ptr, ptr, ptr }
%struct.iwl_tfh_tfd = type { i16, [25 x %struct.iwl_tfh_tb], i32 }
%struct.iwl_tfh_tb = type <{ i16, i64 }>
%struct.iwl_tfd = type { [3 x i8], i8, [20 x %struct.iwl_tfd_tb], i32 }
%struct.iwl_tfd_tb = type <{ i32, i16 }>
%struct.iwl_fw_error_dump_txcmd = type { i32, i32, [0 x i8] }
%struct.iwl_pcie_txq_entry = type { ptr, ptr, ptr, %struct.iwl_cmd_meta }
%struct.iwl_cmd_meta = type { ptr, i32, i32 }
%struct.iwl_fw_error_dump_data = type { i32, i32, [0 x i8] }
%struct.iwl_rx_mem_buffer = type { i32, ptr, %struct.list_head, i32, i16, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.fw_desc = type { ptr, i32, i32 }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"iwlwifi transaction failed, dumping registers\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iwlwifi %s: \00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iwlwifi device config registers:\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"iwlwifi device memory mapped registers:\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iwlwifi device AER capability structure:\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"iwlwifi parent port (%s) config registers:\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iwlwifi root port (%s) AER cap structure:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Read failed at 0x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/trans.c\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"External buffer size for monitor is too big %d, check the FW TLV\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_apm_config = private unnamed_addr constant [20 x i8] c"iwl_pcie_apm_config\00", align 1
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"L1 %sabled - LTR %sabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Master Disable Timed Out, 100 usec\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_apm_stop_master = private unnamed_addr constant [25 x i8] c"iwl_pcie_apm_stop_master\00", align 1
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop master\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_prepare_card_hw = private unnamed_addr constant [25 x i8] c"iwl_pcie_prepare_card_hw\00", align 1
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iwl_trans_prepare_card_hw enter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't prepare the card\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Applying debug destination %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PCI should have external buffer debug\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"BIT(%u) in address 0x%x is 1, stopping FW configuration\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW debug - unknown OP %d\0A\00", [38 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reporting RF_KILL (radio %s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__iwl_trans_pcie_grab_nic_access.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Timeout waiting for hardware access (CSR_GP_CNTRL 0x%08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device gone - scheduling removal!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Module is being unloaded - abort\0A\00", [62 x i8] zeroinitializer }, align 32
@__iwl_trans_pcie_grab_nic_access.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&removal->work)\00", [62 x i8] zeroinitializer }, align 32
@iwl_pcie_dump_csr.csr_tbl = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 24, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 60, i32 72, i32 80, i32 84, i32 96, i32 148, i32 160, i32 256, i32 524, i32 552, i32 556, i32 576], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CSR values:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(2nd byte of CSR_INT_COALESCING is CSR_INT_PERIODIC_REG)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  %25s: 0X%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_queue\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rx_queue_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rx_queue_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_queue\00", [23 x i8] zeroinitializer }, align 32
@iwl_dbgfs_tx_queue_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @iwl_dbgfs_tx_queue_open, ptr null, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@iwl_dbgfs_interrupt_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_interrupt_read, ptr @iwl_dbgfs_interrupt_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csr\00", [28 x i8] zeroinitializer }, align 32
@iwl_dbgfs_csr_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @iwl_dbgfs_csr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fh_reg\00", [25 x i8] zeroinitializer }, align 32
@iwl_dbgfs_fh_reg_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_fh_reg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rfkill\00", [25 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rfkill_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rfkill_read, ptr @iwl_dbgfs_rfkill_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"monitor_data\00", [19 x i8] zeroinitializer }, align 32
@iwl_dbgfs_monitor_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @iwl_dbgfs_monitor_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @iwl_dbgfs_monitor_data_open, ptr null, ptr @iwl_dbgfs_monitor_data_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rf\00", [29 x i8] zeroinitializer }, align 32
@iwl_dbgfs_rf_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @iwl_dbgfs_rf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@trans_ops_pcie_gen2 = internal constant { %struct.iwl_trans_ops, [60 x i8] } { %struct.iwl_trans_ops { ptr @iwl_trans_pcie_start_hw, ptr @iwl_trans_pcie_op_mode_leave, ptr @iwl_trans_pcie_gen2_start_fw, ptr @iwl_trans_pcie_gen2_fw_alive, ptr @iwl_trans_pcie_gen2_stop_device, ptr @iwl_trans_pcie_d3_suspend, ptr @iwl_trans_pcie_d3_resume, ptr @iwl_pcie_gen2_enqueue_hcmd, ptr @iwl_txq_gen2_tx, ptr @iwl_txq_reclaim, ptr @iwl_txq_set_q_ptrs, ptr null, ptr null, ptr @iwl_txq_dyn_alloc, ptr @iwl_txq_dyn_free, ptr @iwl_trans_pcie_rxq_dma_data, ptr null, ptr null, ptr @iwl_trans_pcie_wait_txq_empty, ptr null, ptr null, ptr @iwl_trans_pcie_write8, ptr @iwl_trans_pcie_write32, ptr @iwl_trans_pcie_read32, ptr @iwl_trans_pcie_read_prph, ptr @iwl_trans_pcie_write_prph, ptr @iwl_trans_pcie_read_mem, ptr @iwl_trans_pcie_write_mem, ptr @iwl_trans_pcie_read_config32, ptr @iwl_trans_pcie_configure, ptr @iwl_trans_pcie_set_pmi, ptr @iwl_trans_pcie_sw_reset, ptr @iwl_trans_pcie_grab_nic_access, ptr @iwl_trans_pcie_release_nic_access, ptr @iwl_trans_pcie_set_bits_mask, ptr @iwl_trans_pcie_dump_data, ptr @iwl_trans_pcie_debugfs_cleanup, ptr @iwl_trans_pcie_sync_nmi, ptr @iwl_trans_pcie_ctx_info_gen3_set_pnvm, ptr @iwl_trans_pcie_ctx_info_gen3_set_reduce_power, ptr @iwl_trans_pci_interrupts }, [60 x i8] zeroinitializer }, align 32
@trans_ops_pcie = internal constant { %struct.iwl_trans_ops, [60 x i8] } { %struct.iwl_trans_ops { ptr @iwl_trans_pcie_start_hw, ptr @iwl_trans_pcie_op_mode_leave, ptr @iwl_trans_pcie_start_fw, ptr @iwl_trans_pcie_fw_alive, ptr @iwl_trans_pcie_stop_device, ptr @iwl_trans_pcie_d3_suspend, ptr @iwl_trans_pcie_d3_resume, ptr @iwl_pcie_enqueue_hcmd, ptr @iwl_trans_pcie_tx, ptr @iwl_txq_reclaim, ptr null, ptr @iwl_trans_pcie_txq_enable, ptr @iwl_trans_pcie_txq_disable, ptr null, ptr null, ptr null, ptr @iwl_trans_pcie_txq_set_shared_mode, ptr @iwl_trans_pcie_wait_txqs_empty, ptr null, ptr @iwl_trans_txq_freeze_timer, ptr @iwl_trans_pcie_block_txq_ptrs, ptr @iwl_trans_pcie_write8, ptr @iwl_trans_pcie_write32, ptr @iwl_trans_pcie_read32, ptr @iwl_trans_pcie_read_prph, ptr @iwl_trans_pcie_write_prph, ptr @iwl_trans_pcie_read_mem, ptr @iwl_trans_pcie_write_mem, ptr @iwl_trans_pcie_read_config32, ptr @iwl_trans_pcie_configure, ptr @iwl_trans_pcie_set_pmi, ptr @iwl_trans_pcie_sw_reset, ptr @iwl_trans_pcie_grab_nic_access, ptr @iwl_trans_pcie_release_nic_access, ptr @iwl_trans_pcie_set_bits_mask, ptr @iwl_trans_pcie_dump_data, ptr @iwl_trans_pcie_debugfs_cleanup, ptr @iwl_trans_pcie_sync_nmi, ptr null, ptr null, ptr @iwl_trans_pci_interrupts }, [60 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&trans_pcie->irq_lock\00", [42 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&trans_pcie->reg_lock\00", [42 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&trans_pcie->alloc_page_lock\00", [35 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&trans_pcie->mutex\00", [45 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&trans_pcie->ucode_write_waitq\00", [33 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&trans_pcie->fw_reset_waitq\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rb_allocator\00", [19 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&trans_pcie->rba.rx_alloc)\00", [51 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.9, i32 3588, ptr @.str.3, ptr @.str.58 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No suitable DMA available\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iwl_trans_pcie_alloc\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc._entry_ptr = internal global ptr @iwl_trans_pcie_alloc._entry, section ".printk_index", align 4
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iwlwifi\00", [24 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.9, i32 3595, ptr @.str.3, ptr @.str.58 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pcim_iomap_regions_request_all failed\0A\00", [57 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc._entry_ptr.62 = internal global ptr @iwl_trans_pcie_alloc._entry.60, section ".printk_index", align 4
@iwl_trans_pcie_alloc._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.9, i32 3601, ptr @.str.3, ptr @.str.58 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcim_iomap_table failed\0A\00", [39 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc._entry_ptr.65 = internal global ptr @iwl_trans_pcie_alloc._entry.63, section ".printk_index", align 4
@iwl_trans_pcie_alloc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.9, i32 3608, ptr @.str.3, ptr @.str.58 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"couldn't find IO mem in first BAR\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc._entry_ptr.68 = internal global ptr @iwl_trans_pcie_alloc._entry.66, section ".printk_index", align 4
@iwl_trans_pcie_alloc._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.9, i32 3622, ptr @.str.3, ptr @.str.58 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HW_REV=0xFFFFFFFF, PCI issues?\0A\00", [32 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc._entry_ptr.71 = internal global ptr @iwl_trans_pcie_alloc._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HW REV: 0x%0x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCI ID: 0x%04X:0x%04X\00", [42 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&trans_pcie->sx_waitq\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error allocating IRQ %d\0A\00", [39 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_alloc.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&trans_pcie->fw_mon_data.mutex\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Allocated 0x%08x bytes for firmware monitor.\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_pcie_alloc_fw_monitor_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Sorry - debug buffer is only %luK while you requested %luK\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_set_hw_ready = private unnamed_addr constant [22 x i8] c"iwl_pcie_set_hw_ready\00", align 1
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hardware%s ready\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__func__.iwl_pcie_apply_destination_ini = private unnamed_addr constant [31 x i8] c"iwl_pcie_apply_destination_ini\00", align 1
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WRT: Applying SMEM buffer destination\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WRT: Applying DRAM destination (alloc_id=%u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMEM\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EXTERNAL_DRAM\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MARBH\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIPI\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", [45 x i8] zeroinitializer }, align 32
@causes_list_common = internal constant { [14 x %struct.iwl_causes_list], [56 x i8] } { [14 x %struct.iwl_causes_list] [%struct.iwl_causes_list { i32 65536, i32 10244, i8 0 }, %struct.iwl_causes_list { i32 131072, i32 10244, i8 1 }, %struct.iwl_causes_list { i32 524288, i32 10244, i8 3 }, %struct.iwl_causes_list { i32 2097152, i32 10244, i8 5 }, %struct.iwl_causes_list { i32 1, i32 10252, i8 16 }, %struct.iwl_causes_list { i32 2, i32 10252, i8 17 }, %struct.iwl_causes_list { i32 4, i32 10252, i8 18 }, %struct.iwl_causes_list { i32 64, i32 10252, i8 22 }, %struct.iwl_causes_list { i32 128, i32 10252, i8 23 }, %struct.iwl_causes_list { i32 256, i32 10252, i8 24 }, %struct.iwl_causes_list { i32 67108864, i32 10252, i8 42 }, %struct.iwl_causes_list { i32 134217728, i32 10252, i8 43 }, %struct.iwl_causes_list { i32 536870912, i32 10252, i8 45 }, %struct.iwl_causes_list { i32 1073741824, i32 10252, i8 46 }], [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", [47 x i8] zeroinitializer }, align 32
@__func__._iwl_trans_pcie_stop_device = private unnamed_addr constant [28 x i8] c"_iwl_trans_pcie_stop_device\00", align 1
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DEVICE_ENABLED bit was set and is now cleared\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_apm_stop = private unnamed_addr constant [18 x i8] c"iwl_pcie_apm_stop\00", align 1
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Stop card, put in low power state\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_apm_init = private unnamed_addr constant [18 x i8] c"iwl_pcie_apm_init\00", align 1
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Init card's basic functions\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"iwl_pcie_apm_lp_xtal_enable: failed to retake NIC ownership\0A\00", [35 x i8] zeroinitializer }, align 32
@__iwl_trans_pcie_set_bits_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_enable_rfkill_int = private unnamed_addr constant [22 x i8] c"iwl_enable_rfkill_int\00", align 1
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabling rfkill interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__._iwl_disable_interrupts = private unnamed_addr constant [24 x i8] c"_iwl_disable_interrupts\00", align 1
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disabled interrupts\0A\00", [43 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_removal_wk.prop = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.99, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EVENT=INACCESSIBLE\00", [45 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_removal_wk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.9, i32 2053, ptr @.str.3, ptr @.str.58 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device gone - attempting removal\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iwl_trans_pcie_removal_wk\00", [38 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_removal_wk._entry_ptr = internal global ptr @iwl_trans_pcie_removal_wk._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CSR_HW_IF_CONFIG_REG\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CSR_INT_COALESCING\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CSR_INT\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CSR_INT_MASK\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CSR_FH_INT_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CSR_GPIO_IN\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CSR_RESET\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CSR_GP_CNTRL\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CSR_HW_REV\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CSR_EEPROM_REG\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CSR_EEPROM_GP\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CSR_OTP_GP_REG\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CSR_GIO_REG\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CSR_GP_UCODE_REG\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CSR_GP_DRIVER_REG\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CSR_UCODE_DRV_GP1\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CSR_UCODE_DRV_GP2\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CSR_LED_REG\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CSR_DRAM_INT_TBL_REG\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CSR_GIO_CHICKEN_BITS\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CSR_ANA_PLL_CFG\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CSR_HW_REV_WA_REG\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CSR_MONITOR_STATUS_REG\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CSR_DBG_HPET_MEM_REG\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"queue#: %2d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09read: %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09write: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09write_actual: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09need_update: %2d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09free_count: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09closed_rb_num: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09closed_rb_num: Not Allocated\0A\00", [33 x i8] zeroinitializer }, align 32
@iwl_dbgfs_tx_queue_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @iwl_dbgfs_tx_queue_seq_start, ptr @iwl_dbgfs_tx_queue_seq_stop, ptr @iwl_dbgfs_tx_queue_seq_next, ptr @iwl_dbgfs_tx_queue_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hwq %.3u: used=%d stopped=%d \00", [34 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"read=%u write=%u need_update=%d frozen=%d n_window=%d ampdu=%d\00", [33 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(unallocated)\00", [18 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (HCMD)\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Interrupt Statistics Report:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW Error:\09\09\09 %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SW Error:\09\09\09 %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09Last Restarting Code:  0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Frame transmitted:\09\09 %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Alive interrupt:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HW RF KILL switch toggled:\09 %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CT KILL:\09\09\09 %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Wakeup Interrupt:\09\09 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Rx command responses:\09\09 %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tx/FH interrupt:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unexpected INTA:\09\09 %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debug: %d\0Ahw: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"changing debug rfkill %d->%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"write pointer passed previous write pointer, start copying from the beginning\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"monitor data is out of sync, start copying from the beginning\0A\00", [33 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Debug destination is not set to DRAM\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error while preparing HW: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error, can not clear persistence bit\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Timeout %s D3\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"entering\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"exiting\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to resume the device (RX reset)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_pcie_d3_resume = private unnamed_addr constant [25 x i8] c"iwl_trans_pcie_d3_resume\00", align 1
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WFPM value upon resume = 0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__._iwl_enable_interrupts = private unnamed_addr constant [23 x i8] c"_iwl_enable_interrupts\00", align 1
@.str.166 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling interrupts\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.iwl_trans_pcie_wait_txq_empty = private unnamed_addr constant [30 x i8] c"iwl_trans_pcie_wait_txq_empty\00", align 1
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Emptying queue %d...\0A\00", [42 x i8] zeroinitializer }, align 32
@iwl_trans_pcie_wait_txq_empty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.168 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WR pointer moved while flushing %d -> %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fail to flush all tx fifo queues Q %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Queue %d is now empty.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Exit HW not ready\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Can't start_fw since the HW hasn't been started\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to init nic\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_nic_init = private unnamed_addr constant [18 x i8] c"iwl_pcie_nic_init\00", align 1
@.str.175 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Enabling shadow registers in device\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_enable_fw_load_int = private unnamed_addr constant [23 x i8] c"iwl_enable_fw_load_int\00", align 1
@.str.176 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling FW load interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_load_given_ucode_8000 = private unnamed_addr constant [31 x i8] c"iwl_pcie_load_given_ucode_8000\00", align 1
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"working with %s CPU\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Dual\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Single\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Original WFPM value = 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_load_cpu_sections_8000 = private unnamed_addr constant [32 x i8] c"iwl_pcie_load_cpu_sections_8000\00", align 1
@.str.181 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Break since Data not valid or Empty section, sec = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_load_section = private unnamed_addr constant [22 x i8] c"iwl_pcie_load_section\00", align 1
@.str.182 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] uCode section being loaded...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Falling back to small chunks of DMA\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not load the [%d] uCode section\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to load firmware chunk!\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_pcie_load_given_ucode = private unnamed_addr constant [26 x i8] c"iwl_pcie_load_given_ucode\00", align 1
@__func__.iwl_pcie_load_cpu_sections = private unnamed_addr constant [27 x i8] c"iwl_pcie_load_cpu_sections\00", align 1
@iwl_trans_pcie_block_txq_ptrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_pcie_set_interrupt_capa = private unnamed_addr constant [28 x i8] c"iwl_pcie_set_interrupt_capa\00", align 1
@.str.186 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to enable msi-x mode (ret %d). Moving to msi mode.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MSI-X enabled. %d interrupt vectors were allocated\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MSI-X enabled with rx queues %d, vec mask 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@iwl_pcie_set_interrupt_capa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @__func__.iwl_pcie_set_interrupt_capa, ptr @.str.9, i32 1695, ptr @.str.3, ptr @.str.58 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_enable_msi failed - %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iwl_pcie_set_interrupt_capa._entry_ptr = internal global ptr @iwl_pcie_set_interrupt_capa._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.190 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iwlwifi:shared_IRQ\00", [45 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iwlwifi:queue_%d\00", [47 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iwlwifi:default_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iwlwifi:exception\00", [46 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.194 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set affinity mask for IRQ %d\0A\00", [56 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.iwl_pcie_apply_destination = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], [16 x i8] zeroinitializer }, align 32
@switch.table.iwl_trans_pcie_configure = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4096, i32 8192, i32 16384, i32 2048], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.196 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9]
@__sancov_gen_cov_switch_values.197 = internal global [26 x i64] [i64 24, i64 32, i64 0, i64 4, i64 8, i64 12, i64 16, i64 24, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 60, i64 72, i64 80, i64 84, i64 96, i64 148, i64 160, i64 256, i64 524, i64 552, i64 556, i64 576]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 18]
@__sancov_gen_cov_switch_values.199 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 2863315899, i64 4294954188]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 2863315899, i64 4294954188]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 2863315899, i64 4294954188]
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 66, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 69, i32 18 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 70, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 74, i32 17 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 76, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 83, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 98, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 111, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 124, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 211, i32 6 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 272, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 488, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 490, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 605, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 648, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 927, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 933, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 960, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 967, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1468, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2117, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2129, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2138, i32 5 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2155, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [8 x i8] c"csr_tbl\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2460, i32 19 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2486, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2487, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2490, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2984, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_rx_queue_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2960, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2985, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [23 x i8] c"iwl_dbgfs_tx_queue_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2965, i32 37 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2986, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [24 x i8] c"iwl_dbgfs_interrupt_ops\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2958, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2987, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [18 x i8] c"iwl_dbgfs_csr_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2961, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2988, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [21 x i8] c"iwl_dbgfs_fh_reg_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2959, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2989, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [21 x i8] c"iwl_dbgfs_rfkill_ops\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2962, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2990, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [27 x i8] c"iwl_dbgfs_monitor_data_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2973, i32 37 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2991, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"iwl_dbgfs_rf_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2963, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c"trans_ops_pcie_gen2\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3499, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant [15 x i8] c"trans_ops_pcie\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3473, i32 35 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3550, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3551, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3552, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3553, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3554, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3555, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3557, i32 45 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3563, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3588, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3593, i32 53 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3595, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3601, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3608, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3622, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3638, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3643, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3645, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3662, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 3669, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 182, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 192, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 594, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 891, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 906, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 246, i32 10 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 248, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 250, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 252, i32 10 }
@___asan_gen_.496 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/img.h\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 254, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 728, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [19 x i8] c"causes_list_common\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1093, i32 37 }
@___asan_gen_.505 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 172, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1251, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 495, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 286, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 422, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 700, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 537, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2051, i32 15 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2051, i32 25 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2053, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2427, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2428, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2429, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2430, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2431, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2432, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2433, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2434, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2435, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2436, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2437, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2438, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2439, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2440, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2441, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2442, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2443, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2444, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2445, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2446, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2447, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2448, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2449, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2450, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2638, i32 44 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2640, i32 44 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2642, i32 44 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2644, i32 44 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2646, i32 44 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2648, i32 44 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2654, i32 7 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2658, i32 7 }
@___asan_gen_.636 = private unnamed_addr constant [27 x i8] c"iwl_dbgfs_tx_queue_seq_ops\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2595, i32 36 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2575, i32 18 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2581, i32 7 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2586, i32 17 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2589, i32 17 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2590, i32 16 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2685, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2687, i32 43 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2689, i32 43 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2693, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2697, i32 43 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2699, i32 43 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2703, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2705, i32 43 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2708, i32 43 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2712, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2714, i32 43 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2717, i32 43 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2782, i32 36 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2804, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2923, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2927, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 230, i32 6 }
@___asan_gen_.706 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.706, i32 214, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 174, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2820, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1825, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1784, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1536, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1607, i32 4 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1613, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 587, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2341, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2362, i32 7 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2377, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 2383, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 332, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1331, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1360, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1376, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 569, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 634, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1032, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1038, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 797, i32 4 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 719, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 725, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 757, i32 4 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 703, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1653, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1660, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1682, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1695, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 681, i32 11 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 684, i32 11 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 687, i32 10 }
@___asan_gen_.820 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.820, i32 690, i32 10 }
@___asan_gen_.823 = private constant [51 x i8] c"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.823, i32 1723, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.826 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.826, i32 108, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [40 x i8] c"switch.table.iwl_pcie_apply_destination\00", align 1
@___asan_gen_.829 = private unnamed_addr constant [38 x i8] c"switch.table.iwl_trans_pcie_configure\00", align 1
@llvm.compiler.used = appending global [217 x ptr] [ptr @iwl_pcie_set_interrupt_capa._entry, ptr @iwl_pcie_set_interrupt_capa._entry_ptr, ptr @iwl_trans_pcie_alloc._entry, ptr @iwl_trans_pcie_alloc._entry.60, ptr @iwl_trans_pcie_alloc._entry.63, ptr @iwl_trans_pcie_alloc._entry.66, ptr @iwl_trans_pcie_alloc._entry.69, ptr @iwl_trans_pcie_alloc._entry_ptr, ptr @iwl_trans_pcie_alloc._entry_ptr.62, ptr @iwl_trans_pcie_alloc._entry_ptr.65, ptr @iwl_trans_pcie_alloc._entry_ptr.68, ptr @iwl_trans_pcie_alloc._entry_ptr.71, ptr @iwl_trans_pcie_removal_wk._entry, ptr @iwl_trans_pcie_removal_wk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @iwl_pcie_dump_csr.csr_tbl, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @iwl_dbgfs_rx_queue_ops, ptr @.str.35, ptr @iwl_dbgfs_tx_queue_ops, ptr @.str.36, ptr @iwl_dbgfs_interrupt_ops, ptr @.str.37, ptr @iwl_dbgfs_csr_ops, ptr @.str.38, ptr @iwl_dbgfs_fh_reg_ops, ptr @.str.39, ptr @iwl_dbgfs_rfkill_ops, ptr @.str.40, ptr @iwl_dbgfs_monitor_data_ops, ptr @.str.41, ptr @iwl_dbgfs_rf_ops, ptr @trans_ops_pcie_gen2, ptr @trans_ops_pcie, ptr @iwl_trans_pcie_alloc.__key, ptr @.str.42, ptr @iwl_trans_pcie_alloc.__key.43, ptr @.str.44, ptr @iwl_trans_pcie_alloc.__key.45, ptr @.str.46, ptr @iwl_trans_pcie_alloc.__key.47, ptr @.str.48, ptr @iwl_trans_pcie_alloc.__key.49, ptr @.str.50, ptr @iwl_trans_pcie_alloc.__key.51, ptr @.str.52, ptr @.str.53, ptr @iwl_trans_pcie_alloc.__key.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @iwl_trans_pcie_alloc.__key.74, ptr @.str.75, ptr @.str.76, ptr @iwl_trans_pcie_alloc.__key.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @causes_list_common, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @iwl_trans_pcie_removal_wk.prop, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @iwl_dbgfs_tx_queue_seq_ops, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @switch.table.iwl_pcie_apply_destination, ptr @switch.table.iwl_trans_pcie_configure], section "llvm.metadata"
@0 = internal global [210 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pcie_dump_csr.csr_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rx_queue_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_tx_queue_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_interrupt_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_csr_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_fh_reg_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rfkill_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_monitor_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_rf_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_ops_pcie_gen2 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_ops_pcie to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_alloc.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @causes_list_common to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_removal_wk.prop to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_trans_pcie_removal_wk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_tx_queue_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_pcie_set_interrupt_capa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_pcie_apply_destination to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_trans_pcie_configure to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_dump_regs(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %pci_dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %pcie_dbg_dumped_once = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 43
  %2 = ptrtoint ptr %pcie_dbg_dumped_once to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcie_dbg_dumped_once, align 1, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %cond.end17, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end17:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 556) #15
  %tobool20.not = icmp eq ptr %call7.i, null
  br i1 %tobool20.not, label %cond.end17.cleanup_crit_edge, label %if.end22

cond.end17.cleanup_crit_edge:                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %cond.end17
  %add.ptr23 = getelementptr i8, ptr %call7.i, i32 524
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end22.pci_name.exit_crit_edge

if.end22.pci_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end22.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end22.pci_name.exit_crit_edge ]
  %call31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr23, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i)
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.2) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %pci_name.exit
  %i.0285 = phi i32 [ 0, %pci_name.exit ], [ %add, %for.inc.for.body_crit_edge ]
  %ptr.0284 = phi ptr [ %call7.i, %pci_name.exit ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call40 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %i.0285, ptr noundef %ptr.0284) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.inc, label %for.body.err_read_crit_edge

for.body.err_read_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc:                                          ; preds = %for.body
  %add = add nuw nsw i32 %i.0285, 4
  %incdec.ptr = getelementptr i32, ptr %ptr.0284, i32 1
  %cmp39 = icmp ult i32 %i.0285, 348
  br i1 %cmp39, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %add.ptr23, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %call7.i, i32 noundef 352, i1 noundef zeroext false) #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.4) #12
  %call54 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 0) #12
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call54, ptr %call7.i, align 8
  %incdec.ptr57 = getelementptr i32, ptr %call7.i, i32 1
  %call54.1 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 4) #12
  %16 = ptrtoint ptr %incdec.ptr57 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call54.1, ptr %incdec.ptr57, align 4
  %incdec.ptr57.1 = getelementptr i32, ptr %call7.i, i32 2
  %call54.2 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 8) #12
  %17 = ptrtoint ptr %incdec.ptr57.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call54.2, ptr %incdec.ptr57.1, align 8
  %incdec.ptr57.2 = getelementptr i32, ptr %call7.i, i32 3
  %call54.3 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 12) #12
  %18 = ptrtoint ptr %incdec.ptr57.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call54.3, ptr %incdec.ptr57.2, align 4
  %incdec.ptr57.3 = getelementptr i32, ptr %call7.i, i32 4
  %call54.4 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 16) #12
  %19 = ptrtoint ptr %incdec.ptr57.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call54.4, ptr %incdec.ptr57.3, align 8
  %incdec.ptr57.4 = getelementptr i32, ptr %call7.i, i32 5
  %call54.5 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 20) #12
  %20 = ptrtoint ptr %incdec.ptr57.4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call54.5, ptr %incdec.ptr57.4, align 4
  %incdec.ptr57.5 = getelementptr i32, ptr %call7.i, i32 6
  %call54.6 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 24) #12
  %21 = ptrtoint ptr %incdec.ptr57.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call54.6, ptr %incdec.ptr57.5, align 8
  %incdec.ptr57.6 = getelementptr i32, ptr %call7.i, i32 7
  %call54.7 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 28) #12
  %22 = ptrtoint ptr %incdec.ptr57.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call54.7, ptr %incdec.ptr57.6, align 4
  %incdec.ptr57.7 = getelementptr i32, ptr %call7.i, i32 8
  %call54.8 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 32) #12
  %23 = ptrtoint ptr %incdec.ptr57.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call54.8, ptr %incdec.ptr57.7, align 8
  %incdec.ptr57.8 = getelementptr i32, ptr %call7.i, i32 9
  %call54.9 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %24 = ptrtoint ptr %incdec.ptr57.8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call54.9, ptr %incdec.ptr57.8, align 4
  %incdec.ptr57.9 = getelementptr i32, ptr %call7.i, i32 10
  %call54.10 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 40) #12
  %25 = ptrtoint ptr %incdec.ptr57.9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call54.10, ptr %incdec.ptr57.9, align 8
  %incdec.ptr57.10 = getelementptr i32, ptr %call7.i, i32 11
  %call54.11 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 44) #12
  %26 = ptrtoint ptr %incdec.ptr57.10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call54.11, ptr %incdec.ptr57.10, align 4
  %incdec.ptr57.11 = getelementptr i32, ptr %call7.i, i32 12
  %call54.12 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 48) #12
  %27 = ptrtoint ptr %incdec.ptr57.11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call54.12, ptr %incdec.ptr57.11, align 8
  %incdec.ptr57.12 = getelementptr i32, ptr %call7.i, i32 13
  %call54.13 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 52) #12
  %28 = ptrtoint ptr %incdec.ptr57.12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call54.13, ptr %incdec.ptr57.12, align 4
  %incdec.ptr57.13 = getelementptr i32, ptr %call7.i, i32 14
  %call54.14 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 56) #12
  %29 = ptrtoint ptr %incdec.ptr57.13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call54.14, ptr %incdec.ptr57.13, align 8
  %incdec.ptr57.14 = getelementptr i32, ptr %call7.i, i32 15
  %call54.15 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 60) #12
  %30 = ptrtoint ptr %incdec.ptr57.14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call54.15, ptr %incdec.ptr57.14, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %add.ptr23, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %call7.i, i32 noundef 64, i1 noundef zeroext false) #12
  %call59 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 1) #12
  %conv = zext i16 %call59 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call59)
  %tobool60.not = icmp eq i16 %call59, 0
  br i1 %tobool60.not, label %for.end.if.end82_crit_edge, label %do.end65

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

do.end65:                                         ; preds = %for.end
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @.str.5) #12
  %call74 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %conv, ptr noundef %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %for.inc78, label %do.end65.err_read_crit_edge

do.end65.err_read_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78:                                        ; preds = %do.end65
  %add73.1 = add nuw nsw i32 %conv, 4
  %call74.1 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.1, ptr noundef %incdec.ptr57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.1)
  %tobool75.not.1 = icmp eq i32 %call74.1, 0
  br i1 %tobool75.not.1, label %for.inc78.1, label %for.inc78.err_read_crit_edge

for.inc78.err_read_crit_edge:                     ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.1:                                      ; preds = %for.inc78
  %add73.2 = add nuw nsw i32 %conv, 8
  %call74.2 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.2, ptr noundef %incdec.ptr57.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.2)
  %tobool75.not.2 = icmp eq i32 %call74.2, 0
  br i1 %tobool75.not.2, label %for.inc78.2, label %for.inc78.1.err_read_crit_edge

for.inc78.1.err_read_crit_edge:                   ; preds = %for.inc78.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.2:                                      ; preds = %for.inc78.1
  %add73.3 = add nuw nsw i32 %conv, 12
  %call74.3 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.3, ptr noundef %incdec.ptr57.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.3)
  %tobool75.not.3 = icmp eq i32 %call74.3, 0
  br i1 %tobool75.not.3, label %for.inc78.3, label %for.inc78.2.err_read_crit_edge

for.inc78.2.err_read_crit_edge:                   ; preds = %for.inc78.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.3:                                      ; preds = %for.inc78.2
  %add73.4 = add nuw nsw i32 %conv, 16
  %call74.4 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.4, ptr noundef %incdec.ptr57.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.4)
  %tobool75.not.4 = icmp eq i32 %call74.4, 0
  br i1 %tobool75.not.4, label %for.inc78.4, label %for.inc78.3.err_read_crit_edge

for.inc78.3.err_read_crit_edge:                   ; preds = %for.inc78.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.4:                                      ; preds = %for.inc78.3
  %add73.5 = add nuw nsw i32 %conv, 20
  %call74.5 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.5, ptr noundef %incdec.ptr57.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.5)
  %tobool75.not.5 = icmp eq i32 %call74.5, 0
  br i1 %tobool75.not.5, label %for.inc78.5, label %for.inc78.4.err_read_crit_edge

for.inc78.4.err_read_crit_edge:                   ; preds = %for.inc78.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.5:                                      ; preds = %for.inc78.4
  %add73.6 = add nuw nsw i32 %conv, 24
  %call74.6 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.6, ptr noundef %incdec.ptr57.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.6)
  %tobool75.not.6 = icmp eq i32 %call74.6, 0
  br i1 %tobool75.not.6, label %for.inc78.6, label %for.inc78.5.err_read_crit_edge

for.inc78.5.err_read_crit_edge:                   ; preds = %for.inc78.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.6:                                      ; preds = %for.inc78.5
  %add73.7 = add nuw nsw i32 %conv, 28
  %call74.7 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.7, ptr noundef %incdec.ptr57.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.7)
  %tobool75.not.7 = icmp eq i32 %call74.7, 0
  br i1 %tobool75.not.7, label %for.inc78.7, label %for.inc78.6.err_read_crit_edge

for.inc78.6.err_read_crit_edge:                   ; preds = %for.inc78.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.7:                                      ; preds = %for.inc78.6
  %add73.8 = add nuw nsw i32 %conv, 32
  %call74.8 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.8, ptr noundef %incdec.ptr57.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.8)
  %tobool75.not.8 = icmp eq i32 %call74.8, 0
  br i1 %tobool75.not.8, label %for.inc78.8, label %for.inc78.7.err_read_crit_edge

for.inc78.7.err_read_crit_edge:                   ; preds = %for.inc78.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.8:                                      ; preds = %for.inc78.7
  %add73.9 = add nuw nsw i32 %conv, 36
  %call74.9 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.9, ptr noundef %incdec.ptr57.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.9)
  %tobool75.not.9 = icmp eq i32 %call74.9, 0
  br i1 %tobool75.not.9, label %for.inc78.9, label %for.inc78.8.err_read_crit_edge

for.inc78.8.err_read_crit_edge:                   ; preds = %for.inc78.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.9:                                      ; preds = %for.inc78.8
  %add73.10 = add nuw nsw i32 %conv, 40
  %call74.10 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add73.10, ptr noundef %incdec.ptr57.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.10)
  %tobool75.not.10 = icmp eq i32 %call74.10, 0
  br i1 %tobool75.not.10, label %for.inc78.10, label %for.inc78.9.err_read_crit_edge

for.inc78.9.err_read_crit_edge:                   ; preds = %for.inc78.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc78.10:                                     ; preds = %for.inc78.9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %add.ptr23, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %call7.i, i32 noundef 44, i1 noundef zeroext false) #12
  br label %if.end82

if.end82:                                         ; preds = %for.inc78.10, %for.end.if.end82_crit_edge
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %self, align 4
  %tobool83.not = icmp eq ptr %36, null
  br i1 %tobool83.not, label %if.end82.out_crit_edge, label %if.end85

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end85:                                         ; preds = %if.end82
  %init_name.i.i245 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i245 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i245, align 8
  %tobool.not.i.i246 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i246, label %if.end.i.i248, label %if.end85.pci_name.exit250_crit_edge

if.end85.pci_name.exit250_crit_edge:              ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit250

if.end.i.i248:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i247 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %39 = ptrtoint ptr %dev.i247 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i247, align 4
  br label %pci_name.exit250

pci_name.exit250:                                 ; preds = %if.end.i.i248, %if.end85.pci_name.exit250_crit_edge
  %retval.0.i.i249 = phi ptr [ %40, %if.end.i.i248 ], [ %38, %if.end85.pci_name.exit250_crit_edge ]
  %call89 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr23, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i249)
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %43 = ptrtoint ptr %init_name.i.i245 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i245, align 8
  %tobool.not.i.i252 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i252, label %if.end.i.i254, label %pci_name.exit250.pci_name.exit256_crit_edge

pci_name.exit250.pci_name.exit256_crit_edge:      ; preds = %pci_name.exit250
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit256

if.end.i.i254:                                    ; preds = %pci_name.exit250
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i253 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %45 = ptrtoint ptr %dev.i253 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i253, align 4
  br label %pci_name.exit256

pci_name.exit256:                                 ; preds = %if.end.i.i254, %pci_name.exit250.pci_name.exit256_crit_edge
  %retval.0.i.i255 = phi ptr [ %46, %if.end.i.i254 ], [ %44, %pci_name.exit250.pci_name.exit256_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i255) #12
  br label %for.body101

for.body101:                                      ; preds = %for.inc106.for.body101_crit_edge, %pci_name.exit256
  %i.3291 = phi i32 [ 0, %pci_name.exit256 ], [ %add107, %for.inc106.for.body101_crit_edge ]
  %ptr.3290 = phi ptr [ %call7.i, %pci_name.exit256 ], [ %incdec.ptr108, %for.inc106.for.body101_crit_edge ]
  %call102 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %36, i32 noundef %i.3291, ptr noundef %ptr.3290) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %for.inc106, label %for.body101.err_read_crit_edge

for.body101.err_read_crit_edge:                   ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc106:                                       ; preds = %for.body101
  %add107 = add nuw nsw i32 %i.3291, 4
  %incdec.ptr108 = getelementptr i32, ptr %ptr.3290, i32 1
  %cmp99 = icmp ult i32 %i.3291, 520
  br i1 %cmp99, label %for.inc106.for.body101_crit_edge, label %for.end109

for.inc106.for.body101_crit_edge:                 ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body101

for.end109:                                       ; preds = %for.inc106
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %add.ptr23, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %call7.i, i32 noundef 524, i1 noundef zeroext false) #12
  br label %while.body.i

while.body.i:                                     ; preds = %pci_upstream_bridge.exit.i.while.body.i_crit_edge, %for.end109
  %dev.addr.08.i = phi ptr [ %62, %pci_upstream_bridge.exit.i.while.body.i_crit_edge ], [ %36, %for.end109 ]
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 19
  %47 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i.not.i = icmp eq i8 %48, 0
  br i1 %tobool.i.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %pcie_flags_reg.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 25
  %49 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %51 = and i16 %50, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %51)
  %cmp.i = icmp eq i16 %51, 64
  br i1 %cmp.i, label %pcie_find_root_port.exit, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 49
  %52 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %53 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %53, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.pci_physfn.exit.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 66
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %if.end.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %56, %if.then.i.i.i ], [ %dev.addr.08.i, %if.end.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.out_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.out_crit_edge:                ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %58, i32 0, i32 4
  %61 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %self.i.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %pci_upstream_bridge.exit.i.out_crit_edge, label %pci_upstream_bridge.exit.i.while.body.i_crit_edge

pci_upstream_bridge.exit.i.while.body.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

pci_upstream_bridge.exit.i.out_crit_edge:         ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

pcie_find_root_port.exit:                         ; preds = %land.lhs.true.i
  %tobool111.not = icmp eq ptr %dev.addr.08.i, null
  br i1 %tobool111.not, label %pcie_find_root_port.exit.out_crit_edge, label %if.end115

pcie_find_root_port.exit.out_crit_edge:           ; preds = %pcie_find_root_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end115:                                        ; preds = %pcie_find_root_port.exit
  %call113 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %dev.addr.08.i, i32 noundef 1) #12
  %conv114 = zext i16 %call113 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call113)
  %tobool116.not = icmp eq i16 %call113, 0
  br i1 %tobool116.not, label %if.end115.out_crit_edge, label %do.end121

if.end115.out_crit_edge:                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end121:                                        ; preds = %if.end115
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %init_name.i.i257 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 44, i32 3
  %65 = ptrtoint ptr %init_name.i.i257 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i257, align 8
  %tobool.not.i.i258 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i258, label %if.end.i.i260, label %do.end121.pci_name.exit262_crit_edge

do.end121.pci_name.exit262_crit_edge:             ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit262

if.end.i.i260:                                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i259 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 44
  %67 = ptrtoint ptr %dev.i259 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i259, align 4
  br label %pci_name.exit262

pci_name.exit262:                                 ; preds = %if.end.i.i260, %do.end121.pci_name.exit262_crit_edge
  %retval.0.i.i261 = phi ptr [ %68, %if.end.i.i260 ], [ %66, %do.end121.pci_name.exit262_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %64, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i261) #12
  %69 = ptrtoint ptr %init_name.i.i257 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i257, align 8
  %tobool.not.i.i264 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i264, label %if.end.i.i266, label %pci_name.exit262.pci_name.exit268_crit_edge

pci_name.exit262.pci_name.exit268_crit_edge:      ; preds = %pci_name.exit262
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit268

if.end.i.i266:                                    ; preds = %pci_name.exit262
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i265 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i, i32 0, i32 44
  %71 = ptrtoint ptr %dev.i265 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i265, align 4
  br label %pci_name.exit268

pci_name.exit268:                                 ; preds = %if.end.i.i266, %pci_name.exit262.pci_name.exit268_crit_edge
  %retval.0.i.i267 = phi ptr [ %72, %if.end.i.i266 ], [ %70, %pci_name.exit262.pci_name.exit268_crit_edge ]
  %call127 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr23, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i267)
  %call133 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %conv114, ptr noundef %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %for.inc137, label %pci_name.exit268.err_read_crit_edge

pci_name.exit268.err_read_crit_edge:              ; preds = %pci_name.exit268
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137:                                       ; preds = %pci_name.exit268
  %add132.1 = add nuw nsw i32 %conv114, 4
  %call133.1 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.1, ptr noundef %incdec.ptr57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.1)
  %tobool134.not.1 = icmp eq i32 %call133.1, 0
  br i1 %tobool134.not.1, label %for.inc137.1, label %for.inc137.err_read_crit_edge

for.inc137.err_read_crit_edge:                    ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.1:                                     ; preds = %for.inc137
  %add132.2 = add nuw nsw i32 %conv114, 8
  %call133.2 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.2, ptr noundef %incdec.ptr57.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.2)
  %tobool134.not.2 = icmp eq i32 %call133.2, 0
  br i1 %tobool134.not.2, label %for.inc137.2, label %for.inc137.1.err_read_crit_edge

for.inc137.1.err_read_crit_edge:                  ; preds = %for.inc137.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.2:                                     ; preds = %for.inc137.1
  %add132.3 = add nuw nsw i32 %conv114, 12
  %call133.3 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.3, ptr noundef %incdec.ptr57.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.3)
  %tobool134.not.3 = icmp eq i32 %call133.3, 0
  br i1 %tobool134.not.3, label %for.inc137.3, label %for.inc137.2.err_read_crit_edge

for.inc137.2.err_read_crit_edge:                  ; preds = %for.inc137.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.3:                                     ; preds = %for.inc137.2
  %add132.4 = add nuw nsw i32 %conv114, 16
  %call133.4 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.4, ptr noundef %incdec.ptr57.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.4)
  %tobool134.not.4 = icmp eq i32 %call133.4, 0
  br i1 %tobool134.not.4, label %for.inc137.4, label %for.inc137.3.err_read_crit_edge

for.inc137.3.err_read_crit_edge:                  ; preds = %for.inc137.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.4:                                     ; preds = %for.inc137.3
  %add132.5 = add nuw nsw i32 %conv114, 20
  %call133.5 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.5, ptr noundef %incdec.ptr57.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.5)
  %tobool134.not.5 = icmp eq i32 %call133.5, 0
  br i1 %tobool134.not.5, label %for.inc137.5, label %for.inc137.4.err_read_crit_edge

for.inc137.4.err_read_crit_edge:                  ; preds = %for.inc137.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.5:                                     ; preds = %for.inc137.4
  %add132.6 = add nuw nsw i32 %conv114, 24
  %call133.6 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.6, ptr noundef %incdec.ptr57.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.6)
  %tobool134.not.6 = icmp eq i32 %call133.6, 0
  br i1 %tobool134.not.6, label %for.inc137.6, label %for.inc137.5.err_read_crit_edge

for.inc137.5.err_read_crit_edge:                  ; preds = %for.inc137.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.6:                                     ; preds = %for.inc137.5
  %add132.7 = add nuw nsw i32 %conv114, 28
  %call133.7 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.7, ptr noundef %incdec.ptr57.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.7)
  %tobool134.not.7 = icmp eq i32 %call133.7, 0
  br i1 %tobool134.not.7, label %for.inc137.7, label %for.inc137.6.err_read_crit_edge

for.inc137.6.err_read_crit_edge:                  ; preds = %for.inc137.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.7:                                     ; preds = %for.inc137.6
  %add132.8 = add nuw nsw i32 %conv114, 32
  %call133.8 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.8, ptr noundef %incdec.ptr57.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.8)
  %tobool134.not.8 = icmp eq i32 %call133.8, 0
  br i1 %tobool134.not.8, label %for.inc137.8, label %for.inc137.7.err_read_crit_edge

for.inc137.7.err_read_crit_edge:                  ; preds = %for.inc137.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.8:                                     ; preds = %for.inc137.7
  %add132.9 = add nuw nsw i32 %conv114, 36
  %call133.9 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.9, ptr noundef %incdec.ptr57.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.9)
  %tobool134.not.9 = icmp eq i32 %call133.9, 0
  br i1 %tobool134.not.9, label %for.inc137.9, label %for.inc137.8.err_read_crit_edge

for.inc137.8.err_read_crit_edge:                  ; preds = %for.inc137.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.9:                                     ; preds = %for.inc137.8
  %add132.10 = add nuw nsw i32 %conv114, 40
  %call133.10 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.10, ptr noundef %incdec.ptr57.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.10)
  %tobool134.not.10 = icmp eq i32 %call133.10, 0
  br i1 %tobool134.not.10, label %for.inc137.10, label %for.inc137.9.err_read_crit_edge

for.inc137.9.err_read_crit_edge:                  ; preds = %for.inc137.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.10:                                    ; preds = %for.inc137.9
  %add132.11 = add nuw nsw i32 %conv114, 44
  %call133.11 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.11, ptr noundef %incdec.ptr57.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.11)
  %tobool134.not.11 = icmp eq i32 %call133.11, 0
  br i1 %tobool134.not.11, label %for.inc137.11, label %for.inc137.10.err_read_crit_edge

for.inc137.10.err_read_crit_edge:                 ; preds = %for.inc137.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.11:                                    ; preds = %for.inc137.10
  %add132.12 = add nuw nsw i32 %conv114, 48
  %call133.12 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.12, ptr noundef %incdec.ptr57.11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.12)
  %tobool134.not.12 = icmp eq i32 %call133.12, 0
  br i1 %tobool134.not.12, label %for.inc137.12, label %for.inc137.11.err_read_crit_edge

for.inc137.11.err_read_crit_edge:                 ; preds = %for.inc137.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.12:                                    ; preds = %for.inc137.11
  %add132.13 = add nuw nsw i32 %conv114, 52
  %call133.13 = tail call i32 @pci_read_config_dword(ptr noundef nonnull %dev.addr.08.i, i32 noundef %add132.13, ptr noundef %incdec.ptr57.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.13)
  %tobool134.not.13 = icmp eq i32 %call133.13, 0
  br i1 %tobool134.not.13, label %for.inc137.13, label %for.inc137.12.err_read_crit_edge

for.inc137.12.err_read_crit_edge:                 ; preds = %for.inc137.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_read

for.inc137.13:                                    ; preds = %for.inc137.12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %add.ptr23, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %call7.i, i32 noundef 56, i1 noundef zeroext false) #12
  br label %out

err_read:                                         ; preds = %for.inc137.12.err_read_crit_edge, %for.inc137.11.err_read_crit_edge, %for.inc137.10.err_read_crit_edge, %for.inc137.9.err_read_crit_edge, %for.inc137.8.err_read_crit_edge, %for.inc137.7.err_read_crit_edge, %for.inc137.6.err_read_crit_edge, %for.inc137.5.err_read_crit_edge, %for.inc137.4.err_read_crit_edge, %for.inc137.3.err_read_crit_edge, %for.inc137.2.err_read_crit_edge, %for.inc137.1.err_read_crit_edge, %for.inc137.err_read_crit_edge, %pci_name.exit268.err_read_crit_edge, %for.body101.err_read_crit_edge, %for.inc78.9.err_read_crit_edge, %for.inc78.8.err_read_crit_edge, %for.inc78.7.err_read_crit_edge, %for.inc78.6.err_read_crit_edge, %for.inc78.5.err_read_crit_edge, %for.inc78.4.err_read_crit_edge, %for.inc78.3.err_read_crit_edge, %for.inc78.2.err_read_crit_edge, %for.inc78.1.err_read_crit_edge, %for.inc78.err_read_crit_edge, %do.end65.err_read_crit_edge, %for.body.err_read_crit_edge
  %i.5 = phi i32 [ 0, %pci_name.exit268.err_read_crit_edge ], [ 4, %for.inc137.err_read_crit_edge ], [ 8, %for.inc137.1.err_read_crit_edge ], [ 12, %for.inc137.2.err_read_crit_edge ], [ 16, %for.inc137.3.err_read_crit_edge ], [ 20, %for.inc137.4.err_read_crit_edge ], [ 24, %for.inc137.5.err_read_crit_edge ], [ 28, %for.inc137.6.err_read_crit_edge ], [ 32, %for.inc137.7.err_read_crit_edge ], [ 36, %for.inc137.8.err_read_crit_edge ], [ 40, %for.inc137.9.err_read_crit_edge ], [ 44, %for.inc137.10.err_read_crit_edge ], [ 48, %for.inc137.11.err_read_crit_edge ], [ 52, %for.inc137.12.err_read_crit_edge ], [ 0, %do.end65.err_read_crit_edge ], [ 4, %for.inc78.err_read_crit_edge ], [ 8, %for.inc78.1.err_read_crit_edge ], [ 12, %for.inc78.2.err_read_crit_edge ], [ 16, %for.inc78.3.err_read_crit_edge ], [ 20, %for.inc78.4.err_read_crit_edge ], [ 24, %for.inc78.5.err_read_crit_edge ], [ 28, %for.inc78.6.err_read_crit_edge ], [ 32, %for.inc78.7.err_read_crit_edge ], [ 36, %for.inc78.8.err_read_crit_edge ], [ 40, %for.inc78.9.err_read_crit_edge ], [ %i.3291, %for.body101.err_read_crit_edge ], [ %i.0285, %for.body.err_read_crit_edge ]
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef %add.ptr23, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef nonnull %call7.i, i32 noundef %i.5, i1 noundef zeroext false) #12
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %74, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %i.5) #12
  br label %out

out:                                              ; preds = %err_read, %for.inc137.13, %if.end115.out_crit_edge, %pcie_find_root_port.exit.out_crit_edge, %pci_upstream_bridge.exit.i.out_crit_edge, %pci_physfn.exit.i.i.out_crit_edge, %if.end82.out_crit_edge
  %75 = ptrtoint ptr %pcie_dbg_dumped_once to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %pcie_dbg_dumped_once, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %cond.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_alloc_fw_monitor(ptr nocapture noundef %trans, i8 noundef zeroext %max_power) local_unnamed_addr #0 align 64 {
entry:
  %physical.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %max_power)
  %tobool.not = icmp eq i8 %max_power, 0
  %add = add i8 %max_power, 11
  %max_power.addr.0 = select i1 %tobool.not, i8 26, i8 %add
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %max_power.addr.0)
  %cmp = icmp ugt i8 %max_power.addr.0, 26
  br i1 %cmp, label %do.end, label %if.end28.critedge, !prof !445

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv2 = zext i8 %max_power.addr.0 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 213, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %conv2) #12
  br label %return

if.end28.critedge:                                ; preds = %entry
  %size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool29.not = icmp eq i32 %1, 0
  br i1 %tobool29.not, label %for.cond.preheader.i, label %if.end28.critedge.return_crit_edge

if.end28.critedge.return_crit_edge:               ; preds = %if.end28.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.cond.preheader.i:                             ; preds = %if.end28.critedge
  %fw_mon1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %physical.i) #12
  %2 = ptrtoint ptr %physical.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %physical.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %max_power.addr.0)
  %cmp9.i = icmp ugt i8 %max_power.addr.0, 10
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.land.rhs.i_crit_edge

for.cond.preheader.i.land.rhs.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %3 = zext i8 %max_power.addr.0 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ %3, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %power.010.i = phi i8 [ %max_power.addr.0, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %shl.i, ptr noundef nonnull %physical.i, i32 noundef 11456, i32 noundef 256) #12
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %for.inc.i, label %if.end58.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add i8 %power.010.i, -1
  %cmp.i = icmp ugt i8 %dec.i, 10
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.cond.preheader.i.land.rhs.i_crit_edge
  %.b1.i = load i1, ptr @iwl_pcie_alloc_fw_monitor_block.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.iwl_pcie_alloc_fw_monitor_block.exit_crit_edge, label %if.then23.i, !prof !446

land.rhs.i.iwl_pcie_alloc_fw_monitor_block.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_alloc_fw_monitor_block.exit

if.then23.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iwl_pcie_alloc_fw_monitor_block.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 188, i32 noundef 9, ptr noundef null) #12
  br label %iwl_pcie_alloc_fw_monitor_block.exit

if.end58.i:                                       ; preds = %for.body.i
  %6 = trunc i32 %indvars.iv.i to i8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %8, ptr noundef nonnull @.str.79, i32 noundef %shl.i) #12
  call void @__sanitizer_cov_trace_cmp1(i8 %max_power.addr.0, i8 %6)
  %cmp61.not.i = icmp eq i8 %max_power.addr.0, %6
  br i1 %cmp61.not.i, label %if.end58.i.if.end76.i_crit_edge, label %do.end67.i

if.end58.i.if.end76.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

do.end67.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %sub.i = add nsw i32 %indvars.iv.i, -10
  %shl70.i = shl nuw i32 1, %sub.i
  %sub72.i = add nsw i32 %3, -10
  %shl73.i = shl nuw i32 1, %sub72.i
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.80, i32 noundef %shl70.i, i32 noundef %shl73.i) #12
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end67.i, %if.end58.i.if.end76.i_crit_edge
  %block77.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 1
  %11 = ptrtoint ptr %block77.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %block77.i, align 4
  %12 = ptrtoint ptr %physical.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %physical.i, align 4
  %14 = ptrtoint ptr %fw_mon1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fw_mon1.i, align 4
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl.i, ptr %size, align 4
  br label %iwl_pcie_alloc_fw_monitor_block.exit

iwl_pcie_alloc_fw_monitor_block.exit:             ; preds = %if.end76.i, %if.then23.i, %land.rhs.i.iwl_pcie_alloc_fw_monitor_block.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %physical.i) #12
  br label %return

return:                                           ; preds = %iwl_pcie_alloc_fw_monitor_block.exit, %if.end28.critedge.return_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_apm_config(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %lctl = alloca i16, align 2
  %cap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lctl) #12
  %0 = ptrtoint ptr %lctl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %lctl, align 2, !annotation !447
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #12
  %1 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %cap, align 2, !annotation !447
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef 60, i32 noundef 2, i32 noundef 2) #12
  %pci_dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  %call1 = call i32 @pcie_capability_read_word(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %lctl) #12
  %8 = ptrtoint ptr %lctl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lctl, align 2
  %pm_support = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 18
  %10 = trunc i16 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = ptrtoint ptr %pm_support to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %pm_support, align 2
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 4
  %call3 = call i32 @pcie_capability_read_word(ptr noundef %15, i32 noundef 40, ptr noundef nonnull %cap) #12
  %16 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cap, align 2
  %18 = and i16 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool6.not = icmp eq i16 %18, 0
  %ltr_enabled = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 19
  %.lobit = lshr exact i16 %18, 10
  %19 = trunc i16 %.lobit to i8
  %20 = ptrtoint ptr %ltr_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ltr_enabled, align 1
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = ptrtoint ptr %lctl to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %lctl, align 2
  %25 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool11.not = icmp eq i16 %25, 0
  %cond = select i1 %tobool11.not, ptr @.str.13, ptr @.str.12
  %cond15 = select i1 %tobool6.not, ptr @.str.13, ptr @.str.12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_apm_config, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond, ptr noundef nonnull %cond15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lctl) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_apm_stop_master(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %cmp = icmp ugt i32 %3, 19
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_bits_mask.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %trans, i32 noundef 36, i32 noundef 536870912, i32 noundef 536870912) #12
  %call = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 36, i32 noundef 268435456, i32 noundef 268435456, i32 noundef 100) #12
  tail call void @msleep(i32 noundef 100) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %trans, i32 noundef 32, i32 noundef 512, i32 noundef 512) #12
  %call1 = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 32, i32 noundef 256, i32 noundef 256, i32 noundef 100) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp2 = icmp slt i32 %ret.0, 0
  br i1 %cmp2, label %do.end, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %9, ptr noundef nonnull @.str.14) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.end.do.end11_crit_edge
  %dev12 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %10 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_apm_stop_master, ptr noundef nonnull @.str.15) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_poll_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_prepare_card_hw, ptr noundef nonnull @.str.16) #12
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef 0, i32 noundef 4194304, i32 noundef 4194304) #12
  %call.i = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 0, i32 noundef 4194304, i32 noundef 4194304, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.critedge

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i11.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %set_bits_mask.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_bits_mask.i.i11.i, align 4
  tail call void %9(ptr noundef %trans, i32 noundef 136, i32 noundef 32, i32 noundef 32) #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_set_hw_ready, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83) #12
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %trans, align 8
  br label %cleanup

if.end.critedge:                                  ; preds = %entry
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_set_hw_ready, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #12
  %15 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %16, i32 0, i32 34
  %17 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %18(ptr noundef %trans, i32 noundef 592, i32 noundef -2147483648, i32 noundef -2147483648) #12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  br label %for.body

for.body:                                         ; preds = %do.end34.for.body_crit_edge, %if.end.critedge
  %iter.078 = phi i32 [ 0, %if.end.critedge ], [ %inc, %do.end34.for.body_crit_edge ]
  %t.077 = phi i32 [ 0, %if.end.critedge ], [ %add, %do.end34.for.body_crit_edge ]
  %19 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i60 = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 34
  %21 = ptrtoint ptr %set_bits_mask.i.i60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_bits_mask.i.i60, align 4
  tail call void %22(ptr noundef %trans, i32 noundef 0, i32 noundef 134217728, i32 noundef 134217728) #12
  br label %do.body5

do.body5:                                         ; preds = %if.end10.critedge.do.body5_crit_edge, %for.body
  %t.1 = phi i32 [ %t.077, %for.body ], [ %add, %if.end10.critedge.do.body5_crit_edge ]
  %23 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i62 = getelementptr inbounds %struct.iwl_trans_ops, ptr %24, i32 0, i32 34
  %25 = ptrtoint ptr %set_bits_mask.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_bits_mask.i.i.i62, align 4
  tail call void %26(ptr noundef %trans, i32 noundef 0, i32 noundef 4194304, i32 noundef 4194304) #12
  %call.i63 = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 0, i32 noundef 4194304, i32 noundef 4194304, i32 noundef 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i63)
  %cmp.i64 = icmp sgt i32 %call.i63, -1
  br i1 %cmp.i64, label %if.then.i66, label %if.end10.critedge

if.then.i66:                                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i11.i65 = getelementptr inbounds %struct.iwl_trans_ops, ptr %28, i32 0, i32 34
  %29 = ptrtoint ptr %set_bits_mask.i.i11.i65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_bits_mask.i.i11.i65, align 4
  tail call void %30(ptr noundef %trans, i32 noundef 136, i32 noundef 32, i32 noundef 32) #12
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_set_hw_ready, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83) #12
  %33 = ptrtoint ptr %trans to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %trans, align 8
  br label %cleanup

if.end10.critedge:                                ; preds = %do.body5
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_set_hw_ready, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #12
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 1000, i32 noundef 2) #12
  %add = add i32 %t.1, 200
  %cmp33 = icmp slt i32 %add, 150000
  br i1 %cmp33, label %if.end10.critedge.do.body5_crit_edge, label %do.end34

if.end10.critedge.do.body5_crit_edge:             ; preds = %if.end10.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.end34:                                         ; preds = %if.end10.critedge
  tail call void @msleep(i32 noundef 25) #12
  %inc = add nuw nsw i32 %iter.078, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end38, label %do.end34.for.body_crit_edge

do.end34.for.body_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end38:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %37, i32 noundef 0, ptr noundef nonnull @.str.19) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.then.i66, %if.then.i
  %retval.0 = phi i32 [ 0, %if.then.i ], [ 0, %if.then.i66 ], [ %call.i63, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_apply_destination(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32
  %dest_tlv = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 2
  %0 = ptrtoint ptr %dest_tlv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dest_tlv, align 4
  %fw_mon2 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14
  %internal_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 10
  %2 = ptrtoint ptr %internal_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %internal_ini_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %iwl_trans_dbg_ini_valid.exit, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

iwl_trans_dbg_ini_valid.exit:                     ; preds = %entry
  %external_ini_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 11
  %4 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i.not = icmp eq i32 %5, 0
  br i1 %cmp2.i.not, label %do.end, label %iwl_trans_dbg_ini_valid.exit.i

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %iwl_trans_dbg_ini_valid.exit
  %6 = ptrtoint ptr %external_ini_cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %external_ini_cfg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 0
  br i1 %cmp2.i.not.i, label %iwl_trans_dbg_ini_valid.exit.i.cleanup86_crit_edge, label %iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge

iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

iwl_trans_dbg_ini_valid.exit.i.cleanup86_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup86

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %buf_location.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 12, i32 1, i32 2
  %8 = ptrtoint ptr %buf_location.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %buf_location.i, align 1
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.i.cleanup86_crit_edge [
    i32 16777216, label %do.end.i
    i32 33554432, label %lor.lhs.false.i
  ]

if.end.i.cleanup86_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup86

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_apply_destination_ini, ptr noundef nonnull @.str.84) #12
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %14, i32 0, i32 34
  %15 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %16(ptr noundef %trans, i32 noundef 0, i32 noundef 128, i32 noundef 128) #12
  br label %cleanup86

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx10.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 13, i32 1
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup86_crit_edge, label %if.end12.i

lor.lhs.false.i.cleanup86_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup86

if.end12.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %frags.i = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 13, i32 1, i32 1
  %19 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frags.i, align 4
  %dev21.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %21 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev21.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_apply_destination_ini, ptr noundef nonnull @.str.85, i32 noundef 1) #12
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %shr.i = lshr i32 %24, 8
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %25 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_cfg.i.i, align 4
  %umac_prph_offset.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %umac_prph_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %umac_prph_offset.i.i, align 4
  %add.i.i = add i32 %28, 10501148
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i.i, i32 noundef %shr.i, i32 noundef 0) #12
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %20, align 4
  %size.i = getelementptr inbounds %struct.iwl_dram_data, ptr %20, i32 0, i32 2
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 4
  %add.i = add i32 %30, -256
  %sub.i = add i32 %add.i, %32
  %shr25.i = lshr i32 %sub.i, 8
  %33 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trans_cfg.i.i, align 4
  %umac_prph_offset.i43.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %umac_prph_offset.i43.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %umac_prph_offset.i43.i, align 4
  %add.i44.i = add i32 %36, 10501152
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i44.i, i32 noundef %shr25.i, i32 noundef 0) #12
  br label %cleanup86

do.end:                                           ; preds = %iwl_trans_dbg_ini_valid.exit
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %monitor_mode = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %monitor_mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %monitor_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %40)
  %41 = icmp ult i8 %40, 4
  br i1 %41, label %switch.lookup, label %do.end.get_fw_dbg_mode_string.exit_crit_edge

do.end.get_fw_dbg_mode_string.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_fw_dbg_mode_string.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %42 = sext i8 %40 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_pcie_apply_destination, i32 0, i32 %42
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_fw_dbg_mode_string.exit

get_fw_dbg_mode_string.exit:                      ; preds = %switch.lookup, %do.end.get_fw_dbg_mode_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.90, %do.end.get_fw_dbg_mode_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %38, ptr noundef nonnull @.str.20, ptr noundef nonnull %retval.0.i) #12
  %44 = ptrtoint ptr %monitor_mode to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %monitor_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp = icmp eq i8 %45, 1
  br i1 %cmp, label %if.then10, label %do.end14

if.then10:                                        ; preds = %get_fw_dbg_mode_string.exit
  call void @__sanitizer_cov_trace_pc() #14
  %size_power = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %size_power to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %size_power, align 1
  tail call void @iwl_pcie_alloc_fw_monitor(ptr noundef %trans, i8 noundef zeroext %47)
  br label %if.end18

do.end14:                                         ; preds = %get_fw_dbg_mode_string.exit
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %49, ptr noundef nonnull @.str.21) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.then10
  %50 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dbg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp21153.not = icmp eq i8 %51, 0
  br i1 %cmp21153.not, label %if.end18.monitor_crit_edge, label %for.body.lr.ph

if.end18.monitor_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %monitor

for.body.lr.ph:                                   ; preds = %if.end18
  %ops.i.i148 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 10, i32 %i.0154
  %addr23 = getelementptr %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 10, i32 %i.0154, i32 2
  %52 = ptrtoint ptr %addr23 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %addr23, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %val26 = getelementptr %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 10, i32 %i.0154, i32 3
  %55 = ptrtoint ptr %val26 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %val26, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.196)
  switch i8 %59, label %do.end53 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb30
    i8 2, label %sw.bb31
    i8 3, label %sw.bb33
    i8 4, label %sw.bb34
    i8 5, label %sw.bb36
    i8 9, label %sw.bb38
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef %54, i32 noundef %57) #12
  br label %for.inc

sw.bb30:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw i32 1, %57
  %61 = ptrtoint ptr %ops.i.i148 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i.i148, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %62, i32 0, i32 34
  %63 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %64(ptr noundef %trans, i32 noundef %54, i32 noundef %shl, i32 noundef %shl) #12
  br label %for.inc

sw.bb31:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %shl32 = shl nuw i32 1, %57
  %65 = ptrtoint ptr %ops.i.i148 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i.i148, align 4
  %set_bits_mask.i.i149 = getelementptr inbounds %struct.iwl_trans_ops, ptr %66, i32 0, i32 34
  %67 = ptrtoint ptr %set_bits_mask.i.i149 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_bits_mask.i.i149, align 4
  tail call void %68(ptr noundef %trans, i32 noundef %54, i32 noundef %shl32, i32 noundef 0) #12
  br label %for.inc

sw.bb33:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %54, i32 noundef %57, i32 noundef 0) #12
  br label %for.inc

sw.bb34:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %shl35 = shl nuw i32 1, %57
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef %54, i32 noundef %shl35) #12
  br label %for.inc

sw.bb36:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %shl37 = shl nuw i32 1, %57
  tail call void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef %54, i32 noundef %shl37) #12
  br label %for.inc

sw.bb38:                                          ; preds = %for.body
  %call39 = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %54) #12
  %shl40 = shl nuw i32 1, %57
  %and = and i32 %call39, %shl40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb38.for.inc_crit_edge, label %cleanup

sw.bb38.for.inc_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end53:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv29 = zext i8 %59 to i32
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %conv29) #12
  br label %for.inc

cleanup:                                          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %72, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %57, i32 noundef %54) #12
  br label %monitor

for.inc:                                          ; preds = %do.end53, %sw.bb38.for.inc_crit_edge, %sw.bb36, %sw.bb34, %sw.bb33, %sw.bb31, %sw.bb30, %sw.bb
  %inc = add nuw nsw i32 %i.0154, 1
  %73 = ptrtoint ptr %dbg to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dbg, align 8
  %conv20 = zext i8 %74 to i32
  %cmp21 = icmp ult i32 %inc, %conv20
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.inc.monitor_crit_edge

for.inc.monitor_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %monitor

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

monitor:                                          ; preds = %for.inc.monitor_crit_edge, %cleanup, %if.end18.monitor_crit_edge
  %75 = ptrtoint ptr %monitor_mode to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %monitor_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp64 = icmp eq i8 %76, 1
  br i1 %cmp64, label %land.lhs.true, label %monitor.cleanup86_crit_edge

monitor.cleanup86_crit_edge:                      ; preds = %monitor
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup86

land.lhs.true:                                    ; preds = %monitor
  %size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 2
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool66.not = icmp eq i32 %78, 0
  br i1 %tobool66.not, label %land.lhs.true.cleanup86_crit_edge, label %if.then67

land.lhs.true.cleanup86_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup86

if.then67:                                        ; preds = %land.lhs.true
  %base_reg = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 4
  %79 = ptrtoint ptr %base_reg to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %base_reg, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %82 = ptrtoint ptr %fw_mon2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fw_mon2, align 4
  %base_shift = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 8
  %84 = ptrtoint ptr %base_shift to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %base_shift, align 1
  %conv68 = zext i8 %85 to i32
  %shr = lshr i32 %83, %conv68
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %81, i32 noundef %shr, i32 noundef 0) #12
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %86 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %89)
  %cmp69 = icmp ugt i32 %89, 15
  %end_reg = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 5
  %90 = ptrtoint ptr %end_reg to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %end_reg, align 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %93 = ptrtoint ptr %fw_mon2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fw_mon2, align 4
  %95 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size, align 4
  br i1 %cmp69, label %if.then71, label %if.else76

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %94, -256
  %sub = add i32 %add, %96
  %end_shift = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 9
  %97 = ptrtoint ptr %end_shift to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %end_shift, align 1
  %conv74 = zext i8 %98 to i32
  %shr75 = lshr i32 %sub, %conv74
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %92, i32 noundef %shr75, i32 noundef 0) #12
  br label %cleanup86

if.else76:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  %add80 = add i32 %96, %94
  %end_shift81 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %1, i32 0, i32 9
  %99 = ptrtoint ptr %end_shift81 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %end_shift81, align 1
  %conv82 = zext i8 %100 to i32
  %shr83 = lshr i32 %add80, %conv82
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %92, i32 noundef %shr83, i32 noundef 0) #12
  br label %cleanup86

cleanup86:                                        ; preds = %if.else76, %if.then71, %land.lhs.true.cleanup86_crit_edge, %monitor.cleanup86_crit_edge, %if.end12.i, %lor.lhs.false.i.cleanup86_crit_edge, %do.end.i, %if.end.i.cleanup86_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.cleanup86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_clear_bits_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 183
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !445

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 728, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %debug_rfkill.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 21
  %1 = ptrtoint ptr %debug_rfkill.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %debug_rfkill.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp25.i = icmp eq i8 %2, 1
  br i1 %cmp25.i, label %iwl_is_rfkill_set.exit.thread, label %iwl_is_rfkill_set.exit

iwl_is_rfkill_set.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %status37 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %3 = ptrtoint ptr %status37 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status37, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool40 = icmp eq i32 %5, 0
  br label %if.then

iwl_is_rfkill_set.exit:                           ; preds = %if.end.i
  %call29.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %and.i = and i32 %call29.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp eq i32 %8, 0
  br i1 %tobool30.not.i, label %iwl_is_rfkill_set.exit.if.then_crit_edge, label %if.else

iwl_is_rfkill_set.exit.if.then_crit_edge:         ; preds = %iwl_is_rfkill_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %iwl_is_rfkill_set.exit.if.then_crit_edge, %iwl_is_rfkill_set.exit.thread
  %tobool46 = phi i1 [ %tobool40, %iwl_is_rfkill_set.exit.thread ], [ %tobool, %iwl_is_rfkill_set.exit.if.then_crit_edge ]
  %status43 = phi ptr [ %status37, %iwl_is_rfkill_set.exit.thread ], [ %status, %iwl_is_rfkill_set.exit.if.then_crit_edge ]
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status43) #12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status43) #12
  br label %if.end11

if.else:                                          ; preds = %iwl_is_rfkill_set.exit
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %status) #12
  %opmode_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 20
  %9 = ptrtoint ptr %opmode_down to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %opmode_down, align 2, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %status) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %if.then
  %tobool45 = phi i1 [ %tobool, %if.else.if.end11_crit_edge ], [ %tobool, %if.then9 ], [ %tobool46, %if.then ]
  %status44 = phi ptr [ %status, %if.else.if.end11_crit_edge ], [ %status, %if.then9 ], [ %status43, %if.then ]
  %retval.0.i41 = phi i1 [ false, %if.else.if.end11_crit_edge ], [ false, %if.then9 ], [ true, %if.then ]
  %11 = ptrtoint ptr %status44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status44, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14 = icmp ne i32 %13, 0
  %cmp.not = xor i1 %tobool45, %tobool14
  br i1 %cmp.not, label %if.end11.if.end22_crit_edge, label %if.then20

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_trans_pcie_rf_kill(ptr noundef %trans, i1 noundef zeroext %tobool14)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end11.if.end22_crit_edge
  ret i1 %retval.0.i41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_rf_kill(ptr noundef %trans, i1 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 183
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !445

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1466, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %cond = select i1 %state, ptr @.str.25, ptr @.str.26
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond) #12
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %3 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_mode, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.92, i32 noundef 172) #12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %hw_rf_kill.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %hw_rf_kill.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_rf_kill.i, align 4
  %call.i46 = tail call zeroext i1 %8(ptr noundef %4, i1 noundef zeroext %state) #12
  br i1 %call.i46, label %if.then34, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then34:                                        ; preds = %if.end
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %9 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %gen2, align 4
  %12 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool35.not = icmp eq i16 %12, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_iwl_trans_pcie_gen2_stop_device(ptr noundef %trans) #12
  br label %if.end38

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @_iwl_trans_pcie_stop_device(ptr noundef %trans)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then36, %if.end.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_conf_msix_hw(ptr nocapture noundef readonly %trans_pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans1 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_pcie, i32 0, i32 12
  %0 = ptrtoint ptr %trans1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans1, align 32
  %msix_enabled = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_pcie, i32 0, i32 54
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enabled, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %7 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %status = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i = add i32 %12, 10509312
  tail call void @iwl_write_prph_delay(ptr noundef %1, i32 noundef %add.i, i32 noundef 16777216, i32 noundef 0) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %status6 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status6, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %trans_cfg.i20 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %trans_cfg.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg.i20, align 4
  %umac_prph_offset.i21 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %umac_prph_offset.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %umac_prph_offset.i21, align 4
  %add.i22 = add i32 %19, 10509312
  tail call void @iwl_write_prph_delay(ptr noundef %1, i32 noundef %add.i22, i32 noundef 33554432, i32 noundef 0) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %trans_specific.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 37
  %shared_vec_mask.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i.i, i32 0, i32 55
  %20 = ptrtoint ptr %shared_vec_mask.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shared_vec_mask.i, align 1
  %22 = shl i8 %21, 6
  %23 = ashr i8 %22, 7
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 25
  %24 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_rx_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp33.i = icmp ugt i8 %25, 1
  br i1 %cmp33.i, label %if.end10.for.body.i_crit_edge, label %if.end10.for.end.i_crit_edge

if.end10.for.end.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %idx.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end10.for.body.i_crit_edge ]
  %val.034.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end10.for.body.i_crit_edge ]
  %add.i23 = add nuw nsw i32 %idx.035.i, 10368
  %26 = trunc i32 %idx.035.i to i8
  %conv3.i = add i8 %23, %26
  tail call void @iwl_write8(ptr noundef %1, i32 noundef %add.i23, i8 noundef zeroext %conv3.i) #12
  %shl.i = shl nuw i32 1, %idx.035.i
  %or.i = or i32 %shl.i, %val.034.i
  %inc.i = add nuw nsw i32 %idx.035.i, 1
  %27 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_rx_queues.i, align 8
  %conv1.i = zext i8 %28 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv1.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo.i = xor i32 %or.i, -1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end10.for.end.i_crit_edge
  %val.0.lcssa.i = phi i32 [ -2, %if.end10.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  tail call void @iwl_write32(ptr noundef %1, i32 noundef 10244, i32 noundef %val.0.lcssa.i) #12
  %29 = ptrtoint ptr %shared_vec_mask.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %shared_vec_mask.i, align 1
  %31 = shl i8 %30, 7
  tail call void @iwl_write8(ptr noundef %1, i32 noundef 10368, i8 noundef zeroext %31) #12
  %32 = ptrtoint ptr %shared_vec_mask.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shared_vec_mask.i, align 1
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool13.not.i = icmp eq i8 %34, 0
  br i1 %tobool13.not.i, label %for.end.i.iwl_pcie_map_rx_causes.exit_crit_edge, label %if.then14.i

for.end.i.iwl_pcie_map_rx_causes.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_map_rx_causes.exit

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write8(ptr noundef %1, i32 noundef 10369, i8 noundef zeroext %31) #12
  br label %iwl_pcie_map_rx_causes.exit

iwl_pcie_map_rx_causes.exit:                      ; preds = %if.then14.i, %for.end.i.iwl_pcie_map_rx_causes.exit_crit_edge
  %def_irq.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 324
  %35 = ptrtoint ptr %def_irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %def_irq.i, align 4
  %37 = trunc i32 %36 to i8
  %conv1.i.i = or i8 %37, -128
  %ops.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %iwl_pcie_map_rx_causes.exit
  %i.012.i.i = phi i32 [ 0, %iwl_pcie_map_rx_causes.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.iwl_causes_list, ptr @causes_list_common, i32 %i.012.i.i
  %addr.i.i = getelementptr %struct.iwl_causes_list, ptr @causes_list_common, i32 %i.012.i.i, i32 2
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr.i.i, align 4
  %conv.i.i = zext i8 %39 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 10384
  tail call void @iwl_write8(ptr noundef %1, i32 noundef %add.i.i, i8 noundef zeroext %conv1.i.i) #12
  %mask_reg.i.i = getelementptr %struct.iwl_causes_list, ptr @causes_list_common, i32 %i.012.i.i, i32 1
  %40 = ptrtoint ptr %mask_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask_reg.i.i, align 4
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %44 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %45, i32 0, i32 34
  %46 = ptrtoint ptr %set_bits_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_bits_mask.i.i.i.i, align 4
  tail call void %47(ptr noundef %1, i32 noundef %41, i32 noundef %43, i32 noundef 0) #12
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 14
  br i1 %exitcond.not.i.i, label %iwl_pcie_map_non_rx_causes.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

iwl_pcie_map_non_rx_causes.exit:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %trans_cfg.i24 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %trans_cfg.i24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trans_cfg.i24, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %51)
  %cmp.i25 = icmp ugt i32 %51, 19
  tail call void @iwl_write8(ptr noundef %1, i32 noundef 10425, i8 noundef zeroext %conv1.i.i) #12
  %52 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i15.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %53, i32 0, i32 34
  %54 = ptrtoint ptr %set_bits_mask.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_bits_mask.i.i.i15.i, align 4
  %..i = select i1 %cmp.i25, i32 32, i32 33554432
  tail call void %55(ptr noundef %1, i32 noundef 10252, i32 noundef %..i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %iwl_pcie_map_non_rx_causes.exit, %if.then4, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_synchronize_irqs(ptr nocapture noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %msix_enabled = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %0 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_enabled, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %alloc_vecs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 323
  %2 = ptrtoint ptr %alloc_vecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 53, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @synchronize_irq(i32 noundef %5) #12
  %inc = add nuw i32 %i.07, 1
  %6 = ptrtoint ptr %alloc_vecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_vecs, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %11) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_handle_stop_rfkill(ptr noundef %trans, i1 noundef zeroext %was_in_rfkill) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 183
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !445

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 728, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %debug_rfkill.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i.i, i32 0, i32 21
  %1 = ptrtoint ptr %debug_rfkill.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %debug_rfkill.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp25.i = icmp eq i8 %2, 1
  br i1 %cmp25.i, label %if.end.i.if.end_crit_edge, label %iwl_is_rfkill_set.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

iwl_is_rfkill_set.exit:                           ; preds = %if.end.i
  %call29.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %and.i = and i32 %call29.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %iwl_is_rfkill_set.exit.if.end_crit_edge, label %if.else

iwl_is_rfkill_set.exit.if.end_crit_edge:          ; preds = %iwl_is_rfkill_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %iwl_is_rfkill_set.exit
  %status3 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %status3) #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %status3) #12
  br i1 %was_in_rfkill, label %if.else.if.then9_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else.if.then9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end:                                           ; preds = %iwl_is_rfkill_set.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status) #12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status) #12
  br i1 %was_in_rfkill, label %if.end.if.end11_crit_edge, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.else.if.then9_crit_edge
  %retval.0.i2022 = phi i1 [ false, %if.else.if.then9_crit_edge ], [ true, %if.end.if.then9_crit_edge ]
  tail call void @iwl_trans_pcie_rf_kill(ptr noundef %trans, i1 noundef zeroext %retval.0.i2022)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge, %if.else.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_trans_pcie_gen2_stop_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_iwl_trans_pcie_stop_device(ptr noundef %trans) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 183
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !445

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1230, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %is_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 19
  %1 = ptrtoint ptr %is_down to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_down, align 1, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool25.not = icmp eq i8 %2, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %3 = ptrtoint ptr %is_down to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_down, align 1
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  tail call void @iwl_pcie_disable_ict(ptr noundef %trans) #12
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %call29 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.if.end43_crit_edge, label %do.end35

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end35:                                         ; preds = %if.end27
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_trans_pcie_stop_device, ptr noundef nonnull @.str.93) #12
  %call38 = tail call i32 @iwl_pcie_tx_stop(ptr noundef %trans) #12
  %call39 = tail call i32 @iwl_pcie_rx_stop(ptr noundef %trans) #12
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 8
  %apmg_not_supported = getelementptr inbounds %struct.iwl_cfg, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %apmg_not_supported to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load = load i24, ptr %apmg_not_supported, align 4
  %9 = and i24 %bf.load, 32
  %tobool40.not = icmp eq i24 %9, 0
  br i1 %tobool40.not, label %if.then41, label %do.end35.if.end43_crit_edge

do.end35.if.end43_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 12296, i32 noundef 512, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.end35.if.end43_crit_edge, %if.end27.if.end43_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %11 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %14)
  %cmp44 = icmp ugt i32 %14, 19
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %16, i32 0, i32 34
  %17 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_bits_mask.i.i, align 4
  %. = select i1 %cmp44, i32 2097152, i32 8
  tail call void %18(ptr noundef %trans, i32 noundef 36, i32 noundef %., i32 noundef 0) #12
  tail call fastcc void @iwl_pcie_apm_stop(ptr noundef %trans, i1 noundef zeroext false)
  %19 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trans_cfg, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %22)
  %cmp.i = icmp ugt i32 %22, 19
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %24, i32 0, i32 34
  %25 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %26(ptr noundef %trans, i32 noundef 36, i32 noundef -2147483648, i32 noundef -2147483648) #12
  br label %iwl_trans_pcie_sw_reset.exit

if.else.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %26(ptr noundef %trans, i32 noundef 32, i32 noundef 128, i32 noundef 128) #12
  br label %iwl_trans_pcie_sw_reset.exit

iwl_trans_pcie_sw_reset.exit:                     ; preds = %if.else.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %call.i75 = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) #12
  tail call void @iwl_pcie_conf_msix_hw(ptr noundef %trans_specific.i)
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status) #12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status) #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_rfkill_int, ptr noundef nonnull @.str.97) #12
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %29 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then.i76, label %if.else.i77

if.then.i76:                                      ; preds = %iwl_trans_pcie_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %31 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 128) #12
  br label %if.end.i

if.else.i77:                                      ; preds = %iwl_trans_pcie_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %32 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %33) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -129) #12
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %34 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 128, ptr %hw_mask.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i77, %if.then.i76
  %35 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg, align 4
  %device_family.i79 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %device_family.i79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device_family.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %38)
  %cmp.i80 = icmp ugt i32 %38, 16
  br i1 %cmp.i80, label %if.then5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i82 = getelementptr inbounds %struct.iwl_trans_ops, ptr %40, i32 0, i32 34
  %41 = ptrtoint ptr %set_bits_mask.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_bits_mask.i.i.i82, align 4
  tail call void %42(ptr noundef %trans, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_d3_complete_suspend(ptr noundef %trans, i1 noundef zeroext %test, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  br i1 %test, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  tail call void @iwl_pcie_disable_ict(ptr noundef %trans) #12
  %trans_specific.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %0 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %alloc_vecs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 323
  %2 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc_vecs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i.i, i32 0, i32 53, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  tail call void @synchronize_irq(i32 noundef %5) #12
  %inc.i = add nuw i32 %i.07.i, 1
  %6 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_vecs.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge

for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %11) #12
  br label %iwl_pcie_synchronize_irqs.exit

iwl_pcie_synchronize_irqs.exit:                   ; preds = %if.else.i, %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge, %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %15(ptr noundef %trans, i32 noundef 36, i32 noundef 8, i32 noundef 0) #12
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i12 = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 34
  %18 = ptrtoint ptr %set_bits_mask.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_bits_mask.i.i12, align 4
  tail call void %19(ptr noundef %trans, i32 noundef 36, i32 noundef 4, i32 noundef 0) #12
  br i1 %reset, label %if.then3, label %iwl_pcie_synchronize_irqs.exit.if.end4_crit_edge

iwl_pcie_synchronize_irqs.exit.if.end4_crit_edge: ; preds = %iwl_pcie_synchronize_irqs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %iwl_pcie_synchronize_irqs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_trans_pcie_tx_reset(ptr noundef %trans) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %iwl_pcie_synchronize_irqs.exit.if.end4_crit_edge
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %apmg_not_supported.i = getelementptr inbounds %struct.iwl_cfg, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %apmg_not_supported.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 3)
  %bf.load.i = load i24, ptr %apmg_not_supported.i, align 4
  %23 = and i24 %bf.load.i, 32
  %tobool.not.i13 = icmp eq i24 %23, 0
  br i1 %tobool.not.i13, label %if.end.i, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 -136
  %call.i = tail call zeroext i1 @pci_pme_capable(ptr noundef %add.ptr.i, i32 noundef 4) #12
  %spec.select = select i1 %call.i, i32 33554432, i32 0
  tail call void @iwl_set_bits_mask_prph(ptr noundef %trans, i32 noundef 12300, i32 noundef %spec.select, i32 noundef -50331649) #12
  br label %return

return:                                           ; preds = %if.end.i, %if.end4.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_disable_interrupts(ptr noundef %trans) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #12
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status.i) #12
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %0 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 0) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef -1) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 16, i32 noundef -1) #12
  br label %_iwl_disable_interrupts.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %2 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %3) #12
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %4 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_init_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %5) #12
  br label %_iwl_disable_interrupts.exit

_iwl_disable_interrupts.exit:                     ; preds = %if.else.i, %if.then.i
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_disable_interrupts, ptr noundef nonnull @.str.98) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_disable_ict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_tx_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_free(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %0 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %alloc_vecs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 323
  %2 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc_vecs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 53, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  tail call void @synchronize_irq(i32 noundef %5) #12
  %inc.i = add nuw i32 %i.07.i, 1
  %6 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_vecs.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge

for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %11) #12
  br label %iwl_pcie_synchronize_irqs.exit

iwl_pcie_synchronize_irqs.exit:                   ; preds = %if.else.i, %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge, %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %12 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %gen2, align 4
  %15 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %iwl_pcie_synchronize_irqs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_txq_gen2_tx_free(ptr noundef %trans) #12
  br label %if.end

if.else:                                          ; preds = %iwl_pcie_synchronize_irqs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_pcie_tx_free(ptr noundef %trans) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @iwl_pcie_rx_free(ptr noundef %trans) #12
  %alloc_wq = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 14, i32 20
  %16 = ptrtoint ptr %alloc_wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %alloc_wq, align 4
  %tobool1.not = icmp eq ptr %17, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %17) #12
  %18 = ptrtoint ptr %alloc_wq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %alloc_wq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %19 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %if.else12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %alloc_vecs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 323
  %21 = ptrtoint ptr %alloc_vecs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alloc_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp62.not = icmp eq i32 %22, 0
  br i1 %cmp62.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 53, i32 %i.063
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %24, ptr noundef null, i1 noundef zeroext true) #12
  %inc = add nuw i32 %i.063, 1
  %25 = ptrtoint ptr %alloc_vecs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %alloc_vecs, align 8
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %msix_enabled.i, align 4
  br label %if.end13

if.else12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_pcie_free_ict(ptr noundef %trans) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %for.end
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 2
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i61 = icmp eq i32 %29, 0
  br i1 %tobool.not.i61, label %if.end13.iwl_pcie_free_fw_monitor.exit_crit_edge, label %if.end.i

if.end13.iwl_pcie_free_fw_monitor.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_free_fw_monitor.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %fw_mon1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %block.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 1
  %32 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %block.i, align 4
  %34 = ptrtoint ptr %fw_mon1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_mon1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %31, i32 noundef %29, ptr noundef %33, i32 noundef %35, i32 noundef 0) #12
  %36 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %block.i, align 4
  %37 = ptrtoint ptr %fw_mon1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %fw_mon1.i, align 4
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %size.i, align 4
  br label %iwl_pcie_free_fw_monitor.exit

iwl_pcie_free_fw_monitor.exit:                    ; preds = %if.end.i, %if.end13.iwl_pcie_free_fw_monitor.exit_crit_edge
  %size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 197
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool14.not = icmp eq i32 %40, 0
  br i1 %tobool14.not, label %iwl_pcie_free_fw_monitor.exit.if.end20_crit_edge, label %if.then15

iwl_pcie_free_fw_monitor.exit.if.end20_crit_edge: ; preds = %iwl_pcie_free_fw_monitor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %iwl_pcie_free_fw_monitor.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pnvm_dram = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 195
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %block = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 196
  %43 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %block, align 4
  %45 = ptrtoint ptr %pnvm_dram to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pnvm_dram, align 8
  tail call void @dma_free_attrs(ptr noundef %42, i32 noundef %40, ptr noundef %44, i32 noundef %46, i32 noundef 0) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %iwl_pcie_free_fw_monitor.exit.if.end20_crit_edge
  %size21 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 200
  %47 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool22.not = icmp eq i32 %48, 0
  br i1 %tobool22.not, label %if.end20.if.end31_crit_edge, label %if.then23

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %reduce_power_dram = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 198
  %dev24 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %49 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev24, align 8
  %block28 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 199
  %51 = ptrtoint ptr %block28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %block28, align 4
  %53 = ptrtoint ptr %reduce_power_dram to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reduce_power_dram, align 4
  tail call void @dma_free_attrs(ptr noundef %50, i32 noundef %48, ptr noundef %52, i32 noundef %54, i32 noundef 0) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.end20.if.end31_crit_edge
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_destroy(ptr noundef %mutex) #12
  tail call void @iwl_trans_free(ptr noundef %trans) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_gen2_tx_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_tx_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_rx_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_free_ict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__iwl_trans_pcie_grab_nic_access(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 252
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %cmd_hold_nic_awake = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 263
  %0 = ptrtoint ptr %cmd_hold_nic_awake to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_hold_nic_awake, align 8, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup100_crit_edge

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup100

if.end:                                           ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp = icmp ugt i32 %5, 19
  %poll.0 = select i1 %cmp, i32 1048576, i32 1
  %mask.0 = select i1 %cmp, i32 1048576, i32 17
  %write.0 = select i1 %cmp, i32 2097152, i32 8
  %call.i.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %or.i.i = or i32 %write.0, %call.i.i
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 36, i32 noundef %or.i.i) #12
  %6 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_cfg, align 4
  %device_family4 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device_family4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_family4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp5 = icmp ugt i32 %9, 15
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef 36, i32 noundef %poll.0, i32 noundef %mask.0, i32 noundef 15000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then12, label %if.end7.cleanup100_crit_edge, !prof !445

if.end7.cleanup100_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup100

if.then12:                                        ; preds = %if.end7
  %call13 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %.b130 = load i1, ptr @__iwl_trans_pcie_grab_nic_access.__already_done, align 1
  br i1 %.b130, label %if.then12.if.end46_crit_edge, label %if.then24, !prof !446

if.then12.if.end46_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then24:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__iwl_trans_pcie_grab_nic_access.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2119, i32 noundef 9, ptr noundef nonnull @.str.27, i32 noundef %call13) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then24, %if.then12.if.end46_crit_edge
  tail call void @iwl_trans_pcie_dump_regs(ptr noundef %trans)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 13) to i32))
  %11 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 13), align 2, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool54.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp55 = icmp eq i32 %call13, -1
  %or.cond = select i1 %tobool54.not, i1 %cmp55, i1 false
  br i1 %or.cond, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end46
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 4
  %14 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool58.not = icmp eq i32 %14, 0
  br i1 %tobool58.not, label %do.end64, label %if.then56.err_crit_edge

if.then56.err_crit_edge:                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

do.end64:                                         ; preds = %if.then56
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.28) #12
  %call67 = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %call67, label %if.end76, label %do.end72

do.end72:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.29) #12
  br label %err

if.end76:                                         ; preds = %do.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 48) #15
  %tobool78.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @module_put(ptr noundef null) #12
  br label %err

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 9, ptr noundef %status) #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 -136
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %work = getelementptr inbounds %struct.iwl_trans_pcie_removal, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %23 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.iwl_trans_pcie_removal, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.30, ptr noundef nonnull @__iwl_trans_pcie_grab_nic_access.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry88 = getelementptr inbounds %struct.iwl_trans_pcie_removal, ptr %call7.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry88, ptr %entry88, align 8
  %prev.i = getelementptr inbounds %struct.iwl_trans_pcie_removal, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry88, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_trans_pcie_removal, ptr %call7.i.i, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @iwl_trans_pcie_removal_wk, ptr %func, align 8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %call93 = tail call ptr @pci_dev_get(ptr noundef %28) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i131 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work) #12
  br label %err

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 32, i32 noundef 2) #12
  br label %err

err:                                              ; preds = %if.else, %if.end80, %if.then79, %do.end72, %if.then56.err_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  br label %cleanup100

cleanup100:                                       ; preds = %err, %if.end7.cleanup100_crit_edge, %entry.cleanup100_crit_edge
  %retval.1 = phi i1 [ false, %err ], [ true, %if.end7.cleanup100_crit_edge ], [ true, %entry.cleanup100_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_removal_wk(ptr noundef %wk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.100) #16
  %call = tail call i32 @kobject_uevent_env(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @iwl_trans_pcie_removal_wk.prop) #12
  tail call void @pci_lock_rescan_remove() #12
  tail call void @pci_dev_put(ptr noundef %1) #12
  tail call void @pci_stop_and_remove_bus_device(ptr noundef %1) #12
  tail call void @pci_unlock_rescan_remove() #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  tail call void @module_put(ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_pcie_dump_csr(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.31) #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.32) #12
  br label %do.end14

do.end14:                                         ; preds = %get_csr_string.exit.do.end14_crit_edge, %entry
  %i.026 = phi i32 [ 0, %entry ], [ %inc, %get_csr_string.exit.do.end14_crit_edge ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr [24 x i32], ptr @iwl_pcie_dump_csr.csr_tbl, i32 0, i32 %i.026
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %7, label %sw.default.i [
    i32 0, label %do.end14.get_csr_string.exit_crit_edge
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
    i32 12, label %sw.bb3.i
    i32 16, label %sw.bb4.i
    i32 24, label %sw.bb5.i
    i32 32, label %sw.bb6.i
    i32 36, label %sw.bb7.i
    i32 40, label %sw.bb8.i
    i32 44, label %sw.bb9.i
    i32 48, label %sw.bb10.i
    i32 52, label %sw.bb11.i
    i32 60, label %sw.bb12.i
    i32 72, label %sw.bb13.i
    i32 80, label %sw.bb14.i
    i32 84, label %sw.bb15.i
    i32 96, label %sw.bb16.i
    i32 148, label %sw.bb17.i
    i32 160, label %sw.bb18.i
    i32 256, label %sw.bb19.i
    i32 524, label %sw.bb20.i
    i32 556, label %sw.bb21.i
    i32 552, label %sw.bb22.i
    i32 576, label %sw.bb23.i
  ]

do.end14.get_csr_string.exit_crit_edge:           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb1.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb2.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb3.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb4.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb5.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb6.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb7.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb8.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb9.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb10.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb11.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb12.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb13.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb14.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb15.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb16.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb17.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb18.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb19.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb20.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb21.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb22.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.bb23.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

sw.default.i:                                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_csr_string.exit

get_csr_string.exit:                              ; preds = %sw.default.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end14.get_csr_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.90, %sw.default.i ], [ @.str.125, %sw.bb23.i ], [ @.str.124, %sw.bb22.i ], [ @.str.123, %sw.bb21.i ], [ @.str.122, %sw.bb20.i ], [ @.str.121, %sw.bb19.i ], [ @.str.120, %sw.bb18.i ], [ @.str.119, %sw.bb17.i ], [ @.str.118, %sw.bb16.i ], [ @.str.117, %sw.bb15.i ], [ @.str.116, %sw.bb14.i ], [ @.str.115, %sw.bb13.i ], [ @.str.114, %sw.bb12.i ], [ @.str.113, %sw.bb11.i ], [ @.str.112, %sw.bb10.i ], [ @.str.111, %sw.bb9.i ], [ @.str.110, %sw.bb8.i ], [ @.str.109, %sw.bb7.i ], [ @.str.108, %sw.bb6.i ], [ @.str.107, %sw.bb5.i ], [ @.str.106, %sw.bb4.i ], [ @.str.105, %sw.bb3.i ], [ @.str.104, %sw.bb2.i ], [ @.str.103, %sw.bb1.i ], [ @.str.102, %do.end14.get_csr_string.exit_crit_edge ]
  %call17 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef %7) #12
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull %retval.0.i, i32 noundef %call17) #12
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %get_csr_string.exit.do.end14_crit_edge

get_csr_string.exit.do.end14_crit_edge:           ; preds = %get_csr_string.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

for.end:                                          ; preds = %get_csr_string.exit
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_pcie_dbgfs_register(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dbgfs_dir = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 30
  %0 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbgfs_dir, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_rx_queue_ops) #12
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_tx_queue_ops) #12
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 384, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_interrupt_ops) #12
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 128, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_csr_ops) #12
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_fh_reg_ops) #12
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 384, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_rfkill_ops) #12
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_monitor_data_ops) #12
  %call26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %trans, ptr noundef nonnull @iwl_dbgfs_rf_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_trans_pcie_alloc(ptr noundef %pdev, ptr nocapture noundef readnone %ent, ptr noundef %cfg_trans) local_unnamed_addr #0 align 64 {
entry:
  %pci_cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %cfg_trans, i32 0, i32 5
  %0 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %gen2, align 4
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end4:                                          ; preds = %entry
  %2 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %spec.select = select i1 %tobool.not, ptr @trans_ops_pcie, ptr @trans_ops_pcie_gen2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call5 = tail call ptr @iwl_trans_alloc(i32 noundef 3584, ptr noundef %dev, ptr noundef nonnull %spec.select, ptr noundef %cfg_trans) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 0, i32 37
  %trans11 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 24, i32 0, i32 0, i32 0, i32 4
  %3 = ptrtoint ptr %trans11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %trans11, align 32
  %opmode_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 20
  %4 = ptrtoint ptr %opmode_down to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %opmode_down, align 2
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 156
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @iwl_trans_pcie_alloc.__key, i16 noundef signext 3) #12
  %reg_lock = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 252
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.44, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.43, i16 noundef signext 3) #12
  %alloc_page_lock = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 239
  tail call void @__raw_spin_lock_init(ptr noundef %alloc_page_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.45, i16 noundef signext 3) #12
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 167
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.48, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.47) #12
  %ucode_write_waitq = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 205
  tail call void @__init_waitqueue_head(ptr noundef %ucode_write_waitq, ptr noundef nonnull @.str.50, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.49) #12
  %fw_reset_waitq = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 350
  tail call void @__init_waitqueue_head(ptr noundef %fw_reset_waitq, ptr noundef nonnull @.str.52, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.51) #12
  %call30 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.53, i32 noundef 18, i32 noundef 1) #12
  %alloc_wq = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 14, i32 20
  %5 = ptrtoint ptr %alloc_wq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call30, ptr %alloc_wq, align 4
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %if.end9.out_free_trans_crit_edge, label %do.body36

if.end9.out_free_trans_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_trans

do.body36:                                        ; preds = %if.end9
  %rx_alloc = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 14, i32 24
  tail call void @__init_work(ptr noundef %rx_alloc, i32 noundef 0) #12
  %6 = ptrtoint ptr %rx_alloc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %rx_alloc, align 4
  %lockdep_map = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 14, i32 40
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.54, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry44 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 14, i32 28
  %7 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 14, i32 32
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry44, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 14, i32 36
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @iwl_pcie_rx_allocator_work, ptr %func, align 4
  %debug_rfkill = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 21
  %10 = ptrtoint ptr %debug_rfkill to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %debug_rfkill, align 1
  %11 = ptrtoint ptr %cfg_trans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg_trans, align 4
  %pcie_l1_allowed = getelementptr inbounds %struct.iwl_base_params, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %pcie_l1_allowed to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load49 = load i8, ptr %pcie_l1_allowed, align 4
  %14 = and i8 %bf.load49, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool52.not = icmp eq i8 %14, 0
  br i1 %tobool52.not, label %if.then53, label %do.body36.if.end55_crit_edge

do.body36.if.end55_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then53:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %call54 = tail call i32 @pci_disable_link_state(ptr noundef %pdev, i32 noundef 7) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.body36.if.end55_crit_edge
  %def_rx_queue = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 231
  %15 = ptrtoint ptr %def_rx_queue to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %def_rx_queue, align 8
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %addr_size56 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 0, i32 36, i32 10, i32 2
  %16 = ptrtoint ptr %addr_size56 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr_size56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %17)
  %cmp = icmp eq i8 %17, 64
  br i1 %cmp, label %if.end55.cond.end_crit_edge, label %cond.false

if.end55.cond.end_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom = zext i8 %17 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end55.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end55.cond.end_crit_edge ]
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %cond.end.if.end71_crit_edge, label %if.then61

cond.end.if.end71_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then61:                                        ; preds = %cond.end
  %call.i257 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp.i258 = icmp eq i32 %call.i257, 0
  br i1 %cmp.i258, label %if.then61.if.end71_crit_edge, label %do.end68

if.then61.if.end71_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end68:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #16
  br label %out_no_pci

if.end71:                                         ; preds = %if.then61.if.end71_crit_edge, %cond.end.if.end71_crit_edge
  %.sink = phi i64 [ %cond, %cond.end.if.end71_crit_edge ], [ 4294967295, %if.then61.if.end71_crit_edge ]
  %call1.i259 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #12
  %call72 = tail call i32 @pcim_iomap_regions_request_all(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #16
  br label %out_no_pci

if.end79:                                         ; preds = %if.end71
  %call80 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #12
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64) #16
  br label %out_no_pci

if.end87:                                         ; preds = %if.end79
  %18 = ptrtoint ptr %call80 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call80, align 4
  %hw_base = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 203
  %20 = ptrtoint ptr %hw_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %hw_base, align 8
  %tobool89.not = icmp eq ptr %19, null
  br i1 %tobool89.not, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67) #16
  br label %out_no_pci

if.end95:                                         ; preds = %if.end87
  %call96 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 65, i8 noundef zeroext 0) #12
  %pci_dev = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 202
  %21 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev, ptr %pci_dev, align 4
  tail call fastcc void @iwl_disable_interrupts(ptr noundef nonnull %call5)
  %call97 = tail call i32 @iwl_read32(ptr noundef nonnull %call5, i32 noundef 40) #12
  %hw_rev = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 0, i32 10
  %22 = ptrtoint ptr %hw_rev to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call97, ptr %hw_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call97)
  %cmp99 = icmp eq i32 %call97, -1
  br i1 %cmp99, label %do.end104, label %if.end106

do.end104:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #16
  br label %out_no_pci

if.end106:                                        ; preds = %if.end95
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %cfg_trans, i32 0, i32 1
  %23 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %24)
  %cmp107 = icmp ugt i32 %24, 15
  %and = and i32 %call97, 15
  %and112 = lshr i32 %call97, 2
  %shr = and i32 %and112, 3
  %shr.sink = select i1 %cmp107, i32 %and, i32 %shr
  %25 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 0, i32 11
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shr.sink, ptr %25, align 4
  %dev119 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 0, i32 8
  %27 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev119, align 8
  %29 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_rev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.72, i32 noundef %30) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_cmd.i) #12
  %31 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %pci_cmd.i, align 2, !annotation !447
  %32 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %gen2, align 4
  %33 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i, label %if.end106.enable_msi.i_crit_edge, label %if.end.i

if.end106.enable_msi.i_crit_edge:                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_msi.i

if.end.i:                                         ; preds = %if.end106
  %34 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %35)
  %cmp.i262 = icmp ult i32 %35, 18
  %spec.select.i = select i1 %cmp.i262, i32 6, i32 16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %36 = load volatile i32, ptr @__num_online_cpus, align 4
  %add.i = add i32 %36, 2
  %37 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %spec.select.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp5158.not.i = icmp eq i32 %37, 0
  br i1 %cmp5158.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.0159.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.0159.i to i16
  %entry6.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 53, i32 %i.0159.i, i32 1
  %38 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %entry6.i, align 4
  %inc.i = add nuw nsw i32 %i.0159.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %37
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %msix_entries7.i = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 290
  %call8.i = tail call i32 @pci_enable_msix_range(ptr noundef %pdev, ptr noundef %msix_entries7.i, i32 noundef 2, i32 noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev119, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_set_interrupt_capa, ptr noundef nonnull @.str.186, i32 noundef %call8.i) #12
  br label %enable_msi.i

if.end15.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %37)
  %cmp16.i = icmp eq i32 %call8.i, %37
  %sub.i = add nsw i32 %call8.i, -1
  %spec.select157.i = select i1 %cmp16.i, i32 %sub.i, i32 0
  %def_irq.i = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 324
  %41 = ptrtoint ptr %def_irq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select157.i, ptr %def_irq.i, align 4
  %42 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev119, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_set_interrupt_capa, ptr noundef nonnull @.str.187, i32 noundef %call8.i) #12
  %sub29.i = add nsw i32 %37, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %sub29.i)
  %cmp30.not.i = icmp sgt i32 %call8.i, %sub29.i
  br i1 %cmp30.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = trunc i32 %call8.i to i8
  %conv34.i = add i8 %44, 1
  %45 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trans11, align 32
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv34.i, ptr %num_rx_queues.i, align 8
  %shared_vec_mask.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 55
  %48 = ptrtoint ptr %shared_vec_mask.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %shared_vec_mask.i, align 1
  br label %do.end54.i

if.else.i:                                        ; preds = %if.end15.i
  %sub36.i = add nsw i32 %37, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %sub36.i)
  %cmp37.i = icmp eq i32 %call8.i, %sub36.i
  %conv40.i = trunc i32 %call8.i to i8
  br i1 %cmp37.i, label %if.then39.i, label %if.else44.i

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans11, align 32
  %num_rx_queues42.i = getelementptr inbounds %struct.iwl_trans, ptr %50, i32 0, i32 25
  %51 = ptrtoint ptr %num_rx_queues42.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv40.i, ptr %num_rx_queues42.i, align 8
  %shared_vec_mask43.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 55
  %52 = ptrtoint ptr %shared_vec_mask43.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %shared_vec_mask43.i, align 1
  br label %do.end54.i

if.else44.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv46.i = add i8 %conv40.i, -1
  %53 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trans11, align 32
  %num_rx_queues48.i = getelementptr inbounds %struct.iwl_trans, ptr %54, i32 0, i32 25
  %55 = ptrtoint ptr %num_rx_queues48.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv46.i, ptr %num_rx_queues48.i, align 8
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.else44.i, %if.then39.i, %if.then32.i
  %56 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev119, align 8
  %58 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trans11, align 32
  %num_rx_queues57.i = getelementptr inbounds %struct.iwl_trans, ptr %59, i32 0, i32 25
  %60 = ptrtoint ptr %num_rx_queues57.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_rx_queues57.i, align 8
  %conv58.i = zext i8 %61 to i32
  %shared_vec_mask59.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 55
  %62 = ptrtoint ptr %shared_vec_mask59.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %shared_vec_mask59.i, align 1
  %conv60.i = zext i8 %63 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_set_interrupt_capa, ptr noundef nonnull @.str.188, i32 noundef %conv58.i, i32 noundef %conv60.i) #12
  %64 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %trans11, align 32
  %num_rx_queues64.i = getelementptr inbounds %struct.iwl_trans, ptr %65, i32 0, i32 25
  %66 = ptrtoint ptr %num_rx_queues64.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_rx_queues64.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %67)
  %cmp66.i = icmp ugt i8 %67, 16
  br i1 %cmp66.i, label %do.end79.i, label %do.end54.i.if.end85.i_crit_edge, !prof !445

do.end54.i.if.end85.i_crit_edge:                  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i

do.end79.i:                                       ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1686, i32 noundef 9, ptr noundef null) #12
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end79.i, %do.end54.i.if.end85.i_crit_edge
  %alloc_vecs.i = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 323
  %68 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call8.i, ptr %alloc_vecs.i, align 8
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 322
  %69 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %msix_enabled.i, align 4
  br label %iwl_pcie_set_interrupt_capa.exit

enable_msi.i:                                     ; preds = %do.end.i, %if.end106.enable_msi.i_crit_edge
  %call93.i = tail call i32 @pci_enable_msi(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %enable_msi.i.iwl_pcie_set_interrupt_capa.exit_crit_edge, label %do.end98.i

enable_msi.i.iwl_pcie_set_interrupt_capa.exit_crit_edge: ; preds = %enable_msi.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_set_interrupt_capa.exit

do.end98.i:                                       ; preds = %enable_msi.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.189, i32 noundef %call93.i) #16
  %call100.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %pci_cmd.i) #12
  %70 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pci_cmd.i, align 2
  %72 = and i16 %71, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool102.not.i = icmp eq i16 %72, 0
  br i1 %tobool102.not.i, label %do.end98.i.iwl_pcie_set_interrupt_capa.exit_crit_edge, label %if.then103.i

do.end98.i.iwl_pcie_set_interrupt_capa.exit_crit_edge: ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_set_interrupt_capa.exit

if.then103.i:                                     ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  %and105.i = and i16 %71, -1025
  %73 = ptrtoint ptr %pci_cmd.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %and105.i, ptr %pci_cmd.i, align 2
  %call107.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext %and105.i) #12
  br label %iwl_pcie_set_interrupt_capa.exit

iwl_pcie_set_interrupt_capa.exit:                 ; preds = %if.then103.i, %do.end98.i.iwl_pcie_set_interrupt_capa.exit_crit_edge, %enable_msi.i.iwl_pcie_set_interrupt_capa.exit_crit_edge, %if.end85.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_cmd.i) #12
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %74 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %device, align 2
  %conv123 = zext i16 %75 to i32
  %shl124 = shl nuw i32 %conv123, 16
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %76 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %subsystem_device, align 2
  %conv125 = zext i16 %77 to i32
  %add = or i32 %shl124, %conv125
  %hw_id = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 0, i32 13
  %78 = ptrtoint ptr %hw_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add, ptr %hw_id, align 4
  %hw_id_str = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 0, i32 14
  %79 = load i16, ptr %device, align 2
  %conv127 = zext i16 %79 to i32
  %80 = load i16, ptr %subsystem_device, align 2
  %conv129 = zext i16 %80 to i32
  %call130 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %hw_id_str, i32 noundef 52, ptr noundef nonnull @.str.73, i32 noundef %conv127, i32 noundef %conv129)
  %sx_waitq = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 218
  call void @__init_waitqueue_head(ptr noundef %sx_waitq, ptr noundef nonnull @.str.75, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.74) #12
  %msix_enabled = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 322
  %81 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %msix_enabled, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool134.not = icmp eq i8 %82, 0
  br i1 %tobool134.not, label %if.else140, label %if.then135

if.then135:                                       ; preds = %iwl_pcie_set_interrupt_capa.exit
  %alloc_vecs.i263 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 323
  %83 = ptrtoint ptr %alloc_vecs.i263 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %alloc_vecs.i263, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp42.not.i = icmp eq i32 %84, 0
  br i1 %cmp42.not.i, label %if.then135.for.end.i272_crit_edge, label %for.body.lr.ph.i

if.then135.for.end.i272_crit_edge:                ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i272

for.body.lr.ph.i:                                 ; preds = %if.then135
  %shared_vec_mask.i.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 55
  %def_irq.i265 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 324
  br label %for.body.i266

for.body.i266:                                    ; preds = %for.inc.i.for.body.i266_crit_edge, %for.body.lr.ph.i
  %85 = phi i32 [ %84, %for.body.lr.ph.i ], [ %99, %for.inc.i.for.body.i266_crit_edge ]
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i270, %for.inc.i.for.body.i266_crit_edge ]
  %86 = ptrtoint ptr %shared_vec_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %shared_vec_mask.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i = icmp eq i8 %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.043.i)
  %cmp6.i.i = icmp eq i32 %i.043.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i266
  br i1 %cmp6.i.i, label %if.then.i.i.if.end.i268_crit_edge, label %if.end.i.i

if.then.i.i.if.end.i268_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i268

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = lshr i8 %87, 1
  %.lobit.i.i = and i8 %88, 1
  %89 = zext i8 %.lobit.i.i to i32
  %add.i.i = add nuw i32 %i.043.i, %89
  br label %queue_name.exit.i

if.end5.i.i:                                      ; preds = %for.body.i266
  br i1 %cmp6.i.i, label %if.end5.i.i.if.end.i268_crit_edge, label %if.end9.i.i

if.end5.i.i.if.end.i268_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i268

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %sub.i.i = add i32 %85, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %i.043.i)
  %cmp10.i.i = icmp eq i32 %sub.i.i, %i.043.i
  br i1 %cmp10.i.i, label %if.end9.i.i.if.end.i268_crit_edge, label %if.end9.i.i.queue_name.exit.i_crit_edge

if.end9.i.i.queue_name.exit.i_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_name.exit.i

if.end9.i.i.if.end.i268_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i268

queue_name.exit.i:                                ; preds = %if.end9.i.i.queue_name.exit.i_crit_edge, %if.end.i.i
  %add.sink.i.i = phi i32 [ %add.i.i, %if.end.i.i ], [ %i.043.i, %if.end9.i.i.queue_name.exit.i_crit_edge ]
  %call.i.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.191, i32 noundef %add.sink.i.i) #12
  %tobool.not.i267 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i267, label %queue_name.exit.i.out_no_pci_crit_edge, label %queue_name.exit.i.if.end.i268_crit_edge

queue_name.exit.i.if.end.i268_crit_edge:          ; preds = %queue_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i268

queue_name.exit.i.out_no_pci_crit_edge:           ; preds = %queue_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_pci

if.end.i268:                                      ; preds = %queue_name.exit.i.if.end.i268_crit_edge, %if.end9.i.i.if.end.i268_crit_edge, %if.end5.i.i.if.end.i268_crit_edge, %if.then.i.i.if.end.i268_crit_edge
  %retval.1.i36.i = phi ptr [ %call.i.i, %queue_name.exit.i.if.end.i268_crit_edge ], [ @.str.193, %if.end9.i.i.if.end.i268_crit_edge ], [ @.str.192, %if.end5.i.i.if.end.i268_crit_edge ], [ @.str.190, %if.then.i.i.if.end.i268_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 53, i32 %i.043.i
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i, align 4
  %92 = ptrtoint ptr %def_irq.i265 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %def_irq.i265, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.043.i, i32 %93)
  %cmp2.i = icmp eq i32 %i.043.i, %93
  %cond.i = select i1 %cmp2.i, ptr @iwl_pcie_irq_msix_handler, ptr @iwl_pcie_irq_rx_msix_handler
  %call3.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %91, ptr noundef nonnull @iwl_pcie_msix_isr, ptr noundef nonnull %cond.i, i32 noundef 128, ptr noundef nonnull %retval.1.i36.i, ptr noundef %arrayidx.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.inc.i, label %do.end.i269

do.end.i269:                                      ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %trans11, align 32
  %dev7.i = getelementptr inbounds %struct.iwl_trans, ptr %95, i32 0, i32 8
  %96 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev7.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %97, i32 noundef 0, ptr noundef nonnull @.str.76, i32 noundef %i.043.i) #12
  br label %out_no_pci

for.inc.i:                                        ; preds = %if.end.i268
  %inc.i270 = add nuw i32 %i.043.i, 1
  %98 = ptrtoint ptr %alloc_vecs.i263 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %alloc_vecs.i263, align 8
  %cmp.i271 = icmp ult i32 %inc.i270, %99
  br i1 %cmp.i271, label %for.inc.i.for.body.i266_crit_edge, label %for.inc.i.for.end.i272_crit_edge

for.inc.i.for.end.i272_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i272

for.inc.i.for.body.i266_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i266

for.end.i272:                                     ; preds = %for.inc.i.for.end.i272_crit_edge, %if.then135.for.end.i272_crit_edge
  %100 = ptrtoint ptr %trans11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %trans11, align 32
  %trans_specific.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %101, i32 0, i32 37
  %shared_vec_mask.i30.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i.i.i, i32 0, i32 55
  %102 = ptrtoint ptr %shared_vec_mask.i30.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %shared_vec_mask.i30.i, align 1
  %104 = lshr i8 %103, 1
  %.lobit.i31.i = and i8 %104, 1
  %105 = xor i8 %.lobit.i31.i, 1
  %106 = zext i8 %105 to i32
  %trans1.i.i = getelementptr inbounds %struct.iwl_trans, ptr %101, i32 1, i32 24, i32 0, i32 0, i32 0, i32 4
  %107 = ptrtoint ptr %trans1.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %trans1.i.i, align 32
  %num_rx_queues.i.i = getelementptr inbounds %struct.iwl_trans, ptr %108, i32 0, i32 25
  %109 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_rx_queues.i.i, align 8
  %conv2.i.i = zext i8 %110 to i32
  %sub.i32.i = add nsw i32 %conv2.i.i, -1
  %add.i33.i = add nsw i32 %sub.i32.i, %106
  %add3.neg.i.i = xor i32 %106, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp33.i.i = icmp ugt i8 %110, 1
  br i1 %cmp33.i.i, label %for.end.i272.for.body.i.i_crit_edge, label %for.end.i272.if.end158_crit_edge

for.end.i272.if.end158_crit_edge:                 ; preds = %for.end.i272
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

for.end.i272.for.body.i.i_crit_edge:              ; preds = %for.end.i272
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.end.i272.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %106, %for.end.i272.for.body.i.i_crit_edge ]
  %sub5.i.i = add nsw i32 %i.034.i.i, %add3.neg.i.i
  %call6.i.i = call i32 @cpumask_next(i32 noundef %sub5.i.i, ptr noundef nonnull @__cpu_online_mask) #17
  %arrayidx.i.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i.i.i, i32 0, i32 62, i32 %i.034.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %111 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %call6.i.i)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %111, %call6.i.i
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.i.cpumask_set_cpu.exit.i.i_crit_edge, label %land.rhs.i.i.i.i.i

for.body.i.i.cpumask_set_cpu.exit.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit.i.i

land.rhs.i.i.i.i.i:                               ; preds = %for.body.i.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %land.rhs.i.i.i.i.i.cpumask_set_cpu.exit.i.i_crit_edge, label %if.then.i.i.i.i.i, !prof !446

land.rhs.i.i.i.i.i.cpumask_set_cpu.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.195, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit.i.i

cpumask_set_cpu.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i.cpumask_set_cpu.exit.i.i_crit_edge, %for.body.i.i.cpumask_set_cpu.exit.i.i_crit_edge
  call void @_set_bit(i32 noundef %call6.i.i, ptr noundef %arrayidx.i.i) #12
  %arrayidx7.i.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i.i.i, i32 0, i32 53, i32 %i.034.i.i
  %112 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx7.i.i, align 4
  %call.i.i.i.i273 = call i32 @__irq_apply_affinity_hint(i32 noundef %113, ptr noundef %arrayidx.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i273)
  %tobool11.not.i.i = icmp eq i32 %call.i.i.i.i273, 0
  br i1 %tobool11.not.i.i, label %cpumask_set_cpu.exit.i.i.for.inc.i.i_crit_edge, label %do.end.i.i

cpumask_set_cpu.exit.i.i.for.inc.i.i_crit_edge:   ; preds = %cpumask_set_cpu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %cpumask_set_cpu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %trans1.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %trans1.i.i, align 32
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i.i, align 8
  %118 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx7.i.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %117, i32 noundef 0, ptr noundef nonnull @.str.194, i32 noundef %119) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %cpumask_set_cpu.exit.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  %cmp.i.i = icmp slt i32 %inc.i.i, %add.i33.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end158_crit_edge

for.inc.i.i.if.end158_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.else140:                                       ; preds = %iwl_pcie_set_interrupt_capa.exit
  %call141 = call i32 @iwl_pcie_alloc_ict(ptr noundef nonnull %call5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.else140.out_no_pci_crit_edge

if.else140.out_no_pci_crit_edge:                  ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_pci

if.end144:                                        ; preds = %if.else140
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %120 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %irq, align 4
  %call146 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %121, ptr noundef nonnull @iwl_pcie_isr, ptr noundef nonnull @iwl_pcie_irq_handler, i32 noundef 128, ptr noundef nonnull @.str.59, ptr noundef nonnull %call5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end144.if.end158_crit_edge, label %do.end152

if.end144.if.end158_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

do.end152:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev119, align 8
  %124 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %123, i32 noundef 0, ptr noundef nonnull @.str.76, i32 noundef %125) #12
  call void @iwl_pcie_free_ict(ptr noundef nonnull %call5) #12
  br label %out_no_pci

if.end158:                                        ; preds = %if.end144.if.end158_crit_edge, %for.inc.i.i.if.end158_crit_edge, %for.end.i272.if.end158_crit_edge
  %state = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 266
  %126 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %state, align 4
  %mutex161 = getelementptr inbounds %struct.iwl_trans, ptr %call5, i32 1, i32 36, i32 2, i32 267
  call void @__mutex_init(ptr noundef %mutex161, ptr noundef nonnull @.str.78, ptr noundef nonnull @iwl_trans_pcie_alloc.__key.77) #12
  call void @iwl_dbg_tlv_init(ptr noundef nonnull %call5) #12
  br label %cleanup

out_no_pci:                                       ; preds = %do.end152, %if.else140.out_no_pci_crit_edge, %do.end.i269, %queue_name.exit.i.out_no_pci_crit_edge, %do.end104, %do.end93, %do.end85, %do.end77, %do.end68
  %ret.0 = phi i32 [ %call.i257, %do.end68 ], [ %call72, %do.end77 ], [ -5, %do.end104 ], [ %call141, %if.else140.out_no_pci_crit_edge ], [ %call146, %do.end152 ], [ -19, %do.end93 ], [ -12, %do.end85 ], [ %call3.i, %do.end.i269 ], [ -12, %queue_name.exit.i.out_no_pci_crit_edge ]
  %127 = ptrtoint ptr %alloc_wq to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %alloc_wq, align 4
  call void @destroy_workqueue(ptr noundef %128) #12
  br label %out_free_trans

out_free_trans:                                   ; preds = %out_no_pci, %if.end9.out_free_trans_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_no_pci ], [ -12, %if.end9.out_free_trans_crit_edge ]
  call void @iwl_trans_free(ptr noundef nonnull %call5) #12
  %129 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_free_trans, %if.end158, %if.end4.cleanup_crit_edge, %if.then2
  %retval.0 = phi ptr [ %1, %if.then2 ], [ %129, %out_free_trans ], [ %call5, %if.end158 ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_trans_alloc(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_rx_allocator_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_link_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_alloc_ict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_isr(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_irq_handler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dbg_tlv_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_tx_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_rx_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_pcie_apm_stop(ptr noundef %trans, i1 noundef zeroext %op_mode_leave) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_apm_stop, ptr noundef nonnull @.str.94) #12
  br i1 %op_mode_leave, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc i32 @iwl_pcie_apm_init(ptr noundef %trans)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %5 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %cmp = icmp eq i32 %8, 15
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 12304, i32 noundef 16384) #12
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %cmp9 = icmp ugt i32 %8, 15
  br i1 %cmp9, label %if.then10, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %10, i32 0, i32 34
  %11 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %12(ptr noundef %trans, i32 noundef 592, i32 noundef -2147483648, i32 noundef -2147483648) #12
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i35 = getelementptr inbounds %struct.iwl_trans_ops, ptr %14, i32 0, i32 34
  %15 = ptrtoint ptr %set_bits_mask.i.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_bits_mask.i.i35, align 4
  tail call void %16(ptr noundef %trans, i32 noundef 0, i32 noundef 402653184, i32 noundef 402653184) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #12
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i37 = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 34
  %20 = ptrtoint ptr %set_bits_mask.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bits_mask.i.i37, align 4
  tail call void %21(ptr noundef %trans, i32 noundef 592, i32 noundef -2147483648, i32 noundef 0) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else.if.end12_crit_edge, %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #12
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %entry.if.end14_crit_edge
  %status15 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status15) #12
  tail call void @iwl_pcie_apm_stop_master(ptr noundef %trans)
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %27 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg, align 8
  %lp_xtal_workaround = getelementptr inbounds %struct.iwl_cfg, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %lp_xtal_workaround to i32
  call void @__asan_loadN_noabort(i32 %29, i32 3)
  %bf.load = load i24, ptr %lp_xtal_workaround, align 4
  %30 = and i24 %bf.load, 128
  %tobool16.not = icmp eq i24 %30, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  %call.i.i.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %or.i.i.i = or i32 %call.i.i.i, 1024
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 36, i32 noundef %or.i.i.i) #12
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %31 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %34)
  %cmp.i.i = icmp ugt i32 %34, 19
  %ops.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %35 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %36, i32 0, i32 34
  %37 = ptrtoint ptr %set_bits_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_bits_mask.i.i.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %38(ptr noundef %trans, i32 noundef 36, i32 noundef -2147483648, i32 noundef -2147483648) #12
  br label %iwl_trans_pcie_sw_reset.exit.i

if.else.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %38(ptr noundef %trans, i32 noundef 32, i32 noundef 128, i32 noundef 128) #12
  br label %iwl_trans_pcie_sw_reset.exit.i

iwl_trans_pcie_sw_reset.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %call.i.i = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %iwl_trans_pcie_sw_reset.exit.i.do.end.i_crit_edge

iwl_trans_pcie_sw_reset.exit.i.do.end.i_crit_edge: ; preds = %iwl_trans_pcie_sw_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end.i:                                         ; preds = %iwl_trans_pcie_sw_reset.exit.i
  %call1.i = tail call i32 @iwl_finish_nic_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26.i, label %if.end.i.do.end.i_crit_edge, !prof !446

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %iwl_trans_pcie_sw_reset.exit.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 396, i32 noundef 9, ptr noundef null) #12
  %call.i.i42 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %and37.i.i = and i32 %call.i.i42, -1025
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 36, i32 noundef %and37.i.i) #12
  br label %return

if.end26.i:                                       ; preds = %if.end.i
  tail call void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef 12304, i32 noundef 512) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 236, i32 noundef 536871360) #12
  %call.i67.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 244) #12
  %or.i = or i32 %call.i67.i, -2147483648
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 244, i32 noundef %or.i) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 236, i32 noundef 805306816) #12
  %39 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i69.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %device_family.i69.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %device_family.i69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %42)
  %cmp.i70.i = icmp ugt i32 %42, 19
  %43 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i72.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %44, i32 0, i32 34
  %45 = ptrtoint ptr %set_bits_mask.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_bits_mask.i.i.i72.i, align 4
  br i1 %cmp.i70.i, label %if.then.i73.i, label %if.else.i74.i

if.then.i73.i:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %46(ptr noundef %trans, i32 noundef 36, i32 noundef -2147483648, i32 noundef -2147483648) #12
  br label %iwl_trans_pcie_sw_reset.exit76.i

if.else.i74.i:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %46(ptr noundef %trans, i32 noundef 32, i32 noundef 128, i32 noundef 128) #12
  br label %iwl_trans_pcie_sw_reset.exit76.i

iwl_trans_pcie_sw_reset.exit76.i:                 ; preds = %if.else.i74.i, %if.then.i73.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %call.i75.i = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool29.not.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool29.not.i, label %iwl_trans_pcie_sw_reset.exit76.i.if.end37.i_crit_edge, label %do.end34.i

iwl_trans_pcie_sw_reset.exit76.i.if.end37.i_crit_edge: ; preds = %iwl_trans_pcie_sw_reset.exit76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

do.end34.i:                                       ; preds = %iwl_trans_pcie_sw_reset.exit76.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.96) #12
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end34.i, %iwl_trans_pcie_sw_reset.exit76.i.if.end37.i_crit_edge
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 236, i32 noundef 536871388) #12
  %call.i77.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 244) #12
  %or40.i = or i32 %call.i77.i, -2147483644
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 244, i32 noundef %or40.i) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 236, i32 noundef 805306844) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 236, i32 noundef 536871364) #12
  %call.i78.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 244) #12
  %and.i = and i32 %call.i78.i, -257
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 244, i32 noundef %and.i) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 236, i32 noundef 805306820) #12
  %49 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %50, i32 0, i32 34
  %51 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %52(ptr noundef %trans, i32 noundef 0, i32 noundef 1073741824, i32 noundef 1073741824) #12
  %53 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i80.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %54, i32 0, i32 34
  %55 = ptrtoint ptr %set_bits_mask.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_bits_mask.i.i80.i, align 4
  tail call void %56(ptr noundef %trans, i32 noundef 36, i32 noundef 4, i32 noundef 0) #12
  %call.i.i81.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 532) #12
  %or.i.i82.i = or i32 %call.i.i81.i, 16
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 532, i32 noundef %or.i.i82.i) #12
  %call.i.i83.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %and37.i.i.i = and i32 %call.i.i83.i, -1025
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 36, i32 noundef %and37.i.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #12
  %and42.i = and i32 %call.i67.i, 2147483647
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 244, i32 noundef %and42.i) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 236, i32 noundef 805306816) #12
  br label %return

if.end18:                                         ; preds = %if.end14
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %58 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %61)
  %cmp.i = icmp ugt i32 %61, 19
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %62 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i38 = getelementptr inbounds %struct.iwl_trans_ops, ptr %63, i32 0, i32 34
  %64 = ptrtoint ptr %set_bits_mask.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_bits_mask.i.i.i38, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %65(ptr noundef %trans, i32 noundef 36, i32 noundef -2147483648, i32 noundef -2147483648) #12
  br label %iwl_trans_pcie_sw_reset.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %65(ptr noundef %trans, i32 noundef 32, i32 noundef 128, i32 noundef 128) #12
  br label %iwl_trans_pcie_sw_reset.exit

iwl_trans_pcie_sw_reset.exit:                     ; preds = %if.else.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %66 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i41 = getelementptr inbounds %struct.iwl_trans_ops, ptr %67, i32 0, i32 34
  %68 = ptrtoint ptr %set_bits_mask.i.i41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_bits_mask.i.i41, align 4
  tail call void %69(ptr noundef %trans, i32 noundef 36, i32 noundef 4, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %iwl_trans_pcie_sw_reset.exit, %if.end37.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_sw_reset(ptr noundef %trans, i1 noundef zeroext %retake_ownership) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %cmp = icmp ugt i32 %3, 19
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_bits_mask.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %trans, i32 noundef 36, i32 noundef -2147483648, i32 noundef -2147483648) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %trans, i32 noundef 32, i32 noundef 128, i32 noundef 128) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  br i1 %retake_ownership, label %if.then1, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans)
  br label %return

return:                                           ; preds = %if.then1, %if.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then1 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_apm_init(ptr noundef %trans) unnamed_addr #0 align 64 {
entry:
  %lctl.i = alloca i16, align 2
  %cap.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_apm_init, ptr noundef nonnull @.str.95) #12
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %9(ptr noundef %trans, i32 noundef 256, i32 noundef 536870912, i32 noundef 536870912) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ops.i.i48 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i.i48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i48, align 4
  %set_bits_mask.i.i49 = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 34
  %12 = ptrtoint ptr %set_bits_mask.i.i49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_bits_mask.i.i49, align 4
  tail call void %13(ptr noundef %trans, i32 noundef 256, i32 noundef 8388608, i32 noundef 8388608) #12
  %14 = ptrtoint ptr %ops.i.i48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i48, align 4
  %set_bits_mask.i.i51 = getelementptr inbounds %struct.iwl_trans_ops, ptr %15, i32 0, i32 34
  %16 = ptrtoint ptr %set_bits_mask.i.i51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_bits_mask.i.i51, align 4
  tail call void %17(ptr noundef %trans, i32 noundef 576, i32 noundef -65536, i32 noundef -65536) #12
  %18 = ptrtoint ptr %ops.i.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i48, align 4
  %set_bits_mask.i.i53 = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 34
  %20 = ptrtoint ptr %set_bits_mask.i.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bits_mask.i.i53, align 4
  tail call void %21(ptr noundef %trans, i32 noundef 0, i32 noundef 524288, i32 noundef 524288) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lctl.i) #12
  %22 = ptrtoint ptr %lctl.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %lctl.i, align 2, !annotation !447
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap.i) #12
  %23 = ptrtoint ptr %cap.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %cap.i, align 2, !annotation !447
  %24 = ptrtoint ptr %ops.i.i48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i48, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %27(ptr noundef %trans, i32 noundef 60, i32 noundef 2, i32 noundef 2) #12
  %pci_dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %28 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev.i, align 4
  %call1.i = call i32 @pcie_capability_read_word(ptr noundef %29, i32 noundef 16, ptr noundef nonnull %lctl.i) #12
  %30 = ptrtoint ptr %lctl.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %lctl.i, align 2
  %pm_support.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 18
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = ptrtoint ptr %pm_support.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %pm_support.i, align 2
  %36 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev.i, align 4
  %call3.i = call i32 @pcie_capability_read_word(ptr noundef %37, i32 noundef 40, ptr noundef nonnull %cap.i) #12
  %38 = ptrtoint ptr %cap.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cap.i, align 2
  %40 = and i16 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool6.not.i = icmp eq i16 %40, 0
  %ltr_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 19
  %.lobit.i = lshr exact i16 %40, 10
  %41 = trunc i16 %.lobit.i to i8
  %42 = ptrtoint ptr %ltr_enabled.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %ltr_enabled.i, align 1
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %45 = ptrtoint ptr %lctl.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %lctl.i, align 2
  %47 = and i16 %46, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool11.not.i = icmp eq i16 %47, 0
  %cond.i = select i1 %tobool11.not.i, ptr @.str.13, ptr @.str.12
  %cond15.i = select i1 %tobool6.not.i, ptr @.str.13, ptr @.str.12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %44, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_apm_config, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond15.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lctl.i) #12
  %48 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trans_cfg, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %pll_cfg = getelementptr inbounds %struct.iwl_base_params, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %pll_cfg to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %pll_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %ops.i.i48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i48, align 4
  %set_bits_mask.i.i55 = getelementptr inbounds %struct.iwl_trans_ops, ptr %54, i32 0, i32 34
  %55 = ptrtoint ptr %set_bits_mask.i.i55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_bits_mask.i.i55, align 4
  call void %56(ptr noundef %trans, i32 noundef 524, i32 noundef 8913664, i32 noundef 8913664) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call = call i32 @iwl_finish_nic_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %57 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg, align 8
  %host_interrupt_operation_mode = getelementptr inbounds %struct.iwl_cfg, ptr %58, i32 0, i32 21
  %59 = ptrtoint ptr %host_interrupt_operation_mode to i32
  call void @__asan_loadN_noabort(i32 %59, i32 3)
  %bf.load10 = load i24, ptr %host_interrupt_operation_mode, align 4
  %60 = and i24 %bf.load10, 524288
  %tobool12.not = icmp eq i24 %60, 0
  br i1 %tobool12.not, label %if.end9.if.end18_crit_edge, label %if.then13

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 10502248) #12
  %call15 = call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 10502248) #12
  call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10502248, i32 noundef 8) #12
  %call16 = call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 10502248) #12
  %call17 = call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 10502248) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end9.if.end18_crit_edge
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg, align 8
  %apmg_not_supported = getelementptr inbounds %struct.iwl_cfg, ptr %62, i32 0, i32 21
  %63 = ptrtoint ptr %apmg_not_supported to i32
  call void @__asan_loadN_noabort(i32 %63, i32 3)
  %bf.load20 = load i24, ptr %apmg_not_supported, align 4
  %64 = and i24 %bf.load20, 32
  %tobool24.not = icmp eq i24 %64, 0
  br i1 %tobool24.not, label %if.then25, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 12292, i32 noundef 512, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 4294960) #12
  call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 12304, i32 noundef 2048) #12
  call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 12316, i32 noundef 268435456, i32 noundef 0) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end18.if.end26_crit_edge
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  call void @_set_bit(i32 noundef 1, ptr noundef %status) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end6.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_finish_nic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_pme_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_mask_prph(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_and_remove_bus_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rx_queue_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 37
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rx_queues, align 8
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 121
  %4 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans_specific.i, align 128
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #18
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end8.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp113 = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8114 = icmp ne i8 %3, 0
  %or.cond115 = select i1 %cmp113, i1 %cmp8114, i1 false
  br i1 %or.cond115, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0117 = phi i32 [ %inc, %if.end47.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %pos.0116 = phi i32 [ %pos.1, %if.end47.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans_specific.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %pos.0116
  %sub = sub i32 %mul, %pos.0116
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.126, i32 noundef %i.0117) #12
  %add = add i32 %call12, %pos.0116
  %add.ptr13 = getelementptr i8, ptr %call9.i.i, i32 %add
  %sub14 = sub i32 %mul, %add
  %read = getelementptr %struct.iwl_rxq, ptr %9, i32 %i.0117, i32 5
  %10 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.127, i32 noundef %11) #12
  %add16 = add i32 %call15, %add
  %add.ptr17 = getelementptr i8, ptr %call9.i.i, i32 %add16
  %sub18 = sub i32 %mul, %add16
  %write = getelementptr %struct.iwl_rxq, ptr %9, i32 %i.0117, i32 6
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write, align 8
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.128, i32 noundef %13) #12
  %add20 = add i32 %call19, %add16
  %add.ptr21 = getelementptr i8, ptr %call9.i.i, i32 %add20
  %sub22 = sub i32 %mul, %add20
  %write_actual = getelementptr %struct.iwl_rxq, ptr %9, i32 %i.0117, i32 9
  %14 = ptrtoint ptr %write_actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %write_actual, align 4
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.129, i32 noundef %15) #12
  %add24 = add i32 %call23, %add20
  %add.ptr25 = getelementptr i8, ptr %call9.i.i, i32 %add24
  %sub26 = sub i32 %mul, %add24
  %need_update = getelementptr %struct.iwl_rxq, ptr %9, i32 %i.0117, i32 13
  %16 = ptrtoint ptr %need_update to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %need_update, align 4, !range !444
  %18 = zext i8 %17 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.130, i32 noundef %18) #12
  %add30 = add i32 %call29, %add24
  %add.ptr31 = getelementptr i8, ptr %call9.i.i, i32 %add30
  %sub32 = sub i32 %mul, %add30
  %free_count = getelementptr %struct.iwl_rxq, ptr %9, i32 %i.0117, i32 7
  %19 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free_count, align 4
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.131, i32 noundef %20) #12
  %add34 = add i32 %call33, %add30
  %rb_stts = getelementptr %struct.iwl_rxq, ptr %9, i32 %i.0117, i32 15
  %21 = ptrtoint ptr %rb_stts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rb_stts, align 8
  %tobool35.not = icmp eq ptr %22, null
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %rb_stts to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.0.in.i = load ptr, ptr %rb_stts, align 8
  %24 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %retval.0.i = load volatile i16, ptr %retval.0.in.i, align 1
  %add.ptr39 = getelementptr i8, ptr %call9.i.i, i32 %add34
  %sub40 = sub i32 %mul, %add34
  %25 = and i16 %retval.0.i, -241
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %and = zext i16 %26 to i32
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.132, i32 noundef %and) #12
  br label %if.end47

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr43 = getelementptr i8, ptr %call9.i.i, i32 %add34
  %sub44 = sub i32 %mul, %add34
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.133) #12
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then36
  %call41.pn = phi i32 [ %call41, %if.then36 ], [ %call45, %if.else ]
  %pos.1 = add i32 %call41.pn, %add34
  %inc = add nuw nsw i32 %i.0117, 1
  %27 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_rx_queues, align 8
  %conv6 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv6)
  %cmp = icmp ult i32 %inc, %conv6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %pos.1)
  %cmp8 = icmp ugt i32 %mul, %pos.1
  %or.cond = select i1 %cmp, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.end47.for.body_crit_edge, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end47.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %pos.1, %if.end47.for.end_crit_edge ]
  %call48 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i.i, i32 noundef %pos.0.lcssa) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %for.end ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_tx_queue_open(ptr nocapture noundef readonly %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %filp, ptr noundef nonnull @iwl_dbgfs_tx_queue_seq_ops, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @iwl_dbgfs_tx_queue_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_cfg, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp.not = icmp slt i64 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 8) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos, align 8
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %call7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_dbgfs_tx_queue_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %v) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @iwl_dbgfs_tx_queue_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef writeonly %pos) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %v, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %v, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %inc, ptr %pos, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans_cfg, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv)
  %cmp.not = icmp slt i64 %inc, %conv
  %v. = select i1 %cmp.not, ptr %v, ptr null
  ret ptr %v.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_tx_queue_seq_show(ptr noundef %seq, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %v, align 8
  %idxprom = trunc i64 %5 to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %3, i32 0, i32 36, i32 2, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %div3.i = lshr i32 %idxprom, 5
  %arrayidx.i = getelementptr i32, ptr %txqs, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %idxprom, 31
  %10 = lshr i32 %9, %and.i
  %11 = and i32 %10, 1
  %queue_stopped = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 36, i32 1
  %arrayidx.i50 = getelementptr i32, ptr %queue_stopped, i32 %div3.i
  %12 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i50, align 4
  %14 = lshr i32 %13, %and.i
  %15 = and i32 %14, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.134, i32 noundef %idxprom, i32 noundef %11, i32 noundef %15) #12
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 16
  %16 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_ptr, align 4
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 15
  %18 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %write_ptr, align 4
  %need_update = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 8
  %20 = ptrtoint ptr %need_update to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %need_update, align 4, !range !444
  %22 = zext i8 %21 to i32
  %frozen = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 9
  %23 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %frozen, align 1, !range !444
  %25 = zext i8 %24 to i32
  %n_window = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 18
  %26 = ptrtoint ptr %n_window to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_window, align 4
  %ampdu = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 10
  %28 = ptrtoint ptr %ampdu to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ampdu, align 2, !range !444
  %30 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.135, i32 noundef %17, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %30) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.136) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %v, align 8
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 36, i32 9, i32 1
  %33 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %q_id, align 1
  %conv27 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv27)
  %cmp = icmp eq i64 %32, %conv27
  br i1 %cmp, label %if.then29, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.137) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end.if.end30_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.138) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_interrupt_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %isr_stats1 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1536) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 1536, ptr noundef nonnull @.str.139) #12
  %add.ptr4 = getelementptr i8, ptr %call7.i.i, i32 %call3
  %sub5 = sub i32 1536, %call3
  %3 = ptrtoint ptr %isr_stats1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isr_stats1, align 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.140, i32 noundef %4) #12
  %add7 = add i32 %call6, %call3
  %add.ptr8 = getelementptr i8, ptr %call7.i.i, i32 %add7
  %sub9 = sub i32 1536, %add7
  %sw = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 146
  %5 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.141, i32 noundef %6) #12
  %add11 = add i32 %call10, %add7
  %7 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end.if.then16_crit_edge

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %isr_stats1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %isr_stats1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end.if.then16_crit_edge
  %add.ptr17 = getelementptr i8, ptr %call7.i.i, i32 %add11
  %sub18 = sub i32 1536, %add11
  %err_code = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 147
  %11 = ptrtoint ptr %err_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err_code, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.142, i32 noundef %12) #12
  %add20 = add i32 %call19, %add11
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %lor.lhs.false.if.end21_crit_edge
  %pos.0 = phi i32 [ %add20, %if.then16 ], [ %add11, %lor.lhs.false.if.end21_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %pos.0
  %sub23 = sub i32 1536, %pos.0
  %sch = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 148
  %13 = ptrtoint ptr %sch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sch, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.143, i32 noundef %14) #12
  %add25 = add i32 %call24, %pos.0
  %add.ptr26 = getelementptr i8, ptr %call7.i.i, i32 %add25
  %sub27 = sub i32 1536, %add25
  %alive = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 149
  %15 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %alive, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.144, i32 noundef %16) #12
  %add29 = add i32 %call28, %add25
  %add.ptr30 = getelementptr i8, ptr %call7.i.i, i32 %add29
  %sub31 = sub i32 1536, %add29
  %rfkill = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 150
  %17 = ptrtoint ptr %rfkill to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rfkill, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.145, i32 noundef %18) #12
  %add33 = add i32 %call32, %add29
  %add.ptr34 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub35 = sub i32 1536, %add33
  %ctkill = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 151
  %19 = ptrtoint ptr %ctkill to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctkill, align 4
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.146, i32 noundef %20) #12
  %add37 = add i32 %call36, %add33
  %add.ptr38 = getelementptr i8, ptr %call7.i.i, i32 %add37
  %sub39 = sub i32 1536, %add37
  %wakeup = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 152
  %21 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wakeup, align 4
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr38, i32 noundef %sub39, ptr noundef nonnull @.str.147, i32 noundef %22) #12
  %add41 = add i32 %call40, %add37
  %add.ptr42 = getelementptr i8, ptr %call7.i.i, i32 %add41
  %sub43 = sub i32 1536, %add41
  %rx = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 153
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.148, i32 noundef %24) #12
  %add45 = add i32 %call44, %add41
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 %add45
  %sub47 = sub i32 1536, %add45
  %tx = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 154
  %25 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx, align 4
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.149, i32 noundef %26) #12
  %add49 = add i32 %call48, %add45
  %add.ptr50 = getelementptr i8, ptr %call7.i.i, i32 %add49
  %sub51 = sub i32 1536, %add49
  %unhandled = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 155
  %27 = ptrtoint ptr %unhandled to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %unhandled, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.150, i32 noundef %28) #12
  %add53 = add i32 %call52, %add49
  %call54 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add53) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_interrupt_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %reset_flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %isr_stats1 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_flag) #12
  %2 = ptrtoint ptr %reset_flag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reset_flag, align 4, !annotation !447
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %reset_flag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reset_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reset_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call ptr @memset(ptr %isr_stats1, i32 0, i32 44)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.then3 ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_flag) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_csr_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @iwl_pcie_dump_csr(ptr noundef %1)
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_fh_reg_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #12
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buf, align 4
  %call = call i32 @iwl_dump_fh(ptr noundef %1, ptr noundef nonnull %buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %4, i32 noundef %call) #12
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dump_fh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rfkill_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 100)
  %debug_rfkill = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 21
  %3 = ptrtoint ptr %debug_rfkill to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %debug_rfkill, align 1
  %conv = sext i8 %4 to i32
  %call1 = tail call i32 @iwl_read32(ptr noundef %1, i32 noundef 36) #12
  %and = lshr i32 %call1, 27
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 100, ptr noundef nonnull @.str.151, i32 noundef %conv, i32 noundef %5) #12
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call2) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rfkill_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %new_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_value) #12
  %2 = ptrtoint ptr %new_value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %new_value, align 1, !annotation !447
  %call1 = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %new_value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %new_value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %new_value, align 1, !range !444
  %debug_rfkill = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 21
  %5 = ptrtoint ptr %debug_rfkill to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %debug_rfkill, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv3 = sext i8 %6 to i32
  %7 = zext i8 %4 to i32
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %9, ptr noundef nonnull @.str.152, i32 noundef %conv3, i32 noundef %7) #12
  %10 = ptrtoint ptr %new_value to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %new_value, align 1, !range !444
  %12 = ptrtoint ptr %debug_rfkill to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %debug_rfkill, align 1
  call void @iwl_pcie_handle_rfkill_irq(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_handle_rfkill_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_monitor_data_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %size = alloca i32, align 4
  %bytes_copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %block = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 14, i32 1
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %fw_mon_data = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 264
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_copied) #12
  %4 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytes_copied, align 4
  %dest_tlv = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 2
  %5 = ptrtoint ptr %dest_tlv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dest_tlv, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %write_ptr_reg = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %write_ptr_reg to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %write_ptr_reg, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %wrap_count = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %6, i32 0, i32 7
  %10 = ptrtoint ptr %wrap_count to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %wrap_count, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %write_ptr_addr.0 = phi i32 [ %9, %if.then ], [ 10501188, %entry.if.end_crit_edge ]
  %wrap_cnt_addr.0 = phi i32 [ %12, %if.then ], [ 10501192, %entry.if.end_crit_edge ]
  %rec_on = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 1
  %13 = ptrtoint ptr %rec_on to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rec_on, align 1, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end12, !prof !445

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 267
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 266
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp = icmp eq i8 %16, 2
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @iwl_read_prph(ptr noundef %1, i32 noundef %write_ptr_addr.0) #12
  %mul = shl i32 %call17, 2
  %call18 = tail call i32 @iwl_read_prph(ptr noundef %1, i32 noundef %wrap_cnt_addr.0) #12
  %prev_wrap_cnt = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 265
  %17 = ptrtoint ptr %prev_wrap_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prev_wrap_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call18)
  %cmp19 = icmp eq i32 %18, %call18
  br i1 %cmp19, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_mon_data, align 4
  %sub = sub i32 %mul, %20
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %size, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %20
  %call23 = call fastcc zeroext i1 @iwl_write_to_user_buf(ptr noundef %user_buf, i32 noundef %count, ptr noundef %add.ptr, ptr noundef nonnull %size, ptr noundef nonnull %bytes_copied)
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %24 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fw_mon_data, align 4
  %add = add i32 %25, %23
  store i32 %add, ptr %fw_mon_data, align 4
  br label %if.end93

if.else25:                                        ; preds = %if.end16
  %sub27 = add i32 %call18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub27)
  %cmp28 = icmp eq i32 %18, %sub27
  br i1 %cmp28, label %land.lhs.true, label %if.else25.if.else65_crit_edge

if.else25.if.else65_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

land.lhs.true:                                    ; preds = %if.else25
  %26 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_mon_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %27)
  %cmp31 = icmp ult i32 %mul, %27
  br i1 %cmp31, label %if.then33, label %land.lhs.true57

if.then33:                                        ; preds = %land.lhs.true
  %size36 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 14, i32 2
  %28 = ptrtoint ptr %size36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size36, align 8
  %sub38 = sub i32 %29, %27
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub38, ptr %size, align 4
  %add.ptr40 = getelementptr i8, ptr %3, i32 %27
  %call41 = call fastcc zeroext i1 @iwl_write_to_user_buf(ptr noundef %user_buf, i32 noundef %count, ptr noundef %add.ptr40, ptr noundef nonnull %size, ptr noundef nonnull %bytes_copied)
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %33 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_mon_data, align 4
  %add44 = add i32 %34, %32
  store i32 %add44, ptr %fw_mon_data, align 4
  br i1 %call41, label %if.then33.if.end93_crit_edge, label %if.then46

if.then33.if.end93_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then46:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %size, align 4
  %call47 = call fastcc zeroext i1 @iwl_write_to_user_buf(ptr noundef %user_buf, i32 noundef %count, ptr noundef %3, ptr noundef nonnull %size, ptr noundef nonnull %bytes_copied)
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  %38 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fw_mon_data, align 4
  %39 = ptrtoint ptr %prev_wrap_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prev_wrap_cnt, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %prev_wrap_cnt, align 4
  br label %if.end93

land.lhs.true57:                                  ; preds = %land.lhs.true
  %41 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fw_mon_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %42)
  %cmp59 = icmp ugt i32 %mul, %42
  br i1 %cmp59, label %land.lhs.true57.if.end87.sink.split_crit_edge, label %land.lhs.true57.if.else65_crit_edge

land.lhs.true57.if.else65_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

land.lhs.true57.if.end87.sink.split_crit_edge:    ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.sink.split

if.else65:                                        ; preds = %land.lhs.true57.if.else65_crit_edge, %if.else25.if.else65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp67 = icmp eq i32 %18, 0
  br i1 %cmp67, label %land.rhs, label %if.else65.if.end87.sink.split_crit_edge

if.else65.if.end87.sink.split_crit_edge:          ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.sink.split

land.rhs:                                         ; preds = %if.else65
  %43 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fw_mon_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp70 = icmp eq i32 %44, 0
  br i1 %cmp70, label %land.rhs.if.end87_crit_edge, label %land.rhs.if.end87.sink.split_crit_edge, !prof !445

land.rhs.if.end87.sink.split_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.sink.split

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.end87.sink.split:                              ; preds = %land.rhs.if.end87.sink.split_crit_edge, %if.else65.if.end87.sink.split_crit_edge, %land.lhs.true57.if.end87.sink.split_crit_edge
  %.str.154.sink = phi ptr [ @.str.153, %land.lhs.true57.if.end87.sink.split_crit_edge ], [ @.str.154, %if.else65.if.end87.sink.split_crit_edge ], [ @.str.154, %land.rhs.if.end87.sink.split_crit_edge ]
  %dev83 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev83, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %46, ptr noundef nonnull %.str.154.sink) #12
  br label %if.end87

if.end87:                                         ; preds = %if.end87.sink.split, %land.rhs.if.end87_crit_edge
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul, ptr %size, align 4
  %call88 = call fastcc zeroext i1 @iwl_write_to_user_buf(ptr noundef %user_buf, i32 noundef %count, ptr noundef %3, ptr noundef nonnull %size, ptr noundef nonnull %bytes_copied)
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 4
  %50 = ptrtoint ptr %fw_mon_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %fw_mon_data, align 4
  %51 = ptrtoint ptr %prev_wrap_cnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call18, ptr %prev_wrap_cnt, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end87, %if.then46, %if.then33.if.end93_crit_edge, %if.then21
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %52 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytes_copied, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then14, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ %53, %if.end93 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_copied) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_monitor_data_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %dest_tlv = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 2
  %2 = ptrtoint ptr %dest_tlv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dest_tlv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %monitor_mode = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %monitor_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %monitor_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.158) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 266
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8.not = icmp eq i8 %9, 0
  br i1 %cmp8.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %state, align 4
  %call14 = tail call i32 @simple_open(ptr noundef %inode, ptr noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %call14, %if.end11 ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_dbgfs_monitor_data_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %state = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 266
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iwl_write_to_user_buf(ptr noundef %user_buf, i32 noundef %count, ptr noundef %buf, ptr nocapture noundef %size, ptr nocapture noundef %bytes_copied) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_copied, align 4
  %sub = sub i32 %count, %1
  %sub1 = and i32 %sub, -4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub1)
  %cmp = icmp sgt i32 %3, %sub1
  br i1 %cmp, label %if.then, label %entry.if.end8.i.i_crit_edge

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub1, ptr %size, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then, %entry.if.end8.i.i_crit_edge
  %5 = phi i32 [ %sub1, %if.then ], [ %3, %entry.if.end8.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i.i = icmp slt i32 %5, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !446

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.155, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %buf, i32 noundef %5, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.157, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #19, !srcloc !448
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buf, i32 noundef %5) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef %buf, i32 noundef %5) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %5, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %5, %if.end.i.i.copy_to_user.exit_crit_edge ], [ %5, %if.then27.i.i ], [ %5, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %sub2 = sub i32 %8, %n.addr.0.i
  store i32 %sub2, ptr %size, align 4
  %9 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_copied, align 4
  %add = add i32 %10, %sub2
  store i32 %add, ptr %bytes_copied, align 4
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %11)
  %cmp3 = icmp eq i32 %sub1, %11
  ret i1 %cmp3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_dbgfs_rf_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rf_name = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 1, i32 36, i32 2, i32 363
  %2 = ptrtoint ptr %rf_name to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_name, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @strlen(ptr noundef %rf_name) #20
  %call5 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %rf_name, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_start_hw(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 183
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !445

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1821, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call25.i = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end34.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.159, i32 noundef %call25.i) #12
  br label %_iwl_trans_pcie_start_hw.exit

if.end34.i:                                       ; preds = %if.end.i
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_family.i.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %6, label %if.end34.i.if.end38.i_crit_edge [
    i32 17, label %if.end34.i.sw.epilog.i.i_crit_edge
    i32 18, label %sw.bb1.i.i
  ]

if.end34.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.end34.i.if.end38.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

sw.bb1.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.end34.i.sw.epilog.i.i_crit_edge
  %wprot.0.i.i = phi i32 [ 10505472, %sw.bb1.i.i ], [ 10505440, %if.end34.i.sw.epilog.i.i_crit_edge ]
  %umac_prph_offset.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %umac_prph_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %umac_prph_offset.i.i.i, align 4
  %add.i.i.i = add i32 %9, 10499136
  %call.i.i.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %trans, i32 noundef %add.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1515870816, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, -1515870816
  %and.i.i = and i32 %call.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %sw.epilog.i.i.if.end38.i_crit_edge, label %if.then.i.i

sw.epilog.i.i.if.end38.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  %10 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans_cfg.i.i, align 4
  %umac_prph_offset.i20.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %umac_prph_offset.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %umac_prph_offset.i20.i.i, align 4
  %add.i21.i.i = add i32 %13, %wprot.0.i.i
  %call.i22.i.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %trans, i32 noundef %add.i21.i.i) #12
  %and3.i.i = and i32 %call.i22.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %iwl_trans_pcie_clear_persistence_bit.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and9.i.i = and i32 %call.i.i.i, -4097
  %14 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans_cfg.i.i, align 4
  %umac_prph_offset.i24.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %umac_prph_offset.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %umac_prph_offset.i24.i.i, align 4
  %add.i25.i.i = add i32 %17, 10499136
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef %add.i25.i.i, i32 noundef %and9.i.i) #12
  br label %if.end38.i

iwl_trans_pcie_clear_persistence_bit.exit.i:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.160) #12
  br label %_iwl_trans_pcie_start_hw.exit

if.end38.i:                                       ; preds = %if.end.i.i, %sw.epilog.i.i.if.end38.i_crit_edge, %if.end34.i.if.end38.i_crit_edge
  %20 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i83.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %device_family.i83.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_family.i83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %23)
  %cmp.i.i = icmp ugt i32 %23, 19
  %ops.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %24 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %set_bits_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_bits_mask.i.i.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i84.i, label %if.else.i.i

if.then.i84.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %27(ptr noundef %trans, i32 noundef 36, i32 noundef -2147483648, i32 noundef -2147483648) #12
  br label %iwl_trans_pcie_sw_reset.exit.i

if.else.i.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %27(ptr noundef %trans, i32 noundef 32, i32 noundef 128, i32 noundef 128) #12
  br label %iwl_trans_pcie_sw_reset.exit.i

iwl_trans_pcie_sw_reset.exit.i:                   ; preds = %if.else.i.i, %if.then.i84.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %call.i86.i = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool40.not.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %iwl_trans_pcie_sw_reset.exit.i._iwl_trans_pcie_start_hw.exit_crit_edge

iwl_trans_pcie_sw_reset.exit.i._iwl_trans_pcie_start_hw.exit_crit_edge: ; preds = %iwl_trans_pcie_sw_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_iwl_trans_pcie_start_hw.exit

if.end42.i:                                       ; preds = %iwl_trans_pcie_sw_reset.exit.i
  %28 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %31)
  %cmp43.i = icmp eq i32 %31, 18
  br i1 %cmp43.i, label %land.lhs.true.i, label %if.end42.i.if.end51.i_crit_edge

if.end42.i.if.end51.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %if.end42.i
  %integrated.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %integrated.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i = load i16, ptr %integrated.i, align 4
  %33 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool45.not.i = icmp eq i16 %33, 0
  br i1 %tobool45.not.i, label %land.lhs.true.i.if.end51.i_crit_edge, label %if.then46.i

land.lhs.true.i.if.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then46.i:                                      ; preds = %land.lhs.true.i
  %call.i13 = tail call i32 @iwl_finish_nic_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp.i14 = icmp slt i32 %call.i13, 0
  br i1 %cmp.i14, label %if.then46.i._iwl_trans_pcie_start_hw.exit_crit_edge, label %if.end.i20

if.then46.i._iwl_trans_pcie_start_hw.exit_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_iwl_trans_pcie_start_hw.exit

if.end.i20:                                       ; preds = %if.then46.i
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10499160, i32 noundef 1024) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 4294960) #12
  tail call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10499160, i32 noundef 3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 4294960) #12
  tail call void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef 10499160, i32 noundef 1024) #12
  %36 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i16 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device_family.i.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device_family.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %39)
  %cmp.i.i17 = icmp ugt i32 %39, 19
  %40 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i.i19 = getelementptr inbounds %struct.iwl_trans_ops, ptr %41, i32 0, i32 34
  %42 = ptrtoint ptr %set_bits_mask.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_bits_mask.i.i.i.i19, align 4
  br i1 %cmp.i.i17, label %if.then.i.i21, label %if.else.i.i22

if.then.i.i21:                                    ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %43(ptr noundef %trans, i32 noundef 36, i32 noundef -2147483648, i32 noundef -2147483648) #12
  br label %iwl_pcie_gen2_force_power_gating.exit

if.else.i.i22:                                    ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %43(ptr noundef %trans, i32 noundef 32, i32 noundef 128, i32 noundef 128) #12
  br label %iwl_pcie_gen2_force_power_gating.exit

iwl_pcie_gen2_force_power_gating.exit:            ; preds = %if.else.i.i22, %if.then.i.i21
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %call.i.i23 = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %tobool48.not.i = icmp eq i32 %call.i.i23, 0
  br i1 %tobool48.not.i, label %iwl_pcie_gen2_force_power_gating.exit.if.end51.i_crit_edge, label %iwl_pcie_gen2_force_power_gating.exit._iwl_trans_pcie_start_hw.exit_crit_edge

iwl_pcie_gen2_force_power_gating.exit._iwl_trans_pcie_start_hw.exit_crit_edge: ; preds = %iwl_pcie_gen2_force_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %_iwl_trans_pcie_start_hw.exit

iwl_pcie_gen2_force_power_gating.exit.if.end51.i_crit_edge: ; preds = %iwl_pcie_gen2_force_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.end51.i:                                       ; preds = %iwl_pcie_gen2_force_power_gating.exit.if.end51.i_crit_edge, %land.lhs.true.i.if.end51.i_crit_edge, %if.end42.i.if.end51.i_crit_edge
  %call52.i = tail call fastcc i32 @iwl_pcie_apm_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end51.i._iwl_trans_pcie_start_hw.exit_crit_edge

if.end51.i._iwl_trans_pcie_start_hw.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_iwl_trans_pcie_start_hw.exit

if.end55.i:                                       ; preds = %if.end51.i
  %trans1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 24, i32 0, i32 0, i32 0, i32 4
  %44 = ptrtoint ptr %trans1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trans1.i, align 32
  tail call void @iwl_pcie_conf_msix_hw(ptr noundef %trans_specific.i) #12
  %msix_enabled.i9 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %46 = ptrtoint ptr %msix_enabled.i9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %msix_enabled.i9, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i10 = icmp eq i8 %47, 0
  br i1 %tobool.not.i10, label %if.end55.i.iwl_pcie_init_msix.exit_crit_edge, label %if.end.i12

if.end55.i.iwl_pcie_init_msix.exit_crit_edge:     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_init_msix.exit

if.end.i12:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @iwl_read32(ptr noundef %45, i32 noundef 10244) #12
  %neg.i = xor i32 %call.i, -1
  %fh_init_mask.i11 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %48 = ptrtoint ptr %fh_init_mask.i11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %neg.i, ptr %fh_init_mask.i11, align 32
  %fh_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %49 = ptrtoint ptr %fh_mask.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %neg.i, ptr %fh_mask.i, align 8
  %call3.i = tail call i32 @iwl_read32(ptr noundef %45, i32 noundef 10252) #12
  %neg4.i = xor i32 %call3.i, -1
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %50 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %neg4.i, ptr %hw_init_mask.i, align 4
  %hw_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %51 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %neg4.i, ptr %hw_mask.i, align 4
  br label %iwl_pcie_init_msix.exit

iwl_pcie_init_msix.exit:                          ; preds = %if.end.i12, %if.end55.i.iwl_pcie_init_msix.exit_crit_edge
  %dev.i5 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %52 = ptrtoint ptr %dev.i5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i5, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %53, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_rfkill_int, ptr noundef nonnull @.str.97) #12
  %54 = ptrtoint ptr %msix_enabled.i9 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %msix_enabled.i9, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i6 = icmp eq i8 %55, 0
  br i1 %tobool.not.i6, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %iwl_pcie_init_msix.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %56 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 128, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 128) #12
  br label %if.end.i8

if.else.i:                                        ; preds = %iwl_pcie_init_msix.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %57 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %58) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -129) #12
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %59 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %hw_mask.i.i, align 4
  br label %if.end.i8

if.end.i8:                                        ; preds = %if.else.i, %if.then.i
  %60 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i7 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %device_family.i7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %device_family.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %63)
  %cmp.i = icmp ugt i32 %63, 16
  br i1 %cmp.i, label %if.then5.i, label %if.end.i8.iwl_enable_rfkill_int.exit_crit_edge

if.end.i8.iwl_enable_rfkill_int.exit_crit_edge:   ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_enable_rfkill_int.exit

if.then5.i:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %65, i32 0, i32 34
  %66 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %67(ptr noundef %trans, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864) #12
  br label %iwl_enable_rfkill_int.exit

iwl_enable_rfkill_int.exit:                       ; preds = %if.then5.i, %if.end.i8.iwl_enable_rfkill_int.exit_crit_edge
  %opmode_down.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 20
  %68 = ptrtoint ptr %opmode_down.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %opmode_down.i, align 2
  %is_down.i = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 19
  %69 = ptrtoint ptr %is_down.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %is_down.i, align 1
  %call56.i = tail call zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %trans) #12
  br label %_iwl_trans_pcie_start_hw.exit

_iwl_trans_pcie_start_hw.exit:                    ; preds = %iwl_enable_rfkill_int.exit, %if.end51.i._iwl_trans_pcie_start_hw.exit_crit_edge, %iwl_pcie_gen2_force_power_gating.exit._iwl_trans_pcie_start_hw.exit_crit_edge, %if.then46.i._iwl_trans_pcie_start_hw.exit_crit_edge, %iwl_trans_pcie_sw_reset.exit.i._iwl_trans_pcie_start_hw.exit_crit_edge, %iwl_trans_pcie_clear_persistence_bit.exit.i, %do.end31.i
  %retval.0.i = phi i32 [ %call25.i, %do.end31.i ], [ 0, %iwl_enable_rfkill_int.exit ], [ -1, %iwl_trans_pcie_clear_persistence_bit.exit.i ], [ %call.i86.i, %iwl_trans_pcie_sw_reset.exit.i._iwl_trans_pcie_start_hw.exit_crit_edge ], [ %call.i.i23, %iwl_pcie_gen2_force_power_gating.exit._iwl_trans_pcie_start_hw.exit_crit_edge ], [ %call52.i, %if.end51.i._iwl_trans_pcie_start_hw.exit_crit_edge ], [ %call.i13, %if.then46.i._iwl_trans_pcie_start_hw.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_op_mode_leave(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  tail call fastcc void @iwl_pcie_apm_stop(ptr noundef %trans, i1 noundef zeroext true)
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  tail call void @iwl_pcie_disable_ict(ptr noundef %trans) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %0 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %alloc_vecs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 323
  %2 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc_vecs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not.i = icmp eq i32 %3, 0
  br i1 %cmp6.not.i, label %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 53, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  tail call void @synchronize_irq(i32 noundef %5) #12
  %inc.i = add nuw i32 %i.07.i, 1
  %6 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_vecs.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge

for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %11) #12
  br label %iwl_pcie_synchronize_irqs.exit

iwl_pcie_synchronize_irqs.exit:                   ; preds = %if.else.i, %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge, %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_pcie_gen2_start_fw(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_gen2_fw_alive(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_gen2_stop_device(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_d3_suspend(ptr noundef %trans, i1 noundef zeroext %test, i1 noundef zeroext %reset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %reset, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %3(ptr noundef %trans, i32 noundef 0, i32 noundef 1073741824, i32 noundef 1073741824) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @iwl_pcie_d3_handshake(ptr noundef %trans, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_pcie_d3_complete_suspend(ptr noundef %trans, i1 noundef zeroext %test, i1 noundef zeroext %reset)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_d3_resume(ptr noundef %trans, ptr nocapture noundef %status, i1 noundef zeroext %test, i1 noundef zeroext %reset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  br i1 %test, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iwl_enable_interrupts(ptr noundef %trans)
  br label %if.then32

if.end:                                           ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %3(ptr noundef %trans, i32 noundef 36, i32 noundef 8, i32 noundef 8) #12
  %call2 = tail call i32 @iwl_finish_nic_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @iwl_pcie_conf_msix_hw(ptr noundef %trans_specific.i)
  %msix_enabled = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %4 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msix_enabled, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_pcie_reset_ict(ptr noundef %trans) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  tail call fastcc void @iwl_enable_interrupts(ptr noundef %trans)
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %apmg_not_supported.i = getelementptr inbounds %struct.iwl_cfg, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %apmg_not_supported.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load.i = load i24, ptr %apmg_not_supported.i, align 4
  %9 = and i24 %bf.load.i, 32
  %tobool.not.i = icmp eq i24 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.iwl_pcie_set_pwr.exit_crit_edge

if.end8.iwl_pcie_set_pwr.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_set_pwr.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_set_bits_mask_prph(ptr noundef %trans, i32 noundef 12300, i32 noundef 0, i32 noundef -50331649) #12
  br label %iwl_pcie_set_pwr.exit

iwl_pcie_set_pwr.exit:                            ; preds = %if.end.i, %if.end8.iwl_pcie_set_pwr.exit_crit_edge
  br i1 %reset, label %if.else, label %if.then10

if.then10:                                        ; preds = %iwl_pcie_set_pwr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i60 = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 34
  %12 = ptrtoint ptr %set_bits_mask.i.i60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_bits_mask.i.i60, align 4
  tail call void %13(ptr noundef %trans, i32 noundef 36, i32 noundef 8, i32 noundef 0) #12
  br label %do.end22

if.else:                                          ; preds = %iwl_pcie_set_pwr.exit
  tail call void @iwl_trans_pcie_tx_reset(ptr noundef %trans) #12
  %call11 = tail call i32 @iwl_pcie_rx_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else.do.end22_crit_edge, label %do.end

if.else.do.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.164) #12
  br label %cleanup

do.end22:                                         ; preds = %if.else.do.end22_crit_edge, %if.then10
  %dev23 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %16 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev23, align 8
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %18 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans_cfg.i, align 4
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %umac_prph_offset.i, align 4
  %add.i = add i32 %21, 10498228
  %call.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %add.i) #12
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_d3_resume, ptr noundef nonnull @.str.165, i32 noundef %call.i) #12
  %call27 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 32) #12
  %and = and i32 %call27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.end22.if.then32_crit_edge, label %out

do.end22.if.then32_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

out:                                              ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %status, align 4
  br label %cleanup

if.then32:                                        ; preds = %do.end22.if.then32_crit_edge, %if.then
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %status, align 4
  %call33 = tail call fastcc i32 @iwl_pcie_d3_handshake(ptr noundef %trans, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %out, %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ %call33, %if.then32 ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_gen2_enqueue_hcmd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_gen2_tx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_reclaim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_set_q_ptrs(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_txq_dyn_alloc(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_dyn_free(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_trans_pcie_rxq_dma_data(ptr nocapture noundef readonly %trans, i32 noundef %queue, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %num_rx_queues = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_rx_queues, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp sgt i32 %conv, %queue
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_specific.i, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %bd_dma = getelementptr %struct.iwl_rxq, ptr %3, i32 %queue, i32 2
  %4 = ptrtoint ptr %bd_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dma, align 8
  %conv3 = zext i32 %5 to i64
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv3, ptr %data, align 8
  %7 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans_specific.i, align 128
  %rb_stts_dma = getelementptr %struct.iwl_rxq, ptr %8, i32 %queue, i32 16
  %9 = ptrtoint ptr %rb_stts_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rb_stts_dma, align 4
  %conv6 = zext i32 %10 to i64
  %urbd_stts_wrptr = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %urbd_stts_wrptr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv6, ptr %urbd_stts_wrptr, align 8
  %12 = load ptr, ptr %trans_specific.i, align 128
  %used_bd_dma = getelementptr %struct.iwl_rxq, ptr %12, i32 %queue, i32 4
  %13 = ptrtoint ptr %used_bd_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used_bd_dma, align 8
  %conv9 = zext i32 %14 to i64
  %ur_bd_cb = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %ur_bd_cb to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv9, ptr %ur_bd_cb, align 8
  %fr_bd_wid = getelementptr inbounds %struct.iwl_trans_rxq_dma_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %fr_bd_wid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fr_bd_wid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_wait_txq_empty(ptr noundef %trans, i32 noundef %txq_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status, align 4
  %3 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup129_crit_edge

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

if.end:                                           ; preds = %entry
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  %div3.i = lshr i32 %txq_idx, 5
  %arrayidx.i = getelementptr i32, ptr %txqs, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %txq_idx, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end.cleanup129_crit_edge, label %do.end

if.end.cleanup129_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_wait_txq_empty, ptr noundef nonnull @.str.167, i32 noundef %txq_idx) #12
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %txq_idx
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %overflow_tx10 = getelementptr inbounds %struct.iwl_txq, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %overflow_tx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %overflow_tx10, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %lor.rhs, label %do.end.lor.end_crit_edge

do.end.lor.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %overflow_q = getelementptr inbounds %struct.iwl_txq, ptr %11, i32 0, i32 13
  %14 = ptrtoint ptr %overflow_q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %overflow_q, align 4
  %cmp.i = icmp ne ptr %15, %overflow_q
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end.lor.end_crit_edge
  %16 = phi i1 [ true, %do.end.lor.end_crit_edge ], [ %cmp.i, %lor.rhs ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %11, i32 0, i32 15
  %17 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %write_ptr, align 4
  %read_ptr = getelementptr inbounds %struct.iwl_txq, ptr %11, i32 0, i32 16
  %19 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_ptr, align 4
  %21 = load volatile i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp.not175 = icmp eq i32 %20, %21
  %cmp.not.not176 = xor i1 %cmp.not175, true
  %brmerge177 = select i1 %cmp.not.not176, i1 true, i1 %16
  br i1 %brmerge177, label %land.rhs.lr.ph, label %lor.end.while.end_crit_edge

lor.end.while.end_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %lor.end
  %add = add i32 %0, 200
  %overflow_q101 = getelementptr inbounds %struct.iwl_txq, ptr %11, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub182 = sub i32 %add, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub182)
  %cmp27183 = icmp sgt i32 %sub182, -1
  br i1 %cmp27183, label %land.rhs.lr.ph.while.body_crit_edge, label %land.rhs.lr.ph.while.end_crit_edge

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs:                                         ; preds = %cleanup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %23
  %cmp27 = icmp sgt i32 %sub, -1
  br i1 %cmp27, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %wr_ptr.0.in178185 = phi i32 [ %25, %land.rhs.while.body_crit_edge ], [ %18, %land.rhs.lr.ph.while.body_crit_edge ]
  %overflow_tx.0.off0179184 = phi i1 [ %30, %land.rhs.while.body_crit_edge ], [ %16, %land.rhs.lr.ph.while.body_crit_edge ]
  %24 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %write_ptr, align 4
  %conv37 = and i32 %wr_ptr.0.in178185, 255
  %conv38 = and i32 %25, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %conv37)
  %cmp39.not = icmp ne i32 %conv38, %conv37
  %lnot43 = xor i1 %overflow_tx.0.off0179184, true
  %spec.select = select i1 %cmp39.not, i1 %lnot43, i1 false
  br i1 %spec.select, label %land.rhs50, label %if.end95

land.rhs50:                                       ; preds = %while.body
  %.b166 = load i1, ptr @iwl_trans_pcie_wait_txq_empty.__already_done, align 1
  br i1 %.b166, label %land.rhs50.cleanup129_crit_edge, label %if.then57, !prof !446

land.rhs50.cleanup129_crit_edge:                  ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

if.then57:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iwl_trans_pcie_wait_txq_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2364, i32 noundef 9, ptr noundef nonnull @.str.168, i32 noundef %conv37, i32 noundef %conv38) #12
  br label %cleanup129

if.end95:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %26 = ptrtoint ptr %overflow_tx10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %overflow_tx10, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool98.not = icmp eq i8 %27, 0
  br i1 %tobool98.not, label %lor.rhs100, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %overflow_q101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %overflow_q101, align 4
  %cmp.i170 = icmp ne ptr %29, %overflow_q101
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs100, %if.end95.cleanup_crit_edge
  %30 = phi i1 [ true, %if.end95.cleanup_crit_edge ], [ %cmp.i170, %lor.rhs100 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %31 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %read_ptr, align 4
  %33 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %write_ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not = icmp eq i32 %32, %34
  %cmp.not.not = xor i1 %cmp.not, true
  %brmerge = select i1 %cmp.not.not, i1 true, i1 %30
  br i1 %brmerge, label %land.rhs, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %lor.end.while.end_crit_edge
  %cmp.not.lcssa = phi i1 [ %cmp.not175, %lor.end.while.end_crit_edge ], [ %cmp.not175, %land.rhs.lr.ph.while.end_crit_edge ], [ %cmp.not, %land.rhs.while.end_crit_edge ], [ %cmp.not, %cleanup.while.end_crit_edge ]
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  br i1 %cmp.not.lcssa, label %do.end125, label %do.end117

do.end117:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @.str.169, i32 noundef %txq_idx) #12
  tail call void @iwl_txq_log_scd_error(ptr noundef %trans, ptr noundef %11) #12
  br label %cleanup129

do.end125:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_trans_pcie_wait_txq_empty, ptr noundef nonnull @.str.170, i32 noundef %txq_idx) #12
  br label %cleanup129

cleanup129:                                       ; preds = %do.end125, %do.end117, %if.then57, %land.rhs50.cleanup129_crit_edge, %if.end.cleanup129_crit_edge, %entry.cleanup129_crit_edge
  %retval.2 = phi i32 [ -110, %do.end117 ], [ 0, %do.end125 ], [ -19, %entry.cleanup129_crit_edge ], [ -22, %if.end.cleanup129_crit_edge ], [ -110, %land.rhs50.cleanup129_crit_edge ], [ -110, %if.then57 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_write8(ptr nocapture noundef readonly %trans, i32 noundef %ofs, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %hw_base = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  %0 = ptrtoint ptr %hw_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %ofs
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #12, !srcloc !450
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_write32(ptr nocapture noundef readonly %trans, i32 noundef %ofs, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %hw_base = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  %1 = ptrtoint ptr %hw_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %ofs
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #12, !srcloc !452
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_read32(ptr nocapture noundef readonly %trans, i32 noundef %ofs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_base = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  %0 = ptrtoint ptr %hw_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %ofs
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !453
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_read_prph(ptr nocapture noundef readonly %trans, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp.i = icmp ugt i32 %3, 18
  %..i = select i1 %cmp.i, i32 16777215, i32 1048575
  %and = and i32 %..i, %reg
  %or = or i32 %and, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %hw_base.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  %5 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !452
  %7 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_base.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 1104
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #12, !srcloc !453
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_write_prph(ptr nocapture noundef readonly %trans, i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %3)
  %cmp.i = icmp ugt i32 %3, 18
  %..i = select i1 %cmp.i, i32 16777215, i32 1048575
  %and = and i32 %..i, %addr
  %or = or i32 %and, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %hw_base.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  %5 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %val) #12
  %8 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_base.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %7) #12, !srcloc !452
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_read_mem(ptr noundef %trans, i32 noundef %addr, ptr nocapture noundef writeonly %buf, i32 noundef %dwords) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dwords)
  %cmp33 = icmp sgt i32 %dwords, 0
  br i1 %cmp33, label %entry.while.body_crit_edge, label %entry.cleanup16_crit_edge

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %offs.034 = phi i32 [ %offs.3, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 50
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %2, i32 0, i32 32
  %3 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %4(ptr noundef %trans) #12
  br i1 %call, label %if.then, label %while.body.cleanup16_crit_edge, !prof !446

while.body.cleanup16_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

if.then:                                          ; preds = %while.body
  %mul = shl i32 %offs.034, 2
  %add2 = add i32 %mul, %addr
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 1036, i32 noundef %add2) #12
  %smax = call i32 @llvm.smax.i32(i32 %offs.034, i32 %dwords)
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5.while.cond3_crit_edge, %if.then
  %offs.1 = phi i32 [ %offs.034, %if.then ], [ %inc, %while.body5.while.cond3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.1, i32 %smax)
  %exitcond.not = icmp eq i32 %offs.1, %smax
  br i1 %exitcond.not, label %while.end, label %while.body5

while.body5:                                      ; preds = %while.cond3
  %call6 = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 1052) #12
  %arrayidx = getelementptr i32, ptr %buf, i32 %offs.1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call6, ptr %arrayidx, align 4
  %inc = add i32 %offs.1, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %if.then10, label %while.body5.while.cond3_crit_edge

while.body5.while.cond3_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond3

while.end:                                        ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %10(ptr noundef %trans) #12
  br label %cleanup

if.then10:                                        ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %release_nic_access.i28 = getelementptr inbounds %struct.iwl_trans_ops, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %release_nic_access.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release_nic_access.i28, align 4
  tail call void %14(ptr noundef %trans) #12
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 2249, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %while.end
  %offs.3 = phi i32 [ %smax, %while.end ], [ %inc, %if.then10 ]
  %cmp = icmp slt i32 %offs.3, %dwords
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup16_crit_edge

cleanup.cleanup16_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup16:                                        ; preds = %cleanup.cleanup16_crit_edge, %while.body.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2.ph = phi i32 [ 0, %entry.cleanup16_crit_edge ], [ 0, %cleanup.cleanup16_crit_edge ], [ -16, %while.body.cleanup16_crit_edge ]
  ret i32 %retval.2.ph
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_write_mem(ptr noundef %trans, i32 noundef %addr, ptr noundef readonly %buf, i32 noundef %dwords) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #12
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !446

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 1040, i32 noundef %addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dwords)
  %cmp10 = icmp sgt i32 %dwords, 0
  br i1 %cmp10, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %tobool2.not = icmp eq ptr %buf, null
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %offs.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  br i1 %tobool2.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr i32, ptr %buf, i32 %offs.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 1048, i32 noundef %cond) #12
  %inc = add nuw nsw i32 %offs.011, 1
  %exitcond.not = icmp eq i32 %inc, %dwords
  br i1 %exitcond.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.then.for.end_crit_edge
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %9(ptr noundef %trans) #12
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ -16, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_read_config32(ptr nocapture noundef readonly %trans, i32 noundef %ofs, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %call1 = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %ofs, ptr noundef %val) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_configure(ptr noundef %trans, ptr nocapture noundef readonly %trans_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  tail call void @iwl_pcie_free_rbs_pool(ptr noundef %trans) #12
  %cmd_queue = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 1
  %0 = ptrtoint ptr %cmd_queue to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_queue, align 4
  %cmd = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %2 = ptrtoint ptr %q_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %q_id, align 1
  %cmd_fifo = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 2
  %3 = ptrtoint ptr %cmd_fifo to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd_fifo, align 1
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %cmd, align 8
  %cmd_q_wdg_timeout = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_q_wdg_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_q_wdg_timeout, align 4
  %wdg_timeout = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 2
  %8 = ptrtoint ptr %wdg_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %wdg_timeout, align 4
  %cb_data_offs = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 11
  %9 = ptrtoint ptr %cb_data_offs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cb_data_offs, align 4
  %page_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 6
  %11 = ptrtoint ptr %page_offs to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %page_offs, align 1
  %12 = load i8, ptr %cb_data_offs, align 4
  %add = add i8 %12, 4
  %dev_cmd_offs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 7
  %13 = ptrtoint ptr %dev_cmd_offs to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %add, ptr %dev_cmd_offs, align 2
  %n_no_reclaim_cmds = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 5
  %14 = ptrtoint ptr %n_no_reclaim_cmds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_no_reclaim_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp = icmp ugt i32 %15, 6
  br i1 %cmp, label %if.end34.thread, label %if.end34, !prof !445

if.end34.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1952, i32 noundef 9, ptr noundef null) #12
  %16 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 38
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %16, align 1
  br label %if.end41

if.end34:                                         ; preds = %entry
  %conv32 = trunc i32 %15 to i8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 38
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv32, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv32)
  %tobool36.not = icmp eq i8 %conv32, 0
  br i1 %tobool36.not, label %if.end34.if.end41_crit_edge, label %if.then37

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %no_reclaim_cmds = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 39
  %no_reclaim_cmds38 = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 4
  %20 = ptrtoint ptr %no_reclaim_cmds38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %no_reclaim_cmds38, align 4
  %conv40 = and i32 %15, 255
  %22 = call ptr @memcpy(ptr %no_reclaim_cmds, ptr %21, i32 %conv40)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end34.if.end41_crit_edge, %if.end34.thread
  %rx_buf_size = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 6
  %23 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buf_size, align 4
  %rx_buf_size42 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 234
  %25 = ptrtoint ptr %rx_buf_size42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rx_buf_size42, align 4
  %26 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %24, label %do.end.i [
    i32 4, label %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge
    i32 1, label %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge119
    i32 2, label %iwl_trans_get_rb_size_order.exit.thread
    i32 3, label %iwl_trans_get_rb_size_order.exit.thread114
  ]

if.end41.iwl_trans_get_rb_size_order.exit_crit_edge119: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_get_rb_size_order.exit

if.end41.iwl_trans_get_rb_size_order.exit_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_get_rb_size_order.exit

iwl_trans_get_rb_size_order.exit.thread:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %rx_page_order113 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %27 = ptrtoint ptr %rx_page_order113 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %rx_page_order113, align 4
  br label %iwl_trans_get_rb_size.exit

iwl_trans_get_rb_size_order.exit.thread114:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %rx_page_order116 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %28 = ptrtoint ptr %rx_page_order116 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %rx_page_order116, align 4
  br label %iwl_trans_get_rb_size.exit

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.171, i32 noundef 332, i32 noundef 9, ptr noundef null) #12
  %29 = ptrtoint ptr %rx_buf_size42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %rx_buf_size42, align 4
  br label %iwl_trans_get_rb_size_order.exit

iwl_trans_get_rb_size_order.exit:                 ; preds = %do.end.i, %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge, %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge119
  %30 = phi i32 [ %24, %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge ], [ %24, %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge119 ], [ %.pr, %do.end.i ]
  %retval.0.i = phi i32 [ 0, %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge ], [ 0, %if.end41.iwl_trans_get_rb_size_order.exit_crit_edge119 ], [ -1, %do.end.i ]
  %rx_page_order = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %31 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i, ptr %rx_page_order, align 4
  %switch.tableidx = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %32 = icmp ult i32 %switch.tableidx, 4
  br i1 %32, label %switch.lookup, label %do.end.i110

do.end.i110:                                      ; preds = %iwl_trans_get_rb_size_order.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.171, i32 noundef 350, i32 noundef 9, ptr noundef null) #12
  br label %iwl_trans_get_rb_size.exit

switch.lookup:                                    ; preds = %iwl_trans_get_rb_size_order.exit
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.iwl_trans_pcie_configure, i32 0, i32 %switch.tableidx
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %iwl_trans_get_rb_size.exit

iwl_trans_get_rb_size.exit:                       ; preds = %switch.lookup, %do.end.i110, %iwl_trans_get_rb_size_order.exit.thread114, %iwl_trans_get_rb_size_order.exit.thread
  %retval.0.i111 = phi i32 [ 0, %do.end.i110 ], [ 16384, %iwl_trans_get_rb_size_order.exit.thread114 ], [ 8192, %iwl_trans_get_rb_size_order.exit.thread ], [ %switch.load, %switch.lookup ]
  %rx_buf_bytes = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 237
  %34 = ptrtoint ptr %rx_buf_bytes to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i111, ptr %rx_buf_bytes, align 128
  %supported_dma_mask = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 238
  %35 = ptrtoint ptr %supported_dma_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4095, ptr %supported_dma_mask, align 4
  %trans_cfg47 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %36 = ptrtoint ptr %trans_cfg47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg47, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %39)
  %cmp48 = icmp ugt i32 %39, 18
  %spec.store.select = select i1 %cmp48, i32 2047, i32 4095
  %40 = ptrtoint ptr %supported_dma_mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.store.select, ptr %supported_dma_mask, align 4
  %bc_table_dword = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 7
  %41 = ptrtoint ptr %bc_table_dword to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bc_table_dword, align 4, !range !444
  %bc_table_dword55 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 5
  %43 = ptrtoint ptr %bc_table_dword55 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %bc_table_dword55, align 8
  %scd_set_active = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 8
  %44 = ptrtoint ptr %scd_set_active to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %scd_set_active, align 1, !range !444
  %scd_set_active57 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 235
  %46 = ptrtoint ptr %scd_set_active57 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %scd_set_active57, align 8
  %command_groups = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 9
  %47 = ptrtoint ptr %command_groups to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %command_groups, align 4
  %command_groups59 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 21
  %49 = ptrtoint ptr %command_groups59 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %command_groups59, align 8
  %command_groups_size = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 10
  %50 = ptrtoint ptr %command_groups_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %command_groups_size, align 4
  %command_groups_size60 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 22
  %52 = ptrtoint ptr %command_groups_size60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %command_groups_size60, align 4
  %reg_state = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 32, i32 20, i32 11, i32 1
  %53 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.load)
  %cmp61.not = icmp eq i8 %bf.load, 5
  br i1 %cmp61.not, label %iwl_trans_get_rb_size.exit.if.end66_crit_edge, label %if.then63

iwl_trans_get_rb_size.exit.if.end66_crit_edge:    ; preds = %iwl_trans_get_rb_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then63:                                        ; preds = %iwl_trans_get_rb_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %napi_dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 29, i32 44
  %call65 = tail call i32 @init_dummy_netdev(ptr noundef %napi_dev) #12
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %iwl_trans_get_rb_size.exit.if.end66_crit_edge
  %fw_reset_handshake = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 12
  %54 = ptrtoint ptr %fw_reset_handshake to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fw_reset_handshake, align 1, !range !444
  %fw_reset_handshake68 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 348
  %56 = ptrtoint ptr %fw_reset_handshake68 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %fw_reset_handshake68, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_set_pmi(ptr noundef %trans, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_trans_pcie_grab_nic_access(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %call = tail call zeroext i1 @__iwl_trans_pcie_grab_nic_access(ptr noundef %trans)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_release_nic_access(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 256
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !445

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2195, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_hold_nic_awake = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 263
  %1 = ptrtoint ptr %cmd_hold_nic_awake to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cmd_hold_nic_awake, align 8, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool25.not = icmp eq i8 %2, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %3 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %6)
  %cmp28 = icmp ugt i32 %6, 19
  %call.i.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef 36) #12
  %. = select i1 %cmp28, i32 -2097153, i32 -9
  %and37.i.i = and i32 %call.i.i, %.
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 36, i32 noundef %and37.i.i) #12
  br label %out

out:                                              ; preds = %if.end27, %if.end.out_crit_edge
  %reg_lock31 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 252
  tail call void @_raw_spin_unlock_bh(ptr noundef %reg_lock31) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_set_bits_mask(ptr noundef %trans, i32 noundef %reg, i32 noundef %mask, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 252
  tail call void @_raw_spin_lock_bh(ptr noundef %reg_lock) #12
  %neg.i = xor i32 %mask, -1
  %and.i = and i32 %neg.i, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.__iwl_trans_pcie_set_bits_mask.exit_crit_edge, label %land.rhs.i

entry.__iwl_trans_pcie_set_bits_mask.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iwl_trans_pcie_set_bits_mask.exit

land.rhs.i:                                       ; preds = %entry
  %.b46.i = load i1, ptr @__iwl_trans_pcie_set_bits_mask.__already_done, align 1
  br i1 %.b46.i, label %land.rhs.i.__iwl_trans_pcie_set_bits_mask.exit_crit_edge, label %if.then.i, !prof !446

land.rhs.i.__iwl_trans_pcie_set_bits_mask.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iwl_trans_pcie_set_bits_mask.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__iwl_trans_pcie_set_bits_mask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 743, i32 noundef 9, ptr noundef null) #12
  br label %__iwl_trans_pcie_set_bits_mask.exit

__iwl_trans_pcie_set_bits_mask.exit:              ; preds = %if.then.i, %land.rhs.i.__iwl_trans_pcie_set_bits_mask.exit_crit_edge, %entry.__iwl_trans_pcie_set_bits_mask.exit_crit_edge
  %call.i = tail call i32 @iwl_read32(ptr noundef %trans, i32 noundef %reg) #12
  %and37.i = and i32 %call.i, %neg.i
  %or.i = or i32 %and37.i, %value
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef %reg, i32 noundef %or.i) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %reg_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iwl_trans_pcie_dump_data(ptr noundef %trans, i32 noundef %dump_mask, ptr noundef readonly %sanitize_ops, ptr noundef %sanitize_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %0 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %q_id, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %7 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %10 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool3.not = icmp eq i16 %10, 0
  br i1 %tobool3.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %dump_mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool4, %land.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dump_mask)
  %tobool5.not = icmp eq i32 %dump_mask, 0
  br i1 %tobool5.not, label %land.end.cleanup_crit_edge, label %if.end

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.end
  %and6 = and i32 %dump_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %tobool9.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %n_window = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %n_window to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_window, align 4
  %mul = mul i32 %13, 332
  %add11 = add i32 %mul, 12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %len.0 = phi i32 [ 4, %if.end.if.end12_crit_edge ], [ %add11, %if.then10 ]
  %and13 = and i32 %dump_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  %size.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %len.0, 32
  %add4.i = add i32 %add.i, %15
  br label %if.end17

if.else.i:                                        ; preds = %if.then15
  %dest_tlv.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 2
  %16 = ptrtoint ptr %dest_tlv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dest_tlv.i, align 4
  %tobool9.not.i = icmp eq ptr %17, null
  br i1 %tobool9.not.i, label %if.else.i.if.end17_crit_edge, label %if.then10.i

if.else.i.if.end17_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then10.i:                                      ; preds = %if.else.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i = icmp eq i8 %19, 1
  %base_reg.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %base_reg.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %base_reg.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  br i1 %cmp.i, label %if.then14.i, label %if.else26.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %22) #12
  %23 = ptrtoint ptr %dest_tlv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dest_tlv.i, align 4
  %and21.i = and i32 %call.i, 268369920
  %end_shift.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %end_shift.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %end_shift.i, align 1
  %conv24.i = zext i8 %26 to i32
  %shr.i296 = lshr i32 %and21.i, %conv24.i
  %mul25.i = shl i32 %shr.i296, 8
  br label %if.end58.i

if.else26.i:                                      ; preds = %if.then10.i
  %end_reg.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %17, i32 0, i32 5
  %27 = ptrtoint ptr %end_reg.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %end_reg.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  %call32.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %22) #12
  %30 = ptrtoint ptr %dest_tlv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dest_tlv.i, align 4
  %base_shift35.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %base_shift35.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %base_shift35.i, align 1
  %conv36.i = zext i8 %33 to i32
  %shl37.i = shl i32 %call32.i, %conv36.i
  %call38.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %29) #12
  %34 = ptrtoint ptr %dest_tlv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dest_tlv.i, align 4
  %end_shift41.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %end_shift41.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %end_shift41.i, align 1
  %conv42.i = zext i8 %37 to i32
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %38 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %41)
  %cmp44.i = icmp ugt i32 %41, 15
  br i1 %cmp44.i, label %if.else26.i.if.then51.i_crit_edge, label %lor.lhs.false.i

if.else26.i.if.then51.i_crit_edge:                ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51.i

lor.lhs.false.i:                                  ; preds = %if.else26.i
  %monitor_mode.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %35, i32 0, i32 1
  %42 = ptrtoint ptr %monitor_mode.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %monitor_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp49.i = icmp eq i8 %43, 2
  br i1 %cmp49.i, label %lor.lhs.false.i.if.then51.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.if.then51.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51.i

if.then51.i:                                      ; preds = %lor.lhs.false.i.if.then51.i_crit_edge, %if.else26.i.if.then51.i_crit_edge
  %44 = add i32 %call38.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then51.i, %lor.lhs.false.i.if.end.i_crit_edge
  %.pn.i = phi i32 [ %44, %if.then51.i ], [ %call38.i, %lor.lhs.false.i.if.end.i_crit_edge ]
  %end.0.i = shl i32 %.pn.i, %conv42.i
  %sub.i = sub i32 %end.0.i, %shl37.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end.i, %if.then14.i
  %monitor_len.0.i = phi i32 [ %mul25.i, %if.then14.i ], [ %sub.i, %if.end.i ]
  %add59.i = add i32 %len.0, 32
  %add60.i = add i32 %add59.i, %monitor_len.0.i
  br label %if.end17

if.end17:                                         ; preds = %if.end58.i, %if.else.i.if.end17_crit_edge, %if.then.i, %if.end12.if.end17_crit_edge
  %len.2 = phi i32 [ %len.0, %if.end12.if.end17_crit_edge ], [ %len.0, %if.else.i.if.end17_crit_edge ], [ %add60.i, %if.end58.i ], [ %add4.i, %if.then.i ]
  %monitor_len.0 = phi i32 [ 0, %if.end12.if.end17_crit_edge ], [ 0, %if.else.i.if.end17_crit_edge ], [ %monitor_len.0.i, %if.end58.i ], [ %15, %if.then.i ]
  %and18 = and i32 %dump_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %add21 = add i32 %len.2, 600
  %spec.select = select i1 %tobool19.not, i32 %len.2, i32 %add21
  %and23 = and i32 %dump_mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end17.if.end39_crit_edge, label %if.then25

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then25:                                        ; preds = %if.end17
  %trans_cfg26 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %45 = ptrtoint ptr %trans_cfg26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trans_cfg26, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load27 = load i16, ptr %gen2, align 4
  %48 = and i16 %bf.load27, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool31.not = icmp eq i16 %48, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %add36 = add i32 %spec.select, 8200
  br label %if.end39

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %add37 = add i32 %spec.select, 4104
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then32, %if.end17.if.end39_crit_edge
  %len.4 = phi i32 [ %spec.select, %if.end17.if.end39_crit_edge ], [ %add37, %if.else ], [ %add36, %if.then32 ]
  br i1 %11, label %if.then41, label %if.end39.if.end51_crit_edge

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans_specific.i, align 128
  %retval.0.in.in.i = getelementptr inbounds %struct.iwl_rxq, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %retval.0.in.i = load ptr, ptr %retval.0.in.in.i, align 8
  %52 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %retval.0.i302 = load volatile i16, ptr %retval.0.in.i, align 1
  %53 = lshr i16 %retval.0.i302, 8
  %and45 = zext i16 %53 to i32
  %read = getelementptr inbounds %struct.iwl_rxq, ptr %50, i32 0, i32 5
  %54 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %read, align 4
  %sub46 = sub i32 %and45, %55
  %and47 = and i32 %sub46, 255
  %rx_page_order = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 236
  %56 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_page_order, align 4
  %shl = shl i32 4096, %57
  %add48 = or i32 %shl, 20
  %mul49 = mul i32 %and47, %add48
  %add50 = add i32 %mul49, %len.4
  br label %if.end51

if.end51:                                         ; preds = %if.then41, %if.end39.if.end51_crit_edge
  %len.5 = phi i32 [ %add50, %if.then41 ], [ %len.4, %if.end39.if.end51_crit_edge ]
  %num_rbs.0 = phi i32 [ %and47, %if.then41 ], [ 0, %if.end39.if.end51_crit_edge ]
  %trans_cfg52 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %58 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %trans_cfg52, align 4
  %gen253 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %gen253 to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load54 = load i16, ptr %gen253, align 4
  %61 = and i16 %bf.load54, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool58.not = icmp eq i16 %61, 0
  %and60 = and i32 %dump_mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %or.cond293 = or i1 %tobool61.not, %tobool58.not
  br i1 %or.cond293, label %if.end51.if.end68_crit_edge, label %for.cond.preheader

if.end51.if.end68_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

for.cond.preheader:                               ; preds = %if.end51
  %paging_cnt = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 3
  %62 = ptrtoint ptr %paging_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %paging_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp405 = icmp sgt i32 %63, 0
  br i1 %cmp405, label %for.body.lr.ph, label %for.cond.preheader.if.end68_crit_edge

for.cond.preheader.if.end68_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %paging = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 2
  %64 = ptrtoint ptr %paging to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %paging, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0407 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %len.6406 = phi i32 [ %len.5, %for.body.lr.ph ], [ %add67, %for.body.for.body_crit_edge ]
  %size = getelementptr %struct.iwl_dram_data, ptr %65, i32 %i.0407, i32 2
  %66 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size, align 4
  %add66 = add i32 %len.6406, 16
  %add67 = add i32 %add66, %67
  %inc = add nuw nsw i32 %i.0407, 1
  %exitcond.not = icmp eq i32 %inc, %63
  br i1 %exitcond.not, label %for.body.if.end68_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end68:                                         ; preds = %for.body.if.end68_crit_edge, %for.cond.preheader.if.end68_crit_edge, %if.end51.if.end68_crit_edge
  %len.7 = phi i32 [ %len.5, %if.end51.if.end68_crit_edge ], [ %len.5, %for.cond.preheader.if.end68_crit_edge ], [ %add67, %for.body.if.end68_crit_edge ]
  %call69 = tail call noalias ptr @vzalloc(i32 noundef %len.7) #18
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end68.cleanup_crit_edge, label %if.end72

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  %data73 = getelementptr inbounds %struct.iwl_trans_dump_data, ptr %call69, i32 0, i32 1
  br i1 %or.cond, label %if.end72.if.end137_crit_edge, label %if.then78

if.end72.if.end137_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then78:                                        ; preds = %if.end72
  %size80 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10, i32 1
  %68 = ptrtoint ptr %size80 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %size80, align 2
  %70 = ptrtoint ptr %data73 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 50331648, ptr %data73, align 1
  %data81 = getelementptr inbounds %struct.iwl_trans_dump_data, ptr %call69, i32 3
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %n_window84 = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 18
  %71 = ptrtoint ptr %n_window84 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n_window84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp85408 = icmp sgt i32 %72, 0
  br i1 %cmp85408, label %for.body87.lr.ph, label %if.then78.for.end132_crit_edge

if.then78.for.end132_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

for.body87.lr.ph:                                 ; preds = %if.then78
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 15
  %73 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %write_ptr, align 4
  %conv100 = zext i16 %69 to i32
  %tfd1.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 10
  %entries = getelementptr inbounds %struct.iwl_txq, ptr %3, i32 0, i32 3
  %tobool117.not = icmp eq ptr %sanitize_ops, null
  %frob_hcmd = getelementptr inbounds %struct.iwl_dump_sanitize_ops, ptr %sanitize_ops, i32 0, i32 1
  br label %for.body87

for.body87:                                       ; preds = %if.end128.for.body87_crit_edge, %for.body87.lr.ph
  %75 = phi i32 [ %72, %for.body87.lr.ph ], [ %111, %if.end128.for.body87_crit_edge ]
  %txcmd.0412 = phi ptr [ %data81, %for.body87.lr.ph ], [ %txcmd.1, %if.end128.for.body87_crit_edge ]
  %ptr.0411 = phi i32 [ %74, %for.body87.lr.ph ], [ %and.i308, %if.end128.for.body87_crit_edge ]
  %i.1410 = phi i32 [ 0, %for.body87.lr.ph ], [ %inc131, %if.end128.for.body87_crit_edge ]
  %len.8409 = phi i32 [ 0, %for.body87.lr.ph ], [ %len.9, %if.end128.for.body87_crit_edge ]
  %sub.i303 = add i32 %75, 65535
  %and.i = and i32 %sub.i303, %ptr.0411
  %76 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans_cfg52, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load91 = load i16, ptr %use_tfh, align 4
  %79 = and i16 %bf.load91, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool95.not = icmp eq i16 %79, 0
  %tfdidx.0 = select i1 %tobool95.not, i32 %ptr.0411, i32 %and.i
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %3, align 4
  %conv101 = and i32 %tfdidx.0, 255
  %mul102 = mul nuw nsw i32 %conv101, %conv100
  %add.ptr = getelementptr i8, ptr %81, i32 %mul102
  %82 = ptrtoint ptr %tfd1.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tfd1.i, align 8
  %conv.i304 = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp9.not.i = icmp eq i8 %83, 0
  br i1 %cmp9.not.i, label %for.body87.if.end128_crit_edge, label %for.body87.for.body.i_crit_edge

for.body87.for.body.i_crit_edge:                  ; preds = %for.body87
  br label %for.body.i

for.body87.if.end128_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

for.body.i:                                       ; preds = %iwl_txq_gen1_tfd_tb_get_len.exit.i.for.body.i_crit_edge, %for.body87.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %iwl_txq_gen1_tfd_tb_get_len.exit.i.for.body.i_crit_edge ], [ 0, %for.body87.for.body.i_crit_edge ]
  %cmdlen.010.i = phi i32 [ %add.i305, %iwl_txq_gen1_tfd_tb_get_len.exit.i.for.body.i_crit_edge ], [ 0, %for.body87.for.body.i_crit_edge ]
  br i1 %tobool95.not, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.iwl_tfh_tfd, ptr %add.ptr, i32 0, i32 1, i32 %i.011.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %arrayidx.i.i, align 1
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #12
  br label %iwl_txq_gen1_tfd_tb_get_len.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %hi_n_len.i.i = getelementptr %struct.iwl_tfd, ptr %add.ptr, i32 0, i32 2, i32 %i.011.i, i32 1
  %87 = ptrtoint ptr %hi_n_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %hi_n_len.i.i, align 1
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #12
  %90 = lshr i16 %89, 4
  br label %iwl_txq_gen1_tfd_tb_get_len.exit.i

iwl_txq_gen1_tfd_tb_get_len.exit.i:               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %86, %if.then.i.i ], [ %90, %if.end.i.i ]
  %conv4.i = zext i16 %retval.0.i.i to i32
  %add.i305 = add i32 %cmdlen.010.i, %conv4.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i304
  br i1 %exitcond.not.i, label %iwl_trans_pcie_get_cmdlen.exit, label %iwl_txq_gen1_tfd_tb_get_len.exit.i.for.body.i_crit_edge

iwl_txq_gen1_tfd_tb_get_len.exit.i.for.body.i_crit_edge: ; preds = %iwl_txq_gen1_tfd_tb_get_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

iwl_trans_pcie_get_cmdlen.exit:                   ; preds = %iwl_txq_gen1_tfd_tb_get_len.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 324, i32 %add.i305)
  %cmp104 = icmp ugt i32 %add.i305, 324
  br i1 %cmp104, label %iwl_trans_pcie_get_cmdlen.exit.if.then107_crit_edge, label %91

iwl_trans_pcie_get_cmdlen.exit.if.then107_crit_edge: ; preds = %iwl_trans_pcie_get_cmdlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then107

91:                                               ; preds = %iwl_trans_pcie_get_cmdlen.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i305)
  %tobool106.not = icmp eq i32 %add.i305, 0
  br i1 %tobool106.not, label %.if.end128_crit_edge, label %.if.then107_crit_edge

.if.then107_crit_edge:                            ; preds = %91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then107

.if.end128_crit_edge:                             ; preds = %91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then107:                                       ; preds = %.if.then107_crit_edge, %iwl_trans_pcie_get_cmdlen.exit.if.then107_crit_edge
  %92 = phi i32 [ %add.i305, %.if.then107_crit_edge ], [ 324, %iwl_trans_pcie_get_cmdlen.exit.if.then107_crit_edge ]
  %add108 = add i32 %len.8409, 8
  %add109 = add i32 %add108, %92
  %93 = tail call i32 @llvm.bswap.i32(i32 %add.i305)
  %94 = ptrtoint ptr %txcmd.0412 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %txcmd.0412, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %92)
  %caplen111 = getelementptr inbounds %struct.iwl_fw_error_dump_txcmd, ptr %txcmd.0412, i32 0, i32 1
  %96 = ptrtoint ptr %caplen111 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %caplen111, align 1
  %data112 = getelementptr inbounds %struct.iwl_fw_error_dump_txcmd, ptr %txcmd.0412, i32 0, i32 2
  %97 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %entries, align 4
  %conv89.mask = and i32 %and.i, 255
  %arrayidx115 = getelementptr %struct.iwl_pcie_txq_entry, ptr %98, i32 %conv89.mask
  %99 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx115, align 4
  %101 = call ptr @memcpy(ptr %data112, ptr %100, i32 %92)
  br i1 %tobool117.not, label %if.then107.if.end124_crit_edge, label %land.lhs.true118

if.then107.if.end124_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

land.lhs.true118:                                 ; preds = %if.then107
  %102 = ptrtoint ptr %frob_hcmd to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %frob_hcmd, align 4
  %tobool119.not = icmp eq ptr %103, null
  br i1 %tobool119.not, label %land.lhs.true118.if.end124_crit_edge, label %if.then120

land.lhs.true118.if.end124_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then120:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %103(ptr noundef %sanitize_ctx, ptr noundef %data112, i32 noundef %92) #12
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %land.lhs.true118.if.end124_crit_edge, %if.then107.if.end124_crit_edge
  %add.ptr127 = getelementptr i8, ptr %data112, i32 %92
  br label %if.end128

if.end128:                                        ; preds = %if.end124, %.if.end128_crit_edge, %for.body87.if.end128_crit_edge
  %len.9 = phi i32 [ %len.8409, %.if.end128_crit_edge ], [ %add109, %if.end124 ], [ %len.8409, %for.body87.if.end128_crit_edge ]
  %txcmd.1 = phi ptr [ %txcmd.0412, %.if.end128_crit_edge ], [ %add.ptr127, %if.end124 ], [ %txcmd.0412, %for.body87.if.end128_crit_edge ]
  %dec.i = add i32 %ptr.0411, -1
  %104 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %trans_cfg52, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %max_tfd_queue_size.i = getelementptr inbounds %struct.iwl_base_params, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %max_tfd_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_tfd_queue_size.i, align 4
  %sub.i307 = add i32 %109, -1
  %and.i308 = and i32 %sub.i307, %dec.i
  %inc131 = add nuw nsw i32 %i.1410, 1
  %110 = ptrtoint ptr %n_window84 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %n_window84, align 4
  %cmp85 = icmp slt i32 %inc131, %111
  br i1 %cmp85, label %if.end128.for.body87_crit_edge, label %if.end128.for.end132_crit_edge

if.end128.for.end132_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end132

if.end128.for.body87_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body87

for.end132:                                       ; preds = %if.end128.for.end132_crit_edge, %if.then78.for.end132_crit_edge
  %len.8.lcssa = phi i32 [ 0, %if.then78.for.end132_crit_edge ], [ %len.9, %if.end128.for.end132_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %112 = tail call i32 @llvm.bswap.i32(i32 %len.8.lcssa)
  %len134 = getelementptr inbounds %struct.iwl_trans_dump_data, ptr %call69, i32 2
  %113 = ptrtoint ptr %len134 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %len134, align 1
  %add135 = add i32 %len.8.lcssa, 8
  %add.ptr.i = getelementptr i8, ptr %data81, i32 %len.8.lcssa
  br label %if.end137

if.end137:                                        ; preds = %for.end132, %if.end72.if.end137_crit_edge
  %data.0 = phi ptr [ %data73, %if.end72.if.end137_crit_edge ], [ %add.ptr.i, %for.end132 ]
  %len.10 = phi i32 [ 0, %if.end72.if.end137_crit_edge ], [ %add135, %for.end132 ]
  br i1 %tobool19.not, label %if.end137.if.end143_crit_edge, label %if.then140

if.end137.if.end143_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then140:                                       ; preds = %if.end137
  %114 = ptrtoint ptr %data.0 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 16777216, ptr %data.0, align 1
  %len.i309 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.0, i32 0, i32 1
  %115 = ptrtoint ptr %len.i309 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 1342308352, ptr %len.i309, align 1
  %data1.i310 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.0, i32 0, i32 2
  %hw_base.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  br label %for.body.i313

for.body.i313:                                    ; preds = %for.body.i313.for.body.i313_crit_edge, %if.then140
  %i.03.i = phi i32 [ 0, %if.then140 ], [ %add.i311, %for.body.i313.for.body.i313_crit_edge ]
  %val.02.i = phi ptr [ %data1.i310, %if.then140 ], [ %incdec.ptr.i, %for.body.i313.for.body.i313_crit_edge ]
  %116 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 %i.03.i
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  %incdec.ptr.i = getelementptr i32, ptr %val.02.i, i32 1
  %119 = ptrtoint ptr %val.02.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %val.02.i, align 4
  %add.i311 = add nuw nsw i32 %i.03.i, 4
  %cmp.i312 = icmp ult i32 %i.03.i, 588
  br i1 %cmp.i312, label %for.body.i313.for.body.i313_crit_edge, label %iwl_trans_pcie_dump_csr.exit

for.body.i313.for.body.i313_crit_edge:            ; preds = %for.body.i313
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i313

iwl_trans_pcie_dump_csr.exit:                     ; preds = %for.body.i313
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %len.i309 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %len.i309, align 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #12
  %add.ptr.i1.i = getelementptr i8, ptr %data1.i310, i32 %122
  %add142 = add i32 %len.10, 600
  br label %if.end143

if.end143:                                        ; preds = %iwl_trans_pcie_dump_csr.exit, %if.end137.if.end143_crit_edge
  %data.1 = phi ptr [ %data.0, %if.end137.if.end143_crit_edge ], [ %add.ptr.i1.i, %iwl_trans_pcie_dump_csr.exit ]
  %len.11 = phi i32 [ %len.10, %if.end137.if.end143_crit_edge ], [ %add142, %iwl_trans_pcie_dump_csr.exit ]
  br i1 %tobool24.not, label %if.end143.if.end149_crit_edge, label %if.then146

if.end143.if.end149_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then146:                                       ; preds = %if.end143
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %123 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %124, i32 0, i32 32
  %125 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %grab_nic_access.i, align 4
  %call.i314 = tail call zeroext i1 %126(ptr noundef %trans) #12
  br i1 %call.i314, label %if.end.i317, label %if.then146.iwl_trans_pcie_fh_regs_dump.exit_crit_edge, !prof !446

if.then146.iwl_trans_pcie_fh_regs_dump.exit_crit_edge: ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_pcie_fh_regs_dump.exit

if.end.i317:                                      ; preds = %if.then146
  %127 = ptrtoint ptr %data.1 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 134217728, ptr %data.1, align 1
  %len.i315 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.1, i32 0, i32 1
  %128 = ptrtoint ptr %len.i315 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 1048576, ptr %len.i315, align 1
  %data2.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.1, i32 0, i32 2
  %129 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %trans_cfg52, align 4
  %gen2.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %gen2.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load.i = load i16, ptr %gen2.i, align 4
  %132 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool3.not.i = icmp eq i16 %132, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %if.else.i324

for.cond.preheader.i:                             ; preds = %if.end.i317
  %hw_base.i.i318 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  br label %for.body.i323

for.body.i323:                                    ; preds = %for.body.i323.for.body.i323_crit_edge, %for.cond.preheader.i
  %i.050.i = phi i32 [ 4096, %for.cond.preheader.i ], [ %add.i321, %for.body.i323.for.body.i323_crit_edge ]
  %val.049.i = phi ptr [ %data2.i, %for.cond.preheader.i ], [ %incdec.ptr.i320, %for.body.i323.for.body.i323_crit_edge ]
  %133 = ptrtoint ptr %hw_base.i.i318 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw_base.i.i318, align 8
  %add.ptr.i.i319 = getelementptr i8, ptr %134, i32 %i.050.i
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i319) #12, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  %incdec.ptr.i320 = getelementptr i32, ptr %val.049.i, i32 1
  %136 = ptrtoint ptr %val.049.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %val.049.i, align 4
  %add.i321 = add nuw nsw i32 %i.050.i, 4
  %cmp.i322 = icmp ult i32 %i.050.i, 8188
  br i1 %cmp.i322, label %for.body.i323.for.body.i323_crit_edge, label %for.body.i323.if.end16.i_crit_edge

for.body.i323.if.end16.i_crit_edge:               ; preds = %for.body.i323
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

for.body.i323.for.body.i323_crit_edge:            ; preds = %for.body.i323
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i323

if.else.i324:                                     ; preds = %if.end.i317
  %umac_prph_offset.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %130, i32 0, i32 2
  %137 = ptrtoint ptr %umac_prph_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %umac_prph_offset.i.i, align 4
  %add.i.i = add i32 %138, 10510336
  %add.i4145.i = add i32 %138, 10518528
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add.i4145.i)
  %cmp946.i = icmp ult i32 %add.i.i, %add.i4145.i
  br i1 %cmp946.i, label %for.body10.lr.ph.i, label %if.else.i324.if.end16.i_crit_edge

if.else.i324.if.end16.i_crit_edge:                ; preds = %if.else.i324
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

for.body10.lr.ph.i:                               ; preds = %if.else.i324
  %hw_base.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 203
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %139 = phi ptr [ %130, %for.body10.lr.ph.i ], [ %150, %for.body10.i.for.body10.i_crit_edge ]
  %i.148.i = phi i32 [ %add.i.i, %for.body10.lr.ph.i ], [ %add14.i, %for.body10.i.for.body10.i_crit_edge ]
  %val.147.i = phi ptr [ %data2.i, %for.body10.lr.ph.i ], [ %incdec.ptr12.i, %for.body10.i.for.body10.i_crit_edge ]
  %device_family.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %device_family.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %device_family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %141)
  %cmp.i.i.i = icmp ugt i32 %141, 18
  %..i.i.i = select i1 %cmp.i.i.i, i32 16777215, i32 1048575
  %and.i.i = and i32 %..i.i.i, %i.148.i
  %or.i.i = or i32 %and.i.i, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %142 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %143 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %144, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %142) #12, !srcloc !452
  %145 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw_base.i.i.i, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %146, i32 1104
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #12, !srcloc !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  %incdec.ptr12.i = getelementptr i32, ptr %val.147.i, i32 1
  %148 = ptrtoint ptr %val.147.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %val.147.i, align 4
  %add14.i = add i32 %i.148.i, 4
  %149 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %trans_cfg52, align 4
  %umac_prph_offset.i40.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %umac_prph_offset.i40.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %umac_prph_offset.i40.i, align 4
  %add.i41.i = add i32 %152, 10518528
  %cmp9.i = icmp ult i32 %add14.i, %add.i41.i
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.if.end16.i_crit_edge

for.body10.i.if.end16.i_crit_edge:                ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i

if.end16.i:                                       ; preds = %for.body10.i.if.end16.i_crit_edge, %if.else.i324.if.end16.i_crit_edge, %for.body.i323.if.end16.i_crit_edge
  %153 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %154, i32 0, i32 33
  %155 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %156(ptr noundef %trans) #12
  %157 = ptrtoint ptr %len.i315 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %len.i315, align 1
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #12
  %add.ptr.i42.i = getelementptr i8, ptr %data2.i, i32 %159
  br label %iwl_trans_pcie_fh_regs_dump.exit

iwl_trans_pcie_fh_regs_dump.exit:                 ; preds = %if.end16.i, %if.then146.iwl_trans_pcie_fh_regs_dump.exit_crit_edge
  %data.2 = phi ptr [ %add.ptr.i42.i, %if.end16.i ], [ %data.1, %if.then146.iwl_trans_pcie_fh_regs_dump.exit_crit_edge ]
  %retval.0.i327 = phi i32 [ 4104, %if.end16.i ], [ 0, %if.then146.iwl_trans_pcie_fh_regs_dump.exit_crit_edge ]
  %add148 = add i32 %retval.0.i327, %len.11
  br label %if.end149

if.end149:                                        ; preds = %iwl_trans_pcie_fh_regs_dump.exit, %if.end143.if.end149_crit_edge
  %data.3 = phi ptr [ %data.1, %if.end143.if.end149_crit_edge ], [ %data.2, %iwl_trans_pcie_fh_regs_dump.exit ]
  %len.12 = phi i32 [ %len.11, %if.end143.if.end149_crit_edge ], [ %add148, %iwl_trans_pcie_fh_regs_dump.exit ]
  br i1 %11, label %if.then151, label %if.end149.if.end154_crit_edge

if.end149.if.end154_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then151:                                       ; preds = %if.end149
  %rx_buf_bytes.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 237
  %160 = ptrtoint ptr %rx_buf_bytes.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rx_buf_bytes.i, align 128
  %162 = ptrtoint ptr %trans_specific.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %trans_specific.i, align 128
  %lock.i = getelementptr inbounds %struct.iwl_rxq, ptr %163, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %retval.0.in.in.i.i = getelementptr inbounds %struct.iwl_rxq, ptr %163, i32 0, i32 15
  %164 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %retval.0.in.i.i = load ptr, ptr %retval.0.in.in.i.i, align 8
  %165 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %retval.0.i.i328 = load volatile i16, ptr %retval.0.in.i.i, align 1
  %166 = and i16 %retval.0.i.i328, -241
  %167 = tail call i16 @llvm.bswap.i16(i16 %166) #12
  %and.i329 = zext i16 %167 to i32
  %read.i = getelementptr inbounds %struct.iwl_rxq, ptr %163, i32 0, i32 5
  %168 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %read.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %and.i329)
  %cmp.not38.i = icmp ne i32 %169, %and.i329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rbs.0)
  %cmp439.i = icmp ne i32 %num_rbs.0, 0
  %or.cond40.i = and i1 %cmp439.i, %cmp.not38.i
  br i1 %or.cond40.i, label %for.body.lr.ph.i331, label %if.then151.iwl_trans_pcie_dump_rbs.exit_crit_edge

if.then151.iwl_trans_pcie_dump_rbs.exit_crit_edge: ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_pcie_dump_rbs.exit

for.body.lr.ph.i331:                              ; preds = %if.then151
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %add.i330 = add i32 %161, 20
  %add8.i = add i32 %161, 12
  %170 = tail call i32 @llvm.bswap.i32(i32 %add8.i) #12
  br label %for.body.i338

for.body.i338:                                    ; preds = %for.body.i338.for.body.i338_crit_edge, %for.body.lr.ph.i331
  %data.4 = phi ptr [ %data.3, %for.body.lr.ph.i331 ], [ %add.ptr.i.i335, %for.body.i338.for.body.i338_crit_edge ]
  %rb_len.043.i = phi i32 [ 0, %for.body.lr.ph.i331 ], [ %add7.i, %for.body.i338.for.body.i338_crit_edge ]
  %j.042.i = phi i32 [ 0, %for.body.lr.ph.i331 ], [ %inc.i337, %for.body.i338.for.body.i338_crit_edge ]
  %i.041.i = phi i32 [ %169, %for.body.lr.ph.i331 ], [ %and15.i, %for.body.i338.for.body.i338_crit_edge ]
  %arrayidx6.i = getelementptr %struct.iwl_rxq, ptr %163, i32 0, i32 19, i32 %i.041.i
  %171 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx6.i, align 4
  %173 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i, align 8
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %172, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %174, i32 noundef %176, i32 noundef %161, i32 noundef 2) #12
  %add7.i = add i32 %add.i330, %rb_len.043.i
  %177 = ptrtoint ptr %data.4 to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 184549376, ptr %data.4, align 1
  %len.i332 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.4, i32 0, i32 1
  %178 = ptrtoint ptr %len.i332 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %170, ptr %len.i332, align 1
  %data9.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.4, i32 0, i32 2
  %179 = tail call i32 @llvm.bswap.i32(i32 %i.041.i) #12
  %180 = ptrtoint ptr %data9.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %data9.i, align 4
  %data10.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.4, i32 2, i32 1
  %page.i = getelementptr inbounds %struct.iwl_rx_mem_buffer, ptr %172, i32 0, i32 1
  %181 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %page.i, align 4
  %call12.i = tail call ptr @page_address(ptr noundef %182) #12
  %183 = call ptr @memcpy(ptr %data10.i, ptr %call12.i, i32 %161)
  %184 = ptrtoint ptr %len.i332 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %len.i332, align 1
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #12
  %add.ptr.i.i335 = getelementptr i8, ptr %data9.i, i32 %186
  %add14.i336 = add i32 %i.041.i, 1
  %and15.i = and i32 %add14.i336, 255
  %inc.i337 = add nuw nsw i32 %j.042.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %and.i329)
  %cmp.not.i = icmp ne i32 %and15.i, %and.i329
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i337, i32 %num_rbs.0)
  %cmp4.i = icmp ult i32 %inc.i337, %num_rbs.0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %for.body.i338.for.body.i338_crit_edge, label %for.body.i338.iwl_trans_pcie_dump_rbs.exit_crit_edge

for.body.i338.iwl_trans_pcie_dump_rbs.exit_crit_edge: ; preds = %for.body.i338
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_pcie_dump_rbs.exit

for.body.i338.for.body.i338_crit_edge:            ; preds = %for.body.i338
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i338

iwl_trans_pcie_dump_rbs.exit:                     ; preds = %for.body.i338.iwl_trans_pcie_dump_rbs.exit_crit_edge, %if.then151.iwl_trans_pcie_dump_rbs.exit_crit_edge
  %data.5 = phi ptr [ %data.3, %if.then151.iwl_trans_pcie_dump_rbs.exit_crit_edge ], [ %add.ptr.i.i335, %for.body.i338.iwl_trans_pcie_dump_rbs.exit_crit_edge ]
  %rb_len.0.lcssa.i = phi i32 [ 0, %if.then151.iwl_trans_pcie_dump_rbs.exit_crit_edge ], [ %add7.i, %for.body.i338.iwl_trans_pcie_dump_rbs.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %add153 = add i32 %rb_len.0.lcssa.i, %len.12
  br label %if.end154

if.end154:                                        ; preds = %iwl_trans_pcie_dump_rbs.exit, %if.end149.if.end154_crit_edge
  %data.6 = phi ptr [ %data.5, %iwl_trans_pcie_dump_rbs.exit ], [ %data.3, %if.end149.if.end154_crit_edge ]
  %len.13 = phi i32 [ %add153, %iwl_trans_pcie_dump_rbs.exit ], [ %len.12, %if.end149.if.end154_crit_edge ]
  %187 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %trans_cfg52, align 4
  %gen2156 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %188, i32 0, i32 5
  %189 = ptrtoint ptr %gen2156 to i32
  call void @__asan_load2_noabort(i32 %189)
  %bf.load157 = load i16, ptr %gen2156, align 4
  %190 = and i16 %bf.load157, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool161.not = icmp eq i16 %190, 0
  %or.cond295 = or i1 %tobool61.not, %tobool161.not
  br i1 %or.cond295, label %if.end154.if.end193_crit_edge, label %for.cond166.preheader

if.end154.if.end193_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

for.cond166.preheader:                            ; preds = %if.end154
  %paging_cnt168 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 3
  %191 = ptrtoint ptr %paging_cnt168 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %paging_cnt168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp169415 = icmp sgt i32 %192, 0
  br i1 %cmp169415, label %for.body171.lr.ph, label %for.cond166.preheader.if.end193_crit_edge

for.cond166.preheader.if.end193_crit_edge:        ; preds = %for.cond166.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

for.body171.lr.ph:                                ; preds = %for.cond166.preheader
  %paging174 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 33, i32 2
  br label %for.body171

for.body171:                                      ; preds = %for.body171.for.body171_crit_edge, %for.body171.lr.ph
  %i.2418 = phi i32 [ 0, %for.body171.lr.ph ], [ %inc191, %for.body171.for.body171_crit_edge ]
  %len.14417 = phi i32 [ %len.13, %for.body171.lr.ph ], [ %add189, %for.body171.for.body171_crit_edge ]
  %data.7416 = phi ptr [ %data.6, %for.body171.lr.ph ], [ %add.ptr.i341, %for.body171.for.body171_crit_edge ]
  %193 = ptrtoint ptr %paging174 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %paging174, align 8
  %size176 = getelementptr %struct.iwl_dram_data, ptr %194, i32 %i.2418, i32 2
  %195 = ptrtoint ptr %size176 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %size176, align 4
  %197 = ptrtoint ptr %data.7416 to i32
  call void @__asan_storeN_noabort(i32 %197, i32 4)
  store i32 201326592, ptr %data.7416, align 1
  %add178 = add i32 %196, 8
  %198 = tail call i32 @llvm.bswap.i32(i32 %add178)
  %len179 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.7416, i32 0, i32 1
  %199 = ptrtoint ptr %len179 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %198, ptr %len179, align 1
  %data180 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.7416, i32 0, i32 2
  %200 = tail call i32 @llvm.bswap.i32(i32 %i.2418)
  %201 = ptrtoint ptr %data180 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %data180, align 4
  %data182 = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.7416, i32 2
  %202 = ptrtoint ptr %paging174 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %paging174, align 8
  %block = getelementptr %struct.iwl_dram_data, ptr %203, i32 %i.2418, i32 1
  %204 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %block, align 4
  %206 = call ptr @memcpy(ptr %data182, ptr %205, i32 %196)
  %add.ptr.i341 = getelementptr i8, ptr %data180, i32 %add178
  %add188 = add i32 %len.14417, 16
  %add189 = add i32 %add188, %196
  %inc191 = add nuw nsw i32 %i.2418, 1
  %207 = ptrtoint ptr %paging_cnt168 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %paging_cnt168, align 4
  %cmp169 = icmp slt i32 %inc191, %208
  br i1 %cmp169, label %for.body171.for.body171_crit_edge, label %for.body171.if.end193_crit_edge

for.body171.if.end193_crit_edge:                  ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

for.body171.for.body171_crit_edge:                ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body171

if.end193:                                        ; preds = %for.body171.if.end193_crit_edge, %for.cond166.preheader.if.end193_crit_edge, %if.end154.if.end193_crit_edge
  %data.8 = phi ptr [ %data.6, %if.end154.if.end193_crit_edge ], [ %data.6, %for.cond166.preheader.if.end193_crit_edge ], [ %add.ptr.i341, %for.body171.if.end193_crit_edge ]
  %len.15 = phi i32 [ %len.13, %if.end154.if.end193_crit_edge ], [ %len.13, %for.cond166.preheader.if.end193_crit_edge ], [ %add189, %for.body171.if.end193_crit_edge ]
  br i1 %tobool14.not, label %if.end193.if.end199_crit_edge, label %if.then196

if.end193.if.end199_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then196:                                       ; preds = %if.end193
  %dest_tlv.i342 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 2
  %209 = ptrtoint ptr %dest_tlv.i342 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dest_tlv.i342, align 4
  %tobool.not.i343 = icmp eq ptr %210, null
  br i1 %tobool.not.i343, label %lor.lhs.false.i346, label %if.then196.if.then.i352_crit_edge

if.then196.if.then.i352_crit_edge:                ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i352

lor.lhs.false.i346:                               ; preds = %if.then196
  %size.i344 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 2
  %211 = ptrtoint ptr %size.i344 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %size.i344, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool3.not.i345 = icmp eq i32 %212, 0
  br i1 %tobool3.not.i345, label %lor.lhs.false.i346.iwl_trans_pcie_dump_monitor.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i346.iwl_trans_pcie_dump_monitor.exit_crit_edge: ; preds = %lor.lhs.false.i346
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_pcie_dump_monitor.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i346
  %213 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %trans_cfg52, align 4
  %device_family.i348 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %device_family.i348 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %device_family.i348, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %216)
  %cmp.i349 = icmp eq i32 %216, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %216)
  %cmp7.i = icmp ugt i32 %216, 18
  %or.cond.i350 = or i1 %cmp.i349, %cmp7.i
  br i1 %or.cond.i350, label %land.lhs.true.i.if.then.i352_crit_edge, label %land.lhs.true.i.iwl_trans_pcie_dump_monitor.exit_crit_edge

land.lhs.true.i.iwl_trans_pcie_dump_monitor.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_pcie_dump_monitor.exit

land.lhs.true.i.if.then.i352_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i352

if.then.i352:                                     ; preds = %land.lhs.true.i.if.then.i352_crit_edge, %if.then196.if.then.i352_crit_edge
  %217 = ptrtoint ptr %data.8 to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 83886080, ptr %data.8, align 1
  %data8.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 0, i32 2
  %218 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %trans_cfg52, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %221)
  %cmp.i.i = icmp ugt i32 %221, 18
  br i1 %cmp.i.i, label %if.then.i352.if.end9.i.i_crit_edge, label %if.else.i.i

if.then.i352.if.end9.i.i_crit_edge:               ; preds = %if.then.i352
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.else.i.i:                                      ; preds = %if.then.i352
  %222 = ptrtoint ptr %dest_tlv.i342 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dest_tlv.i342, align 4
  %tobool.not.i.i353 = icmp eq ptr %223, null
  br i1 %tobool.not.i.i353, label %if.else.i.i.if.end9.i.i_crit_edge, label %if.then1.i.i

if.else.i.i.if.end9.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i

if.then1.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %write_ptr_reg.i.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %223, i32 0, i32 6
  %224 = ptrtoint ptr %write_ptr_reg.i.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %write_ptr_reg.i.i, align 1
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #12
  %wrap_count.i.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %223, i32 0, i32 7
  %227 = ptrtoint ptr %wrap_count.i.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %wrap_count.i.i, align 1
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #12
  %base_reg.i.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %223, i32 0, i32 4
  %230 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %base_reg.i.i, align 1
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #12
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then1.i.i, %if.else.i.i.if.end9.i.i_crit_edge, %if.then.i352.if.end9.i.i_crit_edge
  %base.0.i.i = phi i32 [ %232, %if.then1.i.i ], [ 13646880, %if.then.i352.if.end9.i.i_crit_edge ], [ 10501148, %if.else.i.i.if.end9.i.i_crit_edge ]
  %base_high.0.i.i = phi i32 [ -1, %if.then1.i.i ], [ 13646884, %if.then.i352.if.end9.i.i_crit_edge ], [ -1, %if.else.i.i.if.end9.i.i_crit_edge ]
  %write_ptr.0.i.i = phi i32 [ %226, %if.then1.i.i ], [ 13646876, %if.then.i352.if.end9.i.i_crit_edge ], [ 10501188, %if.else.i.i.if.end9.i.i_crit_edge ]
  %wrap_cnt.0.i.i = phi i32 [ %229, %if.then1.i.i ], [ 13646892, %if.then.i352.if.end9.i.i_crit_edge ], [ 10501192, %if.else.i.i.if.end9.i.i_crit_edge ]
  %call.i.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %write_ptr.0.i.i) #12
  %call10.i.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %wrap_cnt.0.i.i) #12
  %233 = tail call i32 @llvm.bswap.i32(i32 %call10.i.i) #12
  %fw_mon_cycle_cnt.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 2
  %234 = ptrtoint ptr %fw_mon_cycle_cnt.i.i to i32
  call void @__asan_storeN_noabort(i32 %234, i32 4)
  store i32 %233, ptr %fw_mon_cycle_cnt.i.i, align 1
  %call11.i.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %base.0.i.i) #12
  %235 = tail call i32 @llvm.bswap.i32(i32 %call11.i.i) #12
  %fw_mon_base_ptr.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 1, i32 1
  %236 = ptrtoint ptr %fw_mon_base_ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %235, ptr %fw_mon_base_ptr.i.i, align 1
  %237 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %trans_cfg52, align 4
  %device_family13.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %device_family13.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %device_family13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %240)
  %cmp14.i.i = icmp ugt i32 %240, 18
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.end9.i.i.iwl_trans_pcie_dump_pointers.exit.i_crit_edge

if.end9.i.i.iwl_trans_pcie_dump_pointers.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_trans_pcie_dump_pointers.exit.i

if.then15.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %base_high.0.i.i) #12
  %241 = tail call i32 @llvm.bswap.i32(i32 %call16.i.i) #12
  %fw_mon_base_high_ptr.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 2, i32 1
  %242 = ptrtoint ptr %fw_mon_base_high_ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %242, i32 4)
  store i32 %241, ptr %fw_mon_base_high_ptr.i.i, align 1
  %and.i.i354 = lshr i32 %call.i.i, 2
  %shr.i.i = and i32 %and.i.i354, 4194303
  br label %iwl_trans_pcie_dump_pointers.exit.i

iwl_trans_pcie_dump_pointers.exit.i:              ; preds = %if.then15.i.i, %if.end9.i.i.iwl_trans_pcie_dump_pointers.exit.i_crit_edge
  %write_ptr_val.0.i.i = phi i32 [ %shr.i.i, %if.then15.i.i ], [ %call.i.i, %if.end9.i.i.iwl_trans_pcie_dump_pointers.exit.i_crit_edge ]
  %243 = tail call i32 @llvm.bswap.i32(i32 %write_ptr_val.0.i.i) #12
  %244 = ptrtoint ptr %data8.i to i32
  call void @__asan_storeN_noabort(i32 %244, i32 4)
  store i32 %243, ptr %data8.i, align 1
  %size9.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 2
  %245 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %size9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool10.not.i = icmp eq i32 %246, 0
  br i1 %tobool10.not.i, label %if.else.i356, label %if.then11.i

if.then11.i:                                      ; preds = %iwl_trans_pcie_dump_pointers.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data12.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 4
  %block.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 14, i32 1
  %247 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %block.i, align 4
  %249 = call ptr @memcpy(ptr %data12.i, ptr %248, i32 %246)
  %250 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %size9.i, align 4
  br label %if.end51.i

if.else.i356:                                     ; preds = %iwl_trans_pcie_dump_pointers.exit.i
  %252 = ptrtoint ptr %dest_tlv.i342 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dest_tlv.i342, align 4
  %monitor_mode.i355 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %monitor_mode.i355 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %monitor_mode.i355, align 1
  %256 = zext i8 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.200)
  switch i8 %255, label %if.else.i356.if.end51.i_crit_edge [
    i8 0, label %if.then20.i
    i8 2, label %if.then46.i
  ]

if.else.i356.if.end51.i_crit_edge:                ; preds = %if.else.i356
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then20.i:                                      ; preds = %if.else.i356
  %257 = ptrtoint ptr %fw_mon_base_ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %257, i32 4)
  %258 = load i32, ptr %fw_mon_base_ptr.i.i, align 1
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #12
  %260 = ptrtoint ptr %253 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %253, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool23.not.i = icmp eq i8 %261, 0
  %call30.i = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %259) #12
  br i1 %tobool23.not.i, label %if.else29.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i357 = and i32 %call30.i, 4095
  %262 = ptrtoint ptr %dest_tlv.i342 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dest_tlv.i342, align 4
  %base_shift.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %263, i32 0, i32 8
  %264 = ptrtoint ptr %base_shift.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %base_shift.i, align 1
  %conv27.i = zext i8 %265 to i32
  %shl.i = shl i32 %and.i357, %conv27.i
  %mul.i = shl i32 %shl.i, 8
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %266 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %cfg.i, align 8
  %smem_offset.i = getelementptr inbounds %struct.iwl_cfg, ptr %267, i32 0, i32 17
  %268 = ptrtoint ptr %smem_offset.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %smem_offset.i, align 8
  %add28.i = add i32 %mul.i, %269
  br label %if.end.i358

if.else29.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %270 = ptrtoint ptr %dest_tlv.i342 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dest_tlv.i342, align 4
  %base_shift33.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %271, i32 0, i32 8
  %272 = ptrtoint ptr %base_shift33.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %base_shift33.i, align 1
  %conv34.i = zext i8 %273 to i32
  %shl35.i = shl i32 %call30.i, %conv34.i
  br label %if.end.i358

if.end.i358:                                      ; preds = %if.else29.i, %if.then24.i
  %base.0.i = phi i32 [ %add28.i, %if.then24.i ], [ %shl35.i, %if.else29.i ]
  %data36.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 4
  %div90.i = lshr i32 %monitor_len.0, 2
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %274 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %275, i32 0, i32 26
  %276 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %read_mem.i.i, align 4
  %call.i91.i = tail call i32 %277(ptr noundef %trans, i32 noundef %base.0.i, ptr noundef %data36.i, i32 noundef %div90.i) #12
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.else.i356
  %shr.i92.i = lshr i32 %monitor_len.0, 2
  %data.i.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 4
  %ops.i93.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %278 = ptrtoint ptr %ops.i93.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i93.i, align 4
  %grab_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %279, i32 0, i32 32
  %280 = ptrtoint ptr %grab_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %grab_nic_access.i.i, align 4
  %call.i94.i = tail call zeroext i1 %281(ptr noundef %trans) #12
  br i1 %call.i94.i, label %if.end.i.i359, label %if.then46.i.if.end51.i_crit_edge, !prof !446

if.then46.i.if.end51.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.end.i.i359:                                    ; preds = %if.then46.i
  %282 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %trans_cfg52, align 4
  %umac_prph_offset.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %umac_prph_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %umac_prph_offset.i.i.i, align 4
  %add.i.i.i = add i32 %285, 10501216
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef %add.i.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %monitor_len.0)
  %cmp19.not.i.i = icmp ult i32 %monitor_len.0, 4
  br i1 %cmp19.not.i.i, label %if.end.i.i359.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i359.for.end.i.i_crit_edge:              ; preds = %if.end.i.i359
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i359
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %shr.i92.i, i32 1) #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.020.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %286 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %trans_cfg52, align 4
  %umac_prph_offset.i14.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %umac_prph_offset.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %umac_prph_offset.i14.i.i, align 4
  %add.i15.i.i = add i32 %289, 10501212
  %call.i.i.i = tail call i32 @iwl_read_prph_no_grab(ptr noundef %trans, i32 noundef %add.i15.i.i) #12
  %arrayidx.i.i360 = getelementptr i32, ptr %data.i.i, i32 %i.020.i.i
  %290 = ptrtoint ptr %arrayidx.i.i360 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %call.i.i.i, ptr %arrayidx.i.i360, align 4
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i359.for.end.i.i_crit_edge
  %291 = ptrtoint ptr %trans_cfg52 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %trans_cfg52, align 4
  %umac_prph_offset.i17.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %umac_prph_offset.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %umac_prph_offset.i17.i.i, align 4
  %add.i18.i.i = add i32 %294, 10501216
  tail call void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef %add.i18.i.i, i32 noundef 0) #12
  %295 = ptrtoint ptr %ops.i93.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %ops.i93.i, align 4
  %release_nic_access.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %296, i32 0, i32 33
  %297 = ptrtoint ptr %release_nic_access.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %release_nic_access.i.i.i, align 4
  tail call void %298(ptr noundef %trans) #12
  br label %if.end51.i

if.end51.i:                                       ; preds = %for.end.i.i, %if.then46.i.if.end51.i_crit_edge, %if.end.i358, %if.else.i356.if.end51.i_crit_edge, %if.then11.i
  %monitor_len.addr.0.i = phi i32 [ %251, %if.then11.i ], [ %monitor_len.0, %if.end.i358 ], [ 0, %if.else.i356.if.end51.i_crit_edge ], [ %monitor_len.0, %for.end.i.i ], [ 0, %if.then46.i.if.end51.i_crit_edge ]
  %add52.i = add i32 %monitor_len.addr.0.i, 32
  %add53.i = add i32 %monitor_len.addr.0.i, 24
  %299 = tail call i32 @llvm.bswap.i32(i32 %add53.i) #12
  %len54.i = getelementptr inbounds %struct.iwl_fw_error_dump_data, ptr %data.8, i32 0, i32 1
  %300 = ptrtoint ptr %len54.i to i32
  call void @__asan_storeN_noabort(i32 %300, i32 4)
  store i32 %299, ptr %len54.i, align 1
  br label %iwl_trans_pcie_dump_monitor.exit

iwl_trans_pcie_dump_monitor.exit:                 ; preds = %if.end51.i, %land.lhs.true.i.iwl_trans_pcie_dump_monitor.exit_crit_edge, %lor.lhs.false.i346.iwl_trans_pcie_dump_monitor.exit_crit_edge
  %len.0.i = phi i32 [ %add52.i, %if.end51.i ], [ 0, %lor.lhs.false.i346.iwl_trans_pcie_dump_monitor.exit_crit_edge ], [ 0, %land.lhs.true.i.iwl_trans_pcie_dump_monitor.exit_crit_edge ]
  %add198 = add i32 %len.0.i, %len.15
  br label %if.end199

if.end199:                                        ; preds = %iwl_trans_pcie_dump_monitor.exit, %if.end193.if.end199_crit_edge
  %len.16 = phi i32 [ %len.15, %if.end193.if.end199_crit_edge ], [ %add198, %iwl_trans_pcie_dump_monitor.exit ]
  %301 = ptrtoint ptr %call69 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %len.16, ptr %call69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %if.end68.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call69, %if.end199 ], [ null, %land.end.cleanup_crit_edge ], [ null, %if.end68.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_debugfs_cleanup(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 267
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 266
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_sync_nmi(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msix_enabled = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %0 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msix_enabled, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp = icmp ugt i32 %5, 19
  %. = select i1 %cmp, i32 32, i32 33554432
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  %sw_err_bit.0 = phi i32 [ %., %if.then ], [ 33554432, %entry.if.end3_crit_edge ]
  %inta_addr.0 = phi i32 [ 10248, %if.then ], [ 8, %entry.if.end3_crit_edge ]
  tail call void @iwl_trans_sync_nmi_with_addr(ptr noundef %trans, i32 noundef %inta_addr.0, i32 noundef %sw_err_bit.0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_pcie_ctx_info_gen3_set_pnvm(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_pcie_ctx_info_gen3_set_reduce_power(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pci_interrupts(ptr noundef %trans, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iwl_enable_interrupts(ptr noundef %trans)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph_no_grab(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_prph_no_grab(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_d3_handshake(ptr noundef %trans, i1 noundef zeroext %suspend) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %cmp = icmp eq i32 %3, 19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %suspend, i32 262144, i32 524288
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %cmp3 = icmp ugt i32 %3, 19
  br i1 %cmp3, label %if.then4, label %if.else.cleanup60_crit_edge

if.else.cleanup60_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup60

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %cond6 = select i1 %suspend, i32 3, i32 0
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 276, i32 noundef %cond6) #12
  %4 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans_cfg, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then
  %.sink100 = phi ptr [ %5, %if.then4 ], [ %1, %if.then ]
  %.sink = phi i32 [ -2147483648, %if.then4 ], [ %cond, %if.then ]
  %umac_prph_offset.i83 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %.sink100, i32 0, i32 2
  %6 = ptrtoint ptr %umac_prph_offset.i83 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %umac_prph_offset.i83, align 4
  %add.i84 = add i32 %7, 10509316
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %add.i84, i32 noundef %.sink, i32 noundef 0) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 1530) #12
  %sx_complete = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 34
  %8 = ptrtoint ptr %sx_complete to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sx_complete, align 1, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.then21, label %if.end46.thread

if.end46.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %sx_complete to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sx_complete, align 1
  br label %cleanup60

if.then21:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %sx_waitq = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 218
  %call2391 = call i32 @prepare_to_wait_event(ptr noundef %sx_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %12 = ptrtoint ptr %sx_complete to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sx_complete, align 1, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not92.not = icmp eq i8 %13, 0
  br i1 %tobool26.not92.not, label %if.then21.cleanup_crit_edge, label %if.end46.thread97

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  br label %cleanup

if.end46.thread97:                                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %sx_waitq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  %14 = ptrtoint ptr %sx_complete to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %sx_complete, align 1
  br label %cleanup60

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %__ret22.194 = phi i32 [ %__ret22.1, %cleanup.cleanup_crit_edge ], [ 200, %if.then21.cleanup_crit_edge ]
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret22.194) #12
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %sx_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %15 = ptrtoint ptr %sx_complete to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sx_complete, align 1, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool30.not = icmp eq i32 %call43, 0
  %spec.store.select62 = select i1 %tobool30.not, i32 1, i32 %call43
  %__ret22.1 = select i1 %tobool26.not, i32 %call43, i32 %spec.store.select62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %tobool36.not = icmp eq i32 %__ret22.1, 0
  %not.tobool26.not = xor i1 %tobool26.not, true
  %17 = select i1 %not.tobool26.not, i1 true, i1 %tobool36.not
  br i1 %17, label %if.end46, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %phi.cmp = icmp eq i32 %__ret22.1, 0
  call void @finish_wait(ptr noundef %sx_waitq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  %18 = ptrtoint ptr %sx_complete to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sx_complete, align 1
  br i1 %phi.cmp, label %do.end54, label %if.end46.cleanup60_crit_edge

if.end46.cleanup60_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup60

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %cond56 = select i1 %suspend, ptr @.str.162, ptr @.str.163
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef nonnull %cond56) #12
  br label %cleanup60

cleanup60:                                        ; preds = %do.end54, %if.end46.cleanup60_crit_edge, %if.end46.thread97, %if.end46.thread, %if.else.cleanup60_crit_edge
  %retval.0 = phi i32 [ -110, %do.end54 ], [ 0, %if.else.cleanup60_crit_edge ], [ 0, %if.end46.cleanup60_crit_edge ], [ 0, %if.end46.thread ], [ 0, %if.end46.thread97 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_enable_interrupts(ptr noundef %trans) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %irq_lock = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock) #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_enable_interrupts, ptr noundef nonnull @.str.166) #12
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #12
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %2 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %4 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1174404981, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef -1174404981) #12
  br label %_iwl_enable_interrupts.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %5 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_init_mask.i, align 4
  %hw_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %7 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hw_mask.i, align 4
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %8 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fh_init_mask.i, align 32
  %fh_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %10 = ptrtoint ptr %fh_mask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fh_mask.i, align 8
  %neg.i = xor i32 %9, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %neg.i) #12
  %11 = ptrtoint ptr %hw_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_mask.i, align 4
  %neg7.i = xor i32 %12, -1
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %neg7.i) #12
  br label %_iwl_enable_interrupts.exit

_iwl_enable_interrupts.exit:                      ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_reset_ict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_rx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_txq_log_scd_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_free_rbs_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_sync_nmi_with_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_start_fw(ptr noundef %trans, ptr nocapture noundef readonly %fw, i1 noundef zeroext %run_in_rfkill) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %call1 = tail call i32 @iwl_pcie_prepare_card_hw(ptr noundef %trans)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %1, ptr noundef nonnull @.str.172) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_rfkill_int, ptr noundef nonnull @.str.97) #12
  %msix_enabled.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 322
  %2 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inta_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %4 = ptrtoint ptr %inta_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %inta_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 128) #12
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fh_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 325
  %5 = ptrtoint ptr %fh_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fh_init_mask.i, align 32
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef %6) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef -129) #12
  %hw_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 328
  %7 = ptrtoint ptr %hw_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %hw_mask.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %8 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp.i = icmp ugt i32 %11, 16
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.iwl_enable_rfkill_int.exit_crit_edge

if.end.i.iwl_enable_rfkill_int.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_enable_rfkill_int.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i.i, align 4
  %set_bits_mask.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %set_bits_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_bits_mask.i.i.i, align 4
  tail call void %15(ptr noundef %trans, i32 noundef 36, i32 noundef 67108864, i32 noundef 67108864) #12
  br label %iwl_enable_rfkill_int.exit

iwl_enable_rfkill_int.exit:                       ; preds = %if.then5.i, %if.end.i.iwl_enable_rfkill_int.exit_crit_edge
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef -1) #12
  tail call fastcc void @iwl_disable_interrupts(ptr noundef %trans)
  %16 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i74 = icmp eq i8 %17, 0
  br i1 %tobool.not.i74, label %if.else.i76, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %iwl_enable_rfkill_int.exit
  %alloc_vecs.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 323
  %18 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alloc_vecs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.not.i = icmp eq i32 %19, 0
  br i1 %cmp6.not.i, label %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 53, i32 %i.07.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  tail call void @synchronize_irq(i32 noundef %21) #12
  %inc.i = add nuw i32 %i.07.i, 1
  %22 = ptrtoint ptr %alloc_vecs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %alloc_vecs.i, align 8
  %cmp.i75 = icmp ult i32 %inc.i, %23
  br i1 %cmp.i75, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge

for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_synchronize_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i76:                                      ; preds = %iwl_enable_rfkill_int.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 202
  %24 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 46
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %27) #12
  br label %iwl_pcie_synchronize_irqs.exit

iwl_pcie_synchronize_irqs.exit:                   ; preds = %if.else.i76, %for.body.i.iwl_pcie_synchronize_irqs.exit_crit_edge, %for.cond.preheader.i.iwl_pcie_synchronize_irqs.exit_crit_edge
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %call5 = tail call zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %trans)
  %call5.not = xor i1 %call5, true
  %brmerge = or i1 %call5.not, %run_in_rfkill
  br i1 %brmerge, label %if.end10, label %iwl_pcie_synchronize_irqs.exit.out_crit_edge

iwl_pcie_synchronize_irqs.exit.out_crit_edge:     ; preds = %iwl_pcie_synchronize_irqs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %iwl_pcie_synchronize_irqs.exit
  %is_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 19
  %28 = ptrtoint ptr %is_down to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_down, align 1, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool11.not = icmp eq i8 %29, 0
  br i1 %tobool11.not, label %if.end20, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %31, ptr noundef nonnull @.str.173) #12
  br label %out

if.end20:                                         ; preds = %if.end10
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 92, i32 noundef 2) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 92, i32 noundef 4) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 8, i32 noundef -1) #12
  %irq_lock.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 156
  tail call void @_raw_spin_lock_bh(ptr noundef %irq_lock.i) #12
  %call1.i = tail call fastcc i32 @iwl_pcie_apm_init(ptr noundef %trans) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %irq_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i78 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i78, label %if.end.i79, label %if.end20.do.end27_crit_edge

if.end20.do.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.end.i79:                                       ; preds = %if.end20
  %cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 4
  %32 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i.i, align 8
  %apmg_not_supported.i.i = getelementptr inbounds %struct.iwl_cfg, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %apmg_not_supported.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 3)
  %bf.load.i.i = load i24, ptr %apmg_not_supported.i.i, align 4
  %35 = and i24 %bf.load.i.i, 32
  %tobool.not.i.i = icmp eq i24 %35, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i79.iwl_pcie_set_pwr.exit.i_crit_edge

if.end.i79.iwl_pcie_set_pwr.exit.i_crit_edge:     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_set_pwr.exit.i

if.end.i.i:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_set_bits_mask_prph(ptr noundef %trans, i32 noundef 12300, i32 noundef 0, i32 noundef -50331649) #12
  br label %iwl_pcie_set_pwr.exit.i

iwl_pcie_set_pwr.exit.i:                          ; preds = %if.end.i.i, %if.end.i79.iwl_pcie_set_pwr.exit.i_crit_edge
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %36 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %op_mode.i, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.92, i32 noundef 196) #12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %nic_config.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nic_config.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nic_config.i.i, align 4
  tail call void %41(ptr noundef %37) #12
  %call3.i = tail call i32 @iwl_pcie_rx_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %iwl_pcie_set_pwr.exit.i.do.end27_crit_edge

iwl_pcie_set_pwr.exit.i.do.end27_crit_edge:       ; preds = %iwl_pcie_set_pwr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.end6.i:                                        ; preds = %iwl_pcie_set_pwr.exit.i
  %call7.i = tail call i32 @iwl_pcie_tx_init(ptr noundef %trans) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_pcie_rx_free(ptr noundef %trans) #12
  br label %do.end27

if.end10.i:                                       ; preds = %if.end6.i
  %42 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trans_cfg.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %shadow_reg_enable.i = getelementptr inbounds %struct.iwl_base_params, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %shadow_reg_enable.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i = load i8, ptr %shadow_reg_enable.i, align 4
  %47 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool11.not.i = icmp eq i8 %47, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end31_crit_edge, label %if.then12.i

if.end10.i.if.end31_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i.i81 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %48 = ptrtoint ptr %ops.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i.i81, align 4
  %set_bits_mask.i.i.i82 = getelementptr inbounds %struct.iwl_trans_ops, ptr %49, i32 0, i32 34
  %50 = ptrtoint ptr %set_bits_mask.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_bits_mask.i.i.i82, align 4
  tail call void %51(ptr noundef %trans, i32 noundef 168, i32 noundef -2146435073, i32 noundef -2146435073) #12
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %53, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_nic_init, ptr noundef nonnull @.str.175) #12
  br label %if.end31

do.end27:                                         ; preds = %if.then9.i, %iwl_pcie_set_pwr.exit.i.do.end27_crit_edge, %if.end20.do.end27_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %iwl_pcie_set_pwr.exit.i.do.end27_crit_edge ], [ %call1.i, %if.end20.do.end27_crit_edge ], [ -12, %if.then9.i ]
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %55, i32 noundef 0, ptr noundef nonnull @.str.174) #12
  br label %out

if.end31:                                         ; preds = %if.then12.i, %if.end10.i.if.end31_crit_edge
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef 33554432, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enable_fw_load_int, ptr noundef nonnull @.str.176) #12
  %58 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %msix_enabled.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i86 = icmp eq i8 %59, 0
  br i1 %tobool.not.i86, label %if.then.i88, label %if.else.i89

if.then.i88:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %inta_mask.i87 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 190
  %60 = ptrtoint ptr %inta_mask.i87 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 134217728, ptr %inta_mask.i87, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 12, i32 noundef 134217728) #12
  br label %iwl_enable_fw_load_int.exit

if.else.i89:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %hw_init_mask.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 326
  %61 = ptrtoint ptr %hw_init_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hw_init_mask.i, align 4
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10252, i32 noundef %62) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 10244, i32 noundef -65537) #12
  %fh_mask.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 327
  %63 = ptrtoint ptr %fh_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 65536, ptr %fh_mask.i.i, align 8
  br label %iwl_enable_fw_load_int.exit

iwl_enable_fw_load_int.exit:                      ; preds = %if.else.i89, %if.then.i88
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 92, i32 noundef 2) #12
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 92, i32 noundef 2) #12
  %64 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %trans_cfg.i, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %67)
  %cmp = icmp ugt i32 %67, 15
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %iwl_enable_fw_load_int.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call fastcc i32 @iwl_pcie_load_given_ucode_8000(ptr noundef %trans, ptr noundef %fw)
  br label %if.end35

if.else:                                          ; preds = %iwl_enable_fw_load_int.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call fastcc i32 @iwl_pcie_load_given_ucode(ptr noundef %trans, ptr noundef %fw)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %ret.0 = phi i32 [ %call33, %if.then32 ], [ %call34, %if.else ]
  %call36 = tail call zeroext i1 @iwl_pcie_check_hw_rf_kill(ptr noundef %trans)
  %spec.select = select i1 %run_in_rfkill, i32 %ret.0, i32 -132
  %spec.select72 = select i1 %call36, i32 %spec.select, i32 %ret.0
  br label %out

out:                                              ; preds = %if.end35, %do.end27, %do.end16, %iwl_pcie_synchronize_irqs.exit.out_crit_edge
  %ret.1 = phi i32 [ -5, %do.end16 ], [ %retval.0.i.ph, %do.end27 ], [ -132, %iwl_pcie_synchronize_irqs.exit.out_crit_edge ], [ %spec.select72, %if.end35 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_fw_alive(ptr noundef %trans, i32 noundef %scd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iwl_pcie_reset_ict(ptr noundef %trans) #12
  tail call void @iwl_pcie_tx_start(ptr noundef %trans, i32 noundef %scd_addr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_stop_device(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %0 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_mode, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.iwl_op_mode_time_point.exit_crit_edge, label %lor.lhs.false.i

entry.iwl_op_mode_time_point.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_op_mode_time_point.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.iwl_op_mode_time_point.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.iwl_op_mode_time_point.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_op_mode_time_point.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %time_point.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %time_point.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %time_point.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.iwl_op_mode_time_point.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.iwl_op_mode_time_point.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_op_mode_time_point.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef nonnull %1, i32 noundef 15, ptr noundef null) #12
  br label %iwl_op_mode_time_point.exit

iwl_op_mode_time_point.exit:                      ; preds = %if.end.i, %lor.lhs.false2.i.iwl_op_mode_time_point.exit_crit_edge, %lor.lhs.false.i.iwl_op_mode_time_point.exit_crit_edge, %entry.iwl_op_mode_time_point.exit_crit_edge
  %trans_specific.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 37
  %mutex = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 167
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %opmode_down = getelementptr inbounds %struct.iwl_trans_pcie, ptr %trans_specific.i, i32 0, i32 20
  %6 = ptrtoint ptr %opmode_down to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %opmode_down, align 2
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool = icmp ne i32 %9, 0
  tail call fastcc void @_iwl_trans_pcie_stop_device(ptr noundef %trans)
  tail call void @iwl_trans_pcie_handle_stop_rfkill(ptr noundef %trans, i1 noundef zeroext %tobool)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_enqueue_hcmd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_pcie_tx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_trans_pcie_txq_enable(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_txq_disable(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_pcie_txq_set_shared_mode(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_trans_pcie_wait_txqs_empty(ptr noundef %trans, i32 noundef %txq_bm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_of_queues24 = getelementptr inbounds %struct.iwl_base_params, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_of_queues24 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_of_queues24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp26.not = icmp eq i16 %5, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  %txqs = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cnt.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %q_id, align 1
  %conv2 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.027, i32 %conv2)
  %cmp3 = icmp eq i32 %cnt.027, %conv2
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %div3.i = lshr i32 %cnt.027, 5
  %arrayidx.i = getelementptr i32, ptr %txqs, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %cnt.027, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %shl = shl nuw i32 1, %cnt.027
  %and = and i32 %shl, %txq_bm
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.for.inc_crit_edge, label %if.end10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @iwl_trans_pcie_wait_txq_empty(ptr noundef %trans, i32 noundef %cnt.027)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.for.inc_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.027, 1
  %12 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans_cfg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call11, %if.end10.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_trans_txq_freeze_timer(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_trans_pcie_block_txq_ptrs(ptr noundef %trans, i1 noundef zeroext %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_of_queues82 = getelementptr inbounds %struct.iwl_base_params, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_of_queues82 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_of_queues82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp84.not = icmp eq i16 %5, 0
  br i1 %cmp84.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %q_id = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_trans, ptr %trans, i32 0, i32 36, i32 2, i32 %i.085
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %q_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %q_id, align 1
  %conv4 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.085, i32 %conv4)
  %cmp5 = icmp eq i32 %i.085, %conv4
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %lock = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %block58 = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %block58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block58, align 4
  br i1 %block, label %if.then57.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %land.rhs, label %if.then50.critedge

land.rhs:                                         ; preds = %land.lhs.true
  %.b79 = load i1, ptr @iwl_trans_pcie_block_txq_ptrs.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.end60_crit_edge, label %if.then19, !prof !446

land.rhs.if.end60_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @iwl_trans_pcie_block_txq_ptrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2295, i32 noundef 9, ptr noundef null) #12
  br label %if.end60

if.then50.critedge:                               ; preds = %land.lhs.true
  %dec = add i32 %11, -1
  %12 = ptrtoint ptr %block58 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %block58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool53.not = icmp eq i32 %dec, 0
  br i1 %tobool53.not, label %if.then54, label %if.then50.critedge.if.end60_crit_edge

if.then50.critedge.if.end60_crit_edge:            ; preds = %if.then50.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then54:                                        ; preds = %if.then50.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %write_ptr = getelementptr inbounds %struct.iwl_txq, ptr %7, i32 0, i32 15
  %13 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %write_ptr, align 4
  %shl = shl i32 %i.085, 8
  %or = or i32 %14, %shl
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 1120, i32 noundef %or) #12
  br label %if.end60

if.then57.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %11, 1
  %15 = ptrtoint ptr %block58 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %block58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57.critedge, %if.then54, %if.then50.critedge.if.end60_crit_edge, %if.then19, %land.rhs.if.end60_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %for.body.cleanup_crit_edge
  %inc62 = add nuw nsw i32 %i.085, 1
  %16 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %21 to i32
  %cmp = icmp ult i32 %inc62, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_load_given_ucode_8000(ptr noundef %trans, ptr nocapture noundef readonly %image) unnamed_addr #0 align 64 {
entry:
  %first_ucode_section = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_ucode_section) #12
  %0 = ptrtoint ptr %first_ucode_section to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %first_ucode_section, align 4, !annotation !447
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %is_dual_cpus = getelementptr inbounds %struct.fw_img, ptr %image, i32 0, i32 2
  %3 = ptrtoint ptr %is_dual_cpus to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_dual_cpus, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @.str.179, ptr @.str.178
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %2, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_given_ucode_8000, ptr noundef nonnull @.str.177, ptr noundef nonnull %cond) #12
  %dest_tlv.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 2
  %5 = ptrtoint ptr %dest_tlv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dest_tlv.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs.i:                                        ; preds = %entry
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 10
  %7 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i, label %iwl_pcie_dbg_on.exit, label %lor.rhs.i.if.then_crit_edge

lor.rhs.i.if.then_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

iwl_pcie_dbg_on.exit:                             ; preds = %lor.rhs.i
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 11
  %9 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i.i.not = icmp eq i32 %10, 0
  br i1 %cmp2.i.i.not, label %iwl_pcie_dbg_on.exit.do.end7_crit_edge, label %iwl_pcie_dbg_on.exit.if.then_crit_edge

iwl_pcie_dbg_on.exit.if.then_crit_edge:           ; preds = %iwl_pcie_dbg_on.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

iwl_pcie_dbg_on.exit.do.end7_crit_edge:           ; preds = %iwl_pcie_dbg_on.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %iwl_pcie_dbg_on.exit.if.then_crit_edge, %lor.rhs.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @iwl_pcie_apply_destination(ptr noundef %trans)
  br label %do.end7

do.end7:                                          ; preds = %if.then, %iwl_pcie_dbg_on.exit.do.end7_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call9 = tail call i32 @iwl_read_prph(ptr noundef %trans, i32 noundef 10498228) #12
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_given_ucode_8000, ptr noundef nonnull @.str.180, i32 noundef %call9) #12
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10498228, i32 noundef 16843009, i32 noundef 0) #12
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 12300, i32 noundef 16777216, i32 noundef 0) #12
  %call12 = call fastcc i32 @iwl_pcie_load_cpu_sections_8000(ptr noundef %trans, ptr noundef %image, i32 noundef 1, ptr noundef nonnull %first_ucode_section)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = call fastcc i32 @iwl_pcie_load_cpu_sections_8000(ptr noundef %trans, ptr noundef %image, i32 noundef 2, ptr noundef nonnull %first_ucode_section)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call12, %do.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_ucode_section) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_load_given_ucode(ptr noundef %trans, ptr nocapture noundef readonly %image) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %is_dual_cpus = getelementptr inbounds %struct.fw_img, ptr %image, i32 0, i32 2
  %2 = ptrtoint ptr %is_dual_cpus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_dual_cpus, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.179, ptr @.str.178
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_given_ucode, ptr noundef nonnull @.str.177, ptr noundef nonnull %cond) #12
  %num_sec.i = getelementptr inbounds %struct.fw_img, ptr %image, i32 0, i32 1
  %4 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp144.i = icmp sgt i32 %5, 0
  br i1 %cmp144.i, label %entry.for.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc20.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %image, align 4
  %arrayidx.i = getelementptr %struct.fw_desc, ptr %7, i32 %i.045.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.do.end.i_crit_edge, label %lor.lhs.false.i

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %offset.i = getelementptr %struct.fw_desc, ptr %7, i32 %i.045.i, i32 2
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %11, label %if.end14.i [
    i32 -13108, label %lor.lhs.false.i.do.end.i_crit_edge
    i32 -1431651397, label %lor.lhs.false.i.do.end.i_crit_edge99
  ]

lor.lhs.false.i.do.end.i_crit_edge99:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge99, %for.body.i.do.end.i_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_cpu_sections, ptr noundef nonnull @.str.181, i32 noundef %i.045.i) #12
  br label %if.end

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %conv.i = trunc i32 %i.045.i to i8
  %call.i = tail call fastcc i32 @iwl_pcie_load_section(ptr noundef %trans, i8 noundef zeroext %conv.i, ptr noundef %arrayidx.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %for.inc.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i:                                        ; preds = %if.end14.i
  %inc20.i = add nuw nsw i32 %i.045.i, 1
  %15 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sec.i, align 4
  %cmp1.i = icmp slt i32 %inc20.i, %16
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %do.end.i, %entry.if.end_crit_edge
  %first_ucode_section.0.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %i.045.i, %do.end.i ], [ %i.045.i, %for.inc.i.if.end_crit_edge ]
  %17 = ptrtoint ptr %is_dual_cpus to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_dual_cpus, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not = icmp eq i8 %18, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7:                                         ; preds = %if.end
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 7804, i32 noundef 4326400, i32 noundef 0) #12
  %inc.i = add nuw nsw i32 %first_ucode_section.0.ph, 1
  %19 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %20)
  %cmp144.i31 = icmp slt i32 %inc.i, %20
  br i1 %cmp144.i31, label %if.then7.for.body.i35_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7.for.body.i35_crit_edge:                  ; preds = %if.then7
  br label %for.body.i35

for.body.i35:                                     ; preds = %for.inc.i46.for.body.i35_crit_edge, %if.then7.for.body.i35_crit_edge
  %i.045.i32 = phi i32 [ %inc20.i44, %for.inc.i46.for.body.i35_crit_edge ], [ %inc.i, %if.then7.for.body.i35_crit_edge ]
  %21 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %image, align 4
  %arrayidx.i33 = getelementptr %struct.fw_desc, ptr %22, i32 %i.045.i32
  %23 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i33, align 4
  %tobool.not.i34 = icmp eq ptr %24, null
  br i1 %tobool.not.i34, label %for.body.i35.do.end.i39_crit_edge, label %lor.lhs.false.i37

for.body.i35.do.end.i39_crit_edge:                ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i39

lor.lhs.false.i37:                                ; preds = %for.body.i35
  %offset.i36 = getelementptr %struct.fw_desc, ptr %22, i32 %i.045.i32, i32 2
  %25 = ptrtoint ptr %offset.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i36, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %26, label %if.end14.i43 [
    i32 -13108, label %lor.lhs.false.i37.do.end.i39_crit_edge
    i32 -1431651397, label %lor.lhs.false.i37.do.end.i39_crit_edge100
  ]

lor.lhs.false.i37.do.end.i39_crit_edge100:        ; preds = %lor.lhs.false.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i39

lor.lhs.false.i37.do.end.i39_crit_edge:           ; preds = %lor.lhs.false.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i39

do.end.i39:                                       ; preds = %lor.lhs.false.i37.do.end.i39_crit_edge, %lor.lhs.false.i37.do.end.i39_crit_edge100, %for.body.i35.do.end.i39_crit_edge
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_cpu_sections, ptr noundef nonnull @.str.181, i32 noundef %i.045.i32) #12
  br label %if.end12

if.end14.i43:                                     ; preds = %lor.lhs.false.i37
  %conv.i40 = trunc i32 %i.045.i32 to i8
  %call.i41 = tail call fastcc i32 @iwl_pcie_load_section(ptr noundef %trans, i8 noundef zeroext %conv.i40, ptr noundef %arrayidx.i33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool17.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool17.not.i42, label %for.inc.i46, label %if.end14.i43.cleanup_crit_edge

if.end14.i43.cleanup_crit_edge:                   ; preds = %if.end14.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i46:                                      ; preds = %if.end14.i43
  %inc20.i44 = add nuw nsw i32 %i.045.i32, 1
  %30 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_sec.i, align 4
  %cmp1.i45 = icmp slt i32 %inc20.i44, %31
  br i1 %cmp1.i45, label %for.inc.i46.for.body.i35_crit_edge, label %for.inc.i46.if.end12_crit_edge

for.inc.i46.if.end12_crit_edge:                   ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

for.inc.i46.for.body.i35_crit_edge:               ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i35

if.end12:                                         ; preds = %for.inc.i46.if.end12_crit_edge, %do.end.i39, %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %dest_tlv.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 2
  %32 = ptrtoint ptr %dest_tlv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dest_tlv.i, align 4
  %tobool.not.i51 = icmp eq ptr %33, null
  br i1 %tobool.not.i51, label %lor.rhs.i, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

lor.rhs.i:                                        ; preds = %if.end12
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 10
  %34 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp.not.i.i, label %iwl_pcie_dbg_on.exit, label %lor.rhs.i.if.then14_crit_edge

lor.rhs.i.if.then14_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

iwl_pcie_dbg_on.exit:                             ; preds = %lor.rhs.i
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 32, i32 11
  %36 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2.i.i.not = icmp eq i32 %37, 0
  br i1 %cmp2.i.i.not, label %iwl_pcie_dbg_on.exit.if.end15_crit_edge, label %iwl_pcie_dbg_on.exit.if.then14_crit_edge

iwl_pcie_dbg_on.exit.if.then14_crit_edge:         ; preds = %iwl_pcie_dbg_on.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

iwl_pcie_dbg_on.exit.if.end15_crit_edge:          ; preds = %iwl_pcie_dbg_on.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %iwl_pcie_dbg_on.exit.if.then14_crit_edge, %lor.rhs.i.if.then14_crit_edge, %if.end12.if.then14_crit_edge
  tail call void @iwl_pcie_apply_destination(ptr noundef %trans)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %iwl_pcie_dbg_on.exit.if.end15_crit_edge
  tail call fastcc void @iwl_enable_interrupts(ptr noundef %trans)
  tail call void @iwl_write32(ptr noundef %trans, i32 noundef 32, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end14.i43.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call.i41, %if.end14.i43.cleanup_crit_edge ], [ %call.i, %if.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_tx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_load_cpu_sections_8000(ptr noundef %trans, ptr nocapture noundef readonly %image, i32 noundef %cpu, ptr nocapture noundef %first_ucode_section) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cpu)
  %cmp = icmp eq i32 %cpu, 1
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %first_ucode_section to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_ucode_section, align 4
  %inc = add i32 %1, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %inc, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %shift_param.0 = phi i32 [ 16, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %first_ucode_section to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %first_ucode_section, align 4
  %num_sec = getelementptr inbounds %struct.fw_img, ptr %image, i32 0, i32 1
  %3 = ptrtoint ptr %num_sec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_sec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %4)
  %cmp176 = icmp slt i32 %storemerge, %4
  br i1 %cmp176, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %if.end.for.body_crit_edge
  %sec_num.078 = phi i32 [ %or22, %if.end19.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %i.077 = phi i32 [ %inc23, %if.end19.for.body_crit_edge ], [ %storemerge, %if.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %image, align 4
  %arrayidx = getelementptr %struct.fw_desc, ptr %6, i32 %i.077
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.do.end_crit_edge, label %lor.lhs.false

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %for.body
  %offset = getelementptr %struct.fw_desc, ptr %6, i32 %i.077, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %10, label %if.end14 [
    i32 -13108, label %lor.lhs.false.do.end_crit_edge
    i32 -1431651397, label %lor.lhs.false.do.end_crit_edge94
  ]

lor.lhs.false.do.end_crit_edge94:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge94, %for.body.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_cpu_sections_8000, ptr noundef nonnull @.str.181, i32 noundef %i.077) #12
  br label %for.end

if.end14:                                         ; preds = %lor.lhs.false
  %conv = trunc i32 %i.077 to i8
  %call = tail call fastcc i32 @iwl_pcie_load_section(ptr noundef %trans, i8 noundef zeroext %conv, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @iwl_read_direct32(ptr noundef %trans, i32 noundef 6896) #12
  %shl = shl i32 %sec_num.078, %shift_param.0
  %or = or i32 %call20, %shl
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 6896, i32 noundef %or) #12
  %shl21 = shl i32 %sec_num.078, 1
  %or22 = or i32 %shl21, 1
  %inc23 = add nsw i32 %i.077, 1
  %14 = ptrtoint ptr %num_sec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sec, align 4
  %cmp1 = icmp slt i32 %inc23, %15
  br i1 %cmp1, label %if.end19.for.body_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %do.end, %if.end.for.end_crit_edge
  %last_read_idx.1 = phi i32 [ %i.077, %do.end ], [ 0, %if.end.for.end_crit_edge ], [ %i.077, %if.end19.for.end_crit_edge ]
  %16 = ptrtoint ptr %first_ucode_section to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %last_read_idx.1, ptr %first_ucode_section, align 4
  tail call fastcc void @iwl_enable_interrupts(ptr noundef %trans)
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %17 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trans_cfg, align 4
  %use_tfh = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %use_tfh to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %use_tfh, align 4
  %20 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool24.not = icmp eq i16 %20, 0
  br i1 %tobool24.not, label %if.else31, label %if.then25

if.then25:                                        ; preds = %for.end
  br i1 %cmp, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10509376, i32 noundef 65535, i32 noundef 0) #12
  br label %cleanup

if.else29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef 10509376, i32 noundef -1, i32 noundef 0) #12
  br label %cleanup

if.else31:                                        ; preds = %for.end
  br i1 %cmp, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 6896, i32 noundef 65535) #12
  br label %cleanup

if.else35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iwl_write_direct32(ptr noundef %trans, i32 noundef 6896, i32 noundef -1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else35, %if.then34, %if.else29, %if.then28, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then34 ], [ 0, %if.else35 ], [ 0, %if.then28 ], [ 0, %if.else29 ], [ %call, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_pcie_load_section(ptr noundef %trans, i8 noundef zeroext %section_num, ptr nocapture noundef readonly %section) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %p_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_addr) #12
  %0 = ptrtoint ptr %p_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %p_addr, align 4, !annotation !447
  %len = getelementptr inbounds %struct.fw_desc, ptr %section, i32 0, i32 1
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 131072)
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %conv = zext i8 %section_num to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_section, ptr noundef nonnull @.str.182, i32 noundef %conv) #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %3, ptr noundef nonnull %p_addr, i32 noundef 11456, i32 noundef 256) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end8, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end8:                                          ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_pcie_load_section, ptr noundef nonnull @.str.183) #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %call.i96 = call ptr @dma_alloc_attrs(ptr noundef %11, i32 noundef 4096, ptr noundef nonnull %p_addr, i32 noundef 3264, i32 noundef 0) #12
  %tobool14.not = icmp eq ptr %call.i96, null
  br i1 %tobool14.not, label %do.end8.cleanup57_crit_edge, label %do.end8.if.end16_crit_edge

do.end8.if.end16_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end8.cleanup57_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

if.end16:                                         ; preds = %do.end8.if.end16_crit_edge, %entry.if.end16_crit_edge
  %chunk_sz.0 = phi i32 [ %3, %entry.if.end16_crit_edge ], [ 4096, %do.end8.if.end16_crit_edge ]
  %v_addr.0 = phi ptr [ %call.i, %entry.if.end16_crit_edge ], [ %call.i96, %do.end8.if.end16_crit_edge ]
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1899.not = icmp eq i32 %13, 0
  br i1 %cmp1899.not, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %offset28 = getelementptr inbounds %struct.fw_desc, ptr %section, i32 0, i32 2
  %ucode_write_complete.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 204
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %ucode_write_waitq.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 1, i32 36, i32 2, i32 205
  br label %for.body

for.cond:                                         ; preds = %if.end41
  %add55 = add i32 %offset.0100, %chunk_sz.0
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %cmp18 = icmp ugt i32 %15, %add55
  br i1 %cmp18, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %16 = phi i32 [ %13, %for.body.lr.ph ], [ %15, %for.cond.for.body_crit_edge ]
  %offset.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %add55, %for.cond.for.body_crit_edge ]
  %sub = sub i32 %16, %offset.0100
  %17 = call i32 @llvm.umin.i32(i32 %chunk_sz.0, i32 %sub)
  %18 = ptrtoint ptr %offset28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset28, align 4
  %add = add i32 %19, %offset.0100
  %20 = add i32 %add, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304, i32 %20)
  %21 = icmp ult i32 %20, 98304
  br i1 %21, label %if.then36, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef 10493944, i32 noundef 1) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.body.if.end37_crit_edge
  %22 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %section, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %offset.0100
  %24 = call ptr @memcpy(ptr %v_addr.0, ptr %add.ptr, i32 %17)
  %25 = ptrtoint ptr %p_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_addr, align 4
  %27 = ptrtoint ptr %ucode_write_complete.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ucode_write_complete.i, align 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %29, i32 0, i32 32
  %30 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %grab_nic_access.i, align 4
  %call1.i = call zeroext i1 %31(ptr noundef %trans) #12
  br i1 %call1.i, label %if.end.i, label %if.end37.iwl_pcie_load_firmware_chunk.exit_crit_edge, !prof !446

if.end37.iwl_pcie_load_firmware_chunk.exit_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_load_firmware_chunk.exit

if.end.i:                                         ; preds = %if.end37
  call void @iwl_write32(ptr noundef %trans, i32 noundef 7712, i32 noundef 0) #12
  call void @iwl_write32(ptr noundef %trans, i32 noundef 6600, i32 noundef %add) #12
  call void @iwl_write32(ptr noundef %trans, i32 noundef 6472, i32 noundef %26) #12
  call void @iwl_write32(ptr noundef %trans, i32 noundef 6476, i32 noundef %17) #12
  call void @iwl_write32(ptr noundef %trans, i32 noundef 7720, i32 noundef 1052675) #12
  call void @iwl_write32(ptr noundef %trans, i32 noundef 7712, i32 noundef -2146435072) #12
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release_nic_access.i.i, align 4
  call void %35(ptr noundef %trans) #12
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 701) #12
  %36 = ptrtoint ptr %ucode_write_complete.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucode_write_complete.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not.i = icmp eq i8 %37, 0
  br i1 %tobool7.not.i, label %if.then17.i, label %if.end.i.iwl_pcie_load_firmware_chunk.exit_crit_edge

if.end.i.iwl_pcie_load_firmware_chunk.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_load_firmware_chunk.exit

if.then17.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %38 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %call1980.i = call i32 @prepare_to_wait_event(ptr noundef %ucode_write_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #12
  %39 = ptrtoint ptr %ucode_write_complete.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ucode_write_complete.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool22.not81.not.i = icmp eq i8 %40, 0
  br i1 %tobool22.not81.not.i, label %if.then17.i.cleanup.i_crit_edge, label %if.end43.thread.i

if.then17.i.cleanup.i_crit_edge:                  ; preds = %if.then17.i
  br label %cleanup.i

if.end43.thread.i:                                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef %ucode_write_waitq.i, ptr noundef nonnull %__wq_entry.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %iwl_pcie_load_firmware_chunk.exit

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then17.i.cleanup.i_crit_edge
  %__ret18.183.i = phi i32 [ %__ret18.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 500, %if.then17.i.cleanup.i_crit_edge ]
  %call40.i = call i32 @schedule_timeout(i32 noundef %__ret18.183.i) #12
  %call19.i = call i32 @prepare_to_wait_event(ptr noundef %ucode_write_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #12
  %41 = ptrtoint ptr %ucode_write_complete.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucode_write_complete.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool22.not.i = icmp eq i8 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool26.not.i = icmp eq i32 %call40.i, 0
  %spec.store.select56.i = select i1 %tobool26.not.i, i32 1, i32 %call40.i
  %__ret18.1.i = select i1 %tobool22.not.i, i32 %call40.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1.i)
  %tobool32.not.i = icmp eq i32 %__ret18.1.i, 0
  %not.tobool22.not.i = xor i1 %tobool22.not.i, true
  %43 = select i1 %not.tobool22.not.i, i1 true, i1 %tobool32.not.i
  br i1 %43, label %if.end43.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end43.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %ucode_write_waitq.i, ptr noundef nonnull %__wq_entry.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br i1 %tobool32.not.i, label %do.end50.i, label %if.end43.i.iwl_pcie_load_firmware_chunk.exit_crit_edge

if.end43.i.iwl_pcie_load_firmware_chunk.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iwl_pcie_load_firmware_chunk.exit

do.end50.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.185) #12
  call void @iwl_trans_pcie_dump_regs(ptr noundef %trans) #12
  br label %iwl_pcie_load_firmware_chunk.exit

iwl_pcie_load_firmware_chunk.exit:                ; preds = %do.end50.i, %if.end43.i.iwl_pcie_load_firmware_chunk.exit_crit_edge, %if.end43.thread.i, %if.end.i.iwl_pcie_load_firmware_chunk.exit_crit_edge, %if.end37.iwl_pcie_load_firmware_chunk.exit_crit_edge
  %tobool42.not = phi i1 [ false, %if.end37.iwl_pcie_load_firmware_chunk.exit_crit_edge ], [ true, %if.end.i.iwl_pcie_load_firmware_chunk.exit_crit_edge ], [ true, %if.end43.thread.i ], [ true, %if.end43.i.iwl_pcie_load_firmware_chunk.exit_crit_edge ], [ false, %do.end50.i ]
  %retval.0.i = phi i32 [ -5, %if.end37.iwl_pcie_load_firmware_chunk.exit_crit_edge ], [ 0, %if.end.i.iwl_pcie_load_firmware_chunk.exit_crit_edge ], [ 0, %if.end43.thread.i ], [ 0, %if.end43.i.iwl_pcie_load_firmware_chunk.exit_crit_edge ], [ -110, %do.end50.i ]
  br i1 %21, label %if.then40, label %iwl_pcie_load_firmware_chunk.exit.if.end41_crit_edge

iwl_pcie_load_firmware_chunk.exit.if.end41_crit_edge: ; preds = %iwl_pcie_load_firmware_chunk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %iwl_pcie_load_firmware_chunk.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef 10493944, i32 noundef 1) #12
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %iwl_pcie_load_firmware_chunk.exit.if.end41_crit_edge
  br i1 %tobool42.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.184, i32 noundef %conv) #12
  br label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.for.end_crit_edge, %if.end16.for.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %cleanup ], [ 0, %if.end16.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %50 = ptrtoint ptr %p_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p_addr, align 4
  call void @dma_free_attrs(ptr noundef %49, i32 noundef %chunk_sz.0, ptr noundef %v_addr.0, i32 noundef %51, i32 noundef 0) #12
  br label %cleanup57

cleanup57:                                        ; preds = %for.end, %do.end8.cleanup57_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ -12, %do.end8.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_addr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_direct32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_direct32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pcie_tx_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_msix_isr(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_irq_msix_handler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pcie_irq_rx_msix_handler(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 210)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !109, !111, !112, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !139, !140, !142, !144, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !186, !187, !189, !190, !192, !194, !196, !197, !199, !200, !202, !204, !206, !207, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !334, !336, !338, !340, !342, !344, !346, !348, !350, !351, !352, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !370, !372, !374, !376, !378, !380, !382, !383, !385, !386, !388, !389, !390, !391, !393, !395, !396, !398, !399, !401, !403, !405, !407, !409, !411, !413, !414, !416, !418, !420, !421, !422, !424, !426, !428, !430, !432, !434}
!llvm.module.flags = !{!435, !436, !437, !438, !439, !440, !441, !442}
!llvm.ident = !{!443}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 66, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 69, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 70, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 74, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 76, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 83, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 98, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 111, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 124, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 211, i32 6}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.iwl_pcie_apm_config, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 272, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 488, i32 3}
!28 = !{ptr @__func__.iwl_pcie_apm_stop_master, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 490, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__func__.iwl_pcie_prepare_card_hw, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 605, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 631, i32 5}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 636, i32 6}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 648, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 927, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 933, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 960, i32 5}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 967, i32 4}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1468, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2117, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2129, i32 4}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2138, i32 5}
!59 = !{ptr @__iwl_trans_pcie_grab_nic_access.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2155, i32 4}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @iwl_pcie_dump_csr.csr_tbl, !63, !"csr_tbl", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2460, i32 19}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2486, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2487, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2490, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2984, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2985, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2986, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2987, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2988, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2989, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2990, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2991, i32 2}
!86 = !{ptr @iwl_trans_pcie_alloc.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3550, i32 2}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @iwl_trans_pcie_alloc.__key.43, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3551, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @iwl_trans_pcie_alloc.__key.45, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3552, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @iwl_trans_pcie_alloc.__key.47, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3553, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @iwl_trans_pcie_alloc.__key.49, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3554, i32 2}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @iwl_trans_pcie_alloc.__key.51, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3555, i32 2}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3557, i32 45}
!106 = !{ptr @iwl_trans_pcie_alloc.__key.54, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3563, i32 2}
!108 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3588, i32 4}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @iwl_trans_pcie_alloc._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @iwl_trans_pcie_alloc._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3593, i32 53}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3595, i32 3}
!119 = !{ptr @iwl_trans_pcie_alloc._entry.60, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @iwl_trans_pcie_alloc._entry_ptr.62, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3601, i32 3}
!123 = !{ptr @iwl_trans_pcie_alloc._entry.63, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @iwl_trans_pcie_alloc._entry_ptr.65, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3608, i32 3}
!127 = !{ptr @iwl_trans_pcie_alloc._entry.66, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @iwl_trans_pcie_alloc._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3622, i32 3}
!131 = !{ptr @iwl_trans_pcie_alloc._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @iwl_trans_pcie_alloc._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3638, i32 2}
!135 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3643, i32 4}
!137 = !{ptr @iwl_trans_pcie_alloc.__key.74, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3645, i32 2}
!139 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3662, i32 4}
!142 = !{ptr @iwl_trans_pcie_alloc.__key.77, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3669, i32 2}
!144 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 182, i32 3}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 188, i32 6}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 192, i32 3}
!151 = !{ptr @__func__.iwl_pcie_set_hw_ready, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 594, i32 2}
!153 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @__func__.iwl_pcie_apply_destination_ini, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 891, i32 3}
!158 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 906, i32 2}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 246, i32 10}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 248, i32 10}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 250, i32 10}
!167 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 252, i32 10}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 254, i32 10}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 728, i32 2}
!173 = !{ptr @causes_list_common, !174, !"causes_list_common", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1093, i32 37}
!175 = distinct !{null, !176, !"causes_list_bz", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1114, i32 37}
!177 = distinct !{null, !178, !"causes_list_pre_bz", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1110, i32 37}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h", i32 172, i32 2}
!181 = !{ptr @__func__._iwl_trans_pcie_stop_device, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1251, i32 3}
!183 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__func__.iwl_pcie_apm_stop, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 495, i32 2}
!186 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @__func__.iwl_pcie_apm_init, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 286, i32 2}
!189 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 422, i32 3}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 743, i32 2}
!194 = !{ptr @__func__.iwl_enable_rfkill_int, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 700, i32 2}
!196 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @__func__._iwl_disable_interrupts, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 537, i32 2}
!199 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2051, i32 25}
!202 = !{ptr @iwl_trans_pcie_removal_wk.prop, !203, !"prop", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2051, i32 15}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2053, i32 2}
!206 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @iwl_trans_pcie_removal_wk._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @iwl_trans_pcie_removal_wk._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2427, i32 2}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2428, i32 2}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2429, i32 2}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2430, i32 2}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2431, i32 2}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2432, i32 2}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2433, i32 2}
!223 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2434, i32 2}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2435, i32 2}
!227 = !{ptr @.str.111, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2436, i32 2}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2437, i32 2}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2438, i32 2}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2439, i32 2}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2440, i32 2}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2441, i32 2}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2442, i32 2}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2443, i32 2}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2444, i32 2}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2445, i32 2}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2446, i32 2}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2447, i32 2}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2448, i32 2}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2449, i32 2}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2450, i32 2}
!257 = !{ptr @iwl_dbgfs_rx_queue_ops, !258, !"iwl_dbgfs_rx_queue_ops", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2960, i32 1}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2638, i32 44}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2640, i32 44}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2642, i32 44}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2644, i32 44}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2646, i32 44}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2648, i32 44}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2654, i32 7}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2658, i32 7}
!275 = !{ptr @iwl_dbgfs_tx_queue_ops, !276, !"iwl_dbgfs_tx_queue_ops", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2965, i32 37}
!277 = !{ptr @iwl_dbgfs_tx_queue_seq_ops, !278, !"iwl_dbgfs_tx_queue_seq_ops", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2595, i32 36}
!279 = !{ptr @.str.134, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2575, i32 18}
!281 = !{ptr @.str.135, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2581, i32 7}
!283 = !{ptr @.str.136, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2586, i32 17}
!285 = !{ptr @.str.137, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2589, i32 17}
!287 = !{ptr @.str.138, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2590, i32 16}
!289 = !{ptr @iwl_dbgfs_interrupt_ops, !290, !"iwl_dbgfs_interrupt_ops", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2958, i32 1}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2685, i32 4}
!293 = !{ptr @.str.140, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2687, i32 43}
!295 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2689, i32 43}
!297 = !{ptr @.str.142, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2693, i32 4}
!299 = !{ptr @.str.143, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2697, i32 43}
!301 = !{ptr @.str.144, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2699, i32 43}
!303 = !{ptr @.str.145, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2703, i32 3}
!305 = !{ptr @.str.146, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2705, i32 43}
!307 = !{ptr @.str.147, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2708, i32 43}
!309 = !{ptr @.str.148, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2712, i32 3}
!311 = !{ptr @.str.149, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2714, i32 43}
!313 = !{ptr @.str.150, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2717, i32 43}
!315 = !{ptr @iwl_dbgfs_csr_ops, !316, !"iwl_dbgfs_csr_ops", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2961, i32 1}
!317 = !{ptr @iwl_dbgfs_fh_reg_ops, !318, !"iwl_dbgfs_fh_reg_ops", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2959, i32 1}
!319 = !{ptr @iwl_dbgfs_rfkill_ops, !320, !"iwl_dbgfs_rfkill_ops", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2962, i32 1}
!321 = !{ptr @.str.151, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2782, i32 36}
!323 = !{ptr @.str.152, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2804, i32 2}
!325 = !{ptr @iwl_dbgfs_monitor_data_ops, !326, !"iwl_dbgfs_monitor_data_ops", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2973, i32 37}
!327 = !{ptr @.str.153, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2923, i32 4}
!329 = !{ptr @.str.154, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2927, i32 4}
!331 = distinct !{null, !332, !"__already_done", i1 false, i1 false}
!332 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!333 = !{ptr @.str.155, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.156, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!336 = !{ptr @.str.157, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2820, i32 3}
!340 = !{ptr @iwl_dbgfs_rf_ops, !341, !"iwl_dbgfs_rf_ops", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2963, i32 1}
!342 = !{ptr @trans_ops_pcie_gen2, !343, !"trans_ops_pcie_gen2", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3499, i32 35}
!344 = !{ptr @.str.159, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1825, i32 3}
!346 = !{ptr @.str.160, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1784, i32 4}
!348 = !{ptr @.str.161, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1536, i32 3}
!350 = !{ptr @.str.162, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.163, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.164, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1607, i32 4}
!354 = !{ptr @__func__.iwl_trans_pcie_d3_resume, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1613, i32 2}
!356 = !{ptr @.str.165, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @__func__._iwl_enable_interrupts, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 587, i32 2}
!359 = !{ptr @.str.166, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @__func__.iwl_trans_pcie_wait_txq_empty, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2341, i32 2}
!362 = !{ptr @.str.167, !361, !"<string literal>", i1 false, i1 false}
!363 = distinct !{null, !364, !"__already_done", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2362, i32 7}
!365 = !{ptr @.str.168, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.169, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2377, i32 3}
!368 = !{ptr @.str.170, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2383, i32 2}
!370 = !{ptr @.str.171, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 332, i32 3}
!372 = !{ptr @trans_ops_pcie, !373, !"trans_ops_pcie", i1 false, i1 false}
!373 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 3473, i32 35}
!374 = !{ptr @.str.172, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1331, i32 3}
!376 = !{ptr @.str.173, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1360, i32 3}
!378 = !{ptr @.str.174, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1376, i32 3}
!380 = !{ptr @__func__.iwl_pcie_nic_init, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 569, i32 3}
!382 = !{ptr @.str.175, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @__func__.iwl_enable_fw_load_int, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 634, i32 2}
!385 = !{ptr @.str.176, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @__func__.iwl_pcie_load_given_ucode_8000, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1032, i32 2}
!388 = !{ptr @.str.177, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.178, !387, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.179, !387, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.180, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1038, i32 2}
!393 = !{ptr @__func__.iwl_pcie_load_cpu_sections_8000, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 797, i32 4}
!395 = !{ptr @.str.181, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @__func__.iwl_pcie_load_section, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 719, i32 2}
!398 = !{ptr @.str.182, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.183, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 725, i32 3}
!401 = !{ptr @.str.184, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 757, i32 4}
!403 = !{ptr @.str.185, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 703, i32 3}
!405 = !{ptr @__func__.iwl_pcie_load_given_ucode, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 994, i32 2}
!407 = !{ptr @__func__.iwl_pcie_load_cpu_sections, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 863, i32 4}
!409 = distinct !{null, !410, !"__already_done", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 2295, i32 19}
!411 = !{ptr @__func__.iwl_pcie_set_interrupt_capa, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1653, i32 3}
!413 = !{ptr @.str.186, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.187, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1660, i32 2}
!416 = !{ptr @.str.188, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1682, i32 2}
!418 = !{ptr @.str.189, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1695, i32 3}
!420 = !{ptr @iwl_pcie_set_interrupt_capa._entry, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @iwl_pcie_set_interrupt_capa._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.190, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 681, i32 11}
!424 = !{ptr @.str.191, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 684, i32 11}
!426 = !{ptr @.str.192, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 687, i32 10}
!428 = !{ptr @.str.193, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/internal.h", i32 690, i32 10}
!430 = !{ptr @.str.194, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/intel/iwlwifi/pcie/trans.c", i32 1723, i32 4}
!432 = distinct !{null, !433, !"__already_done", i1 false, i1 false}
!433 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!434 = !{ptr @.str.195, !433, !"<string literal>", i1 false, i1 false}
!435 = !{i32 1, !"wchar_size", i32 2}
!436 = !{i32 1, !"min_enum_size", i32 4}
!437 = !{i32 8, !"branch-target-enforcement", i32 0}
!438 = !{i32 8, !"sign-return-address", i32 0}
!439 = !{i32 8, !"sign-return-address-all", i32 0}
!440 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!441 = !{i32 7, !"uwtable", i32 1}
!442 = !{i32 7, !"frame-pointer", i32 2}
!443 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!444 = !{i8 0, i8 2}
!445 = !{!"branch_weights", i32 1, i32 2000}
!446 = !{!"branch_weights", i32 2000, i32 1}
!447 = !{!"auto-init"}
!448 = !{i64 2153978028, i64 2153978053}
!449 = !{i64 2159446561}
!450 = !{i64 5080786}
!451 = !{i64 2159446886}
!452 = !{i64 5080983}
!453 = !{i64 5081401}
!454 = !{i64 2159447692}
