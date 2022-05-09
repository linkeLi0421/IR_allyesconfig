; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bnad_debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bnad_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bnad = type { ptr, i32, [120 x i8], [1 x %struct.bnad_tx_info], [1 x %struct.bnad_rx_info], [128 x i32], i32, i32, i32, i32, i32, i32, i8, i8, [102 x i8], [1 x %struct.bna_rx_config], [20 x i8], [1 x %struct.bna_tx_config], ptr, %struct.bna, i32, i32, ptr, i64, i64, i32, ptr, %struct.mutex, [68 x i8], %struct.spinlock, %struct.timer_list, %struct.timer_list, %struct.timer_list, [4 x %struct.bna_res_info], [8 x %struct.bna_res_info], [1 x %struct.bnad_tx_res_info], [1 x %struct.bnad_rx_res_info], %struct.bnad_completion, [6 x i8], ptr, %struct.bnad_stats, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], ptr, i32, [5 x ptr], ptr, [84 x i8] }
%struct.bnad_tx_info = type { ptr, [8 x ptr], i32, %struct.delayed_work, [116 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bnad_rx_info = type { ptr, [16 x %struct.bnad_rx_ctrl], i32, %struct.work_struct, [72 x i8] }
%struct.bnad_rx_ctrl = type { ptr, ptr, i32, %struct.napi_struct, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bna_rx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bna_rss_config, %struct.bna_hds_config, i32 }
%struct.bna_rss_config = type { i32, i8, [10 x i32] }
%struct.bna_hds_config = type { i32, i32 }
%struct.bna_tx_config = type { i32, i32, i32, i32 }
%struct.bna = type { %struct.bna_ident, %struct.bfa_pcidev, %struct.bna_reg, %struct.bna_bit_defn, %struct.bna_stats, %struct.bna_ioceth, %struct.bfa_cee, %struct.bfa_flash, %struct.bfa_msgq, %struct.bna_ethport, %struct.bna_enet, %struct.bna_stats_mod, %struct.bna_tx_mod, %struct.bna_rx_mod, %struct.bna_ucam_mod, %struct.bna_mcam_mod, i32, i32, i32, ptr }
%struct.bna_ident = type { i32, [64 x i8] }
%struct.bfa_pcidev = type { i32, i8, i16, i16, ptr }
%struct.bna_reg = type { ptr, ptr }
%struct.bna_bit_defn = type { i32, i32, i32, i32, i32, i32 }
%struct.bna_stats = type <{ %struct.bna_dma_addr, ptr, %struct.bfi_enet_stats }>
%struct.bna_dma_addr = type { i32, i32 }
%struct.bfi_enet_stats = type { %struct.bfi_enet_stats_mac, %struct.bfi_enet_stats_bpc, %struct.bfi_enet_stats_rad, %struct.bfi_enet_stats_rad, %struct.bfi_enet_stats_fc_rx, %struct.bfi_enet_stats_fc_tx, [32 x %struct.bfi_enet_stats_rxf], [32 x %struct.bfi_enet_stats_txf] }
%struct.bfi_enet_stats_mac = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_bpc = type { [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64] }
%struct.bfi_enet_stats_rad = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_fc_rx = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_fc_tx = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_rxf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfi_enet_stats_txf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bna_ioceth = type { ptr, %struct.bfa_ioc, %struct.bna_attr, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_attr_req, ptr, ptr, ptr }
%struct.bfa_ioc = type { ptr, ptr, %struct.bfa_pcidev, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, %struct.list_head, ptr, i32, i8, i32, %struct.bfa_ioc_regs, %struct.bfa_ioc_drv_stats, i8, i8, i8, i8, %struct.bfa_dma, ptr, ptr, %struct.bfa_ioc_mbox_mod, ptr, %struct.bfa_iocpf, i32, i32, i32, i32, i32, i8, i8 }
%struct.bfa_ioc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod = type { %struct.list_head, i32, [34 x %struct.anon.189] }
%struct.anon.189 = type { ptr, ptr }
%struct.bfa_iocpf = type { ptr, ptr, i8, i8, i32 }
%struct.bna_attr = type { i8, i32, i32, i32, i32, i32 }
%struct.bfa_msgq_cmd_entry = type { %struct.list_head, ptr, ptr, i32, ptr }
%struct.bfi_enet_attr_req = type { %struct.bfi_msgq_mhdr }
%struct.bfi_msgq_mhdr = type { i8, i8, i16, i16, i8, i8 }
%struct.bfa_cee = type { ptr, i8, i8, i8, i32, i32, i32, %struct.bfa_cee_cbfn, %struct.bfa_ioc_notify, ptr, ptr, %struct.bfa_dma, %struct.bfa_dma, ptr, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd }
%struct.bfa_cee_cbfn = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfa_ioc_notify = type { %struct.list_head, ptr, ptr }
%struct.bfa_mbox_cmd = type { %struct.list_head, ptr, ptr, [8 x i32] }
%struct.bfa_flash = type { ptr, i32, i8, [3 x i8], i32, i32, i32, i32, ptr, i64, ptr, ptr, ptr, i32, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify }
%struct.bfa_msgq = type { %struct.bfa_msgq_cmdq, %struct.bfa_msgq_rspq, %struct.bfa_wc, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify, ptr }
%struct.bfa_msgq_cmdq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i16, i32, i32, %struct.bfa_mbox_cmd, %struct.list_head, ptr }
%struct.bfa_msgq_rspq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i32, [34 x %struct.anon.192], ptr }
%struct.anon.192 = type { ptr, ptr }
%struct.bfa_wc = type { ptr, ptr, i32 }
%struct.bna_ethport = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.bfa_msgq_cmd_entry, %union.anon.193, ptr }
%union.anon.193 = type { %struct.bfi_enet_enable_req }
%struct.bfi_enet_enable_req = type { %struct.bfi_msgq_mhdr, i8, [3 x i8] }
%struct.bna_enet = type { ptr, i32, i32, %struct.bna_pause_config, i32, ptr, ptr, ptr, %struct.bfa_wc, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_set_pause_req, ptr }
%struct.bna_pause_config = type { i32, i32 }
%struct.bfi_enet_set_pause_req = type { %struct.bfi_msgq_mhdr, [2 x i8], i8, i8 }
%struct.bna_stats_mod = type { i8, i8, i8, %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry, %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req }
%struct.bfi_enet_stats_req = type { %struct.bfi_msgq_mhdr, i16, [2 x i8], i32, i32, %union.bfi_addr_u }
%union.bfi_addr_u = type { %struct.anon.186 }
%struct.anon.186 = type { i32, i32 }
%struct.bna_tx_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.bfa_wc, i32, i8, i32, i32, i32, i32, i32, ptr }
%struct.bna_rx_mod = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, i32, i32, ptr, %struct.bfa_wc, [8 x [2 x i32]], i32 }
%struct.bna_ucam_mod = type { ptr, %struct.list_head, %struct.list_head, ptr }
%struct.bna_mcam_mod = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bna_res_info = type { i32, %union.bna_res_u }
%union.bna_res_u = type { %struct.bna_mem_info }
%struct.bna_mem_info = type { i32, i32, i32, i32, ptr, ptr }
%struct.bnad_tx_res_info = type { [7 x %struct.bna_res_info] }
%struct.bnad_rx_res_info = type { [16 x %struct.bna_res_info] }
%struct.bnad_completion = type { %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bnad_stats = type { %struct.bnad_drv_stats, ptr }
%struct.bnad_drv_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.202, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.202 = type { ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.bnad_debug_info = type { ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.203, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.204, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.205, ptr, %struct.address_space, %struct.list_head, %union.anon.206, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.203 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.204 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.205 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.206 = type { ptr }
%struct.bnad_iocmd_comp = type { ptr, %struct.completion, i32 }
%struct.bnad_drvinfo = type { %struct.bfa_ioc_attr, %struct.bfa_cee_attr, %struct.bfa_flash_attr, i32, i32 }
%struct.bfa_ioc_attr = type { i32, i32, %struct.bfa_adapter_attr, %struct.bfa_ioc_driver_attr, %struct.bfa_ioc_pci_attr, i8, i8, i8, i8, i8, [3 x i8] }
%struct.bfa_adapter_attr = type { [8 x i8], [12 x i8], i32, [16 x i8], [128 x i8], i64, [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.bfa_mfg_vpd, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.bfa_mfg_vpd = type { i8, [3 x i8], i8, i8, i8, i8, [512 x i8] }
%struct.bfa_ioc_driver_attr = type { [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.bfa_ioc_pci_attr = type { i16, i16, i16, i16, i32, i32, [8 x i8] }
%struct.bfa_cee_attr = type { i8, i8, %struct.bfa_cee_lldp_cfg, %struct.bfa_cee_dcbx_cfg, [6 x i8], i8, i8, [2 x i8] }
%struct.bfa_cee_lldp_cfg = type { %struct.bfa_cee_lldp_str, %struct.bfa_cee_lldp_str, %struct.bfa_cee_lldp_str, %struct.bfa_cee_lldp_str, %struct.bfa_cee_lldp_str, %struct.bfa_cee_lldp_str, i16, i16 }
%struct.bfa_cee_lldp_str = type { i8, i8, [2 x i8], [128 x i8] }
%struct.bfa_cee_dcbx_cfg = type { [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.bfa_flash_attr = type { i32, i32, [32 x %struct.bfa_flash_part_attr] }
%struct.bfa_flash_part_attr = type { i32, i32, i32, i32, i32, i32, [8 x i8] }

@bna_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bna\00", [28 x i8] zeroinitializer }, align 32
@bna_debugfs_port_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"debugfs root dir creation failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_dev:%s\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create %s entry failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fwtrc\00", [26 x i8] zeroinitializer }, align 32
@bnad_debugfs_op_fwtrc = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bnad_debugfs_lseek, ptr @bnad_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bnad_debugfs_open_fwtrc, ptr null, ptr @bnad_debugfs_buffer_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fwsave\00", [25 x i8] zeroinitializer }, align 32
@bnad_debugfs_op_fwsave = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bnad_debugfs_lseek, ptr @bnad_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bnad_debugfs_open_fwsave, ptr null, ptr @bnad_debugfs_buffer_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"regrd\00", [26 x i8] zeroinitializer }, align 32
@bnad_debugfs_op_regrd = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bnad_debugfs_lseek, ptr @bnad_debugfs_read_regrd, ptr @bnad_debugfs_write_regrd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bnad_debugfs_open_reg, ptr null, ptr @bnad_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"regwr\00", [26 x i8] zeroinitializer }, align 32
@bnad_debugfs_op_regwr = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bnad_debugfs_lseek, ptr null, ptr @bnad_debugfs_write_regwr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bnad_debugfs_open_reg, ptr null, ptr @bnad_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"drvinfo\00", [24 x i8] zeroinitializer }, align 32
@bnad_debugfs_op_drvinfo = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @bnad_debugfs_lseek, ptr @bnad_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bnad_debugfs_open_drvinfo, ptr null, ptr @bnad_debugfs_buffer_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to collect fwtrc\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to collect fwsave\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x:%x\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read user buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed reg offset check\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to collect drvinfo\0A\00", [37 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 78]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 20, i64 33]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 20, i64 33]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 20, i64 33]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 20, i64 33]
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"bna_debugfs_root\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 488, i32 23 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 501, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"bna_debugfs_port_count\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 489, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 505, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 511, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 533, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 481, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"bnad_debugfs_op_fwtrc\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 433, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 482, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"bnad_debugfs_op_fwsave\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 441, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 483, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"bnad_debugfs_op_regrd\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 449, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 484, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"bnad_debugfs_op_regwr\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 458, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 485, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"bnad_debugfs_op_drvinfo\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 466, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 71, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 111, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 319, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 321, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 341, i32 29 }
@___asan_gen_.86 = private constant [51 x i8] c"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 210, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 87, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @bna_debugfs_root, ptr @.str, ptr @bna_debugfs_port_count, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bnad_debugfs_op_fwtrc, ptr @.str.5, ptr @bnad_debugfs_op_fwsave, ptr @.str.6, ptr @bnad_debugfs_op_regrd, ptr @.str.7, ptr @bnad_debugfs_op_regwr, ptr @.str.8, ptr @bnad_debugfs_op_drvinfo, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @init_completion.__key, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bna_debugfs_port_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_debugfs_op_fwtrc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_debugfs_op_fwsave to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_debugfs_op_regrd to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_debugfs_op_regwr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnad_debugfs_op_drvinfo to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_debugfs_init(ptr noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #9
  %0 = call ptr @memset(ptr %name, i32 255, i32 64)
  %1 = load ptr, ptr @bna_debugfs_root, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #9
  store ptr %call, ptr @bna_debugfs_root, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bna_debugfs_port_count, i32 noundef 4) #9
  store volatile i32 0, ptr @bna_debugfs_port_count, align 4
  %2 = load ptr, ptr @bna_debugfs_root, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bnad, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %pcidev = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 22
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 64
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.pci_name.exit_crit_edge

if.end3.pci_name.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end3.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end3.pci_name.exit_crit_edge ]
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 64, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i)
  %port_debugfs_root = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 49
  %11 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_debugfs_root, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.then7, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %pci_name.exit
  %13 = load ptr, ptr @bna_debugfs_root, align 4
  %call9 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %13) #9
  %14 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %port_debugfs_root, align 8
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bnad, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end15:                                         ; preds = %if.then7
  %call.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bna_debugfs_port_count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr nonnull @bna_debugfs_port_count, i32 1, i32 3, i32 1) #9
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bna_debugfs_port_count, ptr nonnull @bna_debugfs_port_count, i32 1, ptr nonnull elementtype(i32) @bna_debugfs_port_count) #9, !srcloc !58
  %18 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_debugfs_root, align 8
  %call18 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext -32476, ptr noundef %19, ptr noundef %bnad, ptr noundef nonnull @bnad_debugfs_op_fwtrc) #9
  %arrayidx19 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 0
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call18, ptr %arrayidx19, align 4
  %tobool22.not = icmp eq ptr %call18, null
  br i1 %tobool22.not, label %if.end15.if.then23_crit_edge, label %for.cond

if.end15.if.then23_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.cond:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_debugfs_root, align 8
  %call18.1 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext -32476, ptr noundef %22, ptr noundef %bnad, ptr noundef nonnull @bnad_debugfs_op_fwsave) #9
  %arrayidx19.1 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 1
  %23 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call18.1, ptr %arrayidx19.1, align 4
  %tobool22.not.1 = icmp eq ptr %call18.1, null
  br i1 %tobool22.not.1, label %for.cond.if.then23_crit_edge, label %for.cond.1

for.cond.if.then23_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.cond.1:                                       ; preds = %for.cond
  %24 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_debugfs_root, align 8
  %call18.2 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext -32348, ptr noundef %25, ptr noundef %bnad, ptr noundef nonnull @bnad_debugfs_op_regrd) #9
  %arrayidx19.2 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 2
  %26 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call18.2, ptr %arrayidx19.2, align 4
  %tobool22.not.2 = icmp eq ptr %call18.2, null
  br i1 %tobool22.not.2, label %for.cond.1.if.then23_crit_edge, label %for.cond.2

for.cond.1.if.then23_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.cond.2:                                       ; preds = %for.cond.1
  %27 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_debugfs_root, align 8
  %call18.3 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext -32640, ptr noundef %28, ptr noundef %bnad, ptr noundef nonnull @bnad_debugfs_op_regwr) #9
  %arrayidx19.3 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 3
  %29 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call18.3, ptr %arrayidx19.3, align 4
  %tobool22.not.3 = icmp eq ptr %call18.3, null
  br i1 %tobool22.not.3, label %for.cond.2.if.then23_crit_edge, label %for.cond.3

for.cond.2.if.then23_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.cond.3:                                       ; preds = %for.cond.2
  %30 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port_debugfs_root, align 8
  %call18.4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext -32476, ptr noundef %31, ptr noundef %bnad, ptr noundef nonnull @bnad_debugfs_op_drvinfo) #9
  %arrayidx19.4 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 4
  %32 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call18.4, ptr %arrayidx19.4, align 4
  %tobool22.not.4 = icmp eq ptr %call18.4, null
  br i1 %tobool22.not.4, label %for.cond.3.if.then23_crit_edge, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.3.if.then23_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %for.cond.3.if.then23_crit_edge, %for.cond.2.if.then23_crit_edge, %for.cond.1.if.then23_crit_edge, %for.cond.if.then23_crit_edge, %if.end15.if.then23_crit_edge
  %.lcssa = phi ptr [ @.str.4, %if.end15.if.then23_crit_edge ], [ @.str.5, %for.cond.if.then23_crit_edge ], [ @.str.6, %for.cond.1.if.then23_crit_edge ], [ @.str.7, %for.cond.2.if.then23_crit_edge ], [ @.str.8, %for.cond.3.if.then23_crit_edge ]
  %33 = ptrtoint ptr %bnad to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bnad, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull %.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %for.cond.3.cleanup_crit_edge, %if.then13, %pci_name.exit.cleanup_crit_edge, %if.then2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnad_debugfs_uninit(ptr nocapture noundef %bnad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %4) #9
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %7) #9
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %10, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %10) #9
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.bnad, ptr %bnad, i32 0, i32 48, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %13, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %port_debugfs_root = getelementptr inbounds %struct.bnad, ptr %bnad, i32 0, i32 49
  %15 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port_debugfs_root, align 8
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %for.inc.4.if.end9_crit_edge, label %if.then6

for.inc.4.if.end9_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %16) #9
  %17 = ptrtoint ptr %port_debugfs_root to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %port_debugfs_root, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bna_debugfs_port_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @bna_debugfs_port_count, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bna_debugfs_port_count, ptr nonnull @bna_debugfs_port_count, i32 1, ptr nonnull elementtype(i32) @bna_debugfs_port_count) #9, !srcloc !59
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.inc.4.if.end9_crit_edge
  %call.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @bna_debugfs_port_count, i32 noundef 4) #9
  %19 = load volatile i32, ptr @bna_debugfs_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %20 = load ptr, ptr @bna_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %20) #9
  store ptr null, ptr @bna_debugfs_root, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @bnad_debugfs_lseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_len = getelementptr inbounds %struct.bnad_debug_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %buffer_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_len, align 4
  %conv = sext i32 %3 to i64
  %call = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig, i64 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_len = getelementptr inbounds %struct.bnad_debug_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %buffer_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_len, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos, ptr noundef nonnull %3, i32 noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_open_fwtrc(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_len = getelementptr inbounds %struct.bnad_debug_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %buffer_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4128, ptr %buffer_len, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4128) #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i39, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call7.i.i39, null
  br i1 %tobool4.not, label %if.then5, label %do.body7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 29
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #9
  %ioc = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 19, i32 5, i32 1
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %call14 = tail call i32 @bfa_nw_ioc_debug_fwtrc(ptr noundef %ioc, ptr noundef %7, ptr noundef %buffer_len) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16.not = icmp eq i32 %call14, 0
  br i1 %cmp16.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end21:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then18, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then18 ], [ 0, %if.end21 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_buffer_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_ioc_debug_fwtrc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_open_fwsave(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_len = getelementptr inbounds %struct.bnad_debug_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %buffer_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4128, ptr %buffer_len, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4128) #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i42, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call7.i.i42, null
  br i1 %tobool4.not, label %if.then5, label %do.body7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 29
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #9
  %ioc = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 19, i32 5, i32 1
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %call14 = tail call i32 @bfa_nw_ioc_debug_fwsave(ptr noundef %ioc, ptr noundef %7, ptr noundef %buffer_len) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call9) #9
  %8 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call14, label %if.then20 [
    i32 0, label %do.body7.if.end23_crit_edge
    i32 78, label %do.body7.if.end23_crit_edge43
  ]

do.body7.if.end23_crit_edge43:                    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body7.if.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end23:                                         ; preds = %do.body7.if.end23_crit_edge, %do.body7.if.end23_crit_edge43
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then20, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then20 ], [ 0, %if.end23 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_ioc_debug_fwsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_read_regrd(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.bnad_debug_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %regdata = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regdata, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reglen = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 47
  %6 = ptrtoint ptr %reglen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reglen, align 16
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %pos, ptr noundef nonnull %5, i32 noundef %7) #9
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  %conv = zext i32 %nbytes to i64
  %add = add i64 %9, %conv
  %10 = ptrtoint ptr %reglen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reglen, align 16
  %conv3 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv3)
  %cmp.not = icmp slt i64 %add, %conv3
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regdata, align 4
  tail call void @kfree(ptr noundef %13) #9
  %14 = ptrtoint ptr %regdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %regdata, align 4
  %15 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %reglen, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then5 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_write_regrd(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.bnad_debug_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %addr, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4, !annotation !60
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %nbytes) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.11, ptr noundef nonnull %addr, ptr noundef nonnull %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp = icmp slt i32 %call4, 2
  br i1 %cmp, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %8)
  %cmp5 = icmp ugt i32 %8, 1073741823
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %if.end7

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.12) #12
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @kfree(ptr noundef %call) #9
  %regdata = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 46
  %11 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regdata, align 4
  call void @kfree(ptr noundef %12) #9
  %reglen = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 47
  %13 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %reglen, align 16
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %shl = shl i32 %15, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3520) #14
  %16 = ptrtoint ptr %regdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %regdata, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %shl13 = shl i32 %18, 2
  %19 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl13, ptr %reglen, align 16
  %pci_bar_kva = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 19, i32 5, i32 1, i32 2, i32 4
  %20 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_bar_kva, align 4
  %device_id = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 19, i32 5, i32 1, i32 2, i32 2
  %22 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device_id, align 2
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %23, label %lor.rhs [
    i16 20, label %if.end12.lor.end_crit_edge
    i16 33, label %if.end12.lor.end_crit_edge98
  ]

if.end12.lor.end_crit_edge98:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.end12.lor.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %23)
  %cmp27 = icmp eq i16 %23, 34
  %phi.bo = select i1 %cmp27, i32 262143, i32 131071
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end12.lor.end_crit_edge, %if.end12.lor.end_crit_edge98
  %25 = phi i32 [ 262143, %if.end12.lor.end_crit_edge ], [ %phi.bo, %lor.rhs ], [ 262143, %if.end12.lor.end_crit_edge98 ]
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 4
  %and = and i32 %27, %25
  store i32 %and, ptr %addr, align 4
  %shr.i = lshr i32 %and, 15
  %28 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i, label %if.else16.i [
    i32 0, label %if.then.i
    i32 1, label %if.then9.i
  ]

if.then.i:                                        ; preds = %lor.end
  %add.i = add i32 %and, %shl13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 32768
  br i1 %cmp3.i, label %if.then.i.if.then31_crit_edge, label %if.then.i.if.end36_crit_edge

if.then.i.if.end36_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then.i.if.then31_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then9.i:                                       ; preds = %lor.end
  %add11.i = add i32 %and, %shl13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11.i)
  %cmp12.i = icmp ugt i32 %add11.i, 65536
  br i1 %cmp12.i, label %if.then9.i.if.then31_crit_edge, label %if.then9.i.if.end36_crit_edge

if.then9.i.if.end36_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then9.i.if.then31_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.else16.i:                                      ; preds = %lor.end
  %add18.i = add i32 %and, %shl13
  %29 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %device_id, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %30, label %lor.rhs.i [
    i16 20, label %if.else16.i.lor.end.i_crit_edge
    i16 33, label %if.else16.i.lor.end.i_crit_edge99
  ]

if.else16.i.lor.end.i_crit_edge99:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

if.else16.i.lor.end.i_crit_edge:                  ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %30)
  %cmp30.i = icmp eq i16 %30, 34
  %phi.bo.i = select i1 %cmp30.i, i32 262143, i32 131071
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.else16.i.lor.end.i_crit_edge, %if.else16.i.lor.end.i_crit_edge99
  %32 = phi i32 [ 262143, %if.else16.i.lor.end.i_crit_edge ], [ %phi.bo.i, %lor.rhs.i ], [ 262143, %if.else16.i.lor.end.i_crit_edge99 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %32)
  %cmp32.i = icmp ugt i32 %add18.i, %32
  br i1 %cmp32.i, label %lor.end.i.if.then31_crit_edge, label %lor.end.i.if.end36_crit_edge

lor.end.i.if.end36_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

lor.end.i.if.then31_crit_edge:                    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %lor.end.i.if.then31_crit_edge, %if.then9.i.if.then31_crit_edge, %if.then.i.if.then31_crit_edge
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.13) #12
  %35 = ptrtoint ptr %regdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regdata, align 4
  call void @kfree(ptr noundef %36) #9
  %37 = ptrtoint ptr %regdata to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %regdata, align 4
  %38 = ptrtoint ptr %reglen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %reglen, align 16
  br label %cleanup

if.end36:                                         ; preds = %lor.end.i.if.end36_crit_edge, %if.then9.i.if.end36_crit_edge, %if.then.i.if.end36_crit_edge
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 29
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #9
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp4594.not = icmp eq i32 %40, 0
  br i1 %cmp4594.not, label %if.end36.for.end_crit_edge, label %for.body.preheader

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end36
  %add.ptr = getelementptr i8, ptr %21, i32 %and
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %reg_addr.096 = phi ptr [ %add.ptr50, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %regbuf.095 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call9.i.i, %for.body.preheader ]
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg_addr.096) #9, !srcloc !61
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %43 = ptrtoint ptr %regbuf.095 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %regbuf.095, align 4
  %incdec.ptr = getelementptr i32, ptr %regbuf.095, i32 1
  %add.ptr50 = getelementptr i8, ptr %reg_addr.096, i32 4
  %inc = add nuw i32 %i.097, 1
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %cmp45 = icmp ult i32 %inc, %45
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end36.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call42) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then31, %if.end7.cleanup_crit_edge, %if.then6, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ -22, %if.then6 ], [ -22, %if.then31 ], [ %nbytes, %for.end ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_open_reg(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %i_private1 = getelementptr inbounds %struct.bnad_debug_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %i_private1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %i_private1, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_write_regwr(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.bnad_debug_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %addr, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !60
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %nbytes) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.11, ptr noundef nonnull %addr, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp = icmp slt i32 %call4, 2
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.12) #12
  call void @kfree(ptr noundef %call) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @kfree(ptr noundef %call) #9
  %device_id = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 19, i32 5, i32 1, i32 2, i32 2
  %9 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device_id, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %10, label %lor.rhs [
    i16 20, label %if.end6.lor.end_crit_edge
    i16 33, label %if.end6.lor.end_crit_edge59
  ]

if.end6.lor.end_crit_edge59:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.end6.lor.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %10)
  %cmp17 = icmp eq i16 %10, 34
  %phi.bo = select i1 %cmp17, i32 262143, i32 131071
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end6.lor.end_crit_edge, %if.end6.lor.end_crit_edge59
  %12 = phi i32 [ 262143, %if.end6.lor.end_crit_edge ], [ %phi.bo, %lor.rhs ], [ 262143, %if.end6.lor.end_crit_edge59 ]
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %and = and i32 %14, %12
  store i32 %and, ptr %addr, align 4
  %shr.i = lshr i32 %and, 15
  %15 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i, label %if.else16.i [
    i32 0, label %if.then.i
    i32 1, label %if.then9.i
  ]

if.then.i:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32764, i32 %and)
  %cmp3.i = icmp ugt i32 %and, 32764
  br i1 %cmp3.i, label %if.then.i.if.then20_crit_edge, label %if.then.i.if.end22_crit_edge

if.then.i.if.end22_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then.i.if.then20_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then9.i:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65532, i32 %and)
  %cmp12.i = icmp ugt i32 %and, 65532
  br i1 %cmp12.i, label %if.then9.i.if.then20_crit_edge, label %if.then9.i.if.end22_crit_edge

if.then9.i.if.end22_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then9.i.if.then20_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.else16.i:                                      ; preds = %lor.end
  %add18.i = add nuw nsw i32 %and, 4
  %16 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device_id, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %17, label %lor.rhs.i [
    i16 20, label %if.else16.i.lor.end.i_crit_edge
    i16 33, label %if.else16.i.lor.end.i_crit_edge60
  ]

if.else16.i.lor.end.i_crit_edge60:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

if.else16.i.lor.end.i_crit_edge:                  ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %17)
  %cmp30.i = icmp eq i16 %17, 34
  %phi.bo.i = select i1 %cmp30.i, i32 262143, i32 131071
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.else16.i.lor.end.i_crit_edge, %if.else16.i.lor.end.i_crit_edge60
  %19 = phi i32 [ 262143, %if.else16.i.lor.end.i_crit_edge ], [ %phi.bo.i, %lor.rhs.i ], [ 262143, %if.else16.i.lor.end.i_crit_edge60 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %19)
  %cmp32.i = icmp ugt i32 %add18.i, %19
  br i1 %cmp32.i, label %lor.end.i.if.then20_crit_edge, label %lor.end.i.if.end22_crit_edge

lor.end.i.if.end22_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

lor.end.i.if.then20_crit_edge:                    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %lor.end.i.if.then20_crit_edge, %if.then9.i.if.then20_crit_edge, %if.then.i.if.then20_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end22:                                         ; preds = %lor.end.i.if.end22_crit_edge, %if.then9.i.if.end22_crit_edge, %if.then.i.if.end22_crit_edge
  %pci_bar_kva = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 19, i32 5, i32 1, i32 2, i32 4
  %22 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %and
  %bna_lock = getelementptr inbounds %struct.bnad, ptr %3, i32 0, i32 29
  %call28 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #9, !srcloc !64
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock, i32 noundef %call28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then5, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ -22, %if.then5 ], [ -22, %if.then20 ], [ %nbytes, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnad_debugfs_open_drvinfo(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %fcomp.i = alloca %struct.bnad_iocmd_comp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer_len = getelementptr inbounds %struct.bnad_debug_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %buffer_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3472, ptr %buffer_len, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 3472) #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i31, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call7.i.i31, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #9
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fcomp.i) #9
  %8 = getelementptr inbounds i8, ptr %fcomp.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 52)
  %bna_lock.i = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 29
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #9
  %ioc.i = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 19, i32 5, i32 1
  tail call void @bfa_nw_ioc_get_attr(ptr noundef %ioc.i, ptr noundef %7) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call2.i) #9
  %10 = ptrtoint ptr %fcomp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %fcomp.i, align 4
  %comp_status.i = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp.i, i32 0, i32 2
  %11 = ptrtoint ptr %comp_status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %comp_status.i, align 4
  %comp.i = getelementptr inbounds %struct.bnad_iocmd_comp, ptr %fcomp.i, i32 0, i32 1
  %12 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %comp.i, align 4
  call void @__init_swait_queue_head(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #9
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #9
  %cee.i = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 19, i32 6
  %cee_attr.i = getelementptr inbounds %struct.bnad_drvinfo, ptr %7, i32 0, i32 1
  %call22.i = call i32 @bfa_nw_cee_get_attr(ptr noundef %cee.i, ptr noundef %cee_attr.i, ptr noundef nonnull @bnad_cb_completion, ptr noundef nonnull %fcomp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.not.i = icmp eq i32 %call22.i, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call16.i) #9
  br i1 %cmp23.not.i, label %if.end.i, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.end.i:                                         ; preds = %if.end6
  call void @wait_for_completion(ptr noundef %comp.i) #9
  %13 = ptrtoint ptr %comp_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %comp_status.i, align 4
  %cee_status.i = getelementptr inbounds %struct.bnad_drvinfo, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %cee_status.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cee_status.i, align 8
  store i32 0, ptr %comp_status.i, align 4
  %16 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %comp.i, align 4
  %call40.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bna_lock.i) #9
  %flash.i = getelementptr inbounds %struct.bnad, ptr %1, i32 0, i32 19, i32 7
  %flash_attr.i = getelementptr inbounds %struct.bnad_drvinfo, ptr %7, i32 0, i32 2
  %call46.i = call i32 @bfa_nw_flash_get_attr(ptr noundef %flash.i, ptr noundef %flash_attr.i, ptr noundef nonnull @bnad_cb_completion, ptr noundef nonnull %fcomp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.not.i = icmp eq i32 %call46.i, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bna_lock.i, i32 noundef %call40.i) #9
  br i1 %cmp47.not.i, label %if.end14, label %if.end.i.if.then11_crit_edge

if.end.i.if.then11_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %if.end.i.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fcomp.i) #9
  call void @mutex_unlock(ptr noundef %conf_mutex) #9
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %18) #9
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @wait_for_completion(ptr noundef %comp.i) #9
  %22 = ptrtoint ptr %comp_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %comp_status.i, align 4
  %flash_status.i = getelementptr inbounds %struct.bnad_drvinfo, ptr %7, i32 0, i32 4
  %24 = ptrtoint ptr %flash_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flash_status.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fcomp.i) #9
  call void @mutex_unlock(ptr noundef %conf_mutex) #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then11 ], [ 0, %if.end14 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_get_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_cee_get_attr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnad_cb_completion(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_nw_flash_get_attr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 501, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 505, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 511, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 533, i32 10}
!8 = !{ptr @bna_debugfs_root, !9, !"bna_debugfs_root", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 488, i32 23}
!10 = !{ptr @bna_debugfs_port_count, !11, !"bna_debugfs_port_count", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 489, i32 17}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 481, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 482, i32 4}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 483, i32 4}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 484, i32 4}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 485, i32 4}
!22 = distinct !{null, !23, !"bnad_debugfs_files", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 480, i32 40}
!24 = !{ptr @bnad_debugfs_op_fwtrc, !25, !"bnad_debugfs_op_fwtrc", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 433, i32 37}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 71, i32 29}
!28 = !{ptr @bnad_debugfs_op_fwsave, !29, !"bnad_debugfs_op_fwsave", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 441, i32 37}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 111, i32 29}
!32 = !{ptr @bnad_debugfs_op_regrd, !33, !"bnad_debugfs_op_regrd", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 449, i32 37}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 319, i32 24}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 321, i32 29}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 341, i32 29}
!40 = !{ptr @bnad_debugfs_op_regwr, !41, !"bnad_debugfs_op_regwr", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 458, i32 37}
!42 = !{ptr @bnad_debugfs_op_drvinfo, !43, !"bnad_debugfs_op_drvinfo", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 466, i32 37}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/brocade/bna/bnad_debugfs.c", i32 210, i32 29}
!46 = !{ptr @init_completion.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/completion.h", i32 87, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148675850, i64 2148675876, i64 2148675905, i64 2148675939, i64 2148675970, i64 2148675993}
!59 = !{i64 2148678315, i64 2148678341, i64 2148678370, i64 2148678404, i64 2148678435, i64 2148678458}
!60 = !{!"auto-init"}
!61 = !{i64 6770687}
!62 = !{i64 2159118849}
!63 = !{i64 2159119964}
!64 = !{i64 6770269}
