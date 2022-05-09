; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_int.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_int.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aeu_invert_reg_bit = type { [30 x i8], i32, ptr, i32 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.6, i32 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_ufp_info = type { i32, i32, i8 }
%struct.qed_dmae_info = type { %struct.mutex, i8, i32, ptr, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qed_qm_info = type { ptr, ptr, ptr, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8 }
%struct.qed_storm_stats = type { %struct.storm_stats, %struct.storm_stats, %struct.storm_stats, %struct.storm_stats }
%struct.storm_stats = type { i32, i32 }
%struct.dbg_tools_data = type { %struct.dbg_grc_data, %struct.dbg_bus_data, %struct.idle_chk_data, [40 x i8], [132 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.pretend_params, i32 }
%struct.dbg_grc_data = type { i8, i8, i16, [48 x i32] }
%struct.dbg_bus_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.dbg_bus_trigger_state_data], i8, i8, i8, i8, i32, %struct.dbg_bus_pci_buf_data, [132 x %struct.dbg_bus_block_data], [6 x %struct.dbg_bus_storm_data] }
%struct.dbg_bus_trigger_state_data = type { i8, i8, i8, i8 }
%struct.dbg_bus_pci_buf_data = type { %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr, i32 }
%struct.dbg_bus_mem_addr = type { i32, i32 }
%struct.dbg_bus_block_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dbg_bus_storm_data = type { i8, i8, i8, i8, i8, i8, %union.dbg_bus_storm_eid_params, i32 }
%union.dbg_bus_storm_eid_params = type { %struct.dbg_bus_storm_eid_range_params }
%struct.dbg_bus_storm_eid_range_params = type { i8, i8 }
%struct.idle_chk_data = type { i32, i8, i8, i16 }
%struct.pretend_params = type { i8, i8, i16 }
%struct.virt_mem_desc = type { ptr, i32 }
%struct.qed_db_recovery_info = type { %struct.list_head, %struct.spinlock, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.106 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.dbg_attn_block_result = type { i8, i8, i16, [15 x %struct.dbg_attn_reg_result] }
%struct.dbg_attn_reg_result = type { i32, i16, i16, i32, i32 }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.status_block = type { [12 x i16], i32, i32 }
%struct.qed_sb_attn_info = type { ptr, i32, i16, [9 x i32], ptr, i16, i32 }
%struct.atten_status_block = type { i32, i32, i16, i16, i32 }
%struct.aeu_invert_reg = type { [32 x %struct.aeu_invert_reg_bit] }
%struct.qed_sb_sp_info = type { %struct.qed_sb_info, [12 x %struct.qed_pi_info] }
%struct.qed_pi_info = type { ptr, ptr }
%struct.cau_sb_entry = type { i32, i32 }
%struct.qed_igu_block = type { i8, i8, i8, i8, i16, ptr }
%struct.qed_igu_info = type { [368 x %struct.qed_igu_block], i16, %struct.qed_sb_cnt_info, i8 }
%struct.qed_sb_cnt_info = type { i32, i32, i32, i32, i32, i32 }
%struct.qed_hw_sriov_info = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.105, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.105 = type { ptr }
%struct.qed_sb_info_dbg = type { i32, i32, [12 x i16] }

@.str = internal constant { [172 x i8], [52 x i8] } { [172 x i8] c"Illegal write by chip to [%08x:%08x] blocked.\0ADetails: %08x [PFID %02x, VFID %02x, VF_VALID %02x]\0ADetails2 %08x [Was_error %02x BME deassert %02x FID_enable deassert %02x]\00", [52 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\015[%s:%d(%s)]%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_pglueb_rbc_attn_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qlogic/qed/qed_int.c\00", [54 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry_ptr = internal global ptr @qed_pglueb_rbc_attn_handler._entry, section ".printk_index", align 4
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_pglueb_rbc_attn_handler._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry_ptr.6 = internal global ptr @qed_pglueb_rbc_attn_handler._entry.5, section ".printk_index", align 4
@qed_pglueb_rbc_attn_handler._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [187 x i8], [37 x i8] } { [187 x i8] c"\015[%s:%d(%s)]Illegal read by chip from [%08x:%08x] blocked.\0ADetails: %08x [PFID %02x, VFID %02x, VF_VALID %02x]\0ADetails2 %08x [Was_error %02x BME deassert %02x FID_enable deassert %02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry_ptr.9 = internal global ptr @qed_pglueb_rbc_attn_handler._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ICPL error - %08x\00", [46 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry_ptr.12 = internal global ptr @qed_pglueb_rbc_attn_handler._entry.11, section ".printk_index", align 4
@qed_pglueb_rbc_attn_handler._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry_ptr.14 = internal global ptr @qed_pglueb_rbc_attn_handler._entry.13, section ".printk_index", align 4
@qed_pglueb_rbc_attn_handler._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]ZLR error - %08x [Address %08x:%08x]\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry_ptr.17 = internal global ptr @qed_pglueb_rbc_attn_handler._entry.15, section ".printk_index", align 4
@qed_pglueb_rbc_attn_handler._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015[%s:%d(%s)]ILT error - Details %08x Details2 %08x [Address %08x:%08x]\0A\00", [55 x i8] zeroinitializer }, align 32
@qed_pglueb_rbc_attn_handler._entry_ptr.20 = internal global ptr @qed_pglueb_rbc_attn_handler._entry.18, section ".printk_index", align 4
@qed_db_rec_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]PF Overflow sticky: attn %u current %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_db_rec_handler\00", [45 x i8] zeroinitializer }, align 32
@qed_db_rec_handler._entry_ptr = internal global ptr @qed_db_rec_handler._entry, section ".printk_index", align 4
@qed_int_sp_dpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]DPC called - no p_sp_sb\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_int_sp_dpc\00", [17 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr = internal global ptr @qed_int_sp_dpc._entry, section ".printk_index", align 4
@qed_int_sp_dpc._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[%s:%d(%s)]Status block is NULL - cannot ack interrupts\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.27 = internal global ptr @qed_int_sp_dpc._entry.25, section ".printk_index", align 4
@qed_int_sp_dpc._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]DPC called - no p_sb_attn\00", [57 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.30 = internal global ptr @qed_int_sp_dpc._entry.28, section ".printk_index", align 4
@qed_int_sp_dpc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]DPC Called! (hwfn %p %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.33 = internal global ptr @qed_int_sp_dpc._entry.31, section ".printk_index", align 4
@qed_int_sp_dpc._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.3, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013[%s:%d(%s)]Interrupt Status block is NULL - cannot check for new interrupts!\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.36 = internal global ptr @qed_int_sp_dpc._entry.34, section ".printk_index", align 4
@qed_int_sp_dpc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.3, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Interrupt indices: 0x%08x --> 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.39 = internal global ptr @qed_int_sp_dpc._entry.37, section ".printk_index", align 4
@qed_int_sp_dpc._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.3, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013[%s:%d(%s)]Attentions Status block is NULL - cannot check for new attentions!\0A\00", [47 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.42 = internal global ptr @qed_int_sp_dpc._entry.40, section ".printk_index", align 4
@qed_int_sp_dpc._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.24, ptr @.str.3, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Attention indices: 0x%08x --> 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.45 = internal global ptr @qed_int_sp_dpc._entry.43, section ".printk_index", align 4
@qed_int_sp_dpc._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.24, ptr @.str.3, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Failed to allocate PTT\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_int_sp_dpc._entry_ptr.48 = internal global ptr @qed_int_sp_dpc._entry.46, section ".printk_index", align 4
@qed_get_igu_sb_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Slowpath SB index in IGU is 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_get_igu_sb_id\00", [46 x i8] zeroinitializer }, align 32
@qed_get_igu_sb_id._entry_ptr = internal global ptr @qed_get_igu_sb_id._entry, section ".printk_index", align 4
@qed_get_igu_sb_id._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]SB [%04x] <--> IGU SB [%04x]\0A\00", [53 x i8] zeroinitializer }, align 32
@qed_get_igu_sb_id._entry_ptr.53 = internal global ptr @qed_get_igu_sb_id._entry.51, section ".printk_index", align 4
@qed_int_sb_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[%s:%d(%s)]Do Not free sp sb using this function\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_int_sb_release\00", [45 x i8] zeroinitializer }, align 32
@qed_int_sb_release._entry_ptr = internal global ptr @qed_int_sb_release._entry, section ".printk_index", align 4
@qed_int_igu_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Slowpath IRQ request failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_int_igu_enable\00", [45 x i8] zeroinitializer }, align 32
@qed_int_igu_enable._entry_ptr = internal global ptr @qed_int_igu_enable._entry, section ".printk_index", align 4
@qed_int_igu_init_pure_rt_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015[%s:%d(%s)]Cleaning SB [%04x]: func_id= %d is_pf = %d vector_num = 0x%0x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qed_int_igu_init_pure_rt_single\00", [32 x i8] zeroinitializer }, align 32
@qed_int_igu_init_pure_rt_single._entry_ptr = internal global ptr @qed_int_igu_init_pure_rt_single._entry, section ".printk_index", align 4
@qed_int_igu_init_pure_rt_single._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]Failed SB[0x%08x] still appearing in WRITE_DONE_PENDING\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_int_igu_init_pure_rt_single._entry_ptr.62 = internal global ptr @qed_int_igu_init_pure_rt_single._entry.60, section ".printk_index", align 4
@qed_int_igu_reset_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 2054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\015[%s:%d(%s)]MFW notifies of 0x%04x PF SBs; IGU indicates of only 0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_int_igu_reset_cam\00", [42 x i8] zeroinitializer }, align 32
@qed_int_igu_reset_cam._entry_ptr = internal global ptr @qed_int_igu_reset_cam._entry, section ".printk_index", align 4
@qed_int_igu_reset_cam._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 2065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]0x%04x VF SBs in IGU CAM != PCI configuration 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_int_igu_reset_cam._entry_ptr.67 = internal global ptr @qed_int_igu_reset_cam._entry.65, section ".printk_index", align 4
@qed_int_igu_reset_cam._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.3, i32 2077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\015[%s:%d(%s)]Not enough SBs for VFs - 0x%04x SBs, from which %04x PFs and %04x are required\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_int_igu_reset_cam._entry_ptr.70 = internal global ptr @qed_int_igu_reset_cam._entry.68, section ".printk_index", align 4
@qed_int_igu_reset_cam._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.3, i32 2161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\015[%s:%d(%s)]IGU reset: [SB 0x%04x] func_id = %d is_pf = %d vector_num = 0x%x [%08x -> %08x]\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_int_igu_reset_cam._entry_ptr.73 = internal global ptr @qed_int_igu_reset_cam._entry.71, section ".printk_index", align 4
@qed_int_igu_read_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 2251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]IGU_BLOCK: [SB 0x%04x] func_id = %d is_pf = %d vector_num = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_int_igu_read_cam\00", [43 x i8] zeroinitializer }, align 32
@qed_int_igu_read_cam._entry_ptr = internal global ptr @qed_int_igu_read_cam._entry, section ".printk_index", align 4
@qed_int_igu_read_cam._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 2258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]IGU CAM returned invalid values igu_dsb_id=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_int_igu_read_cam._entry_ptr.78 = internal global ptr @qed_int_igu_read_cam._entry.76, section ".printk_index", align 4
@qed_int_igu_read_cam._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.3, i32 2269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\015[%s:%d(%s)]igu_dsb_id=0x%x, num Free SBs - PF: %04x VF: %04x [might change after resource allocation]\0A\00", [55 x i8] zeroinitializer }, align 32
@qed_int_igu_read_cam._entry_ptr.81 = internal global ptr @qed_int_igu_read_cam._entry.79, section ".printk_index", align 4
@qed_int_set_timer_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 2370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]hardware not initialized yet\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_int_set_timer_res\00", [42 x i8] zeroinitializer }, align 32
@qed_int_set_timer_res._entry_ptr = internal global ptr @qed_int_set_timer_res._entry, section ".printk_index", align 4
@qed_int_set_timer_res._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 2378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]dmae_grc2host failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_int_set_timer_res._entry_ptr.86 = internal global ptr @qed_int_set_timer_res._entry.84, section ".printk_index", align 4
@qed_int_set_timer_res._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.3, i32 2396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]dmae_host2grc failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_int_set_timer_res._entry_ptr.89 = internal global ptr @qed_int_set_timer_res._entry.87, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qed_db_rec_flush_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\015[%s:%d(%s)]DB recovery: doorbell usage failed to zero after %d usec. usage was %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_db_rec_flush_queue\00", [41 x i8] zeroinitializer }, align 32
@qed_db_rec_flush_queue._entry_ptr = internal global ptr @qed_db_rec_flush_queue._entry, section ".printk_index", align 4
@qed_int_attentions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"\015[%s:%d(%s)]Attention: Index: 0x%04x, Bits: 0x%08x, Acks: 0x%08x, asserted: 0x%04x, De-asserted 0x%04x [Prev. known: 0x%04x]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_int_attentions\00", [45 x i8] zeroinitializer }, align 32
@qed_int_attentions._entry_ptr = internal global ptr @qed_int_attentions._entry, section ".printk_index", align 4
@qed_int_attentions._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]MFW indication via attention\0A\00", [53 x i8] zeroinitializer }, align 32
@qed_int_attentions._entry_ptr.96 = internal global ptr @qed_int_attentions._entry.94, section ".printk_index", align 4
@qed_int_attentions._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.3, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]MFW indication [deassertion]\0A\00", [53 x i8] zeroinitializer }, align 32
@qed_int_attentions._entry_ptr.99 = internal global ptr @qed_int_attentions._entry.97, section ".printk_index", align 4
@qed_int_assertion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]IGU mask: 0x%08x --> 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_int_assertion\00", [46 x i8] zeroinitializer }, align 32
@qed_int_assertion._entry_ptr = internal global ptr @qed_int_assertion._entry, section ".printk_index", align 4
@qed_int_assertion._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]inner known ATTN state: 0x%04x --> 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@qed_int_assertion._entry_ptr.104 = internal global ptr @qed_int_assertion._entry.102, section ".printk_index", align 4
@qed_int_assertion._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.3, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]set cmd IGU: 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_int_assertion._entry_ptr.107 = internal global ptr @qed_int_assertion._entry.105, section ".printk_index", align 4
@qed_int_deassertion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Deasserted bits [%d]: %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_int_deassertion\00", [44 x i8] zeroinitializer }, align 32
@qed_int_deassertion._entry_ptr = internal global ptr @qed_int_deassertion._entry, section ".printk_index", align 4
@qed_int_deassertion_parity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]%s parity attention is set [address 0x%08x, bit %d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_int_deassertion_parity\00", [37 x i8] zeroinitializer }, align 32
@qed_int_deassertion_parity._entry_ptr = internal global ptr @qed_int_deassertion_parity._entry, section ".printk_index", align 4
@qed_int_deassertion_parity._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]`%s' - Disabled future parity errors\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_int_deassertion_parity._entry_ptr.114 = internal global ptr @qed_int_deassertion_parity._entry.112, section ".printk_index", align 4
@qed_int_attn_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015[%s:%d(%s)]Failed to parse attention information [status: %s]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_int_attn_print\00", [45 x i8] zeroinitializer }, align 32
@qed_int_attn_print._entry_ptr = internal global ptr @qed_int_attn_print._entry, section ".printk_index", align 4
@aeu_descs_special = internal global { [4 x %struct.aeu_invert_reg_bit], [48 x i8] } { [4 x %struct.aeu_invert_reg_bit] [%struct.aeu_invert_reg_bit { [30 x i8] c"CNIG port 0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 5 }, %struct.aeu_invert_reg_bit { [30 x i8] c"CNIG port 1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 5 }, %struct.aeu_invert_reg_bit { [30 x i8] c"CNIG port 2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 5 }, %struct.aeu_invert_reg_bit { [30 x i8] c"CNIG port 3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 5 }], [48 x i8] zeroinitializer }, align 32
@qed_int_deassertion_aeu_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Deasserted attention `%s'[%08x]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_int_deassertion_aeu_bit\00", [36 x i8] zeroinitializer }, align 32
@qed_int_deassertion_aeu_bit._entry_ptr = internal global ptr @qed_int_deassertion_aeu_bit._entry, section ".printk_index", align 4
@qed_int_deassertion_aeu_bit._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.3, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]`%s (attention)': Calling Callback function\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_int_deassertion_aeu_bit._entry_ptr.121 = internal global ptr @qed_int_deassertion_aeu_bit._entry.119, section ".printk_index", align 4
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"`%s': Fatal attention\0A\00", [41 x i8] zeroinitializer }, align 32
@qed_int_deassertion_aeu_bit._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.118, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]`%s' - Disabled future attentions\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_int_deassertion_aeu_bit._entry_ptr.125 = internal global ptr @qed_int_deassertion_aeu_bit._entry.123, section ".printk_index", align 4
@qed_dorq_attn_int_sts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]DORQ is being reset, skipping int_sts handler\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dorq_attn_int_sts\00", [42 x i8] zeroinitializer }, align 32
@qed_dorq_attn_int_sts._entry_ptr = internal global ptr @qed_dorq_attn_int_sts._entry, section ".printk_index", align 4
@qed_dorq_attn_int_sts._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]DORQ attention. int_sts was %x\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_dorq_attn_int_sts._entry_ptr.130 = internal global ptr @qed_dorq_attn_int_sts._entry.128, section ".printk_index", align 4
@qed_dorq_attn_int_sts._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [253 x i8], [35 x i8] } { [253 x i8] c"\015[%s:%d(%s)]Doorbell drop occurred\0AAddress\09\090x%08x\09(second BAR address)\0AFID\09\090x%04x\09\09(Opaque FID)\0ASize\09\090x%04x\09\09(in bytes)\0A1st drop reason\090x%08x\09(details on first drop since last handling)\0ASticky reasons\090x%08x\09(all drop reasons since last handling)\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_dorq_attn_int_sts._entry_ptr.133 = internal global ptr @qed_dorq_attn_int_sts._entry.131, section ".printk_index", align 4
@qed_dorq_attn_int_sts._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.127, ptr @.str.3, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]DORQ fatal attention\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_dorq_attn_int_sts._entry_ptr.136 = internal global ptr @qed_dorq_attn_int_sts._entry.134, section ".printk_index", align 4
@qed_int_igu_cleanup_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 1952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]Timeout waiting for clear status 0x%08x [for sb %d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_int_igu_cleanup_sb\00", [41 x i8] zeroinitializer }, align 32
@qed_int_igu_cleanup_sb._entry_ptr = internal global ptr @qed_int_igu_cleanup_sb._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_int_sb_attn_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Attn Mask [Reg %d]: 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_int_sb_attn_init\00", [43 x i8] zeroinitializer }, align 32
@qed_int_sb_attn_init._entry_ptr = internal global ptr @qed_int_sb_attn_init._entry, section ".printk_index", align 4
@aeu_descs = internal global { <{ { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> }, { <{ [9 x %struct.aeu_invert_reg_bit], [23 x %struct.aeu_invert_reg_bit] }> }, { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> }, { <{ [19 x %struct.aeu_invert_reg_bit], [13 x %struct.aeu_invert_reg_bit] }> }, { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> }, { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> }, { <{ [17 x %struct.aeu_invert_reg_bit], [15 x %struct.aeu_invert_reg_bit] }> }, { <{ [21 x %struct.aeu_invert_reg_bit], [11 x %struct.aeu_invert_reg_bit] }> }, { <{ %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, [27 x %struct.aeu_invert_reg_bit] }> } }>, [3168 x i8] } { <{ { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> }, { <{ [9 x %struct.aeu_invert_reg_bit], [23 x %struct.aeu_invert_reg_bit] }> }, { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> }, { <{ [19 x %struct.aeu_invert_reg_bit], [13 x %struct.aeu_invert_reg_bit] }> }, { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> }, { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> }, { <{ [17 x %struct.aeu_invert_reg_bit], [15 x %struct.aeu_invert_reg_bit] }> }, { <{ [21 x %struct.aeu_invert_reg_bit], [11 x %struct.aeu_invert_reg_bit] }> }, { <{ %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, [27 x %struct.aeu_invert_reg_bit] }> } }> <{ { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> } { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> <{ %struct.aeu_invert_reg_bit { [30 x i8] c"GPIO0 function%d\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 512, ptr null, i32 92 }, [31 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ [9 x %struct.aeu_invert_reg_bit], [23 x %struct.aeu_invert_reg_bit] }> } { <{ [9 x %struct.aeu_invert_reg_bit], [23 x %struct.aeu_invert_reg_bit] }> <{ [9 x %struct.aeu_invert_reg_bit] [%struct.aeu_invert_reg_bit { [30 x i8] c"PGLUE config_space\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PGLUE misc_flr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PGLUE B RBC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr @qed_pglueb_rbc_attn_cb, i32 4 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PGLUE misc_mctp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"Flash event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"SMB event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"Main Power\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"SW timers #%d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4224, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PCIE glue/PXP VPD %d\00\00\00\00\00\00\00\00\00\00", i32 256, ptr null, i32 21 }], [23 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> } { <{ %struct.aeu_invert_reg_bit, [31 x %struct.aeu_invert_reg_bit] }> <{ %struct.aeu_invert_reg_bit { [30 x i8] c"General Attention %d\00\00\00\00\00\00\00\00\00\00", i32 512, ptr null, i32 92 }, [31 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ [19 x %struct.aeu_invert_reg_bit], [13 x %struct.aeu_invert_reg_bit] }> } { <{ [19 x %struct.aeu_invert_reg_bit], [13 x %struct.aeu_invert_reg_bit] }> <{ [19 x %struct.aeu_invert_reg_bit] [%struct.aeu_invert_reg_bit { [30 x i8] c"General Attention 32\00\00\00\00\00\00\00\00\00\00", i32 268435472, ptr @qed_fw_assertion, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"General Attention %d\00\00\00\00\00\00\00\00\00\00", i32 135200, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"General Attention 35\00\00\00\00\00\00\00\00\00\00", i32 268435472, ptr @qed_general_attention_35, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"NWS Parity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8388625, ptr null, i32 75 }, %struct.aeu_invert_reg_bit { [30 x i8] c"NWS Interrupt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9437200, ptr null, i32 75 }, %struct.aeu_invert_reg_bit { [30 x i8] c"NWM Parity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10485777, ptr null, i32 74 }, %struct.aeu_invert_reg_bit { [30 x i8] c"NWM Interrupt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11534352, ptr null, i32 74 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MCP CPU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr @qed_mcp_attn_cb, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MCP Watchdog timer\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MCP M2P\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"AVS stop status ready\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MSTAT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MSTAT per-path\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"Reserved %d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"NIG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 70 }, %struct.aeu_invert_reg_bit { [30 x i8] c"BMB/OPTE/MCP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 9 }, %struct.aeu_invert_reg_bit { [30 x i8] c"BTB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 57 }, %struct.aeu_invert_reg_bit { [30 x i8] c"BRB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 33 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PRS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 35 }], [13 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> } { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> <{ [16 x %struct.aeu_invert_reg_bit] [%struct.aeu_invert_reg_bit { [30 x i8] c"SRC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 34 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PB Client1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 54 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PB Client2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 55 }, %struct.aeu_invert_reg_bit { [30 x i8] c"RPB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 56 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PBF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 58 }, %struct.aeu_invert_reg_bit { [30 x i8] c"QM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 30 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 31 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 25 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MSDM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 37 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MSEM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 43 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 29 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSDM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 41 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSEM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 47 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 24 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TSDM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 36 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TSEM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 42 }], [16 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> } { <{ [16 x %struct.aeu_invert_reg_bit], [16 x %struct.aeu_invert_reg_bit] }> <{ [16 x %struct.aeu_invert_reg_bit] [%struct.aeu_invert_reg_bit { [30 x i8] c"UCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 26 }, %struct.aeu_invert_reg_bit { [30 x i8] c"USDM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 38 }, %struct.aeu_invert_reg_bit { [30 x i8] c"USEM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 44 }, %struct.aeu_invert_reg_bit { [30 x i8] c"XCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 27 }, %struct.aeu_invert_reg_bit { [30 x i8] c"XSDM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 39 }, %struct.aeu_invert_reg_bit { [30 x i8] c"XSEM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 45 }, %struct.aeu_invert_reg_bit { [30 x i8] c"YCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 28 }, %struct.aeu_invert_reg_bit { [30 x i8] c"YSDM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 40 }, %struct.aeu_invert_reg_bit { [30 x i8] c"YSEM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 46 }, %struct.aeu_invert_reg_bit { [30 x i8] c"XYLD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 52 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TMLD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 49 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MYLD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 50 }, %struct.aeu_invert_reg_bit { [30 x i8] c"YULD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 51 }, %struct.aeu_invert_reg_bit { [30 x i8] c"DORQ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr @qed_dorq_attn_cb, i32 32 }, %struct.aeu_invert_reg_bit { [30 x i8] c"DBG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 69 }, %struct.aeu_invert_reg_bit { [30 x i8] c"IPC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 73 }], [16 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ [17 x %struct.aeu_invert_reg_bit], [15 x %struct.aeu_invert_reg_bit] }> } { <{ [17 x %struct.aeu_invert_reg_bit], [15 x %struct.aeu_invert_reg_bit] }> <{ [17 x %struct.aeu_invert_reg_bit] [%struct.aeu_invert_reg_bit { [30 x i8] c"CCFC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 62 }, %struct.aeu_invert_reg_bit { [30 x i8] c"CDU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 61 }, %struct.aeu_invert_reg_bit { [30 x i8] c"DMAE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 22 }, %struct.aeu_invert_reg_bit { [30 x i8] c"IGU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 64 }, %struct.aeu_invert_reg_bit { [30 x i8] c"ATC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"CAU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 65 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PTU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 23 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PRM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 53 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TCFC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 63 }, %struct.aeu_invert_reg_bit { [30 x i8] c"RDIF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 59 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TDIF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 60 }, %struct.aeu_invert_reg_bit { [30 x i8] c"RSS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 48 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MISC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 2 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MISCS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 1 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PCIE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 10 }, %struct.aeu_invert_reg_bit { [30 x i8] c"Vaux PCI core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 21 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSWRQ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 19 }], [15 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ [21 x %struct.aeu_invert_reg_bit], [11 x %struct.aeu_invert_reg_bit] }> } { <{ [21 x %struct.aeu_invert_reg_bit], [11 x %struct.aeu_invert_reg_bit] }> <{ [21 x %struct.aeu_invert_reg_bit] [%struct.aeu_invert_reg_bit { [30 x i8] c"PSWRQ (pci_clk)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 20 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSWWR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 17 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSWWR (pci_clk)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 18 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSWRD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 15 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSWRD (pci_clk)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 16 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSWHST\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr @qed_pswhst_attn_cb, i32 13 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSWHST (pci_clk)\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 14 }, %struct.aeu_invert_reg_bit { [30 x i8] c"GRC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr @qed_grc_attn_cb, i32 0 }, %struct.aeu_invert_reg_bit { [30 x i8] c"CPMU\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 6 }, %struct.aeu_invert_reg_bit { [30 x i8] c"NCSI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 33, ptr null, i32 7 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MSEM PRAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PSEM PRAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"TSEM PRAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"USEM PRAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"XSEM PRAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"YSEM PRAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"pxp_misc_mps\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 21 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PCIE glue/PXP Exp. ROM\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 21 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PERST_B assertion\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"PERST_B deassertion\00\00\00\00\00\00\00\00\00\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"Reserved %d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32, ptr null, i32 92 }], [11 x %struct.aeu_invert_reg_bit] zeroinitializer }> }, { <{ %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, [27 x %struct.aeu_invert_reg_bit] }> } { <{ %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit, [27 x %struct.aeu_invert_reg_bit] }> <{ %struct.aeu_invert_reg_bit { [30 x i8] c"MCP Latched memory\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MCP Latched scratchpad cache\00\00", i32 16, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MCP Latched ump_tx\00\00\00\00\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"MCP Latched scratchpad\00\00\00\00\00\00\00\00", i32 17, ptr null, i32 92 }, %struct.aeu_invert_reg_bit { [30 x i8] c"Reserved %d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 448, ptr null, i32 92 }, [27 x %struct.aeu_invert_reg_bit] zeroinitializer }> } }>, [3168 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW assertion!\0A\00", [17 x i8] zeroinitializer }, align 32
@qed_general_attention_35._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]General attention 35!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_general_attention_35\00", [39 x i8] zeroinitializer }, align 32
@qed_general_attention_35._entry_ptr = internal global ptr @qed_general_attention_35._entry, section ".printk_index", align 4
@qed_mcp_attn_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]MCP_REG_CPU_STATE: %08x - Masking...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_mcp_attn_cb\00", [16 x i8] zeroinitializer }, align 32
@qed_mcp_attn_cb._entry_ptr = internal global ptr @qed_mcp_attn_cb._entry, section ".printk_index", align 4
@qed_pswhst_attn_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"\015[%s:%d(%s)]Incorrect access to %08x of length %08x - PF [%02x] VF [%04x] [valid %02x] client [%02x] write [%02x] Byte-Enable [%04x] [%08x]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_pswhst_attn_cb\00", [45 x i8] zeroinitializer }, align 32
@qed_pswhst_attn_cb._entry_ptr = internal global ptr @qed_pswhst_attn_cb._entry, section ".printk_index", align 4
@qed_grc_attn_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\015[%s:%d(%s)]GRC timeout [%08x:%08x] - %s Address [%08x] [Master %s] [PF: %02x %s %02x]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_grc_attn_cb\00", [16 x i8] zeroinitializer }, align 32
@qed_grc_attn_cb._entry_ptr = internal global ptr @qed_grc_attn_cb._entry, section ".printk_index", align 4
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Write to\00", [23 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Read from\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VF\00", [29 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(Irrelevant)\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PXP\00", [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCP\00", [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MSDM\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PSDM\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"YSDM\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"USDM\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TSDM\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XSDM\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DBU\00", [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMAE\00", [27 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@switch.table.qed_int_igu_enable_int = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 29, i32 11, i32 27], [20 x i8] zeroinitializer }, align 32
@switch.table.qed_int_igu_enable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 29, i32 11, i32 27], [20 x i8] zeroinitializer }, align 32
@switch.table.qed_grc_attn_cb = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.165, ptr @.str.165, ptr @.str.165, ptr @.str.165, ptr @.str.165, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 252, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 265, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 267, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 281, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 301, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 304, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 306, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 318, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 333, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 422, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1249, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1256, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1262, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1267, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1277, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1283, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1289, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1295, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1308, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1652, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1655, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1733, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1885, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1963, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1989, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2051, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2062, i32 5 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2073, i32 5 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2155, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2248, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2256, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2266, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2370, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2378, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 2396, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 402, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1196, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1201, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1204, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 854, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 859, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 879, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1030, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 984, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1004, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 897, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant [18 x i8] c"aeu_descs_special\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 573, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 927, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 932, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 948, i32 7 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 956, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 472, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 486, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 502, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 534, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1950, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 1394, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant [10 x i8] c"aeu_descs\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 581, i32 30 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 352, i32 6 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 362, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 95, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 131, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 198, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 165, i32 17 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 166, i32 17 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 167, i32 17 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 168, i32 17 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 169, i32 17 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 170, i32 17 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 171, i32 17 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 172, i32 17 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 173, i32 17 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 174, i32 18 }
@___asan_gen_.637 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.638 = private constant [45 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_int.c\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.638, i32 176, i32 10 }
@___asan_gen_.640 = private unnamed_addr constant [36 x i8] c"switch.table.qed_int_igu_enable_int\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [32 x i8] c"switch.table.qed_int_igu_enable\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [29 x i8] c"switch.table.qed_grc_attn_cb\00", align 1
@llvm.compiler.used = appending global [218 x ptr] [ptr @qed_db_rec_flush_queue._entry, ptr @qed_db_rec_flush_queue._entry_ptr, ptr @qed_db_rec_handler._entry, ptr @qed_db_rec_handler._entry_ptr, ptr @qed_dorq_attn_int_sts._entry, ptr @qed_dorq_attn_int_sts._entry.128, ptr @qed_dorq_attn_int_sts._entry.131, ptr @qed_dorq_attn_int_sts._entry.134, ptr @qed_dorq_attn_int_sts._entry_ptr, ptr @qed_dorq_attn_int_sts._entry_ptr.130, ptr @qed_dorq_attn_int_sts._entry_ptr.133, ptr @qed_dorq_attn_int_sts._entry_ptr.136, ptr @qed_general_attention_35._entry, ptr @qed_general_attention_35._entry_ptr, ptr @qed_get_igu_sb_id._entry, ptr @qed_get_igu_sb_id._entry.51, ptr @qed_get_igu_sb_id._entry_ptr, ptr @qed_get_igu_sb_id._entry_ptr.53, ptr @qed_grc_attn_cb._entry, ptr @qed_grc_attn_cb._entry_ptr, ptr @qed_int_assertion._entry, ptr @qed_int_assertion._entry.102, ptr @qed_int_assertion._entry.105, ptr @qed_int_assertion._entry_ptr, ptr @qed_int_assertion._entry_ptr.104, ptr @qed_int_assertion._entry_ptr.107, ptr @qed_int_attentions._entry, ptr @qed_int_attentions._entry.94, ptr @qed_int_attentions._entry.97, ptr @qed_int_attentions._entry_ptr, ptr @qed_int_attentions._entry_ptr.96, ptr @qed_int_attentions._entry_ptr.99, ptr @qed_int_attn_print._entry, ptr @qed_int_attn_print._entry_ptr, ptr @qed_int_deassertion._entry, ptr @qed_int_deassertion._entry_ptr, ptr @qed_int_deassertion_aeu_bit._entry, ptr @qed_int_deassertion_aeu_bit._entry.119, ptr @qed_int_deassertion_aeu_bit._entry.123, ptr @qed_int_deassertion_aeu_bit._entry_ptr, ptr @qed_int_deassertion_aeu_bit._entry_ptr.121, ptr @qed_int_deassertion_aeu_bit._entry_ptr.125, ptr @qed_int_deassertion_parity._entry, ptr @qed_int_deassertion_parity._entry.112, ptr @qed_int_deassertion_parity._entry_ptr, ptr @qed_int_deassertion_parity._entry_ptr.114, ptr @qed_int_igu_cleanup_sb._entry, ptr @qed_int_igu_cleanup_sb._entry_ptr, ptr @qed_int_igu_enable._entry, ptr @qed_int_igu_enable._entry_ptr, ptr @qed_int_igu_init_pure_rt_single._entry, ptr @qed_int_igu_init_pure_rt_single._entry.60, ptr @qed_int_igu_init_pure_rt_single._entry_ptr, ptr @qed_int_igu_init_pure_rt_single._entry_ptr.62, ptr @qed_int_igu_read_cam._entry, ptr @qed_int_igu_read_cam._entry.76, ptr @qed_int_igu_read_cam._entry.79, ptr @qed_int_igu_read_cam._entry_ptr, ptr @qed_int_igu_read_cam._entry_ptr.78, ptr @qed_int_igu_read_cam._entry_ptr.81, ptr @qed_int_igu_reset_cam._entry, ptr @qed_int_igu_reset_cam._entry.65, ptr @qed_int_igu_reset_cam._entry.68, ptr @qed_int_igu_reset_cam._entry.71, ptr @qed_int_igu_reset_cam._entry_ptr, ptr @qed_int_igu_reset_cam._entry_ptr.67, ptr @qed_int_igu_reset_cam._entry_ptr.70, ptr @qed_int_igu_reset_cam._entry_ptr.73, ptr @qed_int_sb_attn_init._entry, ptr @qed_int_sb_attn_init._entry_ptr, ptr @qed_int_sb_release._entry, ptr @qed_int_sb_release._entry_ptr, ptr @qed_int_set_timer_res._entry, ptr @qed_int_set_timer_res._entry.84, ptr @qed_int_set_timer_res._entry.87, ptr @qed_int_set_timer_res._entry_ptr, ptr @qed_int_set_timer_res._entry_ptr.86, ptr @qed_int_set_timer_res._entry_ptr.89, ptr @qed_int_sp_dpc._entry, ptr @qed_int_sp_dpc._entry.25, ptr @qed_int_sp_dpc._entry.28, ptr @qed_int_sp_dpc._entry.31, ptr @qed_int_sp_dpc._entry.34, ptr @qed_int_sp_dpc._entry.37, ptr @qed_int_sp_dpc._entry.40, ptr @qed_int_sp_dpc._entry.43, ptr @qed_int_sp_dpc._entry.46, ptr @qed_int_sp_dpc._entry_ptr, ptr @qed_int_sp_dpc._entry_ptr.27, ptr @qed_int_sp_dpc._entry_ptr.30, ptr @qed_int_sp_dpc._entry_ptr.33, ptr @qed_int_sp_dpc._entry_ptr.36, ptr @qed_int_sp_dpc._entry_ptr.39, ptr @qed_int_sp_dpc._entry_ptr.42, ptr @qed_int_sp_dpc._entry_ptr.45, ptr @qed_int_sp_dpc._entry_ptr.48, ptr @qed_mcp_attn_cb._entry, ptr @qed_mcp_attn_cb._entry_ptr, ptr @qed_pglueb_rbc_attn_handler._entry, ptr @qed_pglueb_rbc_attn_handler._entry.11, ptr @qed_pglueb_rbc_attn_handler._entry.13, ptr @qed_pglueb_rbc_attn_handler._entry.15, ptr @qed_pglueb_rbc_attn_handler._entry.18, ptr @qed_pglueb_rbc_attn_handler._entry.5, ptr @qed_pglueb_rbc_attn_handler._entry.7, ptr @qed_pglueb_rbc_attn_handler._entry_ptr, ptr @qed_pglueb_rbc_attn_handler._entry_ptr.12, ptr @qed_pglueb_rbc_attn_handler._entry_ptr.14, ptr @qed_pglueb_rbc_attn_handler._entry_ptr.17, ptr @qed_pglueb_rbc_attn_handler._entry_ptr.20, ptr @qed_pglueb_rbc_attn_handler._entry_ptr.6, ptr @qed_pglueb_rbc_attn_handler._entry_ptr.9, ptr @qed_pswhst_attn_cb._entry, ptr @qed_pswhst_attn_cb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, ptr @.str.10, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @aeu_descs_special, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @aeu_descs, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @switch.table.qed_int_igu_enable_int, ptr @switch.table.qed_int_igu_enable, ptr @switch.table.qed_grc_attn_cb], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pglueb_rbc_attn_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pglueb_rbc_attn_handler._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pglueb_rbc_attn_handler._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 187, i32 224, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pglueb_rbc_attn_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pglueb_rbc_attn_handler._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pglueb_rbc_attn_handler._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pglueb_rbc_attn_handler._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_db_rec_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sp_dpc._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_igu_sb_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_igu_sb_id._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sb_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_init_pure_rt_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_init_pure_rt_single._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_reset_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_reset_cam._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_reset_cam._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_reset_cam._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_read_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_read_cam._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_read_cam._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_set_timer_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_set_timer_res._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_set_timer_res._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_db_rec_flush_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_attentions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_attentions._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_attentions._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_assertion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_assertion._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_assertion._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_deassertion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_deassertion_parity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_deassertion_parity._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_attn_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aeu_descs_special to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_deassertion_aeu_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_deassertion_aeu_bit._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_deassertion_aeu_bit._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dorq_attn_int_sts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dorq_attn_int_sts._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dorq_attn_int_sts._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 253, i32 288, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dorq_attn_int_sts._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_igu_cleanup_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_int_sb_attn_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aeu_descs to i32), i32 12672, i32 15840, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_general_attention_35._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mcp_attn_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pswhst_attn_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_grc_attn_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_int_igu_enable_int to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_int_igu_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_grc_attn_cb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_pglueb_rbc_attn_handler(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %hw_init) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg) #14
  %0 = call ptr @memset(ptr %msg, i32 255, i32 256)
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793808) #14
  %and = and i32 %call, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end89_crit_edge, label %if.then

entry.if.end89_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793796) #14
  %call2 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793800) #14
  %call3 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793804) #14
  %shr = lshr i32 %call3, 20
  %conv = and i32 %shr, 15
  %shr6 = lshr i32 %call3, 24
  %1 = lshr i32 %call3, 19
  %.lobit388 = and i32 %1, 1
  %2 = lshr i32 %call, 21
  %.lobit389 = and i32 %2, 1
  %3 = lshr i32 %call, 22
  %.lobit390 = and i32 %3, 1
  %4 = lshr i32 %call, 23
  %.lobit391 = and i32 %4, 1
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %msg, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %call2, i32 noundef %call1, i32 noundef %call3, i32 noundef %conv, i32 noundef %shr6, i32 noundef %.lobit388, i32 noundef %call, i32 noundef %.lobit389, i32 noundef %.lobit390, i32 noundef %.lobit391)
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  br i1 %hw_init, label %do.body, label %do.body58

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %land.rhs, label %do.body.if.end89_crit_edge

do.body.if.end89_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %7 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dp_module, align 4
  %and40 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %land.rhs.if.end89_crit_edge, label %land.rhs.if.end89.sink.split_crit_edge, !prof !298

land.rhs.if.end89.sink.split_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.sink.split

land.rhs.if.end89_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

do.body58:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp61 = icmp ult i8 %6, 3
  br i1 %cmp61, label %do.body58.if.end89.sink.split_crit_edge, label %do.body58.if.end89_crit_edge, !prof !299

do.body58.if.end89_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

do.body58.if.end89.sink.split_crit_edge:          ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.sink.split

if.end89.sink.split:                              ; preds = %do.body58.if.end89.sink.split_crit_edge, %land.rhs.if.end89.sink.split_crit_edge
  %.sink = phi i32 [ 265, %land.rhs.if.end89.sink.split_crit_edge ], [ 267, %do.body58.if.end89.sink.split_crit_edge ]
  %name74 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool51.not = icmp eq ptr %name74, null
  %spec.select = select i1 %tobool51.not, ptr @.str.4, ptr %name74
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %.sink, ptr noundef nonnull %spec.select, ptr noundef nonnull %msg) #17
  br label %if.end89

if.end89:                                         ; preds = %if.end89.sink.split, %do.body58.if.end89_crit_edge, %land.rhs.if.end89_crit_edge, %do.body.if.end89_crit_edge, %entry.if.end89_crit_edge
  %call90 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793824) #14
  %and91 = and i32 %call90, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end153_crit_edge, label %if.then93

if.end89.if.end153_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

if.then93:                                        ; preds = %if.end89
  %call97 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793812) #14
  %call98 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793816) #14
  %call99 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793820) #14
  %dp_level101 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %9 = ptrtoint ptr %dp_level101 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level101, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp103 = icmp ult i8 %10, 3
  br i1 %cmp103, label %do.end114, label %if.then93.if.end153_crit_edge, !prof !299

if.then93.if.end153_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end153

do.end114:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #16
  %name116 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool118.not = icmp eq ptr %name116, null
  %spec.select393 = select i1 %tobool118.not, ptr @.str.4, ptr %name116
  %shr125 = lshr i32 %call99, 20
  %conv127 = and i32 %shr125, 15
  %shr129 = lshr i32 %call99, 24
  %11 = lshr i32 %call99, 19
  %.lobit = and i32 %11, 1
  %12 = lshr i32 %call90, 21
  %.lobit385 = and i32 %12, 1
  %13 = lshr i32 %call90, 22
  %.lobit386 = and i32 %13, 1
  %14 = lshr i32 %call90, 23
  %.lobit387 = and i32 %14, 1
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 296, ptr noundef nonnull %spec.select393, i32 noundef %call98, i32 noundef %call97, i32 noundef %call99, i32 noundef %conv127, i32 noundef %shr129, i32 noundef %.lobit, i32 noundef %call90, i32 noundef %.lobit385, i32 noundef %.lobit386, i32 noundef %.lobit387) #17
  br label %if.end153

if.end153:                                        ; preds = %do.end114, %if.then93.if.end153_crit_edge, %if.end89.if.end153_crit_edge
  %call154 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2793828) #14
  %and155 = and i32 %call154, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end153.if.end229_crit_edge, label %if.then157

if.end153.if.end229_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229

if.then157:                                       ; preds = %if.end153
  %call159 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %msg, i32 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %call154)
  %dp_level163 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %15 = ptrtoint ptr %dp_level163 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level163, align 8
  br i1 %hw_init, label %do.body162, label %do.body198

do.body162:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp165 = icmp eq i8 %16, 0
  br i1 %cmp165, label %land.rhs167, label %do.body162.if.end229_crit_edge

do.body162.if.end229_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229

land.rhs167:                                      ; preds = %do.body162
  %dp_module168 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %17 = ptrtoint ptr %dp_module168 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_module168, align 4
  %and169 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %land.rhs167.if.end229_crit_edge, label %land.rhs167.if.end229.sink.split_crit_edge, !prof !298

land.rhs167.if.end229.sink.split_crit_edge:       ; preds = %land.rhs167
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229.sink.split

land.rhs167.if.end229_crit_edge:                  ; preds = %land.rhs167
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229

do.body198:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp201 = icmp ult i8 %16, 3
  br i1 %cmp201, label %do.body198.if.end229.sink.split_crit_edge, label %do.body198.if.end229_crit_edge, !prof !299

do.body198.if.end229_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229

do.body198.if.end229.sink.split_crit_edge:        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229.sink.split

if.end229.sink.split:                             ; preds = %do.body198.if.end229.sink.split_crit_edge, %land.rhs167.if.end229.sink.split_crit_edge
  %.sink399 = phi i32 [ 304, %land.rhs167.if.end229.sink.split_crit_edge ], [ 306, %do.body198.if.end229.sink.split_crit_edge ]
  %name214 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool185.not = icmp eq ptr %name214, null
  %spec.select394 = select i1 %tobool185.not, ptr @.str.4, ptr %name214
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %.sink399, ptr noundef nonnull %spec.select394, ptr noundef nonnull %msg) #17
  br label %if.end229

if.end229:                                        ; preds = %if.end229.sink.split, %do.body198.if.end229_crit_edge, %land.rhs167.if.end229_crit_edge, %do.body162.if.end229_crit_edge, %if.end153.if.end229_crit_edge
  %call230 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2794828) #14
  %and231 = and i32 %call230, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.end229.if.end267_crit_edge, label %if.then233

if.end229.if.end267_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end267

if.then233:                                       ; preds = %if.end229
  %call236 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2794820) #14
  %call237 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2794824) #14
  %dp_level239 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %19 = ptrtoint ptr %dp_level239 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dp_level239, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp241 = icmp ult i8 %20, 3
  br i1 %cmp241, label %do.end252, label %if.then233.if.end267_crit_edge, !prof !299

if.then233.if.end267_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end267

do.end252:                                        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #16
  %name254 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool256.not = icmp eq ptr %name254, null
  %spec.select396 = select i1 %tobool256.not, ptr @.str.4, ptr %name254
  %call263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 319, ptr noundef nonnull %spec.select396, i32 noundef %call230, i32 noundef %call237, i32 noundef %call236) #17
  br label %if.end267

if.end267:                                        ; preds = %do.end252, %if.then233.if.end267_crit_edge, %if.end229.if.end267_crit_edge
  %call268 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2797184) #14
  %and269 = and i32 %call268, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  br i1 %tobool270.not, label %if.end267.if.end307_crit_edge, label %if.then271

if.end267.if.end307_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307

if.then271:                                       ; preds = %if.end267
  %call275 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2797172) #14
  %call276 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2797176) #14
  %call277 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2797180) #14
  %dp_level279 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %21 = ptrtoint ptr %dp_level279 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level279, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp281 = icmp ult i8 %22, 3
  br i1 %cmp281, label %do.end292, label %if.then271.if.end307_crit_edge, !prof !299

if.then271.if.end307_crit_edge:                   ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307

do.end292:                                        ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #16
  %name294 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool296.not = icmp eq ptr %name294, null
  %spec.select397 = select i1 %tobool296.not, ptr @.str.4, ptr %name294
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 335, ptr noundef nonnull %spec.select397, i32 noundef %call277, i32 noundef %call268, i32 noundef %call276, i32 noundef %call275) #17
  br label %if.end307

if.end307:                                        ; preds = %do.end292, %if.then271.if.end307_crit_edge, %if.end267.if.end307_crit_edge
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2794428, i32 noundef 4) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_db_rec_handler(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %overflow = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 62, i32 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %overflow) #14
  %call1 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1051088) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %do.end, label %do.body.do.end14_crit_edge, !prof !299

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 423, ptr noundef nonnull %spec.select, i32 noundef %call, i32 noundef %call1) #17
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  br i1 %tobool.not, label %do.end14.if.end23_crit_edge, label %land.lhs.true16

do.end14.if.end23_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true16:                                  ; preds = %do.end14
  %db_bar_no_edpm = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 60
  %2 = ptrtoint ptr %db_bar_no_edpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %db_bar_no_edpm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool17.not = icmp eq i8 %3, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true16.if.end23_crit_edge

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true16
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1051096, i32 noundef 1) #14
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then18
  %count.025.i = phi i32 [ 1000, %if.then18 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.025.i, -1
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1051072) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  br i1 %tobool1.not.i, label %while.end.i.if.end23_crit_edge, label %do.body.i

while.end.i.if.end23_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.body.i:                                        ; preds = %while.end.i
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.i = icmp ult i8 %8, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup_crit_edge, !prof !299

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 2
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 404, ptr noundef nonnull %name.i, i32 noundef 100000, i32 noundef %call.i) #17
  br label %cleanup

if.end23:                                         ; preds = %while.end.i.if.end23_crit_edge, %land.lhs.true16.if.end23_crit_edge, %do.end14.if.end23_crit_edge
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1051088, i32 noundef 0) #14
  tail call void @qed_db_recovery_execute(ptr noundef %p_hwfn) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %do.end.i ], [ -16, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_db_recovery_execute(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_sp_dpc(ptr noundef %t) #0 align 64 {
entry:
  %attn_results.i.i22.i.i = alloca %struct.dbg_attn_block_result, align 4
  %attn_results.i89.i.i.i = alloca %struct.dbg_attn_block_result, align 4
  %attn_results.i75.i.i.i = alloca %struct.dbg_attn_block_result, align 4
  %attn_results.i.i.i.i = alloca %struct.dbg_attn_block_result, align 4
  %aeu_inv_arr.i.i = alloca [9 x i32], align 4
  %bitmask.i.i = alloca i32, align 4
  %bit_name.i.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -316
  %p_sp_sb = getelementptr i8, ptr %t, i32 40
  %0 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_sp_sb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 2
  %tobool3.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool3.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 1249, ptr noundef nonnull %spec.select) #17
  br label %cleanup

if.end32:                                         ; preds = %entry
  %p_sb_attn = getelementptr i8, ptr %t, i32 44
  %4 = ptrtoint ptr %p_sb_attn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_sb_attn, align 8
  %tobool33.not = icmp eq ptr %5, null
  br i1 %tobool33.not, label %do.end38, label %if.end54

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %name41 = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 2
  %tobool43.not = icmp eq ptr %name41, null
  %spec.select347 = select i1 %tobool43.not, ptr @.str.4, ptr %name41
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef 1262, ptr noundef nonnull %spec.select347) #17
  br label %cleanup

if.end54:                                         ; preds = %if.end32
  %dp_level = getelementptr i8, ptr %t, i32 -300
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %land.rhs, label %if.end54.do.end79_crit_edge

if.end54.do.end79_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79

land.rhs:                                         ; preds = %if.end54
  %dp_module = getelementptr i8, ptr %t, i32 -304
  %10 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %land.rhs.do.end79_crit_edge, label %do.end64, !prof !298

land.rhs.do.end79_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79

do.end64:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %name66 = getelementptr i8, ptr %t, i32 -299
  %tobool68.not = icmp eq ptr %name66, null
  %spec.select348 = select i1 %tobool68.not, ptr @.str.4, ptr %name66
  %my_id = getelementptr i8, ptr %t, i32 -312
  %12 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %my_id, align 4
  %conv75 = zext i8 %13 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, i32 noundef 1268, ptr noundef nonnull %spec.select348, ptr noundef %add.ptr, i32 noundef %conv75) #17
  br label %do.end79

do.end79:                                         ; preds = %do.end64, %land.rhs.do.end79_crit_edge, %if.end54.do.end79_crit_edge
  %sb_ack.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_ack.i, align 4
  %or3.i = or i32 %15, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !300
  tail call void @arm_heavy_mb() #14
  %16 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #14
  %igu_addr.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %igu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #14, !srcloc !301
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !302
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tobool80.not = icmp eq ptr %20, null
  br i1 %tobool80.not, label %do.end85, label %if.else

do.end85:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %name88 = getelementptr inbounds %struct.qed_dev, ptr %22, i32 0, i32 2
  %tobool90.not = icmp eq ptr %name88, null
  %spec.select349 = select i1 %tobool90.not, ptr @.str.4, ptr %name88
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, i32 noundef 1278, ptr noundef nonnull %spec.select349) #17
  br label %lor.lhs.false

if.else:                                          ; preds = %do.end79
  %23 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_ack.i, align 4
  %prod_index.i = getelementptr inbounds %struct.status_block, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %prod_index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prod_index.i, align 4
  %27 = and i32 %26, -256
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %28)
  %cmp.not.i = icmp eq i32 %24, %28
  br i1 %cmp.not.i, label %if.else.qed_sb_update_sb_idx.exit_crit_edge, label %if.then.i

if.else.qed_sb_update_sb_idx.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_sb_update_sb_idx.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sb_ack.i, align 4
  br label %qed_sb_update_sb_idx.exit

qed_sb_update_sb_idx.exit:                        ; preds = %if.then.i, %if.else.qed_sb_update_sb_idx.exit_crit_edge
  %rc.0.i = phi i16 [ 2, %if.then.i ], [ 0, %if.else.qed_sb_update_sb_idx.exit_crit_edge ]
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  %dp_level104 = getelementptr inbounds %struct.qed_dev, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dp_level104 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp106 = icmp eq i8 %33, 0
  br i1 %cmp106, label %land.rhs108, label %qed_sb_update_sb_idx.exit.lor.lhs.false_crit_edge

qed_sb_update_sb_idx.exit.lor.lhs.false_crit_edge: ; preds = %qed_sb_update_sb_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.rhs108:                                      ; preds = %qed_sb_update_sb_idx.exit
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 8
  %and111 = and i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %land.rhs108.lor.lhs.false_crit_edge, label %do.end123, !prof !298

land.rhs108.lor.lhs.false_crit_edge:              ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

do.end123:                                        ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #16
  %name126 = getelementptr inbounds %struct.qed_dev, ptr %31, i32 0, i32 2
  %tobool128.not = icmp eq ptr %name126, null
  %spec.select350 = select i1 %tobool128.not, ptr @.str.4, ptr %name126
  %36 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_ack.i, align 4
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, i32 noundef 1285, ptr noundef nonnull %spec.select350, i32 noundef %24, i32 noundef %37) #17
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end123, %land.rhs108.lor.lhs.false_crit_edge, %qed_sb_update_sb_idx.exit.lor.lhs.false_crit_edge, %do.end85
  %rc.0 = phi i16 [ 0, %do.end85 ], [ %rc.0.i, %qed_sb_update_sb_idx.exit.lor.lhs.false_crit_edge ], [ %rc.0.i, %do.end123 ], [ %rc.0.i, %land.rhs108.lor.lhs.false_crit_edge ]
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %tobool144.not = icmp eq ptr %39, null
  br i1 %tobool144.not, label %do.end149, label %if.else165

do.end149:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %name152 = getelementptr inbounds %struct.qed_dev, ptr %41, i32 0, i32 2
  %tobool154.not = icmp eq ptr %name152, null
  %spec.select351 = select i1 %tobool154.not, ptr @.str.4, ptr %name152
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.24, i32 noundef 1290, ptr noundef nonnull %spec.select351) #17
  br label %if.end212

if.else165:                                       ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.qed_sb_attn_info, ptr %5, i32 0, i32 2
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %index, align 4
  %sb_index.i = getelementptr inbounds %struct.atten_status_block, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %sb_index.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sb_index.i, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #14
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %46)
  %cmp.not.i355 = icmp eq i16 %43, %46
  br i1 %cmp.not.i355, label %if.else165.qed_attn_update_idx.exit_crit_edge, label %if.then.i356

if.else165.qed_attn_update_idx.exit_crit_edge:    ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_attn_update_idx.exit

if.then.i356:                                     ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %index, align 4
  br label %qed_attn_update_idx.exit

qed_attn_update_idx.exit:                         ; preds = %if.then.i356, %if.else165.qed_attn_update_idx.exit_crit_edge
  %rc.0.i357 = phi i16 [ 1, %if.then.i356 ], [ 0, %if.else165.qed_attn_update_idx.exit_crit_edge ]
  %or346 = or i16 %rc.0.i357, %rc.0
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %dp_level173 = getelementptr inbounds %struct.qed_dev, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dp_level173 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dp_level173, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp175 = icmp eq i8 %51, 0
  br i1 %cmp175, label %land.rhs177, label %qed_attn_update_idx.exit.if.end212_crit_edge

qed_attn_update_idx.exit.if.end212_crit_edge:     ; preds = %qed_attn_update_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

land.rhs177:                                      ; preds = %qed_attn_update_idx.exit
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %49, align 8
  %and180 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %land.rhs177.if.end212_crit_edge, label %do.end192, !prof !298

land.rhs177.if.end212_crit_edge:                  ; preds = %land.rhs177
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

do.end192:                                        ; preds = %land.rhs177
  call void @__sanitizer_cov_trace_pc() #16
  %name195 = getelementptr inbounds %struct.qed_dev, ptr %49, i32 0, i32 2
  %tobool197.not = icmp eq ptr %name195, null
  %spec.select352 = select i1 %tobool197.not, ptr @.str.4, ptr %name195
  %conv205 = zext i16 %43 to i32
  %54 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %index, align 4
  %conv207 = zext i16 %55 to i32
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.24, i32 noundef 1297, ptr noundef nonnull %spec.select352, i32 noundef %conv205, i32 noundef %conv207) #17
  br label %if.end212

if.end212:                                        ; preds = %do.end192, %land.rhs177.if.end212_crit_edge, %qed_attn_update_idx.exit.if.end212_crit_edge, %do.end149
  %rc.1 = phi i16 [ %rc.0, %do.end149 ], [ %or346, %qed_attn_update_idx.exit.if.end212_crit_edge ], [ %or346, %do.end192 ], [ %or346, %land.rhs177.if.end212_crit_edge ]
  %conv213 = zext i16 %rc.1 to i32
  %and214 = and i32 %conv213, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sb_ack.i, align 4
  %or3.i359 = or i32 %57, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !300
  tail call void @arm_heavy_mb() #14
  %58 = tail call i32 @llvm.bswap.i32(i32 %or3.i359) #14
  %59 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %igu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #14, !srcloc !301
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !302
  br label %cleanup

if.end217:                                        ; preds = %if.end212
  %p_dpc_ptt = getelementptr i8, ptr %t, i32 32
  %61 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %p_dpc_ptt, align 4
  %tobool218.not = icmp eq ptr %62, null
  br i1 %tobool218.not, label %do.body220, label %if.end252

do.body220:                                       ; preds = %if.end217
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 8
  %dp_level222 = getelementptr inbounds %struct.qed_dev, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %dp_level222 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dp_level222, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp224 = icmp ult i8 %66, 3
  br i1 %cmp224, label %do.end235, label %do.body220.do.end251_crit_edge, !prof !299

do.body220.do.end251_crit_edge:                   ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end251

do.end235:                                        ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #16
  %name238 = getelementptr inbounds %struct.qed_dev, ptr %64, i32 0, i32 2
  %tobool240.not = icmp eq ptr %name238, null
  %spec.select353 = select i1 %tobool240.not, ptr @.str.4, ptr %name238
  %call248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.24, i32 noundef 1308, ptr noundef nonnull %spec.select353) #17
  br label %do.end251

do.end251:                                        ; preds = %do.end235, %do.body220.do.end251_crit_edge
  %67 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sb_ack.i, align 4
  %or3.i362 = or i32 %68, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !300
  tail call void @arm_heavy_mb() #14
  %69 = tail call i32 @llvm.bswap.i32(i32 %or3.i362) #14
  %70 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %igu_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #14, !srcloc !301
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !302
  br label %cleanup

if.end252:                                        ; preds = %if.end217
  %and254 = and i32 %conv213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %if.end252.if.end258_crit_edge, label %if.then256

if.end252.if.end258_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end258

if.then256:                                       ; preds = %if.end252
  %72 = ptrtoint ptr %p_sb_attn to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %p_sb_attn, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %sb_index.i364 = getelementptr inbounds %struct.atten_status_block, ptr %75, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then256
  %76 = ptrtoint ptr %sb_index.i364 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %sb_index.i364, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !303
  %78 = ptrtoint ptr %sb_index.i364 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %sb_index.i364, align 2
  %cmp.not.i365 = icmp eq i16 %77, %79
  br i1 %cmp.not.i365, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %75, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #14
  %atten_ack.le.i = getelementptr inbounds %struct.atten_status_block, ptr %75, i32 0, i32 1
  %83 = ptrtoint ptr %atten_ack.le.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %atten_ack.le.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  %conv.le.i = zext i16 %77 to i32
  %86 = ptrtoint ptr %sb_index.i364 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %77, ptr %sb_index.i364, align 2
  %known_attn.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %73, i32 0, i32 5
  %87 = ptrtoint ptr %known_attn.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %known_attn.i, align 4
  %conv7.i = zext i16 %88 to i32
  %and.i = and i32 %82, 4095
  %89 = or i32 %85, %conv7.i
  %90 = xor i32 %89, -1
  %and9.i = and i32 %and.i, %90
  %conv10.i = trunc i32 %and9.i to i16
  %neg11.i = xor i32 %82, -1
  %and12.i = and i32 %85, %neg11.i
  %91 = trunc i32 %and12.i to i16
  %92 = and i16 %88, 4095
  %conv17.i = and i16 %92, %91
  %and19.i = and i32 %and9.i, 3839
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i = icmp eq i32 %and19.i, 0
  %93 = and i16 %conv17.i, 3839
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool22.not.i = icmp eq i16 %93, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool22.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i, label %do.body23.i

do.body23.i:                                      ; preds = %do.end.i
  %94 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp25.i = icmp ult i8 %95, 2
  br i1 %cmp25.i, label %do.end32.i, label %do.body23.i.if.end114.i_crit_edge, !prof !299

do.body23.i.if.end114.i_crit_edge:                ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114.i

do.end32.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr i8, ptr %t, i32 -299
  %conv38.i = zext i16 %conv17.i to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef 1199, ptr noundef nonnull %name.i, i32 noundef %conv.le.i, i32 noundef %82, i32 noundef %85, i32 noundef %and9.i, i32 noundef %conv38.i, i32 noundef %conv7.i) #17
  br label %if.end114.i

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and9.i)
  %cmp44.i = icmp eq i32 %and9.i, 256
  %96 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp50.i = icmp eq i8 %97, 0
  br i1 %cmp44.i, label %do.body47.i, label %do.body79.i

do.body47.i:                                      ; preds = %if.else.i
  br i1 %cmp50.i, label %land.rhs.i, label %do.body47.i.if.then116.i_crit_edge

do.body47.i.if.then116.i_crit_edge:               ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then116.i

land.rhs.i:                                       ; preds = %do.body47.i
  %dp_module.i = getelementptr i8, ptr %t, i32 -304
  %98 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dp_module.i, align 4
  %and52.i = and i32 %99, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %land.rhs.i.if.then116.i_crit_edge, label %do.end63.i, !prof !298

land.rhs.i.if.then116.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then116.i

do.end63.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %name65.i = getelementptr i8, ptr %t, i32 -299
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef 1202, ptr noundef nonnull %name65.i) #17
  br label %if.then116.i

do.body79.i:                                      ; preds = %if.else.i
  br i1 %cmp50.i, label %land.rhs84.i, label %do.body79.i.if.end114.i_crit_edge

do.body79.i.if.end114.i_crit_edge:                ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114.i

land.rhs84.i:                                     ; preds = %do.body79.i
  %dp_module85.i = getelementptr i8, ptr %t, i32 -304
  %100 = ptrtoint ptr %dp_module85.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dp_module85.i, align 4
  %and86.i = and i32 %101, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %land.rhs84.i.if.end114.i_crit_edge, label %do.end98.i, !prof !298

land.rhs84.i.if.end114.i_crit_edge:               ; preds = %land.rhs84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114.i

do.end98.i:                                       ; preds = %land.rhs84.i
  call void @__sanitizer_cov_trace_pc() #16
  %name100.i = getelementptr i8, ptr %t, i32 -299
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93, i32 noundef 1205, ptr noundef nonnull %name100.i) #17
  br label %if.end114.i

if.end114.i:                                      ; preds = %do.end98.i, %land.rhs84.i.if.end114.i_crit_edge, %do.body79.i.if.end114.i_crit_edge, %do.end32.i, %do.body23.i.if.end114.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10.i)
  %tobool115.not.i = icmp eq i16 %conv10.i, 0
  br i1 %tobool115.not.i, label %if.end114.i.if.end121.i_crit_edge, label %if.end114.i.if.then116.i_crit_edge

if.end114.i.if.then116.i_crit_edge:               ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then116.i

if.end114.i.if.end121.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i

if.then116.i:                                     ; preds = %if.end114.i.if.then116.i_crit_edge, %do.end63.i, %land.rhs.i.if.then116.i_crit_edge, %do.body47.i.if.then116.i_crit_edge
  %102 = ptrtoint ptr %p_sb_attn to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %p_sb_attn, align 8
  %104 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %p_dpc_ptt, align 4
  %call.i.i = tail call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %105, i32 noundef 1574972) #14
  %106 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp.i.i = icmp eq i8 %107, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.then116.i.do.end13.i.i_crit_edge

if.then116.i.do.end13.i.i_crit_edge:              ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i.i

land.rhs.i.i:                                     ; preds = %if.then116.i
  %dp_module.i.i = getelementptr i8, ptr %t, i32 -304
  %108 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %109, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.do.end13.i.i_crit_edge, label %do.end.i.i, !prof !298

land.rhs.i.i.do.end13.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i = getelementptr i8, ptr %t, i32 -299
  %110 = and i32 %and9.i, 1023
  %neg.i.i = xor i32 %110, -1
  %and10.i.i = and i32 %call.i.i, %neg.i.i
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 855, ptr noundef nonnull %name.i.i, i32 noundef %call.i.i, i32 noundef %and10.i.i) #17
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end.i.i, %land.rhs.i.i.do.end13.i.i_crit_edge, %if.then116.i.do.end13.i.i_crit_edge
  %and15.i.i = and i32 %and9.i, 1023
  %neg16.i.i = xor i32 %and15.i.i, -1
  %and17.i.i = and i32 %call.i.i, %neg16.i.i
  %111 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %p_dpc_ptt, align 4
  tail call void @qed_wr(ptr noundef %add.ptr, ptr noundef %112, i32 noundef 1574972, i32 noundef %and17.i.i) #14
  %113 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp22.i.i = icmp eq i8 %114, 0
  br i1 %cmp22.i.i, label %land.rhs24.i.i, label %do.end13.i.i.do.end56.i.i_crit_edge

do.end13.i.i.do.end56.i.i_crit_edge:              ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56.i.i

land.rhs24.i.i:                                   ; preds = %do.end13.i.i
  %dp_module25.i.i = getelementptr i8, ptr %t, i32 -304
  %115 = ptrtoint ptr %dp_module25.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dp_module25.i.i, align 4
  %and26.i.i = and i32 %116, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.rhs24.i.i.do.end56.i.i_crit_edge, label %do.end38.i.i, !prof !298

land.rhs24.i.i.do.end56.i.i_crit_edge:            ; preds = %land.rhs24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end56.i.i

do.end38.i.i:                                     ; preds = %land.rhs24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name40.i.i = getelementptr i8, ptr %t, i32 -299
  %known_attn.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %103, i32 0, i32 5
  %117 = ptrtoint ptr %known_attn.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %known_attn.i.i, align 4
  %conv49.i.i = zext i16 %118 to i32
  %or2.i.i = or i16 %118, %conv10.i
  %or.i.i = zext i16 %or2.i.i to i32
  %call53.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, i32 noundef 862, ptr noundef nonnull %name40.i.i, i32 noundef %conv49.i.i, i32 noundef %or.i.i) #17
  br label %do.end56.i.i

do.end56.i.i:                                     ; preds = %do.end38.i.i, %land.rhs24.i.i.do.end56.i.i_crit_edge, %do.end13.i.i.do.end56.i.i_crit_edge
  %known_attn58.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %103, i32 0, i32 5
  %119 = ptrtoint ptr %known_attn58.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %known_attn58.i.i, align 4
  %or601.i.i = or i16 %120, %conv10.i
  store i16 %or601.i.i, ptr %known_attn58.i.i, align 4
  %and63.i.i = and i32 %and9.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i)
  %tobool64.not.i.i = icmp eq i32 %and63.i.i, 0
  br i1 %tobool64.not.i.i, label %do.end56.i.i.do.body70.i.i_crit_edge, label %if.then65.i.i

do.end56.i.i.do.body70.i.i_crit_edge:             ; preds = %do.end56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body70.i.i

if.then65.i.i:                                    ; preds = %do.end56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %121 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %p_dpc_ptt, align 4
  %call67.i.i = tail call i32 @qed_mcp_handle_events(ptr noundef %add.ptr, ptr noundef %122) #14
  %123 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %p_dpc_ptt, align 4
  %mfw_attn_addr.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %103, i32 0, i32 6
  %125 = ptrtoint ptr %mfw_attn_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mfw_attn_addr.i.i, align 4
  tail call void @qed_wr(ptr noundef %add.ptr, ptr noundef %124, i32 noundef %126, i32 noundef 0) #14
  br label %do.body70.i.i

do.body70.i.i:                                    ; preds = %if.then65.i.i, %do.end56.i.i.do.body70.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @arm_heavy_mb() #14
  %127 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #14
  %regview.i.i = getelementptr i8, ptr %t, i32 -280
  %128 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regview.i.i, align 4
  %add.ptr74.i.i = getelementptr i8, ptr %129, i32 65416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i.i, i32 %127) #14, !srcloc !301
  %130 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp78.i.i = icmp eq i8 %131, 0
  br i1 %cmp78.i.i, label %land.rhs80.i.i, label %do.body70.i.i.if.end121.i_crit_edge

do.body70.i.i.if.end121.i_crit_edge:              ; preds = %do.body70.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i

land.rhs80.i.i:                                   ; preds = %do.body70.i.i
  %dp_module81.i.i = getelementptr i8, ptr %t, i32 -304
  %132 = ptrtoint ptr %dp_module81.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dp_module81.i.i, align 4
  %and82.i.i = and i32 %133, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i.i)
  %tobool83.not.i.i = icmp eq i32 %and82.i.i, 0
  br i1 %tobool83.not.i.i, label %land.rhs80.i.i.if.end121.i_crit_edge, label %do.end94.i.i, !prof !298

land.rhs80.i.i.if.end121.i_crit_edge:             ; preds = %land.rhs80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i

do.end94.i.i:                                     ; preds = %land.rhs80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name96.i.i = getelementptr i8, ptr %t, i32 -299
  %call106.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101, i32 noundef 880, ptr noundef nonnull %name96.i.i, i32 noundef %and9.i) #17
  br label %if.end121.i

if.end121.i:                                      ; preds = %do.end94.i.i, %land.rhs80.i.i.if.end121.i_crit_edge, %do.body70.i.i.if.end121.i_crit_edge, %if.end114.i.if.end121.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv17.i)
  %tobool122.not.i = icmp eq i16 %conv17.i, 0
  br i1 %tobool122.not.i, label %if.end121.i.if.end258_crit_edge, label %if.then123.i

if.end121.i.if.end258_crit_edge:                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end258

if.then123.i:                                     ; preds = %if.end121.i
  %134 = ptrtoint ptr %p_sb_attn to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %p_sb_attn, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %aeu_inv_arr.i.i) #14
  %136 = call ptr @memset(ptr %aeu_inv_arr.i.i, i32 255, i32 36)
  %dp_module.i7.i = getelementptr i8, ptr %t, i32 -304
  %name.i8.i = getelementptr i8, ptr %t, i32 -299
  br label %for.body.i.i

for.cond18.preheader.i.i:                         ; preds = %for.inc.i.i
  %p_aeu_desc.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %135, i32 0, i32 4
  br label %for.body22.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then123.i
  %indvars.iv.i.i = phi i32 [ 0, %if.then123.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %137 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %p_dpc_ptt, align 4
  %mul.i.i = shl nuw nsw i32 %indvars.iv.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 34740
  %call.i9.i = tail call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %138, i32 noundef %add.i.i) #14
  %arrayidx.i.i = getelementptr [9 x i32], ptr %aeu_inv_arr.i.i, i32 0, i32 %indvars.iv.i.i
  %139 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call.i9.i, ptr %arrayidx.i.i, align 4
  %140 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp4.i.i = icmp eq i8 %141, 0
  br i1 %cmp4.i.i, label %land.rhs.i12.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.rhs.i12.i:                                   ; preds = %for.body.i.i
  %142 = ptrtoint ptr %dp_module.i7.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dp_module.i7.i, align 4
  %and.i10.i = and i32 %143, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.rhs.i12.i.for.inc.i.i_crit_edge, label %do.end.i13.i, !prof !298

land.rhs.i12.i.for.inc.i.i_crit_edge:             ; preds = %land.rhs.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

do.end.i13.i:                                     ; preds = %land.rhs.i12.i
  call void @__sanitizer_cov_trace_pc() #16
  %call15.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 1032, ptr noundef nonnull %name.i8.i, i32 noundef %indvars.iv.i.i, i32 noundef %call.i9.i) #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i13.i, %land.rhs.i12.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 9
  br i1 %exitcond.not.i.i, label %for.cond18.preheader.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.cond69.preheader.i.i:                         ; preds = %cleanup.i.i
  %conv75.i.i = zext i16 %conv17.i to i32
  br label %for.body73.i.i

for.body22.i.i:                                   ; preds = %cleanup.i.i.for.body22.i.i_crit_edge, %for.cond18.preheader.i.i
  %indvars.iv72.i.i = phi i32 [ 0, %for.cond18.preheader.i.i ], [ %indvars.iv.next73.i.i, %cleanup.i.i.for.body22.i.i_crit_edge ]
  %144 = ptrtoint ptr %p_aeu_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %p_aeu_desc.i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.aeu_invert_reg, ptr %145, i32 %indvars.iv72.i.i
  %mul26.i.i = shl nuw nsw i32 %indvars.iv72.i.i, 2
  %add27.i.i = add nuw nsw i32 %mul26.i.i, 33948
  %146 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %p_dpc_ptt, align 4
  %call29.i.i = call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %147, i32 noundef %add27.i.i) #14
  %arrayidx31.i.i = getelementptr %struct.qed_sb_attn_info, ptr %135, i32 0, i32 3, i32 %indvars.iv72.i.i
  %148 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx31.i.i, align 4
  %arrayidx33.i.i = getelementptr [9 x i32], ptr %aeu_inv_arr.i.i, i32 0, i32 %indvars.iv72.i.i
  %150 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx33.i.i, align 4
  %and34.i.i = and i32 %149, %call29.i.i
  %and35.i.i = and i32 %and34.i.i, %151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %for.body22.i.i.cleanup.i.i_crit_edge, label %for.body22.i.i.for.body48.i.i_crit_edge

for.body22.i.i.for.body48.i.i_crit_edge:          ; preds = %for.body22.i.i
  br label %for.body48.i.i

for.body22.i.i.cleanup.i.i_crit_edge:             ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

for.body48.i.i:                                   ; preds = %if.end57.i.i.for.body48.i.i_crit_edge, %for.body22.i.i.for.body48.i.i_crit_edge
  %indvars.iv70.i.i = phi i32 [ %indvars.iv.next71.i.i, %if.end57.i.i.for.body48.i.i_crit_edge ], [ 0, %for.body22.i.i.for.body48.i.i_crit_edge ]
  %conv4062.i.i = phi i32 [ %conv40.i.i, %if.end57.i.i.for.body48.i.i_crit_edge ], [ 0, %for.body22.i.i.for.body48.i.i_crit_edge ]
  %bit_idx.061.i.i = phi i8 [ %conv61.i.i, %if.end57.i.i.for.body48.i.i_crit_edge ], [ 0, %for.body22.i.i.for.body48.i.i_crit_edge ]
  %arrayidx50.i.i = getelementptr [32 x %struct.aeu_invert_reg_bit], ptr %arrayidx24.i.i, i32 0, i32 %indvars.iv70.i.i
  %152 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr, align 8
  %type.i.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %type.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp.i.i.i.i = icmp eq i32 %155, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %for.body48.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge

for.body48.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge: ; preds = %for.body48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_is_parity_flag.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body48.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %arrayidx50.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %157, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge, label %if.end2.i.i.i.i

if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_is_parity_flag.exit.i.i

if.end2.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and4.i.i.i.i = lshr i32 %157, 20
  %shr.i.i.i.i = and i32 %and4.i.i.i.i, 7
  %arrayidx.i.i.i.i = getelementptr [4 x %struct.aeu_invert_reg_bit], ptr @aeu_descs_special, i32 0, i32 %shr.i.i.i.i
  br label %qed_int_is_parity_flag.exit.i.i

qed_int_is_parity_flag.exit.i.i:                  ; preds = %if.end2.i.i.i.i, %if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge, %for.body48.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i, %if.end2.i.i.i.i ], [ %arrayidx50.i.i, %for.body48.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge ], [ %arrayidx50.i.i, %if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge ]
  %flags.i.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %158 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %qed_int_is_parity_flag.exit.i.i.if.end57.i.i_crit_edge, label %land.lhs.true.i.i

qed_int_is_parity_flag.exit.i.i.if.end57.i.i_crit_edge: ; preds = %qed_int_is_parity_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.i.i

land.lhs.true.i.i:                                ; preds = %qed_int_is_parity_flag.exit.i.i
  %shl.i.i = shl nuw i32 1, %conv4062.i.i
  %and54.i.i = and i32 %shl.i.i, %and35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool55.not.i.i, label %land.lhs.true.i.i.if.end57.i.i_crit_edge, label %if.then56.i.i

land.lhs.true.i.i.if.end57.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.i.i

if.then56.i.i:                                    ; preds = %land.lhs.true.i.i
  %block_index.i.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %arrayidx50.i.i, i32 0, i32 3
  %160 = ptrtoint ptr %block_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %block_index.i.i.i, align 4
  %dp_level.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %153, i32 0, i32 1
  %162 = ptrtoint ptr %dp_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %dp_level.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %163)
  %cmp.i.i.i = icmp ult i8 %163, 3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then56.i.i.do.end12.i.i.i_crit_edge, !prof !299

if.then56.i.i.do.end12.i.i.i_crit_edge:           ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i.i

do.end.i.i.i:                                     ; preds = %if.then56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %153, i32 0, i32 2
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 986, ptr noundef nonnull %name.i.i.i, ptr noundef %arrayidx50.i.i, i32 noundef %add27.i.i, i32 noundef %conv4062.i.i) #17
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %do.end.i.i.i, %if.then56.i.i.do.end12.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %161)
  %cmp13.not.i.i.i = icmp eq i32 %161, 92
  br i1 %cmp13.not.i.i.i, label %do.end12.i.i.i.if.end20.i.i.i_crit_edge, label %if.then15.i.i.i

do.end12.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i.i.i

if.then15.i.i.i:                                  ; preds = %do.end12.i.i.i
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %attn_results.i.i.i.i) #14
  %164 = call ptr @memset(ptr %attn_results.i.i.i.i, i32 0, i32 244)
  %165 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %p_dpc_ptt, align 4
  %call.i.i.i.i = call i32 @qed_dbg_read_attn(ptr noundef %add.ptr, ptr noundef %166, i32 noundef %161, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %attn_results.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.else.i.i.i.i, label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.then15.i.i.i
  %167 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %168)
  %cmp1.i.i.i.i = icmp ult i8 %168, 3
  br i1 %cmp1.i.i.i.i, label %do.end.i.i.i.i, label %do.body.i.i.i.i.qed_int_attn_print.exit.i.i.i_crit_edge, !prof !299

do.body.i.i.i.i.qed_int_attn_print.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_attn_print.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i.i.i.i = call ptr @qed_dbg_get_status_str(i32 noundef %call.i.i.i.i) #14
  %call11.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 899, ptr noundef nonnull %name.i8.i, ptr noundef %call10.i.i.i.i) #17
  br label %qed_int_attn_print.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i.i.i.i = call i32 @qed_dbg_parse_attn(ptr noundef %add.ptr, ptr noundef nonnull %attn_results.i.i.i.i) #14
  br label %qed_int_attn_print.exit.i.i.i

qed_int_attn_print.exit.i.i.i:                    ; preds = %if.else.i.i.i.i, %do.end.i.i.i.i, %do.body.i.i.i.i.qed_int_attn_print.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %attn_results.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %161)
  %cmp16.i.i.i = icmp eq i32 %161, 57
  br i1 %cmp16.i.i.i, label %if.then18.i.i.i, label %qed_int_attn_print.exit.i.i.i.if.end20.i.i.i_crit_edge

qed_int_attn_print.exit.i.i.i.if.end20.i.i.i_crit_edge: ; preds = %qed_int_attn_print.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i.i.i

if.then18.i.i.i:                                  ; preds = %qed_int_attn_print.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %attn_results.i75.i.i.i) #14
  %169 = call ptr @memset(ptr %attn_results.i75.i.i.i, i32 0, i32 244)
  %170 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %p_dpc_ptt, align 4
  %call.i77.i.i.i = call i32 @qed_dbg_read_attn(ptr noundef %add.ptr, ptr noundef %171, i32 noundef 8, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %attn_results.i75.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i.i.i)
  %cmp.not.i78.i.i.i = icmp eq i32 %call.i77.i.i.i, 0
  br i1 %cmp.not.i78.i.i.i, label %if.else.i87.i.i.i, label %do.body.i81.i.i.i

do.body.i81.i.i.i:                                ; preds = %if.then18.i.i.i
  %172 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %173)
  %cmp1.i80.i.i.i = icmp ult i8 %173, 3
  br i1 %cmp1.i80.i.i.i, label %do.end.i85.i.i.i, label %do.body.i81.i.i.i.qed_int_attn_print.exit88.i.i.i_crit_edge, !prof !299

do.body.i81.i.i.i.qed_int_attn_print.exit88.i.i.i_crit_edge: ; preds = %do.body.i81.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_attn_print.exit88.i.i.i

do.end.i85.i.i.i:                                 ; preds = %do.body.i81.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i83.i.i.i = call ptr @qed_dbg_get_status_str(i32 noundef %call.i77.i.i.i) #14
  %call11.i84.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 899, ptr noundef nonnull %name.i8.i, ptr noundef %call10.i83.i.i.i) #17
  br label %qed_int_attn_print.exit88.i.i.i

if.else.i87.i.i.i:                                ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i86.i.i.i = call i32 @qed_dbg_parse_attn(ptr noundef %add.ptr, ptr noundef nonnull %attn_results.i75.i.i.i) #14
  br label %qed_int_attn_print.exit88.i.i.i

qed_int_attn_print.exit88.i.i.i:                  ; preds = %if.else.i87.i.i.i, %do.end.i85.i.i.i, %do.body.i81.i.i.i.qed_int_attn_print.exit88.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %attn_results.i75.i.i.i) #14
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %attn_results.i89.i.i.i) #14
  %174 = call ptr @memset(ptr %attn_results.i89.i.i.i, i32 0, i32 244)
  %175 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %p_dpc_ptt, align 4
  %call.i91.i.i.i = call i32 @qed_dbg_read_attn(ptr noundef %add.ptr, ptr noundef %176, i32 noundef 11, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %attn_results.i89.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i.i)
  %cmp.not.i92.i.i.i = icmp eq i32 %call.i91.i.i.i, 0
  br i1 %cmp.not.i92.i.i.i, label %if.else.i101.i.i.i, label %do.body.i95.i.i.i

do.body.i95.i.i.i:                                ; preds = %qed_int_attn_print.exit88.i.i.i
  %177 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %178)
  %cmp1.i94.i.i.i = icmp ult i8 %178, 3
  br i1 %cmp1.i94.i.i.i, label %do.end.i99.i.i.i, label %do.body.i95.i.i.i.qed_int_attn_print.exit102.i.i.i_crit_edge, !prof !299

do.body.i95.i.i.i.qed_int_attn_print.exit102.i.i.i_crit_edge: ; preds = %do.body.i95.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_attn_print.exit102.i.i.i

do.end.i99.i.i.i:                                 ; preds = %do.body.i95.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i97.i.i.i = call ptr @qed_dbg_get_status_str(i32 noundef %call.i91.i.i.i) #14
  %call11.i98.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 899, ptr noundef nonnull %name.i8.i, ptr noundef %call10.i97.i.i.i) #17
  br label %qed_int_attn_print.exit102.i.i.i

if.else.i101.i.i.i:                               ; preds = %qed_int_attn_print.exit88.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i100.i.i.i = call i32 @qed_dbg_parse_attn(ptr noundef %add.ptr, ptr noundef nonnull %attn_results.i89.i.i.i) #14
  br label %qed_int_attn_print.exit102.i.i.i

qed_int_attn_print.exit102.i.i.i:                 ; preds = %if.else.i101.i.i.i, %do.end.i99.i.i.i, %do.body.i95.i.i.i.qed_int_attn_print.exit102.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %attn_results.i89.i.i.i) #14
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %qed_int_attn_print.exit102.i.i.i, %qed_int_attn_print.exit.i.i.i.if.end20.i.i.i_crit_edge, %do.end12.i.i.i.if.end20.i.i.i_crit_edge
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %179 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %p_dpc_ptt, align 4
  %call22.i.i.i = call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %180, i32 noundef %add27.i.i) #14
  %181 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %p_dpc_ptt, align 4
  %and.i3.i.i = and i32 %call22.i.i.i, %neg.i.i.i
  call void @qed_wr(ptr noundef %add.ptr, ptr noundef %182, i32 noundef %add27.i.i, i32 noundef %and.i3.i.i) #14
  %183 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %184)
  %cmp27.i.i.i = icmp ult i8 %184, 2
  br i1 %cmp27.i.i.i, label %do.end38.i.i.i, label %if.end20.i.i.i.if.end57.i.i_crit_edge, !prof !299

if.end20.i.i.i.if.end57.i.i_crit_edge:            ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.i.i

do.end38.i.i.i:                                   ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call51.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i32 noundef 1005, ptr noundef nonnull %name.i8.i, ptr noundef %arrayidx50.i.i) #17
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %do.end38.i.i.i, %if.end20.i.i.i.if.end57.i.i_crit_edge, %land.lhs.true.i.i.if.end57.i.i_crit_edge, %qed_int_is_parity_flag.exit.i.i.if.end57.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %arrayidx50.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags.i.i, align 4
  %and58.i.i = lshr i32 %186, 4
  %187 = trunc i32 %and58.i.i to i8
  %conv61.i.i = add i8 %bit_idx.061.i.i, %187
  %indvars.iv.next71.i.i = add nuw nsw i32 %indvars.iv70.i.i, 1
  %conv40.i.i = zext i8 %conv61.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %conv61.i.i)
  %cmp41.i.i = icmp ult i8 %conv61.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %indvars.iv70.i.i)
  %cmp45.i.i = icmp ult i32 %indvars.iv70.i.i, 31
  %or.cond.i.i = select i1 %cmp41.i.i, i1 %cmp45.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end57.i.i.for.body48.i.i_crit_edge, label %if.end57.i.i.cleanup.i.i_crit_edge

if.end57.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.end57.i.i.for.body48.i.i_crit_edge:            ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body48.i.i

cleanup.i.i:                                      ; preds = %if.end57.i.i.cleanup.i.i_crit_edge, %for.body22.i.i.cleanup.i.i_crit_edge
  %indvars.iv.next73.i.i = add nuw nsw i32 %indvars.iv72.i.i, 1
  %exitcond74.not.i.i = icmp eq i32 %indvars.iv.next73.i.i, 9
  br i1 %exitcond74.not.i.i, label %for.cond69.preheader.i.i, label %cleanup.i.i.for.body22.i.i_crit_edge

cleanup.i.i.for.body22.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body22.i.i

for.body73.i.i:                                   ; preds = %cleanup184.i.i.for.body73.i.i_crit_edge, %for.cond69.preheader.i.i
  %indvars.iv80.i.i = phi i32 [ 0, %for.cond69.preheader.i.i ], [ %indvars.iv.next81.i.i, %cleanup184.i.i.for.body73.i.i_crit_edge ]
  %shl77.i.i = shl nuw i32 1, %indvars.iv80.i.i
  %and78.i.i = and i32 %shl77.i.i, %conv75.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i.i)
  %tobool79.not.i.i = icmp eq i32 %and78.i.i, 0
  br i1 %tobool79.not.i.i, label %for.body73.i.i.cleanup184.i.i_crit_edge, label %for.cond82.preheader.i.i

for.body73.i.i.cleanup184.i.i_crit_edge:          ; preds = %for.body73.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup184.i.i

for.cond82.preheader.i.i:                         ; preds = %for.body73.i.i
  %mul93.i.i = mul nuw nsw i32 %indvars.iv80.i.i, 36
  %add90.i.i = add nuw nsw i32 %mul93.i.i, 33948
  br label %for.body86.i.i

for.body86.i.i:                                   ; preds = %cleanup178.i.i.for.body86.i.i_crit_edge, %for.cond82.preheader.i.i
  %indvars.iv77.i.i = phi i32 [ 0, %for.cond82.preheader.i.i ], [ %indvars.iv.next78.i.i, %cleanup178.i.i.for.body86.i.i_crit_edge ]
  %mul89.i.i = shl nuw nsw i32 %indvars.iv77.i.i, 2
  %add94.i.i = add nuw nsw i32 %add90.i.i, %mul89.i.i
  %188 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %p_dpc_ptt, align 4
  %call96.i.i = call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %189, i32 noundef %add94.i.i) #14
  %arrayidx98.i.i = getelementptr [9 x i32], ptr %aeu_inv_arr.i.i, i32 0, i32 %indvars.iv77.i.i
  %190 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx98.i.i, align 4
  %and99.i.i = and i32 %191, %call96.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i.i)
  %tobool100.not.i.i = icmp eq i32 %and99.i.i, 0
  br i1 %tobool100.not.i.i, label %for.body86.i.i.cleanup178.i.i_crit_edge, label %for.body86.i.i.for.body112.i.i_crit_edge

for.body86.i.i.for.body112.i.i_crit_edge:         ; preds = %for.body86.i.i
  br label %for.body112.i.i

for.body86.i.i.cleanup178.i.i_crit_edge:          ; preds = %for.body86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup178.i.i

for.body112.i.i:                                  ; preds = %if.end168.i.i.for.body112.i.i_crit_edge, %for.body86.i.i.for.body112.i.i_crit_edge
  %indvars.iv75.i.i = phi i32 [ %indvars.iv.next76.i.i, %if.end168.i.i.for.body112.i.i_crit_edge ], [ 0, %for.body86.i.i.for.body112.i.i_crit_edge ]
  %bit_idx.165.i.i = phi i8 [ %conv174.i.i, %if.end168.i.i.for.body112.i.i_crit_edge ], [ 0, %for.body86.i.i.for.body112.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmask.i.i) #14
  %192 = ptrtoint ptr %bitmask.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -1, ptr %bitmask.i.i, align 4, !annotation !305
  %193 = ptrtoint ptr %p_aeu_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %p_aeu_desc.i.i, align 4
  %arrayidx115.i.i = getelementptr %struct.aeu_invert_reg, ptr %194, i32 %indvars.iv77.i.i
  %arrayidx118.i.i = getelementptr [32 x %struct.aeu_invert_reg_bit], ptr %arrayidx115.i.i, i32 0, i32 %indvars.iv75.i.i
  %195 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr, align 8
  %type.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp.i4.i.i = icmp eq i32 %198, 0
  %flags.i5.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %arrayidx118.i.i, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %flags.i5.i.i, align 4
  br i1 %cmp.i4.i.i, label %if.end.i.i.i, label %for.body112.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge

for.body112.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge: ; preds = %for.body112.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_is_parity_flag.exit21.i.i

if.end.i.i.i:                                     ; preds = %for.body112.i.i
  %and.i6.i.i = and i32 %200, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i6.i.i, 0
  %and4.i.i.i = lshr i32 %200, 20
  %shr.i.i.i = and i32 %and4.i.i.i, 7
  %arrayidx.i.i.i = getelementptr [4 x %struct.aeu_invert_reg_bit], ptr @aeu_descs_special, i32 0, i32 %shr.i.i.i
  %retval.0.i.ph.i.i = select i1 %tobool.not.i.i.i, ptr %arrayidx118.i.i, ptr %arrayidx.i.i.i
  %flags12048.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %retval.0.i.ph.i.i, i32 0, i32 1
  %201 = ptrtoint ptr %flags12048.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %flags12048.i.i, align 4
  %and.i.i10.i.i = and i32 %202, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10.i.i)
  %tobool.not.i.i11.i.i = icmp eq i32 %and.i.i10.i.i, 0
  br i1 %tobool.not.i.i11.i.i, label %if.end.i.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge, label %if.end2.i.i16.i.i

if.end.i.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_is_parity_flag.exit21.i.i

if.end2.i.i16.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and4.i.i13.i.i = lshr i32 %202, 20
  %shr.i.i14.i.i = and i32 %and4.i.i13.i.i, 7
  %arrayidx.i.i15.i.i = getelementptr [4 x %struct.aeu_invert_reg_bit], ptr @aeu_descs_special, i32 0, i32 %shr.i.i14.i.i
  br label %qed_int_is_parity_flag.exit21.i.i

qed_int_is_parity_flag.exit21.i.i:                ; preds = %if.end2.i.i16.i.i, %if.end.i.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge, %for.body112.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge
  %203 = phi i32 [ %202, %if.end2.i.i16.i.i ], [ %202, %if.end.i.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ], [ %200, %for.body112.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ]
  %flags12054.i.i = phi ptr [ %flags12048.i.i, %if.end2.i.i16.i.i ], [ %flags12048.i.i, %if.end.i.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ], [ %flags.i5.i.i, %for.body112.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ]
  %retval.0.i50.i.i = phi ptr [ %retval.0.i.ph.i.i, %if.end2.i.i16.i.i ], [ %retval.0.i.ph.i.i, %if.end.i.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ], [ %arrayidx118.i.i, %for.body112.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ]
  %retval.0.i.i17.i.i = phi ptr [ %arrayidx.i.i15.i.i, %if.end2.i.i16.i.i ], [ %retval.0.i.ph.i.i, %if.end.i.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ], [ %arrayidx118.i.i, %for.body112.i.i.qed_int_is_parity_flag.exit21.i.i_crit_edge ]
  %and12156.i.i = lshr i32 %203, 4
  %flags.i18.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %retval.0.i.i17.i.i, i32 0, i32 1
  %204 = ptrtoint ptr %flags.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %flags.i18.i.i, align 4
  %and.i19.i.i = and i32 %205, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i)
  %tobool.i20.not.i.i = icmp eq i32 %and.i19.i.i, 0
  %dec.i.i = add nuw nsw i32 %and12156.i.i, 255
  %not.tobool.i20.not.i.i = xor i1 %tobool.i20.not.i.i, true
  %inc126.i.i = zext i1 %not.tobool.i20.not.i.i to i8
  %bit.0.i.i = add nuw nsw i8 %bit_idx.165.i.i, %inc126.i.i
  %bit_len.0.i.i = select i1 %tobool.i20.not.i.i, i32 %and12156.i.i, i32 %dec.i.i
  %conv128.i.i = and i32 %bit_len.0.i.i, 255
  %notmask.i.i = shl nsw i32 -1, %conv128.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %conv130.i.i = zext i8 %bit.0.i.i to i32
  %shl131.i.i = shl i32 %sub.i.i, %conv130.i.i
  %and132.i.i = and i32 %shl131.i.i, %and99.i.i
  %shr134.i.i = lshr i32 %and132.i.i, %conv130.i.i
  %206 = ptrtoint ptr %bitmask.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %shr134.i.i, ptr %bitmask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr134.i.i)
  %tobool135.not.i.i = icmp eq i32 %shr134.i.i, 0
  br i1 %tobool135.not.i.i, label %qed_int_is_parity_flag.exit21.i.i.if.end168.i.i_crit_edge, label %if.then136.i.i

qed_int_is_parity_flag.exit21.i.i.if.end168.i.i_crit_edge: ; preds = %qed_int_is_parity_flag.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168.i.i

if.then136.i.i:                                   ; preds = %qed_int_is_parity_flag.exit21.i.i
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %bit_name.i.i) #14
  %207 = call ptr @memset(ptr %bit_name.i.i, i32 255, i32 30)
  %call140.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull %bitmask.i.i, i32 noundef %conv128.i.i) #14
  %shr143.i.i = and i32 %and12156.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr143.i.i)
  %cmp144.i.i = icmp ugt i32 %shr143.i.i, 2
  br i1 %cmp144.i.i, label %if.then136.i.i.if.then153.i.i_crit_edge, label %lor.lhs.false.i.i

if.then136.i.i.if.then153.i.i_crit_edge:          ; preds = %if.then136.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then153.i.i

lor.lhs.false.i.i:                                ; preds = %if.then136.i.i
  %and146.i.i = and i32 %203, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i.i)
  %tobool147.not.i.i = icmp ne i32 %and146.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr143.i.i)
  %cmp151.i.i = icmp eq i32 %shr143.i.i, 2
  %or.cond2.i.i = select i1 %tobool147.not.i.i, i1 %cmp151.i.i, i1 false
  br i1 %or.cond2.i.i, label %lor.lhs.false.i.i.if.then153.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then153.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then153.i.i

if.then153.i.i:                                   ; preds = %lor.lhs.false.i.i.if.then153.i.i_crit_edge, %if.then136.i.i.if.then153.i.i_crit_edge
  %conv157.i.i = and i32 %call140.i.i, 255
  %call158.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bit_name.i.i, i32 noundef 30, ptr noundef %retval.0.i50.i.i, i32 noundef %conv157.i.i) #14
  br label %if.end163.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call162.i.i = call i32 @strlcpy(ptr noundef nonnull %bit_name.i.i, ptr noundef %retval.0.i50.i.i, i32 noundef 30) #14
  br label %if.end163.i.i

if.end163.i.i:                                    ; preds = %if.else.i.i, %if.then153.i.i
  %208 = ptrtoint ptr %bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bitmask.i.i, align 4
  %shl165.i.i = shl i32 %209, %conv130.i.i
  store i32 %shl165.i.i, ptr %bitmask.i.i, align 4
  %210 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %211)
  %cmp.i24.i.i = icmp ult i8 %211, 2
  br i1 %cmp.i24.i.i, label %do.end.i27.i.i, label %if.end163.i.i.do.end8.i.i.i_crit_edge, !prof !299

if.end163.i.i.do.end8.i.i.i_crit_edge:            ; preds = %if.end163.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8.i.i.i

do.end.i27.i.i:                                   ; preds = %if.end163.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i26.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef 928, ptr noundef nonnull %name.i8.i, ptr noundef nonnull %bit_name.i.i, i32 noundef %shl165.i.i) #17
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %do.end.i27.i.i, %if.end163.i.i.do.end8.i.i.i_crit_edge
  %cb.i.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %retval.0.i50.i.i, i32 0, i32 2
  %212 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cb.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %213, null
  br i1 %tobool9.not.i.i.i, label %do.end8.i.i.i.if.end42.i.i.i_crit_edge, label %do.body11.i.i.i

do.end8.i.i.i.if.end42.i.i.i_crit_edge:           ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i.i.i

do.body11.i.i.i:                                  ; preds = %do.end8.i.i.i
  %214 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %215)
  %cmp14.i.i.i = icmp ult i8 %215, 2
  br i1 %cmp14.i.i.i, label %do.end25.i.i.i, label %do.body11.i.i.i.do.end39.i.i.i_crit_edge, !prof !299

do.body11.i.i.i.do.end39.i.i.i_crit_edge:         ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39.i.i.i

do.end25.i.i.i:                                   ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call36.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef 933, ptr noundef nonnull %name.i8.i, ptr noundef nonnull %bit_name.i.i) #17
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %do.end25.i.i.i, %do.body11.i.i.i.do.end39.i.i.i_crit_edge
  %216 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cb.i.i.i, align 4
  %call41.i.i.i = call i32 %217(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %call41.i.i.i, 0
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %do.end39.i.i.i, %do.end8.i.i.i.if.end42.i.i.i_crit_edge
  %rc.0.i.i.i = phi i1 [ %phi.cmp.i.i.i, %do.end39.i.i.i ], [ false, %do.end8.i.i.i.if.end42.i.i.i_crit_edge ]
  %block_index.i28.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %retval.0.i50.i.i, i32 0, i32 3
  %218 = ptrtoint ptr %block_index.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %block_index.i28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %219)
  %cmp46.not.i.i.i = icmp eq i32 %219, 92
  br i1 %cmp46.not.i.i.i, label %if.end42.i.i.i.if.end53.i.i.i_crit_edge, label %if.then48.i.i.i

if.end42.i.i.i.if.end53.i.i.i_crit_edge:          ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.i.i.i

if.then48.i.i.i:                                  ; preds = %if.end42.i.i.i
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %attn_results.i.i22.i.i) #14
  %220 = call ptr @memset(ptr %attn_results.i.i22.i.i, i32 0, i32 244)
  %221 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %p_dpc_ptt, align 4
  %call.i.i30.i.i = call i32 @qed_dbg_read_attn(ptr noundef %add.ptr, ptr noundef %222, i32 noundef %219, i32 noundef 0, i1 noundef zeroext %rc.0.i.i.i, ptr noundef nonnull %attn_results.i.i22.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30.i.i)
  %cmp.not.i.i31.i.i = icmp eq i32 %call.i.i30.i.i, 0
  br i1 %cmp.not.i.i31.i.i, label %if.else.i.i39.i.i, label %do.body.i.i33.i.i

do.body.i.i33.i.i:                                ; preds = %if.then48.i.i.i
  %223 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %224)
  %cmp1.i.i32.i.i = icmp ult i8 %224, 3
  br i1 %cmp1.i.i32.i.i, label %do.end.i.i37.i.i, label %do.body.i.i33.i.i.qed_int_attn_print.exit.i40.i.i_crit_edge, !prof !299

do.body.i.i33.i.i.qed_int_attn_print.exit.i40.i.i_crit_edge: ; preds = %do.body.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_attn_print.exit.i40.i.i

do.end.i.i37.i.i:                                 ; preds = %do.body.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i.i35.i.i = call ptr @qed_dbg_get_status_str(i32 noundef %call.i.i30.i.i) #14
  %call11.i.i36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 899, ptr noundef nonnull %name.i8.i, ptr noundef %call10.i.i35.i.i) #17
  br label %qed_int_attn_print.exit.i40.i.i

if.else.i.i39.i.i:                                ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i.i38.i.i = call i32 @qed_dbg_parse_attn(ptr noundef %add.ptr, ptr noundef nonnull %attn_results.i.i22.i.i) #14
  br label %qed_int_attn_print.exit.i40.i.i

qed_int_attn_print.exit.i40.i.i:                  ; preds = %if.else.i.i39.i.i, %do.end.i.i37.i.i, %do.body.i.i33.i.i.qed_int_attn_print.exit.i40.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %attn_results.i.i22.i.i) #14
  br label %if.end53.i.i.i

if.end53.i.i.i:                                   ; preds = %qed_int_attn_print.exit.i40.i.i, %if.end42.i.i.i.if.end53.i.i.i_crit_edge
  br i1 %rc.0.i.i.i, label %if.end53.i.i.i.qed_int_deassertion_aeu_bit.exit.i.i_crit_edge, label %if.then55.i.i.i

if.end53.i.i.i.qed_int_deassertion_aeu_bit.exit.i.i_crit_edge: ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_deassertion_aeu_bit.exit.i.i

if.then55.i.i.i:                                  ; preds = %if.end53.i.i.i
  %225 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %p_dpc_ptt, align 4
  call void (ptr, ptr, i32, ptr, ...) @qed_hw_err_notify(ptr noundef %add.ptr, ptr noundef %226, i32 noundef 2, ptr noundef nonnull @.str.122, ptr noundef nonnull %bit_name.i.i) #17
  %227 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %p_dpc_ptt, align 4
  %call58.i.i.i = call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %228, i32 noundef %add94.i.i) #14
  %229 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %p_dpc_ptt, align 4
  %neg.i42.i.i = xor i32 %shl165.i.i, -1
  %and.i43.i.i = and i32 %call58.i.i.i, %neg.i42.i.i
  call void @qed_wr(ptr noundef %add.ptr, ptr noundef %230, i32 noundef %add94.i.i, i32 noundef %and.i43.i.i) #14
  %231 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %232)
  %cmp63.i.i.i = icmp ult i8 %232, 2
  br i1 %cmp63.i.i.i, label %do.end74.i.i.i, label %if.then55.i.i.i.do.end88.i.i.i_crit_edge, !prof !299

if.then55.i.i.i.do.end88.i.i.i_crit_edge:         ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end88.i.i.i

do.end74.i.i.i:                                   ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call85.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.118, i32 noundef 957, ptr noundef nonnull %name.i8.i, ptr noundef nonnull %bit_name.i.i) #17
  br label %do.end88.i.i.i

do.end88.i.i.i:                                   ; preds = %do.end74.i.i.i, %if.then55.i.i.i.do.end88.i.i.i_crit_edge
  %233 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %p_dpc_ptt, align 4
  %call90.i.i.i = call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %234, i32 noundef 33960) #14
  %or.i.i.i = or i32 %call90.i.i.i, 1
  %235 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %p_dpc_ptt, align 4
  call void @qed_wr(ptr noundef %add.ptr, ptr noundef %236, i32 noundef 33960, i32 noundef %or.i.i.i) #14
  br label %qed_int_deassertion_aeu_bit.exit.i.i

qed_int_deassertion_aeu_bit.exit.i.i:             ; preds = %do.end88.i.i.i, %if.end53.i.i.i.qed_int_deassertion_aeu_bit.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %bit_name.i.i) #14
  br label %if.end168.i.i

if.end168.i.i:                                    ; preds = %qed_int_deassertion_aeu_bit.exit.i.i, %qed_int_is_parity_flag.exit21.i.i.if.end168.i.i_crit_edge
  %237 = ptrtoint ptr %flags12054.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %flags12054.i.i, align 4
  %and170.i.i = lshr i32 %238, 4
  %239 = trunc i32 %and170.i.i to i8
  %conv174.i.i = add i8 %bit_idx.165.i.i, %239
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmask.i.i) #14
  %indvars.iv.next76.i.i = add nuw nsw i32 %indvars.iv75.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %conv174.i.i)
  %cmp105.i.i = icmp ult i8 %conv174.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %indvars.iv75.i.i)
  %cmp109.i.i = icmp ult i32 %indvars.iv75.i.i, 31
  %or.cond1.i.i = select i1 %cmp105.i.i, i1 %cmp109.i.i, i1 false
  br i1 %or.cond1.i.i, label %if.end168.i.i.for.body112.i.i_crit_edge, label %if.end168.i.i.cleanup178.i.i_crit_edge

if.end168.i.i.cleanup178.i.i_crit_edge:           ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup178.i.i

if.end168.i.i.for.body112.i.i_crit_edge:          ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body112.i.i

cleanup178.i.i:                                   ; preds = %if.end168.i.i.cleanup178.i.i_crit_edge, %for.body86.i.i.cleanup178.i.i_crit_edge
  %indvars.iv.next78.i.i = add nuw nsw i32 %indvars.iv77.i.i, 1
  %exitcond79.not.i.i = icmp eq i32 %indvars.iv.next78.i.i, 9
  br i1 %exitcond79.not.i.i, label %cleanup178.i.i.cleanup184.i.i_crit_edge, label %cleanup178.i.i.for.body86.i.i_crit_edge

cleanup178.i.i.for.body86.i.i_crit_edge:          ; preds = %cleanup178.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body86.i.i

cleanup178.i.i.cleanup184.i.i_crit_edge:          ; preds = %cleanup178.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup184.i.i

cleanup184.i.i:                                   ; preds = %cleanup178.i.i.cleanup184.i.i_crit_edge, %for.body73.i.i.cleanup184.i.i_crit_edge
  %indvars.iv.next81.i.i = add nuw nsw i32 %indvars.iv80.i.i, 1
  %exitcond82.not.i.i = icmp eq i32 %indvars.iv.next81.i.i, 8
  br i1 %exitcond82.not.i.i, label %for.end189.i.i, label %cleanup184.i.i.for.body73.i.i_crit_edge

cleanup184.i.i.for.body73.i.i_crit_edge:          ; preds = %cleanup184.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body73.i.i

for.end189.i.i:                                   ; preds = %cleanup184.i.i
  %dorq_attn.i.i.i = getelementptr i8, ptr %t, i32 2344
  %240 = ptrtoint ptr %dorq_attn.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %dorq_attn.i.i.i, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i44.i.i = icmp eq i8 %241, 0
  br i1 %tobool.not.i44.i.i, label %if.end.i46.i.i, label %for.end189.i.i.qed_int_deassertion.exit.i_crit_edge

for.end189.i.i.qed_int_deassertion.exit.i_crit_edge: ; preds = %for.end189.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_deassertion.exit.i

if.end.i46.i.i:                                   ; preds = %for.end189.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i45.i.i = call i32 @qed_dorq_attn_cb(ptr noundef %add.ptr) #14
  br label %qed_int_deassertion.exit.i

qed_int_deassertion.exit.i:                       ; preds = %if.end.i46.i.i, %for.end189.i.i.qed_int_deassertion.exit.i_crit_edge
  %242 = ptrtoint ptr %dorq_attn.i.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %dorq_attn.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !307
  call void @arm_heavy_mb() #14
  %neg.i14.i = xor i32 %conv75.i.i, -1
  %243 = call i32 @llvm.bswap.i32(i32 %neg.i14.i) #14
  %regview.i15.i = getelementptr i8, ptr %t, i32 -280
  %244 = ptrtoint ptr %regview.i15.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regview.i15.i, align 4
  %add.ptr194.i.i = getelementptr i8, ptr %245, i32 65424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194.i.i, i32 %243) #14, !srcloc !301
  %246 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %p_dpc_ptt, align 4
  %call196.i.i = call i32 @qed_rd(ptr noundef %add.ptr, ptr noundef %247, i32 noundef 1574972) #14
  %and198.i.i = and i32 %conv75.i.i, 1023
  %or.i16.i = or i32 %call196.i.i, %and198.i.i
  %248 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %p_dpc_ptt, align 4
  call void @qed_wr(ptr noundef %add.ptr, ptr noundef %249, i32 noundef 1574972, i32 noundef %or.i16.i) #14
  %known_attn.i17.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %135, i32 0, i32 5
  %250 = ptrtoint ptr %known_attn.i17.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %known_attn.i17.i, align 4
  %252 = trunc i32 %neg.i14.i to i16
  %conv204.i.i = and i16 %251, %252
  store i16 %conv204.i.i, ptr %known_attn.i17.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %aeu_inv_arr.i.i) #14
  br label %if.end258

if.end258:                                        ; preds = %qed_int_deassertion.exit.i, %if.end121.i.if.end258_crit_edge, %if.end252.if.end258_crit_edge
  %and260 = and i32 %conv213, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.end258.land.lhs.true_crit_edge, label %for.body.preheader

if.end258.land.lhs.true_crit_edge:                ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

for.body.preheader:                               ; preds = %if.end258
  %253 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx = getelementptr %struct.qed_sb_sp_info, ptr %254, i32 0, i32 1, i32 0
  %255 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %arrayidx, align 4
  %tobool266.not = icmp eq ptr %256, null
  br i1 %tobool266.not, label %for.body.preheader.for.inc_crit_edge, label %if.then267

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then267:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %cookie = getelementptr %struct.qed_sb_sp_info, ptr %254, i32 0, i32 1, i32 0, i32 1
  %257 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cookie, align 4
  %call269 = call i32 %256(ptr noundef %add.ptr, ptr noundef %258) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then267, %for.body.preheader.for.inc_crit_edge
  %259 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.1 = getelementptr %struct.qed_sb_sp_info, ptr %260, i32 0, i32 1, i32 1
  %261 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx.1, align 4
  %tobool266.not.1 = icmp eq ptr %262, null
  br i1 %tobool266.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then267.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then267.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.1 = getelementptr %struct.qed_sb_sp_info, ptr %260, i32 0, i32 1, i32 1, i32 1
  %263 = ptrtoint ptr %cookie.1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cookie.1, align 4
  %call269.1 = call i32 %262(ptr noundef %add.ptr, ptr noundef %264) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then267.1, %for.inc.for.inc.1_crit_edge
  %265 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.2 = getelementptr %struct.qed_sb_sp_info, ptr %266, i32 0, i32 1, i32 2
  %267 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx.2, align 4
  %tobool266.not.2 = icmp eq ptr %268, null
  br i1 %tobool266.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then267.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then267.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.2 = getelementptr %struct.qed_sb_sp_info, ptr %266, i32 0, i32 1, i32 2, i32 1
  %269 = ptrtoint ptr %cookie.2 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %cookie.2, align 4
  %call269.2 = call i32 %268(ptr noundef %add.ptr, ptr noundef %270) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then267.2, %for.inc.1.for.inc.2_crit_edge
  %271 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.3 = getelementptr %struct.qed_sb_sp_info, ptr %272, i32 0, i32 1, i32 3
  %273 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx.3, align 4
  %tobool266.not.3 = icmp eq ptr %274, null
  br i1 %tobool266.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then267.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then267.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.3 = getelementptr %struct.qed_sb_sp_info, ptr %272, i32 0, i32 1, i32 3, i32 1
  %275 = ptrtoint ptr %cookie.3 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cookie.3, align 4
  %call269.3 = call i32 %274(ptr noundef %add.ptr, ptr noundef %276) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then267.3, %for.inc.2.for.inc.3_crit_edge
  %277 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.4 = getelementptr %struct.qed_sb_sp_info, ptr %278, i32 0, i32 1, i32 4
  %279 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx.4, align 4
  %tobool266.not.4 = icmp eq ptr %280, null
  br i1 %tobool266.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then267.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then267.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.4 = getelementptr %struct.qed_sb_sp_info, ptr %278, i32 0, i32 1, i32 4, i32 1
  %281 = ptrtoint ptr %cookie.4 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cookie.4, align 4
  %call269.4 = call i32 %280(ptr noundef %add.ptr, ptr noundef %282) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then267.4, %for.inc.3.for.inc.4_crit_edge
  %283 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.5 = getelementptr %struct.qed_sb_sp_info, ptr %284, i32 0, i32 1, i32 5
  %285 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx.5, align 4
  %tobool266.not.5 = icmp eq ptr %286, null
  br i1 %tobool266.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then267.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then267.5:                                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.5 = getelementptr %struct.qed_sb_sp_info, ptr %284, i32 0, i32 1, i32 5, i32 1
  %287 = ptrtoint ptr %cookie.5 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cookie.5, align 4
  %call269.5 = call i32 %286(ptr noundef %add.ptr, ptr noundef %288) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then267.5, %for.inc.4.for.inc.5_crit_edge
  %289 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.6 = getelementptr %struct.qed_sb_sp_info, ptr %290, i32 0, i32 1, i32 6
  %291 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx.6, align 4
  %tobool266.not.6 = icmp eq ptr %292, null
  br i1 %tobool266.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then267.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.then267.6:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.6 = getelementptr %struct.qed_sb_sp_info, ptr %290, i32 0, i32 1, i32 6, i32 1
  %293 = ptrtoint ptr %cookie.6 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cookie.6, align 4
  %call269.6 = call i32 %292(ptr noundef %add.ptr, ptr noundef %294) #14
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then267.6, %for.inc.5.for.inc.6_crit_edge
  %295 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.7 = getelementptr %struct.qed_sb_sp_info, ptr %296, i32 0, i32 1, i32 7
  %297 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx.7, align 4
  %tobool266.not.7 = icmp eq ptr %298, null
  br i1 %tobool266.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then267.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.then267.7:                                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.7 = getelementptr %struct.qed_sb_sp_info, ptr %296, i32 0, i32 1, i32 7, i32 1
  %299 = ptrtoint ptr %cookie.7 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %cookie.7, align 4
  %call269.7 = call i32 %298(ptr noundef %add.ptr, ptr noundef %300) #14
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then267.7, %for.inc.6.for.inc.7_crit_edge
  %301 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.8 = getelementptr %struct.qed_sb_sp_info, ptr %302, i32 0, i32 1, i32 8
  %303 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %arrayidx.8, align 4
  %tobool266.not.8 = icmp eq ptr %304, null
  br i1 %tobool266.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then267.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.8

if.then267.8:                                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.8 = getelementptr %struct.qed_sb_sp_info, ptr %302, i32 0, i32 1, i32 8, i32 1
  %305 = ptrtoint ptr %cookie.8 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %cookie.8, align 4
  %call269.8 = call i32 %304(ptr noundef %add.ptr, ptr noundef %306) #14
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then267.8, %for.inc.7.for.inc.8_crit_edge
  %307 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.9 = getelementptr %struct.qed_sb_sp_info, ptr %308, i32 0, i32 1, i32 9
  %309 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx.9, align 4
  %tobool266.not.9 = icmp eq ptr %310, null
  br i1 %tobool266.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then267.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.9

if.then267.9:                                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.9 = getelementptr %struct.qed_sb_sp_info, ptr %308, i32 0, i32 1, i32 9, i32 1
  %311 = ptrtoint ptr %cookie.9 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cookie.9, align 4
  %call269.9 = call i32 %310(ptr noundef %add.ptr, ptr noundef %312) #14
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then267.9, %for.inc.8.for.inc.9_crit_edge
  %313 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.10 = getelementptr %struct.qed_sb_sp_info, ptr %314, i32 0, i32 1, i32 10
  %315 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %arrayidx.10, align 4
  %tobool266.not.10 = icmp eq ptr %316, null
  br i1 %tobool266.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then267.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.10

if.then267.10:                                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.10 = getelementptr %struct.qed_sb_sp_info, ptr %314, i32 0, i32 1, i32 10, i32 1
  %317 = ptrtoint ptr %cookie.10 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cookie.10, align 4
  %call269.10 = call i32 %316(ptr noundef %add.ptr, ptr noundef %318) #14
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then267.10, %for.inc.9.for.inc.10_crit_edge
  %319 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %p_sp_sb, align 4
  %arrayidx.11 = getelementptr %struct.qed_sb_sp_info, ptr %320, i32 0, i32 1, i32 11
  %321 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arrayidx.11, align 4
  %tobool266.not.11 = icmp eq ptr %322, null
  br i1 %tobool266.not.11, label %for.inc.10.land.lhs.true_crit_edge, label %if.then267.11

for.inc.10.land.lhs.true_crit_edge:               ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then267.11:                                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  %cookie.11 = getelementptr %struct.qed_sb_sp_info, ptr %320, i32 0, i32 1, i32 11, i32 1
  %323 = ptrtoint ptr %cookie.11 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %cookie.11, align 4
  %call269.11 = call i32 %322(ptr noundef %add.ptr, ptr noundef %324) #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then267.11, %for.inc.10.land.lhs.true_crit_edge, %if.end258.land.lhs.true_crit_edge
  br i1 %tobool255.not, label %land.lhs.true.if.end279_crit_edge, label %if.then276

land.lhs.true.if.end279_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end279

if.then276:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %325 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %igu_addr.i, align 4
  %index277 = getelementptr inbounds %struct.qed_sb_attn_info, ptr %5, i32 0, i32 2
  %327 = ptrtoint ptr %index277 to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %index277, align 4
  %conv278 = zext i16 %328 to i32
  %or2.i = or i32 %conv278, 218103808
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !308
  call void @arm_heavy_mb() #14
  %329 = call i32 @llvm.bswap.i32(i32 %or2.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %329) #14, !srcloc !301
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !309
  br label %if.end279

if.end279:                                        ; preds = %if.then276, %land.lhs.true.if.end279_crit_edge
  %330 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %sb_ack.i, align 4
  %or3.i367 = or i32 %331, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !300
  call void @arm_heavy_mb() #14
  %332 = call i32 @llvm.bswap.i32(i32 %or3.i367) #14
  %333 = ptrtoint ptr %igu_addr.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %igu_addr.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %334, i32 %332) #14, !srcloc !301
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !302
  br label %cleanup

cleanup:                                          ; preds = %if.end279, %do.end251, %if.then216, %do.end38, %do.end
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_init_cau_sb_entry(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef writeonly %p_sb_entry, i8 noundef zeroext %pf_id, i16 noundef zeroext %vf_number, i8 noundef zeroext %vf_valid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %2 = ptrtoint ptr %p_sb_entry to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %p_sb_entry, align 4
  %int_coalescing_mode = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %int_coalescing_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %int_coalescing_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then:                                          ; preds = %entry
  %rx_coalesce_usecs = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rx_coalesce_usecs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.then37, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then37:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 24, ptr %rx_coalesce_usecs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then37, %if.then.if.end_crit_edge
  %tx_coalesce_usecs = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_coalesce_usecs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool39.not = icmp eq i16 %9, 0
  br i1 %tobool39.not, label %if.then40, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 48, ptr %tx_coalesce_usecs, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %cau_state.0 = phi i32 [ 0, %if.end.if.end43_crit_edge ], [ 0, %if.then40 ], [ 68, %entry.if.end43_crit_edge ]
  %rx_coalesce_usecs44 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %rx_coalesce_usecs44 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_coalesce_usecs44, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %12)
  %cmp46 = icmp ult i16 %12, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %12)
  %cmp51 = icmp ult i16 %12, 256
  %. = select i1 %cmp51, i32 16384, i32 32768
  %timer_res.0 = select i1 %cmp46, i32 0, i32 %.
  %tx_coalesce_usecs66 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %tx_coalesce_usecs66 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tx_coalesce_usecs66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %14)
  %cmp68 = icmp ult i16 %14, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %14)
  %cmp74 = icmp ult i16 %14, 256
  %.140 = select i1 %cmp74, i32 65536, i32 131072
  %timer_res.1 = select i1 %cmp68, i32 0, i32 %.140
  %conv15 = zext i8 %vf_valid to i32
  %shl16 = shl i32 %conv15, 26
  %conv6 = zext i16 %vf_number to i32
  %shl7 = shl i32 %conv6, 18
  %shl7.masked = and i32 %shl7, -67371008
  %conv = zext i8 %pf_id to i32
  %shl = shl i32 %conv, 27
  %and14 = or i32 %shl, %shl7.masked
  %or18 = or i32 %and14, %shl16
  %15 = or i32 %or18, %timer_res.0
  %or62 = or i32 %15, %timer_res.1
  %or85 = or i32 %or62, 16383
  %16 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %params89 = getelementptr inbounds %struct.cau_sb_entry, ptr %p_sb_entry, i32 0, i32 1
  %17 = ptrtoint ptr %params89 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %params89, align 4
  %18 = ptrtoint ptr %p_sb_entry to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cau_state.0, ptr %p_sb_entry, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_cau_conf_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %sb_phys, i16 noundef zeroext %igu_sb_id, i16 noundef zeroext %vf_number, i8 noundef zeroext %vf_valid) local_unnamed_addr #0 align 64 {
entry:
  %sb_phys.addr = alloca i32, align 4
  %sb_entry = alloca %struct.cau_sb_entry, align 8
  %phys_addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb_phys.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sb_phys, ptr %sb_phys.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb_entry) #14
  %1 = getelementptr inbounds %struct.cau_sb_entry, ptr %sb_entry, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !305
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %3 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rel_pf_id, align 1
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %int_coalescing_mode.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %int_coalescing_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_coalescing_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %entry.qed_init_cau_sb_entry.exit_crit_edge

entry.qed_init_cau_sb_entry.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_init_cau_sb_entry.exit

if.then.i:                                        ; preds = %entry
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 24
  %9 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rx_coalesce_usecs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.then37.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then37.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 24, ptr %rx_coalesce_usecs.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then37.i, %if.then.i.if.end.i_crit_edge
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 25
  %12 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_coalesce_usecs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool39.not.i = icmp eq i16 %13, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end.i.qed_init_cau_sb_entry.exit_crit_edge

if.end.i.qed_init_cau_sb_entry.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_init_cau_sb_entry.exit

if.then40.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 48, ptr %tx_coalesce_usecs.i, align 2
  br label %qed_init_cau_sb_entry.exit

qed_init_cau_sb_entry.exit:                       ; preds = %if.then40.i, %if.end.i.qed_init_cau_sb_entry.exit_crit_edge, %entry.qed_init_cau_sb_entry.exit_crit_edge
  %cau_state.0.i = phi i32 [ 0, %if.end.i.qed_init_cau_sb_entry.exit_crit_edge ], [ 0, %if.then40.i ], [ 68, %entry.qed_init_cau_sb_entry.exit_crit_edge ]
  %rx_coalesce_usecs44.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 24
  %15 = ptrtoint ptr %rx_coalesce_usecs44.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_coalesce_usecs44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %16)
  %cmp46.i = icmp ult i16 %16, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %16)
  %cmp51.i = icmp ult i16 %16, 256
  %..i = select i1 %cmp51.i, i32 16384, i32 32768
  %timer_res.0.i = select i1 %cmp46.i, i32 0, i32 %..i
  %tx_coalesce_usecs66.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 25
  %17 = ptrtoint ptr %tx_coalesce_usecs66.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tx_coalesce_usecs66.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %18)
  %cmp68.i = icmp ult i16 %18, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp74.i = icmp ult i16 %18, 256
  %.140.i = select i1 %cmp74.i, i32 65536, i32 131072
  %timer_res.1.i = select i1 %cmp68.i, i32 0, i32 %.140.i
  %conv15.i = zext i8 %vf_valid to i32
  %shl16.i = shl i32 %conv15.i, 26
  %conv6.i = zext i16 %vf_number to i32
  %shl7.i = shl i32 %conv6.i, 18
  %shl7.masked.i = and i32 %shl7.i, -67371008
  %conv.i = zext i8 %4 to i32
  %shl.i = shl i32 %conv.i, 27
  %and14.i = or i32 %shl7.masked.i, %shl16.i
  %or18.i = or i32 %and14.i, %shl.i
  %19 = or i32 %or18.i, %timer_res.0.i
  %or62.i = or i32 %19, %timer_res.1.i
  %or85.i = or i32 %or62.i, 16383
  %20 = tail call i32 @llvm.bswap.i32(i32 %or85.i) #14
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 4
  %22 = ptrtoint ptr %sb_entry to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cau_state.0.i, ptr %sb_entry, align 8
  %hw_init_done = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 9
  %23 = ptrtoint ptr %hw_init_done to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hw_init_done, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %qed_init_cau_sb_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phys_addr) #14
  %conv = zext i32 %sb_phys to i64
  %25 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %phys_addr, align 8
  %26 = ptrtoint ptr %phys_addr to i32
  %conv1 = zext i32 %26 to i64
  %conv2 = zext i16 %igu_sb_id to i32
  %mul = shl nuw nsw i32 %conv2, 3
  %add = add nuw nsw i32 %mul, 1867776
  %call = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv1, i32 noundef %add, i32 noundef 2, ptr noundef null) #14
  %27 = ptrtoint ptr %sb_entry to i32
  %conv3 = zext i32 %27 to i64
  %add6 = add nuw nsw i32 %mul, 1859584
  %call7 = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv3, i32 noundef %add6, i32 noundef 2, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phys_addr) #14
  br label %if.end

if.else:                                          ; preds = %qed_init_cau_sb_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv8 = zext i16 %igu_sb_id to i32
  %mul9 = shl nuw nsw i32 %conv8, 1
  %add10 = add nuw nsw i32 %mul9, 762
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add10, ptr noundef nonnull %sb_phys.addr, i32 noundef 4) #14
  %add13 = add nuw nsw i32 %mul9, 26
  call void @qed_init_store_rt_agg(ptr noundef %p_hwfn, i32 noundef %add13, ptr noundef nonnull %sb_entry, i32 noundef 8) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p_hwfn, align 8
  %int_coalescing_mode = getelementptr inbounds %struct.qed_dev, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %int_coalescing_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %int_coalescing_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp eq i32 %31, 1
  br i1 %cmp, label %if.then15, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then15:                                        ; preds = %if.end
  %num_hw_tc = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 4
  %32 = ptrtoint ptr %num_hw_tc to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_hw_tc, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %29, i32 0, i32 39
  %34 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %b_is_vf.i, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i93 = icmp eq i8 %35, 0
  br i1 %tobool.not.i93, label %do.body.i, label %if.then15.qed_int_cau_conf_pi.exit_crit_edge

if.then15.qed_int_cau_conf_pi.exit_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_cau_conf_pi.exit

do.body.i:                                        ; preds = %if.then15
  %rx_coalesce_usecs = getelementptr inbounds %struct.qed_dev, ptr %29, i32 0, i32 24
  %36 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rx_coalesce_usecs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %37)
  %cmp18 = icmp ult i16 %37, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %37)
  %cmp25 = icmp ult i16 %37, 256
  %. = select i1 %cmp25, i16 1, i16 2
  %timer_res.0 = select i1 %cmp18, i16 0, i16 %.
  %shr = lshr i16 %37, %timer_res.0
  %38 = and i16 %shr, 127
  %conv.i94 = zext i16 %38 to i32
  %shl.i95 = shl nuw nsw i32 %conv.i94, 16
  %conv20.i = zext i16 %igu_sb_id to i32
  %39 = ptrtoint ptr %hw_init_done to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hw_init_done, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool21.not.i = icmp eq i8 %40, 0
  br i1 %tobool21.not.i, label %if.else25.i, label %if.then22.i

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul23.i = mul nuw nsw i32 %conv20.i, 48
  %add24.i = add nuw nsw i32 %mul23.i, 1900544
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add24.i, i32 noundef %shl.i95) #14
  br label %qed_int_cau_conf_pi.exit

if.else25.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul nuw nsw i32 %conv20.i, 12
  %add26.i = add nuw nsw i32 %mul.i, 1498
  call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add26.i, i32 noundef %shl.i95) #14
  br label %qed_int_cau_conf_pi.exit

qed_int_cau_conf_pi.exit:                         ; preds = %if.else25.i, %if.then22.i, %if.then15.qed_int_cau_conf_pi.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp59112.not = icmp eq i8 %33, 0
  br i1 %cmp59112.not, label %qed_int_cau_conf_pi.exit.if.end63_crit_edge, label %for.body.lr.ph

qed_int_cau_conf_pi.exit.if.end63_crit_edge:      ; preds = %qed_int_cau_conf_pi.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

for.body.lr.ph:                                   ; preds = %qed_int_cau_conf_pi.exit
  %41 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_hwfn, align 8
  %tx_coalesce_usecs = getelementptr inbounds %struct.qed_dev, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tx_coalesce_usecs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %44)
  %cmp38 = icmp ult i16 %44, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %44)
  %cmp45 = icmp ult i16 %44, 256
  %.92 = select i1 %cmp45, i16 1, i16 2
  %timer_res.1 = select i1 %cmp38, i16 0, i16 %.92
  %shr55 = lshr i16 %44, %timer_res.1
  %45 = and i16 %shr55, 127
  %conv.i98 = zext i16 %45 to i32
  %shl.i99 = shl nuw nsw i32 %conv.i98, 16
  %46 = or i32 %shl.i99, 8388608
  %conv20.i101 = zext i16 %igu_sb_id to i32
  %mul.i102 = mul nuw nsw i32 %conv20.i101, 12
  %add62 = or i32 %mul.i102, 1
  %wide.trip.count = zext i8 %33 to i32
  br label %for.body

for.body:                                         ; preds = %qed_int_cau_conf_pi.exit111.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %qed_int_cau_conf_pi.exit111.for.body_crit_edge ]
  %47 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i96 = getelementptr inbounds %struct.qed_dev, ptr %48, i32 0, i32 39
  %49 = ptrtoint ptr %b_is_vf.i96 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %b_is_vf.i96, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i97 = icmp eq i8 %50, 0
  br i1 %tobool.not.i97, label %do.body.i105, label %for.body.qed_int_cau_conf_pi.exit111_crit_edge

for.body.qed_int_cau_conf_pi.exit111_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_cau_conf_pi.exit111

do.body.i105:                                     ; preds = %for.body
  %add.i = add nuw nsw i32 %add62, %indvars.iv
  %51 = ptrtoint ptr %hw_init_done to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hw_init_done, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool21.not.i104 = icmp eq i8 %52, 0
  br i1 %tobool21.not.i104, label %if.else25.i110, label %if.then22.i108

if.then22.i108:                                   ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #16
  %mul23.i106 = shl nuw nsw i32 %add.i, 2
  %add24.i107 = add nuw nsw i32 %mul23.i106, 1900544
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add24.i107, i32 noundef %46) #14
  br label %qed_int_cau_conf_pi.exit111

if.else25.i110:                                   ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #16
  %add26.i109 = add nuw nsw i32 %add.i, 1498
  call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add26.i109, i32 noundef %46) #14
  br label %qed_int_cau_conf_pi.exit111

qed_int_cau_conf_pi.exit111:                      ; preds = %if.else25.i110, %if.then22.i108, %for.body.qed_int_cau_conf_pi.exit111_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %qed_int_cau_conf_pi.exit111.if.end63_crit_edge, label %qed_int_cau_conf_pi.exit111.for.body_crit_edge

qed_int_cau_conf_pi.exit111.for.body_crit_edge:   ; preds = %qed_int_cau_conf_pi.exit111
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

qed_int_cau_conf_pi.exit111.if.end63_crit_edge:   ; preds = %qed_int_cau_conf_pi.exit111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.end63:                                         ; preds = %qed_int_cau_conf_pi.exit111.if.end63_crit_edge, %qed_int_cau_conf_pi.exit.if.end63_crit_edge, %if.end.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_entry) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dmae_host2grc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_init_store_rt_agg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_sb_setup(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %sb_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_ack = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 2
  %0 = ptrtoint ptr %sb_ack to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sb_ack, align 4
  %1 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sb_info, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_is_vf, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sb_phys = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 1
  %8 = ptrtoint ptr %sb_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_phys, align 4
  %igu_sb_id = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 3
  %10 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %igu_sb_id, align 4
  tail call void @qed_int_cau_conf_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %9, i16 noundef zeroext %11, i16 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qed_get_igu_free_sb(ptr nocapture noundef readonly %p_hwfn, i1 noundef zeroext %b_is_pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %call26 = tail call i32 @qed_get_hsi_def_val(ptr noundef %1, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv29 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %igu_id.028 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_igu_info, align 4
  %arrayidx = getelementptr [368 x %struct.qed_igu_block], ptr %3, i32 0, i32 %conv29
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv3 = zext i8 %5 to i32
  %6 = and i32 %conv3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %.not = icmp eq i32 %6, 3
  br i1 %.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %cmp15 = xor i1 %8, %b_is_pf
  br i1 %cmp15, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i16 %igu_id.028, 1
  %conv = zext i16 %inc to i32
  %9 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_hwfn, align 8
  %call = tail call i32 @qed_get_hsi_def_val(ptr noundef %10, i32 noundef 3) #14
  %cmp = icmp ugt i32 %call, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %arrayidx, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_get_hsi_def_val(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @qed_get_igu_sb_id(ptr noundef %p_hwfn, i16 noundef zeroext %sb_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %sb_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %sb_id)
  %cmp = icmp eq i16 %sb_id, -1
  br i1 %cmp, label %do.body, label %if.else

if.else:                                          ; preds = %entry
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.else5

if.then2:                                         ; preds = %if.else
  %add = add nuw i16 %sb_id, 1
  %call17.i = tail call i32 @qed_get_hsi_def_val(ptr noundef %1, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.not.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.not.i, label %if.then2.do.body29_crit_edge, label %for.body.lr.ph.i

if.then2.do.body29_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

for.body.lr.ph.i:                                 ; preds = %if.then2
  %p_igu_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv21.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.inc.i.for.body.i_crit_edge ]
  %igu_id.019.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %p_igu_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_igu_info.i, align 4
  %arrayidx.i = getelementptr [368 x %struct.qed_igu_block], ptr %5, i32 0, i32 %conv21.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %is_pf.i = getelementptr [368 x %struct.qed_igu_block], ptr %5, i32 0, i32 %conv21.i, i32 3
  %9 = ptrtoint ptr %is_pf.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_pf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %vector_number.i = getelementptr [368 x %struct.qed_igu_block], ptr %5, i32 0, i32 %conv21.i, i32 1
  %11 = ptrtoint ptr %vector_number.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vector_number.i, align 1
  %13 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %13)
  %cmp8.not.i = icmp eq i16 %add, %13
  br i1 %cmp8.not.i, label %lor.lhs.false5.i.do.body29_crit_edge, label %lor.lhs.false5.i.for.inc.i_crit_edge

lor.lhs.false5.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false5.i.do.body29_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

for.inc.i:                                        ; preds = %lor.lhs.false5.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i16 %igu_id.019.i, 1
  %conv.i = zext i16 %inc.i to i32
  %14 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_hwfn, align 8
  %call.i = tail call i32 @qed_get_hsi_def_val(ptr noundef %15, i32 noundef 3) #14
  %cmp.i = icmp ugt i32 %call.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body29_crit_edge

for.inc.i.do.body29_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call zeroext i16 @qed_vf_get_igu_sb_id(ptr noundef %p_hwfn, i16 noundef zeroext %sb_id) #14
  br label %do.body29

do.body:                                          ; preds = %entry
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %16 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_igu_info, align 4
  %igu_dsb_id = getelementptr inbounds %struct.qed_igu_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %igu_dsb_id, align 4
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %20 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp13 = icmp eq i8 %21, 0
  br i1 %cmp13, label %land.rhs, label %do.body.if.end65_crit_edge

do.body.if.end65_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %22 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_module, align 4
  %and = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.rhs.if.end65_crit_edge, label %do.end, !prof !298

land.rhs.if.end65_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool20.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool20.not, ptr @.str.4, ptr %name
  %conv23 = zext i16 %19 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1653, ptr noundef nonnull %spec.select, i32 noundef %conv23) #17
  br label %if.end65

do.body29:                                        ; preds = %if.else5, %for.inc.i.do.body29_crit_edge, %lor.lhs.false5.i.do.body29_crit_edge, %if.then2.do.body29_crit_edge
  %igu_sb_id.087 = phi i16 [ -1, %if.then2.do.body29_crit_edge ], [ %call6, %if.else5 ], [ %igu_id.019.i, %lor.lhs.false5.i.do.body29_crit_edge ], [ -1, %for.inc.i.do.body29_crit_edge ]
  %dp_level30 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %24 = ptrtoint ptr %dp_level30 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level30, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp32 = icmp eq i8 %25, 0
  br i1 %cmp32, label %land.rhs34, label %do.body29.if.end65_crit_edge

do.body29.if.end65_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.rhs34:                                       ; preds = %do.body29
  %dp_module35 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %26 = ptrtoint ptr %dp_module35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module35, align 4
  %and36 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.rhs34.if.end65_crit_edge, label %do.end48, !prof !298

land.rhs34.if.end65_crit_edge:                    ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

do.end48:                                         ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #16
  %name50 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool52.not = icmp eq ptr %name50, null
  %spec.select84 = select i1 %tobool52.not, ptr @.str.4, ptr %name50
  %conv60 = zext i16 %igu_sb_id.087 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef 1656, ptr noundef nonnull %spec.select84, i32 noundef %conv, i32 noundef %conv60) #17
  br label %if.end65

if.end65:                                         ; preds = %do.end48, %land.rhs34.if.end65_crit_edge, %do.body29.if.end65_crit_edge, %do.end, %land.rhs.if.end65_crit_edge, %do.body.if.end65_crit_edge
  %igu_sb_id.086 = phi i16 [ %igu_sb_id.087, %do.body29.if.end65_crit_edge ], [ %19, %do.body.if.end65_crit_edge ], [ %igu_sb_id.087, %land.rhs34.if.end65_crit_edge ], [ %igu_sb_id.087, %do.end48 ], [ %19, %land.rhs.if.end65_crit_edge ], [ %19, %do.end ]
  ret i16 %igu_sb_id.086
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_vf_get_igu_sb_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_sb_init(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %sb_info, ptr noundef %sb_virt_addr, i32 noundef %sb_phy_addr, i16 noundef zeroext %sb_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sb_virt_addr, ptr %sb_info, align 4
  %sb_phys = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 1
  %1 = ptrtoint ptr %sb_phys to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sb_phy_addr, ptr %sb_phys, align 4
  %call = tail call zeroext i16 @qed_get_igu_sb_id(ptr noundef %p_hwfn, i16 noundef zeroext %sb_id)
  %igu_sb_id = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 3
  %2 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call, ptr %igu_sb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %sb_id)
  %cmp.not = icmp eq i16 %sb_id, -1
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %4, i32 0, i32 39
  %5 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %b_is_vf, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %7 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_igu_info, align 4
  %idxprom = zext i16 %call to i32
  %arrayidx = getelementptr [368 x %struct.qed_igu_block], ptr %8, i32 0, i32 %idxprom
  %sb_info5 = getelementptr [368 x %struct.qed_igu_block], ptr %8, i32 0, i32 %idxprom, i32 5
  %9 = ptrtoint ptr %sb_info5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sb_info, ptr %sb_info5, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 4
  %12 = and i8 %11, -2
  store i8 %12, ptr %arrayidx, align 4
  %free_cnt = getelementptr inbounds %struct.qed_igu_info, ptr %8, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %free_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %free_cnt, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %free_cnt, align 4
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qed_vf_set_sb_info(ptr noundef %p_hwfn, i16 noundef zeroext %sb_id, ptr noundef %sb_info) #14
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2, %entry.if.end8_crit_edge
  %15 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_hwfn, align 8
  %cdev10 = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 6
  %17 = ptrtoint ptr %cdev10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %cdev10, align 4
  %18 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf12 = getelementptr inbounds %struct.qed_dev, ptr %18, i32 0, i32 39
  %19 = ptrtoint ptr %b_is_vf12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b_is_vf12, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %21 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regview, align 4
  br i1 %tobool13.not, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %22, i32 61440
  %23 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %igu_sb_id, align 4
  %conv16 = zext i16 %24 to i32
  %shl = shl nuw nsw i32 %conv16, 3
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %shl
  br label %if.end26

if.else18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %igu_sb_id, align 4
  %conv22 = zext i16 %26 to i32
  %add = shl nuw nsw i32 %conv22, 3
  %shl23 = add nuw nsw i32 %add, 8192
  %add.ptr24 = getelementptr i8, ptr %22, i32 %shl23
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %if.then14
  %add.ptr24.sink = phi ptr [ %add.ptr17, %if.then14 ], [ %add.ptr24, %if.else18 ]
  %27 = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr24.sink, ptr %27, align 4
  %flags = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 5
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 4
  %31 = or i8 %30, 1
  store i8 %31, ptr %flags, align 4
  %sb_ack.i = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 2
  %32 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sb_ack.i, align 4
  %33 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sb_info, align 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 32)
  %36 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %37, i32 0, i32 39
  %38 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %b_is_vf.i, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end26.qed_int_sb_setup.exit_crit_edge

if.end26.qed_int_sb_setup.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_sb_setup.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %sb_phys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sb_phys, align 4
  %42 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %igu_sb_id, align 4
  tail call void @qed_int_cau_conf_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %41, i16 noundef zeroext %43, i16 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %qed_int_sb_setup.exit

qed_int_sb_setup.exit:                            ; preds = %if.then.i, %if.end26.qed_int_sb_setup.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_set_sb_info(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_sb_release(ptr noundef %p_hwfn, ptr noundef %sb_info, i16 noundef zeroext %sb_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sb_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_ack = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 2
  %0 = ptrtoint ptr %sb_ack to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sb_ack, align 4
  %1 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sb_info, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_is_vf, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qed_vf_set_sb_info(ptr noundef %p_hwfn, i16 noundef zeroext %sb_id, ptr noundef null) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %8 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_igu_info, align 4
  %igu_sb_id = getelementptr inbounds %struct.qed_sb_info, ptr %sb_info, i32 0, i32 3
  %10 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %igu_sb_id, align 4
  %idxprom = zext i16 %11 to i32
  %vector_number = getelementptr [368 x %struct.qed_igu_block], ptr %9, i32 0, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %vector_number to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vector_number, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 1733, ptr noundef nonnull %spec.select) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [368 x %struct.qed_igu_block], ptr %9, i32 0, i32 %idxprom
  %sb_info14 = getelementptr [368 x %struct.qed_igu_block], ptr %9, i32 0, i32 %idxprom, i32 5
  %14 = ptrtoint ptr %sb_info14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sb_info14, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 4
  %17 = or i8 %16, 1
  store i8 %17, ptr %arrayidx, align 4
  %free_cnt = getelementptr inbounds %struct.qed_igu_info, ptr %9, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %free_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free_cnt, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %free_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end13 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_register_cb(ptr nocapture noundef readonly %p_hwfn, ptr noundef %comp_cb, ptr noundef %cookie, ptr nocapture noundef writeonly %sb_idx, ptr nocapture noundef writeonly %p_fw_cons) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_sp_sb1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 27
  %0 = ptrtoint ptr %p_sp_sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_sp_sb1, align 4
  %arrayidx = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.inc

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %for.inc.10.if.end_crit_edge, %for.inc.9.if.end_crit_edge, %for.inc.8.if.end_crit_edge, %for.inc.7.if.end_crit_edge, %for.inc.6.if.end_crit_edge, %for.inc.5.if.end_crit_edge, %for.inc.4.if.end_crit_edge, %for.inc.3.if.end_crit_edge, %for.inc.2.if.end_crit_edge, %for.inc.1.if.end_crit_edge, %for.inc.if.end_crit_edge, %entry.if.end_crit_edge
  %conv26.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.inc.if.end_crit_edge ], [ 2, %for.inc.1.if.end_crit_edge ], [ 3, %for.inc.2.if.end_crit_edge ], [ 4, %for.inc.3.if.end_crit_edge ], [ 5, %for.inc.4.if.end_crit_edge ], [ 6, %for.inc.5.if.end_crit_edge ], [ 7, %for.inc.6.if.end_crit_edge ], [ 8, %for.inc.7.if.end_crit_edge ], [ 9, %for.inc.8.if.end_crit_edge ], [ 10, %for.inc.9.if.end_crit_edge ], [ 11, %for.inc.10.if.end_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.end_crit_edge ], [ %arrayidx.1, %for.inc.if.end_crit_edge ], [ %arrayidx.2, %for.inc.1.if.end_crit_edge ], [ %arrayidx.3, %for.inc.2.if.end_crit_edge ], [ %arrayidx.4, %for.inc.3.if.end_crit_edge ], [ %arrayidx.5, %for.inc.4.if.end_crit_edge ], [ %arrayidx.6, %for.inc.5.if.end_crit_edge ], [ %arrayidx.7, %for.inc.6.if.end_crit_edge ], [ %arrayidx.8, %for.inc.7.if.end_crit_edge ], [ %arrayidx.9, %for.inc.8.if.end_crit_edge ], [ %arrayidx.10, %for.inc.9.if.end_crit_edge ], [ %arrayidx.11, %for.inc.10.if.end_crit_edge ]
  %4 = trunc i32 %conv26.lcssa to i8
  %5 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %comp_cb, ptr %arrayidx.lcssa, align 4
  %cookie11 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 %conv26.lcssa, i32 1
  %6 = ptrtoint ptr %cookie11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cookie, ptr %cookie11, align 4
  %7 = ptrtoint ptr %sb_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %sb_idx, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx13 = getelementptr [12 x i16], ptr %9, i32 0, i32 %conv26.lcssa
  %10 = ptrtoint ptr %p_fw_cons to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx13, ptr %p_fw_cons, align 4
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %for.inc.if.end_crit_edge, label %for.inc.1

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %14, null
  br i1 %tobool.not.2, label %for.inc.1.if.end_crit_edge, label %for.inc.2

for.inc.1.if.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %16, null
  br i1 %tobool.not.3, label %for.inc.2.if.end_crit_edge, label %for.inc.3

for.inc.2.if.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %18, null
  br i1 %tobool.not.4, label %for.inc.3.if.end_crit_edge, label %for.inc.4

for.inc.3.if.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %20, null
  br i1 %tobool.not.5, label %for.inc.4.if.end_crit_edge, label %for.inc.5

for.inc.4.if.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %22, null
  br i1 %tobool.not.6, label %for.inc.5.if.end_crit_edge, label %for.inc.6

for.inc.5.if.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %24, null
  br i1 %tobool.not.7, label %for.inc.6.if.end_crit_edge, label %for.inc.7

for.inc.6.if.end_crit_edge:                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 8
  %25 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %26, null
  br i1 %tobool.not.8, label %for.inc.7.if.end_crit_edge, label %for.inc.8

for.inc.7.if.end_crit_edge:                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %28, null
  br i1 %tobool.not.9, label %for.inc.8.if.end_crit_edge, label %for.inc.9

for.inc.8.if.end_crit_edge:                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %30, null
  br i1 %tobool.not.10, label %for.inc.9.if.end_crit_edge, label %for.inc.10

for.inc.9.if.end_crit_edge:                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %32, null
  br i1 %tobool.not.11, label %for.inc.10.if.end_crit_edge, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.10.if.end_crit_edge:                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.end:                                          ; preds = %for.inc.10.for.end_crit_edge, %if.end
  %rc.0 = phi i32 [ 0, %if.end ], [ -12, %for.inc.10.for.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_int_unregister_cb(ptr nocapture noundef readonly %p_hwfn, i8 noundef zeroext %pi) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_sp_sb1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 27
  %0 = ptrtoint ptr %p_sp_sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_sp_sb1, align 4
  %idxprom = zext i8 %pi to i32
  %arrayidx = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %cookie = getelementptr %struct.qed_sb_sp_info, ptr %1, i32 0, i32 1, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @qed_int_get_sp_sb_id(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_sp_sb = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 27
  %0 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_sp_sb, align 4
  %igu_sb_id = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %igu_sb_id, align 4
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_igu_enable_int(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %int_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %int_mode1 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %int_mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %int_mode, ptr %int_mode1, align 8
  %3 = load ptr, ptr %p_hwfn, align 8
  %int_mode3 = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %int_mode3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_mode3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qed_int_igu_enable_int, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %igu_pf_conf.0 = phi i32 [ 9, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574912, i32 noundef %igu_pf_conf.0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_igu_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %int_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574972, i32 noundef 0) #14
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574956, i32 noundef 4095) #14
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574960, i32 noundef 4095) #14
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574972, i32 noundef 4095) #14
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 33940, i32 noundef 255) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %int_mode)
  %cmp.not = icmp eq i32 %int_mode, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %0 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @qed_slowpath_irq_req(ptr noundef %p_hwfn) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp3 = icmp ult i8 %3, 3
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge, !prof !299

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.4, ptr %name
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 1885, ptr noundef nonnull %spec.select) #17
  br label %cleanup

if.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %b_int_requested = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 41
  %4 = ptrtoint ptr %b_int_requested to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %b_int_requested, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %lor.lhs.false.if.end16_crit_edge
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %int_mode1.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %int_mode1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %int_mode, ptr %int_mode1.i, align 8
  %8 = load ptr, ptr %p_hwfn, align 8
  %int_mode3.i = getelementptr inbounds %struct.qed_dev, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %int_mode3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %int_mode3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %switch.lookup, label %if.end16.qed_int_igu_enable_int.exit_crit_edge

if.end16.qed_int_igu_enable_int.exit_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_igu_enable_int.exit

switch.lookup:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qed_int_igu_enable, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %qed_int_igu_enable_int.exit

qed_int_igu_enable_int.exit:                      ; preds = %switch.lookup, %if.end16.qed_int_igu_enable_int.exit_crit_edge
  %igu_pf_conf.0.i = phi i32 [ 9, %if.end16.qed_int_igu_enable_int.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574912, i32 noundef %igu_pf_conf.0.i) #14
  %b_int_enabled = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 40
  %13 = ptrtoint ptr %b_int_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %b_int_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %qed_int_igu_enable_int.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qed_int_igu_enable_int.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_slowpath_irq_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_igu_disable_int(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %b_int_enabled = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 40
  %0 = ptrtoint ptr %b_int_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %b_int_enabled, align 4
  %1 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 39
  %3 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_is_vf, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574912, i32 noundef 0) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_igu_init_pure_rt_single(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %igu_sb_id, i16 noundef zeroext %opaque, i1 noundef zeroext %b_set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %0 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_igu_info, align 4
  %idxprom = zext i16 %igu_sb_id to i32
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end14_crit_edge, label %do.end, !prof !298

land.rhs.do.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %function_id = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %function_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %function_id, align 2
  %conv10 = zext i8 %7 to i32
  %is_pf = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %idxprom, i32 3
  %8 = ptrtoint ptr %is_pf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_pf, align 1
  %conv11 = zext i8 %9 to i32
  %vector_number = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %vector_number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vector_number, align 1
  %conv12 = zext i8 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 1967, ptr noundef nonnull %spec.select, i32 noundef %idxprom, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12) #17
  br label %do.end14

do.end14:                                         ; preds = %do.end, %land.rhs.do.end14_crit_edge, %entry.do.end14_crit_edge
  br i1 %b_set, label %if.then16, label %do.end14.if.end17_crit_edge

do.end14.if.end17_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @qed_int_igu_cleanup_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %igu_sb_id, i1 noundef zeroext true, i16 noundef zeroext %opaque)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end14.if.end17_crit_edge
  tail call fastcc void @qed_int_igu_cleanup_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %igu_sb_id, i1 noundef zeroext false, i16 noundef zeroext %opaque)
  %12 = lshr i32 %idxprom, 3
  %mul = and i32 %12, 8188
  %add = add nuw nsw i32 %mul, 1575168
  %rem = and i32 %idxprom, 31
  %shl = shl nuw i32 1, %rem
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17
  %i.0107 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc.for.body_crit_edge ]
  %call21 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #14
  %and23 = and i32 %call21, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.body.if.end60_crit_edge, label %for.inc

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

for.inc:                                          ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body30, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body30:                                        ; preds = %for.inc
  %13 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp33 = icmp ult i8 %14, 3
  br i1 %cmp33, label %do.end44, label %do.body30.if.end60_crit_edge, !prof !299

do.body30.if.end60_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end44:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #16
  %name46 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool48.not = icmp eq ptr %name46, null
  %spec.select102 = select i1 %tobool48.not, ptr @.str.4, ptr %name46
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 1991, ptr noundef nonnull %spec.select102, i32 noundef %idxprom) #17
  br label %if.end60

if.end60:                                         ; preds = %do.end44, %do.body30.if.end60_crit_edge, %for.body.if.end60_crit_edge
  %mul68 = mul nuw nsw i32 %idxprom, 48
  %add69 = add nuw nsw i32 %mul68, 1900544
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69, i32 noundef 0) #14
  %add67.1 = mul nuw nsw i32 %idxprom, 48
  %add69.1 = add nuw nsw i32 %add67.1, 1900548
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.1, i32 noundef 0) #14
  %add67.2 = mul nuw nsw i32 %idxprom, 48
  %add69.2 = add nuw nsw i32 %add67.2, 1900552
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.2, i32 noundef 0) #14
  %add67.3 = mul nuw nsw i32 %idxprom, 48
  %add69.3 = add nuw nsw i32 %add67.3, 1900556
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.3, i32 noundef 0) #14
  %add67.4 = mul nuw nsw i32 %idxprom, 48
  %add69.4 = add nuw nsw i32 %add67.4, 1900560
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.4, i32 noundef 0) #14
  %add67.5 = mul nuw nsw i32 %idxprom, 48
  %add69.5 = add nuw nsw i32 %add67.5, 1900564
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.5, i32 noundef 0) #14
  %add67.6 = mul nuw nsw i32 %idxprom, 48
  %add69.6 = add nuw nsw i32 %add67.6, 1900568
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.6, i32 noundef 0) #14
  %add67.7 = mul nuw nsw i32 %idxprom, 48
  %add69.7 = add nuw nsw i32 %add67.7, 1900572
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.7, i32 noundef 0) #14
  %add67.8 = mul nuw nsw i32 %idxprom, 48
  %add69.8 = add nuw nsw i32 %add67.8, 1900576
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.8, i32 noundef 0) #14
  %add67.9 = mul nuw nsw i32 %idxprom, 48
  %add69.9 = add nuw nsw i32 %add67.9, 1900580
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.9, i32 noundef 0) #14
  %add67.10 = mul nuw nsw i32 %idxprom, 48
  %add69.10 = add nuw nsw i32 %add67.10, 1900584
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.10, i32 noundef 0) #14
  %add67.11 = mul nuw nsw i32 %idxprom, 48
  %add69.11 = add nuw nsw i32 %add67.11, 1900588
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add69.11, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_int_igu_cleanup_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %igu_sb_id, i1 noundef zeroext %cleanup_set, i16 noundef zeroext %opaque_fid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %igu_sb_id to i32
  %conv13 = select i1 %cleanup_set, i32 -2013265920, i32 -2147483648
  %add = shl nuw i32 %conv, 16
  %shl19 = add i32 %add, 67108864
  %conv27 = zext i16 %opaque_fid to i32
  %and35 = or i32 %shl19, %conv27
  %0 = or i32 %and35, -2147483648
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574976, i32 noundef %conv13) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !310
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574984, i32 noundef %0) #14
  %rem = and i32 %conv, 31
  %shl42 = shl nuw i32 1, %rem
  %1 = lshr i32 %conv, 3
  %mul = and i32 %1, 8188
  %add44 = add nuw nsw i32 %mul, 1575296
  %spec.select = select i1 %cleanup_set, i32 %shl42, i32 0
  br label %do.body45

do.body45:                                        ; preds = %if.end.do.body45_crit_edge, %entry
  %sleep_cnt.0 = phi i32 [ 1000, %entry ], [ %dec, %if.end.do.body45_crit_edge ]
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add44) #14
  %and46 = and i32 %call, %shl42
  call void @__sanitizer_cov_trace_cmp4(i32 %and46, i32 %spec.select)
  %cmp = icmp eq i32 %and46, %spec.select
  br i1 %cmp, label %do.body45.if.end78_crit_edge, label %if.end

do.body45.if.end78_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.end:                                           ; preds = %do.body45
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #14
  %dec = add nsw i32 %sleep_cnt.0, -1
  %tobool52.not = icmp eq i32 %dec, 0
  br i1 %tobool52.not, label %do.body56, label %if.end.do.body45_crit_edge

if.end.do.body45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body45

do.body56:                                        ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp58 = icmp ult i8 %3, 3
  br i1 %cmp58, label %do.end65, label %do.body56.if.end78_crit_edge, !prof !299

do.body56.if.end78_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

do.end65:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool66.not = icmp eq ptr %name, null
  %spec.select107 = select i1 %tobool66.not, ptr @.str.4, ptr %name
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, i32 noundef 1952, ptr noundef nonnull %spec.select107, i32 noundef %call, i32 noundef %conv) #17
  br label %if.end78

if.end78:                                         ; preds = %do.end65, %do.body56.if.end78_crit_edge, %do.body45.if.end78_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_igu_init_pure_rt(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %b_set, i1 noundef zeroext %b_slowpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %0 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_igu_info, align 4
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1572928) #14
  %or = and i32 %call, -4
  %and = or i32 %or, 2
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1572928, i32 noundef %and) #14
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %call240 = tail call i32 @qed_get_hsi_def_val(ptr noundef %3, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp41.not = icmp eq i32 %call240, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv44 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %igu_sb_id.042 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv44
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv5 = zext i8 %5 to i32
  %and6 = and i32 %conv5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %is_pf = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv44, i32 3
  %6 = ptrtoint ptr %is_pf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_pf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp ne i8 %7, 0
  %and11 = and i32 %conv5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opaque_fid, align 4
  tail call void @qed_int_igu_init_pure_rt_single(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %igu_sb_id.042, i16 noundef zeroext %9, i1 noundef zeroext %b_set)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i16 %igu_sb_id.042, 1
  %conv = zext i16 %inc to i32
  %10 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_hwfn, align 8
  %call2 = tail call i32 @qed_get_hsi_def_val(ptr noundef %11, i32 noundef 3) #14
  %cmp = icmp ugt i32 %call2, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  br i1 %b_slowpath, label %if.then16, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %igu_dsb_id = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %igu_dsb_id, align 4
  %opaque_fid18 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %14 = ptrtoint ptr %opaque_fid18 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opaque_fid18, align 4
  tail call void @qed_int_igu_init_pure_rt_single(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %13, i16 noundef zeroext %15, i1 noundef zeroext %b_set)
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %for.end.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_igu_reset_cam(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %0 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_igu_info, align 4
  %resc_num = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %resc_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resc_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %b_allow_pf_vf_change = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 3
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %b_allow_pf_vf_change to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b_allow_pf_vf_change, align 4
  br label %if.end125

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %b_allow_pf_vf_change to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %b_allow_pf_vf_change, align 4
  %cnt = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt, align 4
  %8 = ptrtoint ptr %resc_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resc_num, align 8
  %sub = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp.not = icmp eq i32 %7, %sub
  br i1 %cmp.not, label %if.else.if.end30_crit_edge, label %do.body

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

do.body:                                          ; preds = %if.else
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp7 = icmp ult i8 %11, 2
  br i1 %cmp7, label %do.end, label %do.body.do.end23_crit_edge, !prof !299

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool13.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool13.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 2054, ptr noundef nonnull %spec.select, i32 noundef %sub, i32 noundef %7) #17
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %12 = ptrtoint ptr %resc_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resc_num, align 8
  %sub27 = add i32 %13, -1
  %14 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub27, ptr %cnt, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end23, %if.else.if.end30_crit_edge
  %15 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_hwfn, align 8
  %p_iov_info = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 37
  %17 = ptrtoint ptr %p_iov_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_iov_info, align 4
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.end30.if.end125_crit_edge, label %if.then32

if.end30.if.end125_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end125

if.then32:                                        ; preds = %if.end30
  %total_vfs = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %total_vfs, align 2
  %conv35 = zext i16 %20 to i32
  %iov_cnt = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %iov_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iov_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv35)
  %cmp37.not = icmp eq i32 %22, %conv35
  br i1 %cmp37.not, label %if.then32.if.end73_crit_edge, label %do.body40

if.then32.if.end73_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.body40:                                        ; preds = %if.then32
  %dp_level41 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %23 = ptrtoint ptr %dp_level41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp_level41, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp43 = icmp eq i8 %24, 0
  br i1 %cmp43, label %land.rhs, label %do.body40.if.end73_crit_edge

do.body40.if.end73_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.rhs:                                         ; preds = %do.body40
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %25 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dp_module, align 4
  %and = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %land.rhs.if.end73_crit_edge, label %do.end55, !prof !298

land.rhs.if.end73_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.end55:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %name57 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool59.not = icmp eq ptr %name57, null
  %spec.select394 = select i1 %tobool59.not, ptr @.str.4, ptr %name57
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef 2065, ptr noundef nonnull %spec.select394, i32 noundef %22, i32 noundef %conv35) #17
  br label %if.end73

if.end73:                                         ; preds = %do.end55, %land.rhs.if.end73_crit_edge, %do.body40.if.end73_crit_edge, %if.then32.if.end73_crit_edge
  %free_cnt = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %free_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %free_cnt, align 4
  %free_cnt_iov = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %free_cnt_iov to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %free_cnt_iov, align 4
  %add = add i32 %30, %28
  %31 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt, align 4
  %sub79 = sub i32 %add, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub79, i32 %conv35)
  %cmp80 = icmp slt i32 %sub79, %conv35
  br i1 %cmp80, label %do.body83, label %if.end120

do.body83:                                        ; preds = %if.end73
  %dp_level84 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %33 = ptrtoint ptr %dp_level84 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level84, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp86 = icmp ult i8 %34, 3
  br i1 %cmp86, label %do.end97, label %do.body83.cleanup285_crit_edge, !prof !299

do.body83.cleanup285_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup285

do.end97:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #16
  %name99 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool101.not = icmp eq ptr %name99, null
  %spec.select395 = select i1 %tobool101.not, ptr @.str.4, ptr %name99
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.64, i32 noundef 2077, ptr noundef nonnull %spec.select395, i32 noundef %add, i32 noundef %32, i32 noundef %conv35) #17
  br label %cleanup285

if.end120:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %iov_cnt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv35, ptr %iov_cnt, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.end120, %if.end30.if.end125_crit_edge, %if.then
  %usage126 = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2
  %cnt127 = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %cnt127 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cnt127, align 4
  %free_cnt129 = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %free_cnt129 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %free_cnt129, align 4
  %iov_cnt131 = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %iov_cnt131 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iov_cnt131, align 4
  %free_cnt_iov133 = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 5
  %41 = ptrtoint ptr %free_cnt_iov133 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %free_cnt_iov133, align 4
  %42 = ptrtoint ptr %usage126 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %37, ptr %usage126, align 4
  %iov_orig = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %iov_orig to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %iov_orig, align 4
  %igu_dsb_id = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %igu_dsb_id, align 4
  %conv144398 = zext i16 %45 to i32
  %46 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p_hwfn, align 8
  %call146399 = tail call i32 @qed_get_hsi_def_val(ptr noundef %47, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call146399, i32 %conv144398)
  %cmp147400 = icmp ugt i32 %call146399, %conv144398
  br i1 %cmp147400, label %for.body.lr.ph, label %if.end125.cleanup285_crit_edge

if.end125.cleanup285_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup285

for.body.lr.ph:                                   ; preds = %if.end125
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %dp_level244 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module249 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name264 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool266.not = icmp eq ptr %name264, null
  %spec.select397 = select i1 %tobool266.not, ptr @.str.4, ptr %name264
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv144404 = phi i32 [ %conv144398, %for.body.lr.ph ], [ %conv144, %for.inc.for.body_crit_edge ]
  %pf_sbs.0403 = phi i32 [ %37, %for.body.lr.ph ], [ %pf_sbs.2, %for.inc.for.body_crit_edge ]
  %igu_sb_id.0402 = phi i16 [ %45, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %vf_sbs.0401 = phi i32 [ %40, %for.body.lr.ph ], [ %vf_sbs.2, %for.inc.for.body_crit_edge ]
  %arrayidx150 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404
  %48 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx150, align 4
  %conv151 = zext i8 %49 to i32
  %and152 = and i32 %conv151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %for.body.for.inc_crit_edge, label %if.end155

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end155:                                        ; preds = %for.body
  %and158 = and i32 %conv151, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.else162, label %if.then160

if.then160:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rel_pf_id, align 1
  %function_id = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 2
  %52 = ptrtoint ptr %function_id to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %function_id, align 2
  %is_pf = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 3
  %53 = ptrtoint ptr %is_pf to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %is_pf, align 1
  %vector_number = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 1
  %54 = ptrtoint ptr %vector_number to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %vector_number, align 1
  %55 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 14, ptr %arrayidx150, align 4
  br label %do.body196

if.else162:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pf_sbs.0403)
  %tobool163.not = icmp eq i32 %pf_sbs.0403, 0
  br i1 %tobool163.not, label %if.else174, label %if.then164

if.then164:                                       ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %pf_sbs.0403, -1
  %56 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rel_pf_id, align 1
  %function_id166 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 2
  %58 = ptrtoint ptr %function_id166 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %function_id166, align 2
  %is_pf167 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 3
  %59 = ptrtoint ptr %is_pf167 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %is_pf167, align 1
  %60 = ptrtoint ptr %cnt127 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cnt127, align 4
  %sub170 = sub i32 %61, %dec
  %conv171 = trunc i32 %sub170 to i8
  %vector_number172 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 1
  %62 = ptrtoint ptr %vector_number172 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv171, ptr %vector_number172, align 1
  %63 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 7, ptr %arrayidx150, align 4
  br label %do.body196

if.else174:                                       ; preds = %if.else162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf_sbs.0401)
  %tobool175.not = icmp eq i32 %vf_sbs.0401, 0
  br i1 %tobool175.not, label %if.else189, label %if.then176

if.then176:                                       ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_hwfn, align 8
  %p_iov_info178 = getelementptr inbounds %struct.qed_dev, ptr %65, i32 0, i32 37
  %66 = ptrtoint ptr %p_iov_info178 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %p_iov_info178, align 4
  %first_vf_in_pf = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %first_vf_in_pf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %first_vf_in_pf, align 4
  %70 = ptrtoint ptr %iov_cnt131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iov_cnt131, align 4
  %add181 = sub i32 %69, %vf_sbs.0401
  %sub182 = add i32 %add181, %71
  %conv183 = trunc i32 %sub182 to i8
  %function_id184 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 2
  %72 = ptrtoint ptr %function_id184 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv183, ptr %function_id184, align 2
  %is_pf185 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 3
  %73 = ptrtoint ptr %is_pf185 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %is_pf185, align 1
  %vector_number186 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 1
  %74 = ptrtoint ptr %vector_number186 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %vector_number186, align 1
  %75 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %arrayidx150, align 4
  %dec188 = add i32 %vf_sbs.0401, -1
  br label %do.body196

if.else189:                                       ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #16
  %function_id190 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 2
  %76 = ptrtoint ptr %function_id190 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %function_id190, align 2
  %is_pf191 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 3
  %77 = ptrtoint ptr %is_pf191 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %is_pf191, align 1
  %vector_number192 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 1
  %78 = ptrtoint ptr %vector_number192 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %vector_number192, align 1
  br label %do.body196

do.body196:                                       ; preds = %if.else189, %if.then176, %if.then164, %if.then160
  %vf_sbs.1 = phi i32 [ %vf_sbs.0401, %if.then160 ], [ %vf_sbs.0401, %if.then164 ], [ %dec188, %if.then176 ], [ 0, %if.else189 ]
  %pf_sbs.1 = phi i32 [ %pf_sbs.0403, %if.then160 ], [ %dec, %if.then164 ], [ 0, %if.then176 ], [ 0, %if.else189 ]
  %function_id198 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 2
  %79 = ptrtoint ptr %function_id198 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %function_id198, align 2
  %conv199 = zext i8 %80 to i32
  %shl = shl nuw nsw i32 %conv199, 9
  %is_pf206 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 3
  %81 = ptrtoint ptr %is_pf206 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %is_pf206, align 1
  %conv207 = zext i8 %82 to i32
  %83 = shl nuw nsw i32 %conv207, 17
  %vector_number216 = getelementptr [368 x %struct.qed_igu_block], ptr %1, i32 0, i32 %conv144404, i32 1
  %84 = ptrtoint ptr %vector_number216 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %vector_number216, align 1
  %conv217 = zext i8 %85 to i32
  %shl218 = shl nuw nsw i32 %conv217, 1
  %conv211 = or i32 %shl, %conv207
  %or220 = or i32 %conv211, %83
  %or230 = or i32 %or220, %shl218
  %mul = shl nuw nsw i32 %conv144404, 2
  %add235 = add nuw nsw i32 %mul, 1589248
  %call236 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add235) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call236, i32 %or230)
  %cmp237.not = icmp eq i32 %call236, %or230
  br i1 %cmp237.not, label %do.body196.for.inc_crit_edge, label %if.then239

do.body196.for.inc_crit_edge:                     ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then239:                                       ; preds = %do.body196
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add235, i32 noundef %or230) #14
  %86 = ptrtoint ptr %dp_level244 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dp_level244, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp246 = icmp eq i8 %87, 0
  br i1 %cmp246, label %land.rhs248, label %if.then239.for.inc_crit_edge

if.then239.for.inc_crit_edge:                     ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.rhs248:                                      ; preds = %if.then239
  %88 = ptrtoint ptr %dp_module249 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dp_module249, align 4
  %and250 = and i32 %89, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %land.rhs248.for.inc_crit_edge, label %do.end262, !prof !298

land.rhs248.for.inc_crit_edge:                    ; preds = %land.rhs248
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end262:                                        ; preds = %land.rhs248
  call void @__sanitizer_cov_trace_pc() #16
  %90 = ptrtoint ptr %function_id198 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %function_id198, align 2
  %conv275 = zext i8 %91 to i32
  %92 = ptrtoint ptr %is_pf206 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %is_pf206, align 1
  %conv277 = zext i8 %93 to i32
  %94 = ptrtoint ptr %vector_number216 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %vector_number216, align 1
  %conv279 = zext i8 %95 to i32
  %call280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.64, i32 noundef 2161, ptr noundef nonnull %spec.select397, i32 noundef %conv144404, i32 noundef %conv275, i32 noundef %conv277, i32 noundef %conv279, i32 noundef %call236, i32 noundef %or230) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end262, %land.rhs248.for.inc_crit_edge, %if.then239.for.inc_crit_edge, %do.body196.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %vf_sbs.2 = phi i32 [ %vf_sbs.1, %do.end262 ], [ %vf_sbs.1, %land.rhs248.for.inc_crit_edge ], [ %vf_sbs.1, %do.body196.for.inc_crit_edge ], [ %vf_sbs.0401, %for.body.for.inc_crit_edge ], [ %vf_sbs.1, %if.then239.for.inc_crit_edge ]
  %pf_sbs.2 = phi i32 [ %pf_sbs.1, %do.end262 ], [ %pf_sbs.1, %land.rhs248.for.inc_crit_edge ], [ %pf_sbs.1, %do.body196.for.inc_crit_edge ], [ %pf_sbs.0403, %for.body.for.inc_crit_edge ], [ %pf_sbs.1, %if.then239.for.inc_crit_edge ]
  %inc = add i16 %igu_sb_id.0402, 1
  %conv144 = zext i16 %inc to i32
  %96 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p_hwfn, align 8
  %call146 = tail call i32 @qed_get_hsi_def_val(ptr noundef %97, i32 noundef 3) #14
  %cmp147 = icmp ugt i32 %call146, %conv144
  br i1 %cmp147, label %for.inc.for.body_crit_edge, label %for.inc.cleanup285_crit_edge

for.inc.cleanup285_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup285

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup285:                                       ; preds = %for.inc.cleanup285_crit_edge, %if.end125.cleanup285_crit_edge, %do.end97, %do.body83.cleanup285_crit_edge
  %retval.1 = phi i32 [ -22, %do.end97 ], [ -22, %do.body83.cleanup285_crit_edge ], [ 0, %if.end125.cleanup285_crit_edge ], [ 0, %for.inc.cleanup285_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_igu_read_cam(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4448) #18
  %p_igu_info1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %1 = ptrtoint ptr %p_igu_info1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %p_igu_info1, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %igu_dsb_id = getelementptr inbounds %struct.qed_igu_info, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %igu_dsb_id, align 8
  %3 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_hwfn, align 8
  %p_iov_info = getelementptr inbounds %struct.qed_dev, ptr %4, i32 0, i32 37
  %5 = ptrtoint ptr %p_iov_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_iov_info, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %first_vf_in_pf = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %first_vf_in_pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %first_vf_in_pf, align 4
  %total_vfs = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %total_vfs, align 2
  %conv = zext i16 %10 to i32
  %add = add i32 %8, %conv
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %max_vf.0 = phi i32 [ %add, %if.then7 ], [ 0, %if.end.if.end11_crit_edge ]
  %min_vf.0 = phi i32 [ %8, %if.then7 ], [ 0, %if.end.if.end11_crit_edge ]
  %11 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_hwfn, align 8
  %call14243 = tail call i32 @qed_get_hsi_def_val(ptr noundef %12, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14243)
  %cmp244.not = icmp eq i32 %call14243, 0
  br i1 %cmp244.not, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %cnt = getelementptr inbounds %struct.qed_igu_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %iov_cnt = getelementptr inbounds %struct.qed_igu_info, ptr %call7.i.i, i32 0, i32 2, i32 4
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool85.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool85.not, ptr @.str.4, ptr %name
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv12246 = phi i32 [ 0, %for.body.lr.ph ], [ %conv12, %for.inc.for.body_crit_edge ]
  %igu_sb_id.0245 = phi i16 [ 0, %for.body.lr.ph ], [ %inc99, %for.inc.for.body_crit_edge ]
  %mul.i = shl nuw nsw i32 %conv12246, 2
  %add.i = add nuw nsw i32 %mul.i, 1589248
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i) #14
  %13 = ptrtoint ptr %p_igu_info1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_igu_info1, align 4
  %shr.i = lshr i32 %call.i, 9
  %conv2.i = trunc i32 %shr.i to i8
  %function_id.i = getelementptr [368 x %struct.qed_igu_block], ptr %14, i32 0, i32 %conv12246, i32 2
  %15 = ptrtoint ptr %function_id.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2.i, ptr %function_id.i, align 2
  %shr3.i = lshr i32 %call.i, 17
  %16 = trunc i32 %shr3.i to i8
  %conv5.i = and i8 %16, 1
  %is_pf.i = getelementptr [368 x %struct.qed_igu_block], ptr %14, i32 0, i32 %conv12246, i32 3
  %17 = ptrtoint ptr %is_pf.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5.i, ptr %is_pf.i, align 1
  %shr6.i = lshr i32 %call.i, 1
  %conv8.i = trunc i32 %shr6.i to i8
  %vector_number.i = getelementptr [368 x %struct.qed_igu_block], ptr %14, i32 0, i32 %conv12246, i32 1
  %18 = ptrtoint ptr %vector_number.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8.i, ptr %vector_number.i, align 1
  %igu_sb_id9.i = getelementptr [368 x %struct.qed_igu_block], ptr %14, i32 0, i32 %conv12246, i32 4
  %19 = ptrtoint ptr %igu_sb_id9.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %igu_sb_id.0245, ptr %igu_sb_id9.i, align 4
  %arrayidx = getelementptr [368 x %struct.qed_igu_block], ptr %call7.i.i, i32 0, i32 %conv12246
  %is_pf = getelementptr [368 x %struct.qed_igu_block], ptr %call7.i.i, i32 0, i32 %conv12246, i32 3
  %20 = ptrtoint ptr %is_pf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_pf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  %function_id33 = getelementptr [368 x %struct.qed_igu_block], ptr %call7.i.i, i32 0, i32 %conv12246, i32 2
  %22 = ptrtoint ptr %function_id33 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %function_id33, align 2
  br i1 %tobool18.not, label %land.lhs.true32, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %24 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rel_pf_id, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp21 = icmp eq i8 %23, %25
  br i1 %cmp21, label %if.then23, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then23:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 7, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %igu_dsb_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp26.not = icmp eq i16 %28, -1
  br i1 %cmp26.not, label %if.then23.if.end53_crit_edge, label %if.then28

if.then23.if.end53_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cnt, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %cnt, align 8
  br label %if.end53

land.lhs.true32:                                  ; preds = %for.body
  %conv34 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %min_vf.0, i32 %conv34)
  %cmp35.not = icmp ule i32 %min_vf.0, %conv34
  call void @__sanitizer_cov_trace_cmp4(i32 %max_vf.0, i32 %conv34)
  %cmp40 = icmp ugt i32 %max_vf.0, %conv34
  %or.cond = select i1 %cmp35.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %if.then42, label %land.lhs.true32.if.end53_crit_edge

land.lhs.true32.if.end53_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then42:                                        ; preds = %land.lhs.true32
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %igu_dsb_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp46.not = icmp eq i16 %33, -1
  br i1 %cmp46.not, label %if.then42.if.end53_crit_edge, label %if.then48

if.then42.if.end53_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %iov_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iov_cnt, align 4
  %inc50 = add i32 %35, 1
  store i32 %inc50, ptr %iov_cnt, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then42.if.end53_crit_edge, %land.lhs.true32.if.end53_crit_edge, %if.then28, %if.then23.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 4
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool56.not = icmp eq i8 %38, 0
  br i1 %tobool56.not, label %if.end53.if.end67_crit_edge, label %land.lhs.true57

if.end53.if.end67_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

land.lhs.true57:                                  ; preds = %if.end53
  %39 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %igu_dsb_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp60 = icmp eq i16 %40, -1
  br i1 %cmp60, label %if.then62, label %land.lhs.true57.if.end67_crit_edge

land.lhs.true57.if.end67_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then62:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %igu_sb_id.0245, ptr %igu_dsb_id, align 8
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 4
  %44 = or i8 %43, 8
  store i8 %44, ptr %arrayidx, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %land.lhs.true57.if.end67_crit_edge, %if.end53.if.end67_crit_edge
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 4
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool71.not = icmp eq i8 %47, 0
  br i1 %tobool71.not, label %lor.lhs.false, label %if.end67.do.body_crit_edge

if.end67.do.body_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end67
  %48 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %abs_pf_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp73 = icmp eq i8 %49, 0
  br i1 %cmp73, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end67.do.body_crit_edge
  %50 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp77 = icmp eq i8 %51, 0
  br i1 %cmp77, label %land.rhs, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.rhs:                                         ; preds = %do.body
  %52 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dp_module, align 4
  %and79 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %land.rhs.for.inc_crit_edge, label %do.end, !prof !298

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %function_id89 = getelementptr [368 x %struct.qed_igu_block], ptr %call7.i.i, i32 0, i32 %conv12246, i32 2
  %54 = ptrtoint ptr %function_id89 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %function_id89, align 2
  %conv90 = zext i8 %55 to i32
  %56 = ptrtoint ptr %is_pf to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_pf, align 1
  %conv92 = zext i8 %57 to i32
  %vector_number = getelementptr [368 x %struct.qed_igu_block], ptr %call7.i.i, i32 0, i32 %conv12246, i32 1
  %58 = ptrtoint ptr %vector_number to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vector_number, align 1
  %conv93 = zext i8 %59 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 2251, ptr noundef nonnull %spec.select, i32 noundef %conv12246, i32 noundef %conv90, i32 noundef %conv92, i32 noundef %conv93) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.rhs.for.inc_crit_edge, %do.body.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc99 = add i16 %igu_sb_id.0245, 1
  %conv12 = zext i16 %inc99 to i32
  %60 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p_hwfn, align 8
  %call14 = tail call i32 @qed_get_hsi_def_val(ptr noundef %61, i32 noundef 3) #14
  %cmp = icmp ugt i32 %call14, %conv12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %62 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %igu_dsb_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp102 = icmp eq i16 %63, -1
  br i1 %cmp102, label %do.body105, label %if.end136

do.body105:                                       ; preds = %for.end
  %dp_level106 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %64 = ptrtoint ptr %dp_level106 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dp_level106, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %65)
  %cmp108 = icmp ult i8 %65, 3
  br i1 %cmp108, label %do.end119, label %do.body105.cleanup_crit_edge, !prof !299

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end119:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  %name121 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool123.not = icmp eq ptr %name121, null
  %spec.select241 = select i1 %tobool123.not, ptr @.str.4, ptr %name121
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef 2258, ptr noundef nonnull %spec.select241, i32 noundef 65535) #17
  br label %cleanup

if.end136:                                        ; preds = %for.end
  %cnt138 = getelementptr inbounds %struct.qed_igu_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %cnt138 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cnt138, align 8
  %free_cnt = getelementptr inbounds %struct.qed_igu_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %free_cnt to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %free_cnt, align 4
  %iov_cnt141 = getelementptr inbounds %struct.qed_igu_info, ptr %call7.i.i, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %iov_cnt141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iov_cnt141, align 4
  %free_cnt_iov = getelementptr inbounds %struct.qed_igu_info, ptr %call7.i.i, i32 0, i32 2, i32 5
  %71 = ptrtoint ptr %free_cnt_iov to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %free_cnt_iov, align 8
  %dp_level144 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %72 = ptrtoint ptr %dp_level144 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dp_level144, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp146 = icmp eq i8 %73, 0
  br i1 %cmp146, label %land.rhs148, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs148:                                      ; preds = %if.end136
  %dp_module149 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %74 = ptrtoint ptr %dp_module149 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dp_module149, align 4
  %and150 = and i32 %75, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %land.rhs148.cleanup_crit_edge, label %do.end162, !prof !298

land.rhs148.cleanup_crit_edge:                    ; preds = %land.rhs148
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end162:                                        ; preds = %land.rhs148
  call void @__sanitizer_cov_trace_pc() #16
  %name164 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool166.not = icmp eq ptr %name164, null
  %spec.select242 = select i1 %tobool166.not, ptr @.str.4, ptr %name164
  %conv174 = zext i16 %63 to i32
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75, i32 noundef 2269, ptr noundef nonnull %spec.select242, i32 noundef %conv174, i32 noundef %67, i32 noundef %70) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end162, %land.rhs148.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %do.end119, %do.body105.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %do.end119 ], [ -22, %do.body105.cleanup_crit_edge ], [ 0, %if.end136.cleanup_crit_edge ], [ 0, %do.end162 ], [ 0, %land.rhs148.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_igu_init_rt(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 19, i32 noundef 1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_init_store_rt_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @qed_int_igu_read_sisr_reg(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %0 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regview, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 65440
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !312
  %3 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regview, align 4
  %add.ptr7 = getelementptr i8, ptr %4, i32 65448
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #14, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !313
  %6 = zext i32 %5 to i64
  %7 = zext i32 %2 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  ret i64 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_alloc(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  %p_phys.i6 = alloca i32, align 4
  %p_phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_phys.i) #14
  %0 = ptrtoint ptr %p_phys.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %p_phys.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 124) #18
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.qed_int_sp_sb_alloc.exit.thread_crit_edge, label %if.end.i

entry.qed_int_sp_sb_alloc.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_sp_sb_alloc.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %cache_shift.i = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 30
  %6 = ptrtoint ptr %cache_shift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cache_shift.i, align 4
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %sub.i = add nuw i32 %shl.i, 31
  %neg.i = sub i32 0, %shl.i
  %and.i = and i32 %sub.i, %neg.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %and.i, ptr noundef nonnull %p_phys.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool8.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %qed_int_sp_sb_alloc.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %p_sp_sb.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 27
  %8 = ptrtoint ptr %p_sp_sb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %p_sp_sb.i, align 4
  %9 = ptrtoint ptr %p_phys.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_phys.i, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %call7.i.i, align 8
  %sb_phys.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %sb_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %sb_phys.i.i, align 4
  %p_igu_info.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %13 = ptrtoint ptr %p_igu_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_igu_info.i.i, align 4
  %igu_dsb_id.i.i = getelementptr inbounds %struct.qed_igu_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %igu_dsb_id.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %igu_dsb_id.i.i, align 4
  %dp_level.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %17 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp13.i.i = icmp eq i8 %18, 0
  br i1 %cmp13.i.i, label %land.rhs.i.i, label %if.end10.i.qed_get_igu_sb_id.exit.i_crit_edge

if.end10.i.qed_get_igu_sb_id.exit.i_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_get_igu_sb_id.exit.i

land.rhs.i.i:                                     ; preds = %if.end10.i
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %19 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool15.not.i.i, label %land.rhs.i.i.qed_get_igu_sb_id.exit.i_crit_edge, label %do.end.i.i, !prof !298

land.rhs.i.i.qed_get_igu_sb_id.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_get_igu_sb_id.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %conv23.i.i = zext i16 %16 to i32
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1653, ptr noundef nonnull %name.i.i, i32 noundef %conv23.i.i) #17
  br label %qed_get_igu_sb_id.exit.i

qed_get_igu_sb_id.exit.i:                         ; preds = %do.end.i.i, %land.rhs.i.i.qed_get_igu_sb_id.exit.i_crit_edge, %if.end10.i.qed_get_igu_sb_id.exit.i_crit_edge
  %igu_sb_id.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %igu_sb_id.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %16, ptr %igu_sb_id.i.i, align 4
  %22 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_hwfn, align 8
  %cdev10.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %cdev10.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %cdev10.i.i, align 8
  %b_is_vf12.i.i = getelementptr inbounds %struct.qed_dev, ptr %23, i32 0, i32 39
  %25 = ptrtoint ptr %b_is_vf12.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b_is_vf12.i.i, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not.i.i = icmp eq i8 %26, 0
  %regview.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %27 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regview.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 61440
  %conv16.i.i = zext i16 %16 to i32
  %shl.i.i = shl nuw nsw i32 %conv16.i.i, 3
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  %shl23.i.i = add nuw nsw i32 %shl.i.i, 8192
  %add.ptr24.i.i = getelementptr i8, ptr %28, i32 %shl23.i.i
  %add.ptr24.sink.i.i = select i1 %tobool13.not.i.i, ptr %add.ptr17.i.i, ptr %add.ptr24.i.i
  %29 = getelementptr inbounds %struct.qed_sb_info, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr24.sink.i.i, ptr %29, align 8
  %flags.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags.i.i, align 4
  %33 = or i8 %32, 1
  store i8 %33, ptr %flags.i.i, align 4
  %sb_ack.i.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %sb_ack.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %sb_ack.i.i.i, align 8
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i, align 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 32)
  %38 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %39, i32 0, i32 39
  %40 = ptrtoint ptr %b_is_vf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %b_is_vf.i.i.i, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %qed_get_igu_sb_id.exit.i.if.end_crit_edge

qed_get_igu_sb_id.exit.i.if.end_crit_edge:        ; preds = %qed_get_igu_sb_id.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i.i:                                    ; preds = %qed_get_igu_sb_id.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %sb_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sb_phys.i.i, align 4
  %44 = ptrtoint ptr %igu_sb_id.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %igu_sb_id.i.i, align 4
  call void @qed_int_cau_conf_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %43, i16 noundef zeroext %45, i16 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %if.end

qed_int_sp_sb_alloc.exit.thread:                  ; preds = %if.then9.i, %entry.qed_int_sp_sb_alloc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.then.i.i.i, %qed_get_igu_sb_id.exit.i.if.end_crit_edge
  %pi_info_arr.i = getelementptr inbounds %struct.qed_sb_sp_info, ptr %call7.i.i, i32 0, i32 1
  %46 = call ptr @memset(ptr %pi_info_arr.i, i32 0, i32 96)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys.i) #14
  %47 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %p_hwfn, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_phys.i6) #14
  %49 = ptrtoint ptr %p_phys.i6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %p_phys.i6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i7 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 60) #18
  %tobool.not.i8 = icmp eq ptr %call7.i.i7, null
  br i1 %tobool.not.i8, label %if.end.qed_int_sb_attn_alloc.exit_crit_edge, label %if.end.i18

if.end.qed_int_sb_attn_alloc.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_sb_attn_alloc.exit

if.end.i18:                                       ; preds = %if.end
  %pdev.i9 = getelementptr inbounds %struct.qed_dev, ptr %48, i32 0, i32 50
  %51 = ptrtoint ptr %pdev.i9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i9, align 8
  %dev.i10 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %p_hwfn, align 8
  %cache_shift.i11 = getelementptr inbounds %struct.qed_dev, ptr %54, i32 0, i32 30
  %55 = ptrtoint ptr %cache_shift.i11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cache_shift.i11, align 4
  %conv.i12 = zext i8 %56 to i32
  %shl.i13 = shl nuw i32 1, %conv.i12
  %sub.i14 = add nuw i32 %shl.i13, 15
  %neg.i15 = sub i32 0, %shl.i13
  %and.i16 = and i32 %sub.i14, %neg.i15
  %call.i.i17 = call ptr @dma_alloc_attrs(ptr noundef %dev.i10, i32 noundef %and.i16, ptr noundef nonnull %p_phys.i6, i32 noundef 3264, i32 noundef 0) #14
  %tobool9.not.i = icmp eq ptr %call.i.i17, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i7) #14
  br label %qed_int_sb_attn_alloc.exit

if.end11.i:                                       ; preds = %if.end.i18
  %p_sb_attn.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 28
  %57 = ptrtoint ptr %p_sb_attn.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i7, ptr %p_sb_attn.i, align 8
  %58 = ptrtoint ptr %p_phys.i6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %p_phys.i6, align 4
  %60 = ptrtoint ptr %call7.i.i7 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i17, ptr %call7.i.i7, align 8
  %sb_phys.i.i19 = getelementptr inbounds %struct.qed_sb_attn_info, ptr %call7.i.i7, i32 0, i32 1
  %61 = ptrtoint ptr %sb_phys.i.i19 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %sb_phys.i.i19, align 4
  %p_aeu_desc.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %call7.i.i7, i32 0, i32 4
  %62 = ptrtoint ptr %p_aeu_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @aeu_descs, ptr %p_aeu_desc.i.i, align 8
  %parity_mask.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %call7.i.i7, i32 0, i32 3
  %63 = call ptr @memset(ptr %parity_mask.i.i, i32 0, i32 36)
  %dp_module.i.i21 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i.i22 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc27.i.i.for.cond1.preheader.i.i_crit_edge, %if.end11.i
  %i.060.i.i = phi i32 [ 0, %if.end11.i ], [ %inc28.i.i, %for.inc27.i.i.for.cond1.preheader.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [9 x %struct.aeu_invert_reg], ptr @aeu_descs, i32 0, i32 %i.060.i.i
  %arrayidx7.i.i = getelementptr %struct.qed_sb_attn_info, ptr %call7.i.i7, i32 0, i32 3, i32 %i.060.i.i
  %64 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_hwfn, align 8
  %type.i.i.i.i = getelementptr inbounds %struct.qed_dev, ptr %65, i32 0, i32 3
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %if.end.i.i.for.body4.i.i_crit_edge, %for.cond1.preheader.i.i
  %k.058.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %add.i.i, %if.end.i.i.for.body4.i.i_crit_edge ]
  %j.056.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc.i.i, %if.end.i.i.for.body4.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr [32 x %struct.aeu_invert_reg_bit], ptr %arrayidx.i.i, i32 0, i32 %j.056.i.i
  %66 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %for.body4.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge

for.body4.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge: ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_is_parity_flag.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body4.i.i
  %flags.i.i.i.i = getelementptr [32 x %struct.aeu_invert_reg_bit], ptr %arrayidx.i.i, i32 0, i32 %j.056.i.i, i32 1
  %68 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %69, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge, label %if.end2.i.i.i.i

if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_is_parity_flag.exit.i.i

if.end2.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and4.i.i.i.i = lshr i32 %69, 20
  %shr.i.i.i.i = and i32 %and4.i.i.i.i, 7
  %arrayidx.i.i.i.i = getelementptr [4 x %struct.aeu_invert_reg_bit], ptr @aeu_descs_special, i32 0, i32 %shr.i.i.i.i
  br label %qed_int_is_parity_flag.exit.i.i

qed_int_is_parity_flag.exit.i.i:                  ; preds = %if.end2.i.i.i.i, %if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge, %for.body4.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i, %if.end2.i.i.i.i ], [ %arrayidx5.i.i, %for.body4.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge ], [ %arrayidx5.i.i, %if.end.i.i.i.i.qed_int_is_parity_flag.exit.i.i_crit_edge ]
  %flags.i.i.i = getelementptr inbounds %struct.aeu_invert_reg_bit, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %qed_int_is_parity_flag.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

qed_int_is_parity_flag.exit.i.i.if.end.i.i_crit_edge: ; preds = %qed_int_is_parity_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %qed_int_is_parity_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i.i23 = shl nuw i32 1, %k.058.i.i
  %72 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx7.i.i, align 4
  %or.i.i = or i32 %73, %shl.i.i23
  store i32 %or.i.i, ptr %arrayidx7.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %qed_int_is_parity_flag.exit.i.i.if.end.i.i_crit_edge
  %flags.i.i24 = getelementptr [32 x %struct.aeu_invert_reg_bit], ptr %arrayidx.i.i, i32 0, i32 %j.056.i.i, i32 1
  %74 = ptrtoint ptr %flags.i.i24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i.i24, align 4
  %and.i.i25 = lshr i32 %75, 4
  %shr.i.i = and i32 %and.i.i25, 255
  %add.i.i = add nuw nsw i32 %shr.i.i, %k.058.i.i
  %inc.i.i = add nuw nsw i32 %j.056.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i)
  %cmp2.i.i = icmp ult i32 %add.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %j.056.i.i)
  %cmp3.i.i = icmp ult i32 %j.056.i.i, 31
  %or.cond.i.i = select i1 %cmp2.i.i, i1 %cmp3.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body4.i.i_crit_edge, label %do.body.i.i

if.end.i.i.for.body4.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %76 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp8.i.i = icmp eq i8 %77, 0
  br i1 %cmp8.i.i, label %land.rhs10.i.i, label %do.body.i.i.for.inc27.i.i_crit_edge

do.body.i.i.for.inc27.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27.i.i

land.rhs10.i.i:                                   ; preds = %do.body.i.i
  %78 = ptrtoint ptr %dp_module.i.i21 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dp_module.i.i21, align 4
  %and11.i.i = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs10.i.i.for.inc27.i.i_crit_edge, label %do.end.i.i26, !prof !298

land.rhs10.i.i.for.inc27.i.i_crit_edge:           ; preds = %land.rhs10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27.i.i

do.end.i.i26:                                     ; preds = %land.rhs10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx7.i.i, align 4
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef 1396, ptr noundef nonnull %name.i.i22, i32 noundef %i.060.i.i, i32 noundef %81) #17
  br label %for.inc27.i.i

for.inc27.i.i:                                    ; preds = %do.end.i.i26, %land.rhs10.i.i.for.inc27.i.i_crit_edge, %do.body.i.i.for.inc27.i.i_crit_edge
  %inc28.i.i = add nuw nsw i32 %i.060.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc28.i.i, 9
  br i1 %exitcond.not.i.i, label %qed_int_sb_attn_init.exit.i, label %for.inc27.i.i.for.cond1.preheader.i.i_crit_edge

for.inc27.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader.i.i

qed_int_sb_attn_init.exit.i:                      ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rel_pf_id.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %82 = ptrtoint ptr %rel_pf_id.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rel_pf_id.i.i, align 1
  %conv30.i.i = zext i8 %83 to i32
  %shl31.i.i = shl nuw nsw i32 %conv30.i.i, 3
  %add32.i.i = add nuw nsw i32 %shl31.i.i, 33792
  %mfw_attn_addr.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %call7.i.i7, i32 0, i32 6
  %84 = ptrtoint ptr %mfw_attn_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add32.i.i, ptr %mfw_attn_addr.i.i, align 8
  %85 = ptrtoint ptr %p_sb_attn.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %p_sb_attn.i, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = call ptr @memset(ptr %88, i32 0, i32 16)
  %index.i.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %86, i32 0, i32 2
  %90 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %index.i.i.i, align 4
  %known_attn.i.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %86, i32 0, i32 5
  %91 = ptrtoint ptr %known_attn.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %known_attn.i.i.i, align 4
  %92 = load ptr, ptr %p_sb_attn.i, align 8
  %sb_phys.i.i.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %sb_phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sb_phys.i.i.i, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574944, i32 noundef %94) #14
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574948, i32 noundef 0) #14
  br label %qed_int_sb_attn_alloc.exit

qed_int_sb_attn_alloc.exit:                       ; preds = %qed_int_sb_attn_init.exit.i, %if.then10.i, %if.end.qed_int_sb_attn_alloc.exit_crit_edge
  %retval.0.i27 = phi i32 [ 0, %qed_int_sb_attn_init.exit.i ], [ -12, %if.then10.i ], [ -12, %if.end.qed_int_sb_attn_alloc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys.i6) #14
  br label %cleanup

cleanup:                                          ; preds = %qed_int_sb_attn_alloc.exit, %qed_int_sp_sb_alloc.exit.thread
  %retval.0 = phi i32 [ %retval.0.i27, %qed_int_sb_attn_alloc.exit ], [ -12, %qed_int_sp_sb_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_sp_sb.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 27
  %0 = ptrtoint ptr %p_sp_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_sp_sb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.qed_int_sp_sb_free.exit_crit_edge, label %if.end.i

entry.qed_int_sp_sb_free.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_sp_sb_free.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then2.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %cache_shift.i = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 30
  %8 = ptrtoint ptr %cache_shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cache_shift.i, align 4
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %sub.i = add nuw i32 %shl.i, 31
  %neg.i = sub i32 0, %shl.i
  %and.i = and i32 %sub.i, %neg.i
  %sb_phys.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sb_phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %and.i, ptr noundef nonnull %3, i32 noundef %11, i32 noundef 0) #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then2.i, %if.end.i.if.end12.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #14
  %12 = ptrtoint ptr %p_sp_sb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %p_sp_sb.i, align 4
  br label %qed_int_sp_sb_free.exit

qed_int_sp_sb_free.exit:                          ; preds = %if.end12.i, %entry.qed_int_sp_sb_free.exit_crit_edge
  %p_sb_attn.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 28
  %13 = ptrtoint ptr %p_sb_attn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_sb_attn.i, align 8
  %tobool.not.i2 = icmp eq ptr %14, null
  br i1 %tobool.not.i2, label %qed_int_sp_sb_free.exit.qed_int_sb_attn_free.exit_crit_edge, label %if.end.i4

qed_int_sp_sb_free.exit.qed_int_sb_attn_free.exit_crit_edge: ; preds = %qed_int_sp_sb_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_sb_attn_free.exit

if.end.i4:                                        ; preds = %qed_int_sp_sb_free.exit
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool1.not.i3 = icmp eq ptr %16, null
  br i1 %tobool1.not.i3, label %if.end.i4.if.end10.i_crit_edge, label %if.then2.i14

if.end.i4.if.end10.i_crit_edge:                   ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then2.i14:                                     ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_hwfn, align 8
  %pdev.i5 = getelementptr inbounds %struct.qed_dev, ptr %18, i32 0, i32 50
  %19 = ptrtoint ptr %pdev.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i5, align 8
  %dev.i6 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %cache_shift.i7 = getelementptr inbounds %struct.qed_dev, ptr %18, i32 0, i32 30
  %21 = ptrtoint ptr %cache_shift.i7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cache_shift.i7, align 4
  %conv.i8 = zext i8 %22 to i32
  %shl.i9 = shl nuw i32 1, %conv.i8
  %sub.i10 = add nuw i32 %shl.i9, 15
  %neg.i11 = sub i32 0, %shl.i9
  %and.i12 = and i32 %sub.i10, %neg.i11
  %sb_phys.i13 = getelementptr inbounds %struct.qed_sb_attn_info, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %sb_phys.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_phys.i13, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i6, i32 noundef %and.i12, ptr noundef nonnull %16, i32 noundef %24, i32 noundef 0) #14
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then2.i14, %if.end.i4.if.end10.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %14) #14
  %25 = ptrtoint ptr %p_sb_attn.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %p_sb_attn.i, align 8
  br label %qed_int_sb_attn_free.exit

qed_int_sb_attn_free.exit:                        ; preds = %if.end10.i, %qed_int_sp_sb_free.exit.qed_int_sb_attn_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_setup(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_sp_sb = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 27
  %0 = ptrtoint ptr %p_sp_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_sp_sb, align 4
  %sb_ack.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_ack.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sb_ack.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  %6 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 39
  %8 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %b_is_vf.i, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.qed_int_sb_setup.exit_crit_edge

entry.qed_int_sb_setup.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_int_sb_setup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sb_phys.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sb_phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_phys.i, align 4
  %igu_sb_id.i = getelementptr inbounds %struct.qed_sb_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %igu_sb_id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %igu_sb_id.i, align 4
  tail call void @qed_int_cau_conf_sb(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %11, i16 noundef zeroext %13, i16 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %qed_int_sb_setup.exit

qed_int_sb_setup.exit:                            ; preds = %if.then.i, %entry.qed_int_sb_setup.exit_crit_edge
  %p_sb_attn.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 28
  %14 = ptrtoint ptr %p_sb_attn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_sb_attn.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 16)
  %index.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %index.i, align 4
  %known_attn.i = getelementptr inbounds %struct.qed_sb_attn_info, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %known_attn.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %known_attn.i, align 4
  %21 = load ptr, ptr %p_sb_attn.i, align 8
  %sb_phys.i5 = getelementptr inbounds %struct.qed_sb_attn_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %sb_phys.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_phys.i5, align 4
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574944, i32 noundef %23) #14
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1574948, i32 noundef 0) #14
  %sp_dpc.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 22
  tail call void @tasklet_setup(ptr noundef %sp_dpc.i, ptr noundef nonnull @qed_int_sp_dpc) #14
  %b_sp_dpc_enabled.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 23
  %24 = ptrtoint ptr %b_sp_dpc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %b_sp_dpc_enabled.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_int_get_num_sbs(ptr nocapture noundef readonly %p_hwfn, ptr noundef writeonly %p_sb_cnt_info) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_igu_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 17
  %0 = ptrtoint ptr %p_igu_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_igu_info, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool1.not = icmp eq ptr %p_sb_cnt_info, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %usage = getelementptr inbounds %struct.qed_igu_info, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %p_sb_cnt_info, ptr %usage, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_int_disable_post_isr_release(ptr nocapture noundef %cdev) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp5.not = icmp eq i8 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %b_int_requested = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.06, i32 41
  %2 = ptrtoint ptr %b_int_requested to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %b_int_requested, align 1
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qed_int_attn_clr_enable(ptr nocapture noundef writeonly %cdev, i1 noundef zeroext %clr_enable) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %clr_enable to i8
  %attn_clr_en = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 45
  %0 = ptrtoint ptr %attn_clr_en to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %attn_clr_en, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_set_timer_res(ptr noundef %p_hwfn, ptr noundef %p_ptt, i8 noundef zeroext %timer_res, i16 noundef zeroext %sb_id, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  %sb_entry = alloca %struct.cau_sb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb_entry) #14
  %0 = ptrtoint ptr %sb_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sb_entry, align 4, !annotation !305
  %1 = getelementptr inbounds %struct.cau_sb_entry, ptr %sb_entry, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !305
  %hw_init_done = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 9
  %3 = ptrtoint ptr %hw_init_done to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init_done, align 1, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool2.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool2.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 2370, ptr noundef nonnull %spec.select) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %sb_id to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 1859584
  %5 = ptrtoint ptr %sb_entry to i32
  %call9 = call i32 @qed_dmae_grc2host(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef %5, i32 noundef 2, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end29, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name17 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name17, null
  %spec.select98 = select i1 %tobool19.not, ptr @.str.4, ptr %name17
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef 2378, ptr noundef nonnull %spec.select98, i32 noundef %call9) #17
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %conv7 = zext i32 %5 to i64
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %. = select i1 %tx, i32 -196609, i32 -49153
  %.101 = select i1 %tx, i32 16, i32 14
  %and40 = and i32 %8, %.
  %conv41 = zext i8 %timer_res to i32
  %shl42 = shl nuw nsw i32 %conv41, %.101
  %or44 = or i32 %and40, %shl42
  %9 = call i32 @llvm.bswap.i32(i32 %or44)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %call54 = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv7, i32 noundef %add, i32 noundef 2, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end29.cleanup_crit_edge, label %do.end60

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end60:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %name62 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool64.not = icmp eq ptr %name62, null
  %spec.select99 = select i1 %tobool64.not, ptr @.str.4, ptr %name62
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.83, i32 noundef 2396, ptr noundef nonnull %spec.select99, i32 noundef %call54) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end29.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ %call9, %do.end15 ], [ %call54, %do.end60 ], [ -22, %do.end ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_entry) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dmae_grc2host(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_int_get_sb_dbg(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_sb, ptr nocapture noundef writeonly %p_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %igu_sb_id = getelementptr inbounds %struct.qed_sb_info, ptr %p_sb, i32 0, i32 3
  %4 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %igu_sb_id, align 4
  %conv = zext i16 %5 to i32
  %call = tail call i32 @qed_get_hsi_def_val(ptr noundef %1, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp ugt i32 %call, %conv
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 1581056
  %call6 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #14
  %6 = ptrtoint ptr %p_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call6, ptr %p_info, align 4
  %add9 = add nuw nsw i32 %mul, 1585152
  %call10 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add9) #14
  %igu_cons = getelementptr inbounds %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 1
  %7 = ptrtoint ptr %igu_cons to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %igu_cons, align 4
  %mul15 = mul nuw nsw i32 %conv, 48
  %add16 = add nuw nsw i32 %mul15, 1900544
  %call19 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add16) #14
  %conv20 = trunc i32 %call19 to i16
  %arrayidx = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv20, ptr %arrayidx, align 2
  %add18.1 = add nuw nsw i32 %mul15, 1900548
  %call19.1 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.1) #14
  %conv20.1 = trunc i32 %call19.1 to i16
  %arrayidx.1 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv20.1, ptr %arrayidx.1, align 2
  %add18.2 = add nuw nsw i32 %mul15, 1900552
  %call19.2 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.2) #14
  %conv20.2 = trunc i32 %call19.2 to i16
  %arrayidx.2 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv20.2, ptr %arrayidx.2, align 2
  %add18.3 = add nuw nsw i32 %mul15, 1900556
  %call19.3 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.3) #14
  %conv20.3 = trunc i32 %call19.3 to i16
  %arrayidx.3 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv20.3, ptr %arrayidx.3, align 2
  %add18.4 = add nuw nsw i32 %mul15, 1900560
  %call19.4 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.4) #14
  %conv20.4 = trunc i32 %call19.4 to i16
  %arrayidx.4 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv20.4, ptr %arrayidx.4, align 2
  %add18.5 = add nuw nsw i32 %mul15, 1900564
  %call19.5 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.5) #14
  %conv20.5 = trunc i32 %call19.5 to i16
  %arrayidx.5 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv20.5, ptr %arrayidx.5, align 2
  %add18.6 = add nuw nsw i32 %mul15, 1900568
  %call19.6 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.6) #14
  %conv20.6 = trunc i32 %call19.6 to i16
  %arrayidx.6 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv20.6, ptr %arrayidx.6, align 2
  %add18.7 = add nuw nsw i32 %mul15, 1900572
  %call19.7 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.7) #14
  %conv20.7 = trunc i32 %call19.7 to i16
  %arrayidx.7 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv20.7, ptr %arrayidx.7, align 2
  %add18.8 = add nuw nsw i32 %mul15, 1900576
  %call19.8 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.8) #14
  %conv20.8 = trunc i32 %call19.8 to i16
  %arrayidx.8 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv20.8, ptr %arrayidx.8, align 2
  %add18.9 = add nuw nsw i32 %mul15, 1900580
  %call19.9 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.9) #14
  %conv20.9 = trunc i32 %call19.9 to i16
  %arrayidx.9 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 9
  %17 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv20.9, ptr %arrayidx.9, align 2
  %add18.10 = add nuw nsw i32 %mul15, 1900584
  %call19.10 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.10) #14
  %conv20.10 = trunc i32 %call19.10 to i16
  %arrayidx.10 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 10
  %18 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv20.10, ptr %arrayidx.10, align 2
  %add18.11 = add nuw nsw i32 %mul15, 1900588
  %call19.11 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18.11) #14
  %conv20.11 = trunc i32 %call19.11 to i16
  %arrayidx.11 = getelementptr %struct.qed_sb_info_dbg, ptr %p_info, i32 0, i32 2, i32 11
  %19 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv20.11, ptr %arrayidx.11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dbg_read_attn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_dbg_get_status_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dbg_parse_attn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @qed_hw_err_notify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_dorq_attn_cb(ptr noundef %p_hwfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %recov_in_prog = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %recov_in_prog, align 8, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %dorq_attn = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 62, i32 2
  %4 = ptrtoint ptr %dorq_attn to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %dorq_attn, align 4
  %p_dpc_ptt.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 25
  %5 = ptrtoint ptr %p_dpc_ptt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_dpc_ptt.i, align 4
  %call.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %6, i32 noundef 1051088) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.qed_dorq_attn_overflow.exit_crit_edge, label %if.end.i

if.end.qed_dorq_attn_overflow.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_dorq_attn_overflow.exit

if.end.i:                                         ; preds = %if.end
  %overflow1.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 62, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %overflow1.i) #14
  %db_bar_no_edpm.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 60
  %7 = ptrtoint ptr %db_bar_no_edpm.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %db_bar_no_edpm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %6, i32 noundef 1051096, i32 noundef 1) #14
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then3.i
  %count.025.i.i = phi i32 [ 1000, %if.then3.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %count.025.i.i, -1
  %call.i.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %6, i32 noundef 1051072) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  br i1 %or.cond.i.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  br i1 %tobool1.not.i.i, label %while.end.i.i.if.end8.i_crit_edge, label %do.body.i.i

while.end.i.i.if.end8.i_crit_edge:                ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

do.body.i.i:                                      ; preds = %while.end.i.i
  %10 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_hwfn, align 8
  %dp_level.i.i = getelementptr inbounds %struct.qed_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.i = icmp ult i8 %13, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.qed_dorq_attn_overflow.exit_crit_edge, !prof !299

do.body.i.i.qed_dorq_attn_overflow.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %qed_dorq_attn_overflow.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i = getelementptr inbounds %struct.qed_dev, ptr %11, i32 0, i32 2
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 404, ptr noundef nonnull %name.i.i, i32 noundef 100000, i32 noundef %call.i.i) #17
  br label %qed_dorq_attn_overflow.exit

if.end8.i:                                        ; preds = %while.end.i.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %6, i32 noundef 1051088, i32 noundef 0) #14
  br label %qed_dorq_attn_overflow.exit

qed_dorq_attn_overflow.exit:                      ; preds = %if.end8.i, %do.end.i.i, %do.body.i.i.qed_dorq_attn_overflow.exit_crit_edge, %if.end.qed_dorq_attn_overflow.exit_crit_edge
  tail call void @qed_periodic_db_rec_start(ptr noundef %p_hwfn) #14
  %14 = ptrtoint ptr %p_dpc_ptt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_dpc_ptt.i, align 4
  %call.i5 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %15, i32 noundef 1048960) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038801, i32 %call.i5)
  %cmp.i = icmp eq i32 %call.i5, -559038801
  br i1 %cmp.i, label %do.body.i, label %if.end14.i

do.body.i:                                        ; preds = %qed_dorq_attn_overflow.exit
  %16 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_hwfn, align 8
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp1.i = icmp ult i8 %19, 3
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.return_crit_edge, !prof !299

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %17, i32 0, i32 2
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef 473, ptr noundef nonnull %name.i) #17
  br label %return

if.end14.i:                                       ; preds = %qed_dorq_attn_overflow.exit
  %and.i = and i32 %call.i5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.end14.i.return_crit_edge, label %do.body18.i

if.end14.i.return_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body18.i:                                      ; preds = %if.end14.i
  %20 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_hwfn, align 8
  %dp_level20.i = getelementptr inbounds %struct.qed_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dp_level20.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp22.i = icmp ult i8 %23, 3
  br i1 %cmp22.i, label %do.end33.i, label %do.body18.i.do.end49.i_crit_edge, !prof !299

do.body18.i.do.end49.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49.i

do.end33.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #16
  %name36.i = getelementptr inbounds %struct.qed_dev, ptr %21, i32 0, i32 2
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.127, i32 noundef 486, ptr noundef nonnull %name36.i, i32 noundef %call.i5) #17
  br label %do.end49.i

do.end49.i:                                       ; preds = %do.end33.i, %do.body18.i.do.end49.i_crit_edge
  %and50.i = and i32 %call.i5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %do.end49.i.do.body99.i_crit_edge, label %if.then52.i

do.end49.i.do.body99.i_crit_edge:                 ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body99.i

if.then52.i:                                      ; preds = %do.end49.i
  %call53.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %15, i32 noundef 1051180) #14
  %call55.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %15, i32 noundef 1051172) #14
  %call56.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %15, i32 noundef 1051164) #14
  %call57.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %15, i32 noundef 1051168) #14
  %24 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_hwfn, align 8
  %dp_level60.i = getelementptr inbounds %struct.qed_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %dp_level60.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp62.i = icmp ult i8 %27, 3
  br i1 %cmp62.i, label %do.end73.i, label %if.then52.i.do.end92.i_crit_edge, !prof !299

if.then52.i.do.end92.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end92.i

do.end73.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #16
  %and54.i = and i32 %call53.i, 1048575
  %name76.i = getelementptr inbounds %struct.qed_dev, ptr %25, i32 0, i32 2
  %and86.i = and i32 %call55.i, 65535
  %28 = lshr i32 %call55.i, 14
  %mul.i = and i32 %28, 508
  %call89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.127, i32 noundef 512, ptr noundef nonnull %name76.i, i32 noundef %call56.i, i32 noundef %and86.i, i32 noundef %mul.i, i32 noundef %and54.i, i32 noundef %call57.i) #17
  br label %do.end92.i

do.end92.i:                                       ; preds = %do.end73.i, %if.then52.i.do.end92.i_crit_edge
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %15, i32 noundef 1051176, i32 noundef 0) #14
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %15, i32 noundef 1048968, i32 noundef 6) #14
  %and93.i = and i32 %call.i5, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %cmp94.i = icmp eq i32 %and93.i, 0
  br i1 %cmp94.i, label %do.end92.i.return_crit_edge, label %do.end92.i.do.body99.i_crit_edge

do.end92.i.do.body99.i_crit_edge:                 ; preds = %do.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body99.i

do.end92.i.return_crit_edge:                      ; preds = %do.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body99.i:                                      ; preds = %do.end92.i.do.body99.i_crit_edge, %do.end49.i.do.body99.i_crit_edge
  %dp_level100.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %29 = ptrtoint ptr %dp_level100.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dp_level100.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp102.i = icmp ult i8 %30, 2
  br i1 %cmp102.i, label %do.end113.i, label %do.body99.i.return_crit_edge, !prof !299

do.body99.i.return_crit_edge:                     ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end113.i:                                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #16
  %name115.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.127, i32 noundef 534, ptr noundef nonnull %name115.i) #17
  br label %return

return:                                           ; preds = %do.end113.i, %do.body99.i.return_crit_edge, %do.end92.i.return_crit_edge, %if.end14.i.return_crit_edge, %do.end.i, %do.body.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %do.end.i ], [ 0, %do.body.i.return_crit_edge ], [ 0, %if.end14.i.return_crit_edge ], [ 0, %do.end92.i.return_crit_edge ], [ -22, %do.end113.i ], [ -22, %do.body99.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_periodic_db_rec_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_pglueb_rbc_attn_cb(ptr noundef %p_hwfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dpc_ptt = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 25
  %0 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dpc_ptt, align 4
  %call = tail call i32 @qed_pglueb_rbc_attn_handler(ptr noundef %p_hwfn, ptr noundef %1, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fw_assertion(ptr noundef %p_hwfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dpc_ptt = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 25
  %0 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dpc_ptt, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @qed_hw_err_notify(ptr noundef %p_hwfn, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @.str.142) #17
  %2 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_dpc_ptt, align 4
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %3, i32 noundef 33920, i32 noundef 0) #14
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_general_attention_35(ptr noundef %p_hwfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge, !prof !299

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool4.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool4.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144, i32 noundef 362, ptr noundef nonnull %spec.select) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_mcp_attn_cb(ptr noundef %p_hwfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dpc_ptt = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 25
  %0 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dpc_ptt, align 4
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %1, i32 noundef 14700548) #14
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %do.end, label %entry.do.end12_crit_edge, !prof !299

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, i32 noundef 96, ptr noundef nonnull %spec.select, i32 noundef %call) #17
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %6 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_dpc_ptt, align 4
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %7, i32 noundef 14700552, i32 noundef -1) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_pswhst_attn_cb(ptr noundef %p_hwfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dpc_ptt = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 25
  %0 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dpc_ptt, align 4
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %1, i32 noundef 2752624) #14
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end44_crit_edge, label %if.then

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_dpc_ptt, align 4
  %call2 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %3, i32 noundef 2752628) #14
  %4 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_dpc_ptt, align 4
  %call4 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %5, i32 noundef 2752616) #14
  %6 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_dpc_ptt, align 4
  %call6 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %7, i32 noundef 2752620) #14
  %8 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_hwfn, align 8
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp = icmp ult i8 %11, 2
  br i1 %cmp, label %do.end, label %if.then.if.end44_crit_edge, !prof !299

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 2
  %tobool14.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool14.not, ptr @.str.4, ptr %name
  %shr = lshr i32 %call4, 14
  %conv19 = and i32 %shr, 15
  %shr21 = lshr i32 %call4, 6
  %conv24 = and i32 %shr21, 255
  %12 = lshr i32 %call4, 5
  %conv27 = and i32 %12, 1
  %13 = lshr i32 %call4, 1
  %conv31 = and i32 %13, 15
  %conv35 = and i32 %call4, 1
  %shr37 = lshr i32 %call4, 18
  %conv40 = and i32 %shr37, 255
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148, i32 noundef 143, ptr noundef nonnull %spec.select, i32 noundef %call2, i32 noundef %call6, i32 noundef %conv19, i32 noundef %conv24, i32 noundef %conv27, i32 noundef %conv31, i32 noundef %conv35, i32 noundef %conv40, i32 noundef %call4) #17
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.then.if.end44_crit_edge, %entry.if.end44_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_grc_attn_cb(ptr noundef %p_hwfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %p_dpc_ptt = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 25
  %0 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dpc_ptt, align 4
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %1, i32 noundef 327764) #14
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_dpc_ptt, align 4
  %call2 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %3, i32 noundef 327756) #14
  %4 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_dpc_ptt, align 4
  %call4 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %5, i32 noundef 327760) #14
  %6 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_hwfn, align 8
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ult i8 %9, 2
  br i1 %cmp, label %do.end, label %if.end.out_crit_edge, !prof !299

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 2
  %tobool12.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool12.not, ptr @.str.4, ptr %name
  %and16 = and i32 %call2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.152, ptr @.str.151
  %and19 = shl i32 %call2, 2
  %shl = and i32 %and19, 33554428
  %shr20 = lshr i32 %call2, 24
  %switch.tableidx = and i32 %shr20, 15
  %10 = xor i32 %switch.tableidx, 8
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.qed_grc_attn_cb, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %and25 = and i32 %call4, 15
  %12 = and i32 %call4, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp28 = icmp eq i32 %12, 0
  %cond30 = select i1 %cmp28, ptr @.str.153, ptr @.str.154
  %shr31 = lshr i32 %call4, 4
  %and32 = and i32 %shr31, 255
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, i32 noundef 207, ptr noundef nonnull %spec.select, i32 noundef %call4, i32 noundef %call2, ptr noundef nonnull %cond18, i32 noundef %shl, ptr noundef nonnull %switch.load, i32 noundef %and25, ptr noundef nonnull %cond30, i32 noundef %and32) #17
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %13 = ptrtoint ptr %p_dpc_ptt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_dpc_ptt, align 4
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %14, i32 noundef 327764, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !263, !264, !265, !266, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 252, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 265, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qed_pglueb_rbc_attn_handler._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @qed_pglueb_rbc_attn_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qed_pglueb_rbc_attn_handler._entry.5, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 267, i32 4}
!11 = !{ptr @qed_pglueb_rbc_attn_handler._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 281, i32 3}
!14 = !{ptr @qed_pglueb_rbc_attn_handler._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qed_pglueb_rbc_attn_handler._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 301, i32 30}
!18 = !{ptr @qed_pglueb_rbc_attn_handler._entry.11, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 304, i32 4}
!20 = !{ptr @qed_pglueb_rbc_attn_handler._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @qed_pglueb_rbc_attn_handler._entry.13, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 306, i32 4}
!23 = !{ptr @qed_pglueb_rbc_attn_handler._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 318, i32 3}
!26 = !{ptr @qed_pglueb_rbc_attn_handler._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qed_pglueb_rbc_attn_handler._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 333, i32 3}
!30 = !{ptr @qed_pglueb_rbc_attn_handler._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qed_pglueb_rbc_attn_handler._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 422, i32 2}
!34 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qed_db_rec_handler._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @qed_db_rec_handler._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1249, i32 3}
!39 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @qed_int_sp_dpc._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @qed_int_sp_dpc._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1256, i32 3}
!44 = !{ptr @qed_int_sp_dpc._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qed_int_sp_dpc._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1262, i32 3}
!48 = !{ptr @qed_int_sp_dpc._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qed_int_sp_dpc._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1267, i32 2}
!52 = !{ptr @qed_int_sp_dpc._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @qed_int_sp_dpc._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1277, i32 3}
!56 = !{ptr @qed_int_sp_dpc._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qed_int_sp_dpc._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1283, i32 3}
!60 = !{ptr @qed_int_sp_dpc._entry.37, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qed_int_sp_dpc._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.41, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1289, i32 3}
!64 = !{ptr @qed_int_sp_dpc._entry.40, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qed_int_sp_dpc._entry_ptr.42, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1295, i32 3}
!68 = !{ptr @qed_int_sp_dpc._entry.43, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @qed_int_sp_dpc._entry_ptr.45, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1308, i32 3}
!72 = !{ptr @qed_int_sp_dpc._entry.46, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qed_int_sp_dpc._entry_ptr.48, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.49, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1652, i32 3}
!76 = !{ptr @.str.50, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qed_get_igu_sb_id._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @qed_get_igu_sb_id._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.52, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1655, i32 3}
!81 = !{ptr @qed_get_igu_sb_id._entry.51, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @qed_get_igu_sb_id._entry_ptr.53, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1733, i32 3}
!85 = !{ptr @.str.55, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @qed_int_sb_release._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @qed_int_sb_release._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.56, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1885, i32 4}
!90 = !{ptr @.str.57, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @qed_int_igu_enable._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @qed_int_igu_enable._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1963, i32 2}
!95 = !{ptr @.str.59, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @qed_int_igu_init_pure_rt_single._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @qed_int_igu_init_pure_rt_single._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1989, i32 3}
!100 = !{ptr @qed_int_igu_init_pure_rt_single._entry.60, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qed_int_igu_init_pure_rt_single._entry_ptr.62, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2051, i32 4}
!104 = !{ptr @.str.64, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qed_int_igu_reset_cam._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @qed_int_igu_reset_cam._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.66, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2062, i32 5}
!109 = !{ptr @qed_int_igu_reset_cam._entry.65, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qed_int_igu_reset_cam._entry_ptr.67, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2073, i32 5}
!113 = !{ptr @qed_int_igu_reset_cam._entry.68, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @qed_int_igu_reset_cam._entry_ptr.70, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2155, i32 4}
!117 = !{ptr @qed_int_igu_reset_cam._entry.71, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qed_int_igu_reset_cam._entry_ptr.73, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2248, i32 4}
!121 = !{ptr @.str.75, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @qed_int_igu_read_cam._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @qed_int_igu_read_cam._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2256, i32 3}
!126 = !{ptr @qed_int_igu_read_cam._entry.76, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @qed_int_igu_read_cam._entry_ptr.78, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.80, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2266, i32 2}
!130 = !{ptr @qed_int_igu_read_cam._entry.79, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @qed_int_igu_read_cam._entry_ptr.81, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.82, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2370, i32 3}
!134 = !{ptr @.str.83, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @qed_int_set_timer_res._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @qed_int_set_timer_res._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2378, i32 3}
!139 = !{ptr @qed_int_set_timer_res._entry.84, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @qed_int_set_timer_res._entry_ptr.86, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 2396, i32 3}
!143 = !{ptr @qed_int_set_timer_res._entry.87, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @qed_int_set_timer_res._entry_ptr.89, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.90, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 402, i32 3}
!147 = !{ptr @.str.91, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @qed_db_rec_flush_queue._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @qed_db_rec_flush_queue._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.92, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1196, i32 3}
!152 = !{ptr @.str.93, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @qed_int_attentions._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @qed_int_attentions._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.95, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1201, i32 3}
!157 = !{ptr @qed_int_attentions._entry.94, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @qed_int_attentions._entry_ptr.96, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.98, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1204, i32 3}
!161 = !{ptr @qed_int_attentions._entry.97, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @qed_int_attentions._entry_ptr.99, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.100, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 854, i32 2}
!165 = !{ptr @.str.101, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @qed_int_assertion._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @qed_int_assertion._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.103, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 859, i32 2}
!170 = !{ptr @qed_int_assertion._entry.102, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @qed_int_assertion._entry_ptr.104, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.106, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 879, i32 2}
!174 = !{ptr @qed_int_assertion._entry.105, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @qed_int_assertion._entry_ptr.107, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.108, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1030, i32 3}
!178 = !{ptr @.str.109, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @qed_int_deassertion._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @qed_int_deassertion._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.110, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 984, i32 2}
!183 = !{ptr @.str.111, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @qed_int_deassertion_parity._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @qed_int_deassertion_parity._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.113, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1004, i32 2}
!188 = !{ptr @qed_int_deassertion_parity._entry.112, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @qed_int_deassertion_parity._entry_ptr.114, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.115, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 897, i32 3}
!192 = !{ptr @.str.116, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @qed_int_attn_print._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @qed_int_attn_print._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @aeu_descs_special, !196, !"aeu_descs_special", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 573, i32 1}
!197 = !{ptr @.str.117, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 927, i32 2}
!199 = !{ptr @.str.118, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @qed_int_deassertion_aeu_bit._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @qed_int_deassertion_aeu_bit._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.120, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 932, i32 3}
!204 = !{ptr @qed_int_deassertion_aeu_bit._entry.119, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @qed_int_deassertion_aeu_bit._entry_ptr.121, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.122, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 948, i32 7}
!208 = !{ptr @.str.124, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 956, i32 2}
!210 = !{ptr @qed_int_deassertion_aeu_bit._entry.123, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @qed_int_deassertion_aeu_bit._entry_ptr.125, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.126, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 472, i32 3}
!214 = !{ptr @.str.127, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @qed_dorq_attn_int_sts._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @qed_dorq_attn_int_sts._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.129, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 486, i32 2}
!219 = !{ptr @qed_dorq_attn_int_sts._entry.128, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @qed_dorq_attn_int_sts._entry_ptr.130, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.132, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 502, i32 3}
!223 = !{ptr @qed_dorq_attn_int_sts._entry.131, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @qed_dorq_attn_int_sts._entry_ptr.133, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.135, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 534, i32 2}
!227 = !{ptr @qed_dorq_attn_int_sts._entry.134, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @qed_dorq_attn_int_sts._entry_ptr.136, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.137, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1950, i32 3}
!231 = !{ptr @.str.138, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @qed_int_igu_cleanup_sb._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @qed_int_igu_cleanup_sb._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.139, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 1394, i32 3}
!236 = !{ptr @.str.140, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @qed_int_sb_attn_init._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @qed_int_sb_attn_init._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @aeu_descs, !240, !"aeu_descs", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 581, i32 30}
!241 = !{ptr @.str.142, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 352, i32 6}
!243 = !{ptr @.str.143, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 362, i32 2}
!245 = !{ptr @.str.144, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @qed_general_attention_35._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @qed_general_attention_35._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.145, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 95, i32 2}
!250 = !{ptr @.str.146, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @qed_mcp_attn_cb._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @qed_mcp_attn_cb._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.147, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 131, i32 3}
!255 = !{ptr @.str.148, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @qed_pswhst_attn_cb._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @qed_pswhst_attn_cb._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.149, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 198, i32 2}
!260 = !{ptr @.str.150, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @qed_grc_attn_cb._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @qed_grc_attn_cb._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.151, !259, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.152, !259, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.153, !259, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.154, !259, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.155, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 165, i32 17}
!269 = !{ptr @.str.156, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 166, i32 17}
!271 = !{ptr @.str.157, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 167, i32 17}
!273 = !{ptr @.str.158, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 168, i32 17}
!275 = !{ptr @.str.159, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 169, i32 17}
!277 = !{ptr @.str.160, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 170, i32 17}
!279 = !{ptr @.str.161, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 171, i32 17}
!281 = !{ptr @.str.162, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 172, i32 17}
!283 = !{ptr @.str.163, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 173, i32 17}
!285 = !{ptr @.str.164, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 174, i32 18}
!287 = !{ptr @.str.165, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/qlogic/qed/qed_int.c", i32 176, i32 10}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"min_enum_size", i32 4}
!291 = !{i32 8, !"branch-target-enforcement", i32 0}
!292 = !{i32 8, !"sign-return-address", i32 0}
!293 = !{i32 8, !"sign-return-address-all", i32 0}
!294 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 2}
!297 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!298 = !{!"branch_weights", i32 2000, i32 1}
!299 = !{!"branch_weights", i32 1, i32 2000}
!300 = !{i64 2156733526}
!301 = !{i64 770004}
!302 = !{i64 2156733835}
!303 = !{i64 2157717890}
!304 = !{i64 2157691005}
!305 = !{!"auto-init"}
!306 = !{i8 0, i8 2}
!307 = !{i64 2157717431}
!308 = !{i64 2157727220}
!309 = !{i64 2157727520}
!310 = !{i64 2157774196}
!311 = !{i64 770422}
!312 = !{i64 2157812843}
!313 = !{i64 2157813941}
