; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qed_qm_common_rt_init_params = type { i8, i8, i8, i8, i8, i8, ptr, [256 x %struct.init_qm_global_rl_params] }
%struct.init_qm_global_rl_params = type { i8, i8, i16, i32 }
%struct.init_qm_port_params = type { i16, i16, i16, i8, i8 }
%struct.qed_qm_pf_rt_init_params = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, ptr, ptr, ptr }
%struct.init_qm_pq_params = type { i16, i16, i8, i8, i8, i8 }
%struct.init_qm_vport_params = type { i16, i16, [9 x i16], [9 x i16] }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.102, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.102 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.init_qm_rl_params = type { i32, i8, [3 x i8] }
%struct.regpair = type { i32, i32 }
%struct.qed_dmae_params = type { i32, i8, i8, i8, i8, i8, i8, i16 }
%struct.phys_mem_desc = type { i32, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.101 = type { ptr }

@qed_init_pf_wfq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Invalid PF WFQ weight configuration\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_init_pf_wfq\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c\00", [44 x i8] zeroinitializer }, align 32
@qed_init_pf_wfq._entry_ptr = internal global ptr @qed_init_pf_wfq._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_init_pf_rl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Invalid PF rate limit configuration\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_init_pf_rl\00", [17 x i8] zeroinitializer }, align 32
@qed_init_pf_rl._entry_ptr = internal global ptr @qed_init_pf_rl._entry, section ".printk_index", align 4
@qed_init_vport_tc_wfq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Invalid VPORT WFQ configuration.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_init_vport_tc_wfq\00", [42 x i8] zeroinitializer }, align 32
@qed_init_vport_tc_wfq._entry_ptr = internal global ptr @qed_init_vport_tc_wfq._entry, section ".printk_index", align 4
@qed_init_global_rl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Invalid VPORT rate limit configuration.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_init_global_rl\00", [45 x i8] zeroinitializer }, align 32
@qed_init_global_rl._entry_ptr = internal global ptr @qed_init_global_rl._entry, section ".printk_index", align 4
@qed_gft_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]gft_config: must accept at least on of - ipv4 or ipv6'\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_gft_config\00", [17 x i8] zeroinitializer }, align 32
@qed_gft_config._entry_ptr = internal global ptr @qed_gft_config._entry, section ".printk_index", align 4
@qed_gft_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]gft_config: must accept at least on of - udp or tcp\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_gft_config._entry_ptr.14 = internal global ptr @qed_gft_config._entry.12, section ".printk_index", align 4
@qed_gft_config._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]gft_config: unsupported gft_profile_type\0A\00", [41 x i8] zeroinitializer }, align 32
@qed_gft_config._entry_ptr.17 = internal global ptr @qed_gft_config._entry.15, section ".printk_index", align 4
@con_region_offsets = internal constant { [3 x [8 x i16]], [48 x i8] } { [3 x [8 x i16]] [[8 x i16] [i16 400, i16 336, i16 352, i16 368, i16 304, i16 384, i16 416, i16 352], [8 x i16] [i16 528, i16 496, i16 416, i16 512, i16 448, i16 512, i16 544, i16 480], [8 x i16] [i16 608, i16 544, i16 496, i16 576, i16 576, i16 592, i16 624, i16 560]], [48 x i8] zeroinitializer }, align 32
@task_region_offsets = internal constant { [1 x [8 x i16]], [16 x i8] } { [1 x [8 x i16]] [[8 x i16] [i16 240, i16 240, i16 112, i16 0, i16 0, i16 0, i16 0, i16 96]], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid protocol type\00", [42 x i8] zeroinitializer }, align 32
@s_protocol_types = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid Ramrod command ID\00", [38 x i8] zeroinitializer }, align 32
@qed_pf_wfq_rt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_pf_wfq_rt_init\00", [45 x i8] zeroinitializer }, align 32
@qed_pf_wfq_rt_init._entry_ptr = internal global ptr @qed_pf_wfq_rt_init._entry, section ".printk_index", align 4
@qed_pf_rl_rt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.21, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_pf_rl_rt_init\00", [46 x i8] zeroinitializer }, align 32
@qed_pf_rl_rt_init._entry_ptr = internal global ptr @qed_pf_rl_rt_init._entry, section ".printk_index", align 4
@qed_vp_wfq_rt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Invalid VPORT WFQ weight configuration\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_vp_wfq_rt_init\00", [45 x i8] zeroinitializer }, align 32
@qed_vp_wfq_rt_init._entry_ptr = internal global ptr @qed_vp_wfq_rt_init._entry, section ".printk_index", align 4
@qed_vport_rl_rt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Invalid rate limiter configuration\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_vport_rl_rt_init\00", [43 x i8] zeroinitializer }, align 32
@qed_vport_rl_rt_init._entry_ptr = internal global ptr @qed_vport_rl_rt_init._entry, section ".printk_index", align 4
@qed_vport_rl_rt_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]Invalid RL rate - limit configuration\0A\00", [44 x i8] zeroinitializer }, align 32
@qed_vport_rl_rt_init._entry_ptr.28 = internal global ptr @qed_vport_rl_rt_init._entry.26, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qed_poll_on_qm_cmd_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]Timeout when waiting for QM SDM command ready signal\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_poll_on_qm_cmd_ready\00", [39 x i8] zeroinitializer }, align 32
@qed_poll_on_qm_cmd_ready._entry_ptr = internal global ptr @qed_poll_on_qm_cmd_ready._entry, section ".printk_index", align 4
@qed_dmae_to_grc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]Failed writing to chip using DMAE, using GRC instead\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_dmae_to_grc\00", [16 x i8] zeroinitializer }, align 32
@qed_dmae_to_grc._entry_ptr = internal global ptr @qed_dmae_to_grc._entry, section ".printk_index", align 4
@qed_calc_cdu_validation_byte.crc8_table_valid = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cdu_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PROTOCOLID_ISCSI\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PROTOCOLID_FCOE\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PROTOCOLID_ROCE\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PROTOCOLID_CORE\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROTOCOLID_ETH\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PROTOCOLID_IWARP\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROTOCOLID_TOE\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PROTOCOLID_PREROCE\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PROTOCOLID_COMMON\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROTOCOLID_TCP\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PROTOCOLID_RDMA\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PROTOCOLID_SCSI\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ISCSI_RAMROD_CMD_ID_UNUSED\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ISCSI_RAMROD_CMD_ID_INIT_FUNC\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ISCSI_RAMROD_CMD_ID_DESTROY_FUNC\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ISCSI_RAMROD_CMD_ID_OFFLOAD_CONN\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ISCSI_RAMROD_CMD_ID_UPDATE_CONN\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ISCSI_RAMROD_CMD_ID_TERMINATION_CONN\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ISCSI_RAMROD_CMD_ID_CLEAR_SQ\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ISCSI_RAMROD_CMD_ID_MAC_UPDATE\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ISCSI_RAMROD_CMD_ID_CONN_STATS\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FCOE_RAMROD_CMD_ID_INIT_FUNC\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FCOE_RAMROD_CMD_ID_DESTROY_FUNC\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FCOE_RAMROD_CMD_ID_STAT_FUNC\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FCOE_RAMROD_CMD_ID_OFFLOAD_CONN\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FCOE_RAMROD_CMD_ID_TERMINATE_CONN\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDMA_RAMROD_UNUSED\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RDMA_RAMROD_FUNC_INIT\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDMA_RAMROD_FUNC_CLOSE\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RDMA_RAMROD_REGISTER_MR\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RDMA_RAMROD_DEREGISTER_MR\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RDMA_RAMROD_CREATE_CQ\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RDMA_RAMROD_RESIZE_CQ\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDMA_RAMROD_DESTROY_CQ\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDMA_RAMROD_CREATE_SRQ\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDMA_RAMROD_MODIFY_SRQ\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RDMA_RAMROD_DESTROY_SRQ\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RDMA_RAMROD_START_NS_TRACKING\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RDMA_RAMROD_STOP_NS_TRACKING\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ROCE_RAMROD_CREATE_QP\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ROCE_RAMROD_MODIFY_QP\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ROCE_RAMROD_QUERY_QP\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ROCE_RAMROD_DESTROY_QP\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ROCE_RAMROD_CREATE_UD_QP\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ROCE_RAMROD_DESTROY_UD_QP\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ROCE_RAMROD_FUNC_UPDATE\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ROCE_RAMROD_SUSPEND_QP\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ROCE_RAMROD_QUERY_SUSPENDED_QP\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ROCE_RAMROD_CREATE_SUSPENDED_QP\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ROCE_RAMROD_RESUME_QP\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ROCE_RAMROD_SUSPEND_UD_QP\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ROCE_RAMROD_RESUME_UD_QP\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ROCE_RAMROD_CREATE_SUSPENDED_UD_QP\00", [61 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ROCE_RAMROD_FLUSH_DPT_QP\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CORE_RAMROD_UNUSED\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CORE_RAMROD_RX_QUEUE_START\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CORE_RAMROD_TX_QUEUE_START\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CORE_RAMROD_RX_QUEUE_STOP\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CORE_RAMROD_TX_QUEUE_STOP\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CORE_RAMROD_RX_QUEUE_FLUSH\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CORE_RAMROD_TX_QUEUE_UPDATE\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CORE_RAMROD_QUEUE_STATS_QUERY\00", [34 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ETH_RAMROD_UNUSED\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ETH_RAMROD_VPORT_START\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ETH_RAMROD_VPORT_UPDATE\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ETH_RAMROD_VPORT_STOP\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ETH_RAMROD_RX_QUEUE_START\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ETH_RAMROD_RX_QUEUE_STOP\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ETH_RAMROD_TX_QUEUE_START\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ETH_RAMROD_TX_QUEUE_STOP\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ETH_RAMROD_FILTERS_UPDATE\00", [38 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETH_RAMROD_RX_QUEUE_UPDATE\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ETH_RAMROD_RX_CREATE_OPENFLOW_ACTION\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ETH_RAMROD_RX_ADD_OPENFLOW_FILTER\00", [62 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ETH_RAMROD_RX_DELETE_OPENFLOW_FILTER\00", [59 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ETH_RAMROD_RX_ADD_UDP_FILTER\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ETH_RAMROD_RX_DELETE_UDP_FILTER\00", [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ETH_RAMROD_RX_CREATE_GFT_ACTION\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ETH_RAMROD_RX_UPDATE_GFT_FILTER\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETH_RAMROD_TX_QUEUE_UPDATE\00", [37 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETH_RAMROD_RGFS_FILTER_ADD\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETH_RAMROD_RGFS_FILTER_DEL\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETH_RAMROD_TGFS_FILTER_ADD\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ETH_RAMROD_TGFS_FILTER_DEL\00", [37 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ETH_RAMROD_GFS_COUNTERS_REPORT_REQUEST\00", [57 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IWARP_RAMROD_CMD_ID_TCP_OFFLOAD\00", [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IWARP_RAMROD_CMD_ID_MPA_OFFLOAD\00", [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IWARP_RAMROD_CMD_ID_MPA_OFFLOAD_SEND_RTR\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IWARP_RAMROD_CMD_ID_CREATE_QP\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IWARP_RAMROD_CMD_ID_QUERY_QP\00", [35 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IWARP_RAMROD_CMD_ID_MODIFY_QP\00", [34 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IWARP_RAMROD_CMD_ID_DESTROY_QP\00", [33 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IWARP_RAMROD_CMD_ID_ABORT_TCP_OFFLOAD\00", [58 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"COMMON_RAMROD_UNUSED\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"COMMON_RAMROD_PF_START\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"COMMON_RAMROD_PF_STOP\00", [42 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"COMMON_RAMROD_VF_START\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"COMMON_RAMROD_VF_STOP\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"COMMON_RAMROD_PF_UPDATE\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"COMMON_RAMROD_RL_UPDATE\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"COMMON_RAMROD_EMPTY\00", [44 x i8] zeroinitializer }, align 32
@s_ramrod_cmd_ids = internal constant { <{ <{ [9 x ptr], [19 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, [28 x ptr], <{ [8 x ptr], [20 x ptr] }>, [28 x ptr], [28 x ptr], [28 x ptr], [28 x ptr], <{ [8 x ptr], [20 x ptr] }> }>, [240 x i8] } { <{ <{ [9 x ptr], [19 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, [28 x ptr], <{ [8 x ptr], [20 x ptr] }>, [28 x ptr], [28 x ptr], [28 x ptr], [28 x ptr], <{ [8 x ptr], [20 x ptr] }> }> <{ <{ [9 x ptr], [19 x ptr] }> <{ [9 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [19 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, [23 x ptr] zeroinitializer }>, [28 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], <{ [8 x ptr], [20 x ptr] }> <{ [8 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], [20 x ptr] zeroinitializer }>, [28 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr null, ptr null, ptr null, ptr null, ptr null], [28 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [28 x ptr] zeroinitializer, [28 x ptr] zeroinitializer, <{ [8 x ptr], [20 x ptr] }> <{ [8 x ptr] [ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], [20 x ptr] zeroinitializer }> }>, [240 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.qed_gft_config = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1073216960, i32 1074266688, i32 524864, i32 524864, i32 608], [44 x i8] zeroinitializer }, align 32
@switch.table.qed_gft_config.135 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 234881024, i32 33554432, i32 67108864, i32 134217728, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.qed_gft_config.136 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.qed_fw_overlay_init_ram = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 20, i32 21, i32 22, i32 17, i32 18, i32 19], [40 x i8] zeroinitializer }, align 32
@switch.table.qed_fw_overlay_init_ram.137 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 24510464, i32 25559040, i32 26607616, i32 21364736, i32 22413312, i32 23461888], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.138 = internal global [8 x i64] [i64 6, i64 7, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1044, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1059, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1098, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1124, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1463, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1466, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1469, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"con_region_offsets\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 21, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"task_region_offsets\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 27, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1729, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"s_protocol_types\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 213, i32 27 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1742, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 795, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 831, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 871, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 581, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 598, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 904, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1232, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [46 x i8] c"qed_calc_cdu_validation_byte.crc8_table_valid\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"cdu_crc8_table\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1579, i32 1 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 214, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 214, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 214, i32 41 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 215, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 215, i32 21 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 215, i32 39 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 216, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 216, i32 20 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 216, i32 42 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 217, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 217, i32 20 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 217, i32 39 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 222, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 222, i32 32 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 223, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 224, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 225, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 226, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 227, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 227, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 228, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 229, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 229, i32 36 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 230, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 231, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 232, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 233, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 233, i32 26 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 234, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 234, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 235, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 235, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 236, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 236, i32 28 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 237, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 237, i32 29 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 238, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 238, i32 30 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 239, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 239, i32 35 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 240, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 240, i32 28 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 241, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 241, i32 29 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 242, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 242, i32 32 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 243, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 243, i32 29 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 244, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 244, i32 38 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 245, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 245, i32 32 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 246, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 246, i32 41 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 247, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 247, i32 26 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 248, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 248, i32 33 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 249, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 250, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 251, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 251, i32 34 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 252, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 252, i32 25 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 253, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 253, i32 30 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 254, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 254, i32 32 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 255, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 255, i32 32 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 256, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 256, i32 32 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 257, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 258, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 259, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 260, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 261, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 262, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 263, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 263, i32 38 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 264, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 264, i32 33 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 265, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 265, i32 33 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 266, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 274, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 275, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 276, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 277, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 277, i32 36 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 278, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 279, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 280, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 283, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 283, i32 28 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 284, i32 7 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 284, i32 32 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 285, i32 7 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 285, i32 32 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 286, i32 7 }
@___asan_gen_.575 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 286, i32 34 }
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"s_ramrod_cmd_ids\00", align 1
@___asan_gen_.579 = private constant [55 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 220, i32 20 }
@___asan_gen_.581 = private unnamed_addr constant [28 x i8] c"switch.table.qed_gft_config\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [32 x i8] c"switch.table.qed_gft_config.135\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [32 x i8] c"switch.table.qed_gft_config.136\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [37 x i8] c"switch.table.qed_fw_overlay_init_ram\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [41 x i8] c"switch.table.qed_fw_overlay_init_ram.137\00", align 1
@llvm.compiler.used = appending global [167 x ptr] [ptr @qed_dmae_to_grc._entry, ptr @qed_dmae_to_grc._entry_ptr, ptr @qed_gft_config._entry, ptr @qed_gft_config._entry.12, ptr @qed_gft_config._entry.15, ptr @qed_gft_config._entry_ptr, ptr @qed_gft_config._entry_ptr.14, ptr @qed_gft_config._entry_ptr.17, ptr @qed_init_global_rl._entry, ptr @qed_init_global_rl._entry_ptr, ptr @qed_init_pf_rl._entry, ptr @qed_init_pf_rl._entry_ptr, ptr @qed_init_pf_wfq._entry, ptr @qed_init_pf_wfq._entry_ptr, ptr @qed_init_vport_tc_wfq._entry, ptr @qed_init_vport_tc_wfq._entry_ptr, ptr @qed_pf_rl_rt_init._entry, ptr @qed_pf_rl_rt_init._entry_ptr, ptr @qed_pf_wfq_rt_init._entry, ptr @qed_pf_wfq_rt_init._entry_ptr, ptr @qed_poll_on_qm_cmd_ready._entry, ptr @qed_poll_on_qm_cmd_ready._entry_ptr, ptr @qed_vp_wfq_rt_init._entry, ptr @qed_vp_wfq_rt_init._entry_ptr, ptr @qed_vport_rl_rt_init._entry, ptr @qed_vport_rl_rt_init._entry.26, ptr @qed_vport_rl_rt_init._entry_ptr, ptr @qed_vport_rl_rt_init._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @con_region_offsets, ptr @task_region_offsets, ptr @.str.18, ptr @s_protocol_types, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, ptr @cdu_crc8_table, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @s_ramrod_cmd_ids, ptr @switch.table.qed_gft_config, ptr @switch.table.qed_gft_config.135, ptr @switch.table.qed_gft_config.136, ptr @switch.table.qed_fw_overlay_init_ram, ptr @switch.table.qed_fw_overlay_init_ram.137], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pf_wfq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pf_rl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_vport_tc_wfq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_global_rl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_gft_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_gft_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_gft_config._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_region_offsets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_region_offsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_protocol_types to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pf_wfq_rt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_pf_rl_rt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vp_wfq_rt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vport_rl_rt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_vport_rl_rt_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_poll_on_qm_cmd_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_to_grc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_calc_cdu_validation_byte.crc8_table_valid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdu_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_ramrod_cmd_ids to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_gft_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_gft_config.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_gft_config.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_fw_overlay_init_ram to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_fw_overlay_init_ram.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_qm_pf_mem_size(i32 noundef %num_pf_cids, i32 noundef %num_vf_cids, i32 noundef %num_tids, i16 noundef zeroext %num_pf_pqs, i16 noundef zeroext %num_vf_pqs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pf_cids)
  %tobool.not = icmp eq i32 %num_pf_cids, 0
  %add = shl i32 %num_pf_cids, 2
  %sub = add i32 %add, 4099
  %div37 = lshr i32 %sub, 12
  %cond = select i1 %tobool.not, i32 0, i32 %div37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vf_cids)
  %tobool3.not = icmp eq i32 %num_vf_cids, 0
  %add5 = shl i32 %num_vf_cids, 2
  %sub8 = add i32 %add5, 4099
  %div936 = lshr i32 %sub8, 12
  %cond12 = select i1 %tobool3.not, i32 0, i32 %div936
  %add16 = add i32 %num_tids, %num_pf_cids
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add16)
  %tobool17.not = icmp eq i32 %add16, 0
  %add20 = shl i32 %add16, 2
  %sub23 = add i32 %add20, 4099
  %0 = lshr i32 %sub23, 10
  %phi.bo = and i32 %0, 4194300
  %cond27 = select i1 %tobool17.not, i32 0, i32 %phi.bo
  %conv = zext i16 %num_pf_pqs to i32
  %mul2 = mul i32 %cond, %conv
  %conv13 = zext i16 %num_vf_pqs to i32
  %mul14 = mul i32 %cond12, %conv13
  %add15 = add i32 %mul14, %mul2
  %add29 = add i32 %add15, %cond27
  ret i32 %add29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_qm_common_rt_init(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pf_wfq_en = getelementptr inbounds %struct.qed_qm_common_rt_init_params, ptr %p_params, i32 0, i32 3
  %0 = ptrtoint ptr %pf_wfq_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pf_wfq_en, align 1, !range !294
  %2 = shl nuw nsw i8 %1, 2
  %vport_wfq_en = getelementptr inbounds %struct.qed_qm_common_rt_init_params, ptr %p_params, i32 0, i32 5
  %3 = ptrtoint ptr %vport_wfq_en to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vport_wfq_en, align 1, !range !294
  %5 = shl nuw nsw i8 %4, 3
  %6 = or i8 %5, %2
  %pf_rl_en = getelementptr inbounds %struct.qed_qm_common_rt_init_params, ptr %p_params, i32 0, i32 2
  %7 = ptrtoint ptr %pf_rl_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pf_rl_en, align 2, !range !294
  %9 = shl nuw nsw i8 %8, 4
  %or21103 = or i8 %6, %9
  %global_rl_en = getelementptr inbounds %struct.qed_qm_common_rt_init_params, ptr %p_params, i32 0, i32 4
  %10 = ptrtoint ptr %global_rl_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %global_rl_en, align 4, !range !294
  %12 = shl nuw nsw i8 %11, 5
  %or30104 = or i8 %or21103, %12
  %conv51 = zext i8 %or30104 to i32
  %or52 = or i32 %conv51, 259
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 29402, i32 noundef %or52) #8
  %13 = ptrtoint ptr %pf_rl_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pf_rl_en, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool57.not = icmp eq i8 %14, 0
  %15 = zext i8 %14 to i32
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 30336, i32 noundef %15) #8
  br i1 %tobool57.not, label %entry.qed_enable_pf_rl.exit_crit_edge, label %if.then.i

entry.qed_enable_pf_rl.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_enable_pf_rl.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 30337, i32 noundef 1048575) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 30286, i32 noundef 125) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 30287, i32 noundef 125) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 29400, i32 noundef 62500000) #8
  br label %qed_enable_pf_rl.exit

qed_enable_pf_rl.exit:                            ; preds = %if.then.i, %entry.qed_enable_pf_rl.exit_crit_edge
  %16 = ptrtoint ptr %pf_wfq_en to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pf_wfq_en, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool59.not = icmp eq i8 %17, 0
  %18 = zext i8 %17 to i32
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 30530, i32 noundef %18) #8
  br i1 %tobool59.not, label %qed_enable_pf_rl.exit.qed_enable_pf_wfq.exit_crit_edge, label %if.then.i107

qed_enable_pf_rl.exit.qed_enable_pf_wfq.exit_crit_edge: ; preds = %qed_enable_pf_rl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_enable_pf_wfq.exit

if.then.i107:                                     ; preds = %qed_enable_pf_rl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 29398, i32 noundef 62500000) #8
  br label %qed_enable_pf_wfq.exit

qed_enable_pf_wfq.exit:                           ; preds = %if.then.i107, %qed_enable_pf_rl.exit.qed_enable_pf_wfq.exit_crit_edge
  %19 = ptrtoint ptr %global_rl_en to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %global_rl_en, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool61.not = icmp eq i8 %20, 0
  %21 = zext i8 %20 to i32
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 30285, i32 noundef %21) #8
  br i1 %tobool61.not, label %qed_enable_pf_wfq.exit.qed_enable_global_rl.exit_crit_edge, label %if.then.i109

qed_enable_pf_wfq.exit.qed_enable_global_rl.exit_crit_edge: ; preds = %qed_enable_pf_wfq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_enable_global_rl.exit

if.then.i109:                                     ; preds = %qed_enable_pf_wfq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 29505, i32 noundef 125) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 29507, i32 noundef 125) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 29401, i32 noundef 10699) #8
  br label %qed_enable_global_rl.exit

qed_enable_global_rl.exit:                        ; preds = %if.then.i109, %qed_enable_pf_wfq.exit.qed_enable_global_rl.exit_crit_edge
  %22 = ptrtoint ptr %vport_wfq_en to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vport_wfq_en, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool63.not = icmp eq i8 %23, 0
  %24 = zext i8 %23 to i32
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 30531, i32 noundef %24) #8
  br i1 %tobool63.not, label %qed_enable_global_rl.exit.qed_enable_vport_wfq.exit_crit_edge, label %if.then.i111

qed_enable_global_rl.exit.qed_enable_vport_wfq.exit_crit_edge: ; preds = %qed_enable_global_rl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_enable_vport_wfq.exit

if.then.i111:                                     ; preds = %qed_enable_global_rl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 29399, i32 noundef 10700) #8
  br label %qed_enable_vport_wfq.exit

qed_enable_vport_wfq.exit:                        ; preds = %if.then.i111, %qed_enable_global_rl.exit.qed_enable_vport_wfq.exit_crit_edge
  %25 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %p_params, align 4
  %max_phys_tcs_per_port = getelementptr inbounds %struct.qed_qm_common_rt_init_params, ptr %p_params, i32 0, i32 1
  %27 = ptrtoint ptr %max_phys_tcs_per_port to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_phys_tcs_per_port, align 1
  %port_params = getelementptr inbounds %struct.qed_qm_common_rt_init_params, ptr %p_params, i32 0, i32 6
  %29 = ptrtoint ptr %port_params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_params, align 4
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34923, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34926, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34929, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34932, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34935, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34938, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34941, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34944, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34947, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34950, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34953, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34956, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34959, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34962, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34965, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34968, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34971, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34974, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34977, i32 noundef 0) #8
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 34980, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp7107.not.i = icmp eq i8 %26, 0
  br i1 %cmp7107.not.i, label %qed_enable_vport_wfq.exit.qed_cmdq_lines_rt_init.exit_crit_edge, label %for.body9.lr.ph.i

qed_enable_vport_wfq.exit.qed_cmdq_lines_rt_init.exit_crit_edge: ; preds = %qed_enable_vport_wfq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_cmdq_lines_rt_init.exit

for.body9.lr.ph.i:                                ; preds = %qed_enable_vport_wfq.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp17101.not.i = icmp eq i8 %28, 0
  %wide.trip.count116.i = zext i8 %26 to i32
  %wide.trip.count.i = zext i8 %28 to i32
  br label %for.body9.i

for.body9.i:                                      ; preds = %cleanup.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %indvars.iv114.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %indvars.iv.next115.i, %cleanup.i.for.body9.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.init_qm_port_params, ptr %30, i32 %indvars.iv114.i
  %active.i = getelementptr %struct.init_qm_port_params, ptr %30, i32 %indvars.iv114.i, i32 3
  %31 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %active.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %for.body9.i.cleanup.i_crit_edge, label %if.end.i

for.body9.i.cleanup.i_crit_edge:                  ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body9.i
  %num_pbf_cmd_lines.i = getelementptr %struct.init_qm_port_params, ptr %30, i32 %indvars.iv114.i, i32 1
  %33 = ptrtoint ptr %num_pbf_cmd_lines.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pbf_cmd_lines.i, align 2
  %sub.i = add i16 %34, -150
  br i1 %cmp17101.not.i, label %for.end31.for.end54_crit_edge.i, label %for.body19.lr.ph.i

for.body19.lr.ph.i:                               ; preds = %if.end.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 2
  %conv22.i = zext i16 %36 to i32
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %indvars.iv.next.i, %for.body19.i.for.body19.i_crit_edge ]
  %num_tcs_in_port.0103.i = phi i8 [ 0, %for.body19.lr.ph.i ], [ %spec.select.i, %for.body19.i.for.body19.i_crit_edge ]
  %37 = shl nuw i32 1, %indvars.iv.i
  %38 = and i32 %37, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp24.not.i = icmp ne i32 %38, 0
  %inc27.i = zext i1 %cmp24.not.i to i8
  %spec.select.i = add i8 %num_tcs_in_port.0103.i, %inc27.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body40.lr.ph.i, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19.i

for.end31.for.end54_crit_edge.i:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i = trunc i32 %indvars.iv114.i to i8
  %.pre118.i = add i8 %.pre.i, 16
  br label %for.end54.i

for.body40.lr.ph.i:                               ; preds = %for.body19.i
  %conv33.i = zext i8 %spec.select.i to i16
  %div.i = udiv i16 %sub.i, %conv33.i
  %39 = trunc i32 %indvars.iv114.i to i8
  %add.i.i = add i8 %39, 16
  %mul.i.i = mul i8 %28, %39
  %conv.i.i = zext i16 %div.i to i32
  %sub.i.i = shl nuw nsw i32 %conv.i.i, 1
  %mul.i89.i = add nsw i32 %sub.i.i, -8
  %or.i.i = or i32 %mul.i89.i, 32768
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.inc52.i.for.body40.i_crit_edge, %for.body40.lr.ph.i
  %indvars.iv110.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %indvars.iv.next111.i, %for.inc52.i.for.body40.i_crit_edge ]
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i, align 2
  %conv44.i = zext i16 %41 to i32
  %42 = shl nuw i32 1, %indvars.iv110.i
  %43 = and i32 %42, %conv44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp48.not.i = icmp eq i32 %43, 0
  br i1 %cmp48.not.i, label %for.body40.i.for.inc52.i_crit_edge, label %if.then50.i

for.body40.i.for.inc52.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc52.i

if.then50.i:                                      ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv110.i)
  %cmp.i.i = icmp eq i32 %indvars.iv110.i, 8
  %44 = trunc i32 %indvars.iv110.i to i8
  %add7.i.i = add i8 %mul.i.i, %44
  %retval.0.i.i = select i1 %cmp.i.i, i8 %add.i.i, i8 %add7.i.i
  %conv1.i.i = zext i8 %retval.0.i.i to i32
  %mul2.i.i = mul nuw nsw i32 %conv1.i.i, 3
  %add.i90.i = add nuw nsw i32 %mul2.i.i, 34923
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add.i90.i, i32 noundef %conv.i.i) #8
  %add5.i.i = add nuw nsw i32 %conv1.i.i, 29358
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add5.i.i, i32 noundef %or.i.i) #8
  %add7.i91.i = add nuw nsw i32 %conv1.i.i, 29378
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add7.i91.i, i32 noundef %or.i.i) #8
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %if.then50.i, %for.body40.i.for.inc52.i_crit_edge
  %indvars.iv.next111.i = add nuw nsw i32 %indvars.iv110.i, 1
  %exitcond113.not.i = icmp eq i32 %indvars.iv.next111.i, %wide.trip.count.i
  br i1 %exitcond113.not.i, label %for.inc52.i.for.end54.i_crit_edge, label %for.inc52.i.for.body40.i_crit_edge

for.inc52.i.for.body40.i_crit_edge:               ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.i

for.inc52.i.for.end54.i_crit_edge:                ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54.i

for.end54.i:                                      ; preds = %for.inc52.i.for.end54.i_crit_edge, %for.end31.for.end54_crit_edge.i
  %add.i92.pre-phi.i = phi i8 [ %.pre118.i, %for.end31.for.end54_crit_edge.i ], [ %add.i.i, %for.inc52.i.for.end54.i_crit_edge ]
  %conv1.i95.i = zext i8 %add.i92.pre-phi.i to i32
  %mul2.i96.i = mul nuw nsw i32 %conv1.i95.i, 3
  %add.i97.i = add nuw nsw i32 %mul2.i96.i, 34923
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add.i97.i, i32 noundef 150) #8
  %add5.i98.i = add nuw nsw i32 %conv1.i95.i, 29358
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add5.i98.i, i32 noundef 33060) #8
  %add7.i99.i = add nuw nsw i32 %conv1.i95.i, 29378
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add7.i99.i, i32 noundef 33060) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end54.i, %for.body9.i.cleanup.i_crit_edge
  %indvars.iv.next115.i = add nuw nsw i32 %indvars.iv114.i, 1
  %exitcond117.not.i = icmp eq i32 %indvars.iv.next115.i, %wide.trip.count116.i
  br i1 %exitcond117.not.i, label %cleanup.i.qed_cmdq_lines_rt_init.exit_crit_edge, label %cleanup.i.for.body9.i_crit_edge

cleanup.i.for.body9.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i

cleanup.i.qed_cmdq_lines_rt_init.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_cmdq_lines_rt_init.exit

qed_cmdq_lines_rt_init.exit:                      ; preds = %cleanup.i.qed_cmdq_lines_rt_init.exit_crit_edge, %qed_enable_vport_wfq.exit.qed_cmdq_lines_rt_init.exit_crit_edge
  %45 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %p_params, align 4
  %47 = ptrtoint ptr %max_phys_tcs_per_port to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %max_phys_tcs_per_port, align 1
  %49 = ptrtoint ptr %port_params to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port_params, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp92.not.i = icmp eq i8 %46, 0
  br i1 %cmp92.not.i, label %qed_cmdq_lines_rt_init.exit.cond.end8.i.preheader_crit_edge, label %for.body.preheader.i

qed_cmdq_lines_rt_init.exit.cond.end8.i.preheader_crit_edge: ; preds = %qed_cmdq_lines_rt_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8.i.preheader

for.body.preheader.i:                             ; preds = %qed_cmdq_lines_rt_init.exit
  %wide.trip.count.i112 = zext i8 %46 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc54.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i113 = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i122, %for.inc54.i.for.body.i_crit_edge ]
  %arrayidx.i114 = getelementptr %struct.init_qm_port_params, ptr %50, i32 %indvars.iv.i113
  %active.i115 = getelementptr %struct.init_qm_port_params, ptr %50, i32 %indvars.iv.i113, i32 3
  %51 = ptrtoint ptr %active.i115 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %active.i115, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i116 = icmp eq i8 %52, 0
  br i1 %tobool.not.i116, label %for.body.i.for.inc54.i_crit_edge, label %if.end.i121

for.body.i.for.inc54.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54.i

if.end.i121:                                      ; preds = %for.body.i
  %num_btb_blocks.i = getelementptr %struct.init_qm_port_params, ptr %50, i32 %indvars.iv.i113, i32 2
  %53 = ptrtoint ptr %num_btb_blocks.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_btb_blocks.i, align 2
  %conv5.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i114, align 2
  %57 = and i16 %56, 1
  %58 = trunc i16 %57 to i8
  %59 = trunc i16 %56 to i8
  %60 = lshr i8 %59, 1
  %61 = and i8 %60, 1
  %62 = lshr i8 %59, 2
  %63 = and i8 %62, 1
  %64 = lshr i8 %59, 3
  %65 = and i8 %64, 1
  %66 = lshr i8 %59, 4
  %67 = and i8 %66, 1
  %68 = lshr i8 %59, 5
  %69 = and i8 %68, 1
  %70 = lshr i8 %59, 6
  %71 = and i8 %70, 1
  %72 = lshr i8 %59, 7
  %spec.select.1.i = add nuw nsw i8 %72, %58
  %spec.select.2.i = add nuw nsw i8 %spec.select.1.i, %61
  %spec.select.3.i = add nuw nsw i8 %spec.select.2.i, %63
  %spec.select.4.i = add nuw nsw i8 %spec.select.3.i, %65
  %spec.select.5.i = add nuw nsw i8 %spec.select.4.i, %67
  %spec.select.6.i = add nuw nsw i8 %spec.select.5.i, %69
  %spec.select.7.i = add nuw nsw i8 %spec.select.6.i, %71
  %sub.i117 = add nsw i32 %conv5.i, -38
  %mul.i = mul nsw i32 %sub.i117, 10
  %conv20.i = zext i8 %spec.select.7.i to i32
  %mul21.i = mul nuw nsw i32 %conv20.i, 10
  %add.i = add nuw nsw i32 %mul21.i, 7
  %div.i118 = udiv i32 %mul.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 380, i32 %div.i118)
  %cmp23.i = icmp ult i32 %div.i118, 380
  %div22.i = udiv i32 %div.i118, 10
  %cond.i119 = select i1 %cmp23.i, i32 38, i32 %div22.i
  %sub25.i = sub nsw i32 %sub.i117, %cond.i119
  %div27.i = udiv i32 %sub25.i, %conv20.i
  %73 = trunc i32 %indvars.iv.i113 to i8
  %mul.i.i120 = mul i8 %48, %73
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp40.not.i = icmp eq i16 %57, 0
  br i1 %cmp40.not.i, label %if.end.i121.for.inc47.i_crit_edge, label %if.then42.i

if.end.i121.for.inc47.i_crit_edge:                ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.i

if.then42.i:                                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  %conv43.i = zext i8 %mul.i.i120 to i32
  %mul44.i = mul nuw nsw i32 %conv43.i, 3
  %add45.i = add nuw nsw i32 %mul44.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.i, i32 noundef %div27.i) #8
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %if.then42.i, %if.end.i121.for.inc47.i_crit_edge
  %74 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i114, align 2
  %76 = and i16 %75, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp40.not.1.i = icmp eq i16 %76, 0
  br i1 %cmp40.not.1.i, label %for.inc47.i.for.inc47.1.i_crit_edge, label %if.then42.1.i

for.inc47.i.for.inc47.1.i_crit_edge:              ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.1.i

if.then42.1.i:                                    ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.1.i = add i8 %mul.i.i120, 1
  %conv43.1.i = zext i8 %add7.i.1.i to i32
  %mul44.1.i = mul nuw nsw i32 %conv43.1.i, 3
  %add45.1.i = add nuw nsw i32 %mul44.1.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.1.i, i32 noundef %div27.i) #8
  br label %for.inc47.1.i

for.inc47.1.i:                                    ; preds = %if.then42.1.i, %for.inc47.i.for.inc47.1.i_crit_edge
  %77 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.i114, align 2
  %79 = and i16 %78, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp40.not.2.i = icmp eq i16 %79, 0
  br i1 %cmp40.not.2.i, label %for.inc47.1.i.for.inc47.2.i_crit_edge, label %if.then42.2.i

for.inc47.1.i.for.inc47.2.i_crit_edge:            ; preds = %for.inc47.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.2.i

if.then42.2.i:                                    ; preds = %for.inc47.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.2.i = add i8 %mul.i.i120, 2
  %conv43.2.i = zext i8 %add7.i.2.i to i32
  %mul44.2.i = mul nuw nsw i32 %conv43.2.i, 3
  %add45.2.i = add nuw nsw i32 %mul44.2.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.2.i, i32 noundef %div27.i) #8
  br label %for.inc47.2.i

for.inc47.2.i:                                    ; preds = %if.then42.2.i, %for.inc47.1.i.for.inc47.2.i_crit_edge
  %80 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx.i114, align 2
  %82 = and i16 %81, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp40.not.3.i = icmp eq i16 %82, 0
  br i1 %cmp40.not.3.i, label %for.inc47.2.i.for.inc47.3.i_crit_edge, label %if.then42.3.i

for.inc47.2.i.for.inc47.3.i_crit_edge:            ; preds = %for.inc47.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.3.i

if.then42.3.i:                                    ; preds = %for.inc47.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.3.i = add i8 %mul.i.i120, 3
  %conv43.3.i = zext i8 %add7.i.3.i to i32
  %mul44.3.i = mul nuw nsw i32 %conv43.3.i, 3
  %add45.3.i = add nuw nsw i32 %mul44.3.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.3.i, i32 noundef %div27.i) #8
  br label %for.inc47.3.i

for.inc47.3.i:                                    ; preds = %if.then42.3.i, %for.inc47.2.i.for.inc47.3.i_crit_edge
  %83 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx.i114, align 2
  %85 = and i16 %84, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp40.not.4.i = icmp eq i16 %85, 0
  br i1 %cmp40.not.4.i, label %for.inc47.3.i.for.inc47.4.i_crit_edge, label %if.then42.4.i

for.inc47.3.i.for.inc47.4.i_crit_edge:            ; preds = %for.inc47.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.4.i

if.then42.4.i:                                    ; preds = %for.inc47.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.4.i = add i8 %mul.i.i120, 4
  %conv43.4.i = zext i8 %add7.i.4.i to i32
  %mul44.4.i = mul nuw nsw i32 %conv43.4.i, 3
  %add45.4.i = add nuw nsw i32 %mul44.4.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.4.i, i32 noundef %div27.i) #8
  br label %for.inc47.4.i

for.inc47.4.i:                                    ; preds = %if.then42.4.i, %for.inc47.3.i.for.inc47.4.i_crit_edge
  %86 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i114, align 2
  %88 = and i16 %87, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp40.not.5.i = icmp eq i16 %88, 0
  br i1 %cmp40.not.5.i, label %for.inc47.4.i.for.inc47.5.i_crit_edge, label %if.then42.5.i

for.inc47.4.i.for.inc47.5.i_crit_edge:            ; preds = %for.inc47.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.5.i

if.then42.5.i:                                    ; preds = %for.inc47.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.5.i = add i8 %mul.i.i120, 5
  %conv43.5.i = zext i8 %add7.i.5.i to i32
  %mul44.5.i = mul nuw nsw i32 %conv43.5.i, 3
  %add45.5.i = add nuw nsw i32 %mul44.5.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.5.i, i32 noundef %div27.i) #8
  br label %for.inc47.5.i

for.inc47.5.i:                                    ; preds = %if.then42.5.i, %for.inc47.4.i.for.inc47.5.i_crit_edge
  %89 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.i114, align 2
  %91 = and i16 %90, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp40.not.6.i = icmp eq i16 %91, 0
  br i1 %cmp40.not.6.i, label %for.inc47.5.i.for.inc47.6.i_crit_edge, label %if.then42.6.i

for.inc47.5.i.for.inc47.6.i_crit_edge:            ; preds = %for.inc47.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.6.i

if.then42.6.i:                                    ; preds = %for.inc47.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.6.i = add i8 %mul.i.i120, 6
  %conv43.6.i = zext i8 %add7.i.6.i to i32
  %mul44.6.i = mul nuw nsw i32 %conv43.6.i, 3
  %add45.6.i = add nuw nsw i32 %mul44.6.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.6.i, i32 noundef %div27.i) #8
  br label %for.inc47.6.i

for.inc47.6.i:                                    ; preds = %if.then42.6.i, %for.inc47.5.i.for.inc47.6.i_crit_edge
  %92 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i114, align 2
  %94 = and i16 %93, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp40.not.7.i = icmp eq i16 %94, 0
  br i1 %cmp40.not.7.i, label %for.inc47.6.i.for.inc47.7.i_crit_edge, label %if.then42.7.i

for.inc47.6.i.for.inc47.7.i_crit_edge:            ; preds = %for.inc47.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47.7.i

if.then42.7.i:                                    ; preds = %for.inc47.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.7.i = add i8 %mul.i.i120, 7
  %conv43.7.i = zext i8 %add7.i.7.i to i32
  %mul44.7.i = mul nuw nsw i32 %conv43.7.i, 3
  %add45.7.i = add nuw nsw i32 %mul44.7.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add45.7.i, i32 noundef %div27.i) #8
  br label %for.inc47.7.i

for.inc47.7.i:                                    ; preds = %if.then42.7.i, %for.inc47.6.i.for.inc47.7.i_crit_edge
  %add.i85.i = add nuw nsw i32 %indvars.iv.i113, 16
  %conv51.i = and i32 %add.i85.i, 255
  %mul52.i = mul nuw nsw i32 %conv51.i, 3
  %add53.i = add nuw nsw i32 %mul52.i, 34924
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add53.i, i32 noundef %cond.i119) #8
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %for.inc47.7.i, %for.body.i.for.inc54.i_crit_edge
  %indvars.iv.next.i122 = add nuw nsw i32 %indvars.iv.i113, 1
  %exitcond.not.i123 = icmp eq i32 %indvars.iv.next.i122, %wide.trip.count.i112
  br i1 %exitcond.not.i123, label %for.inc54.i.cond.end8.i.preheader_crit_edge, label %for.inc54.i.for.body.i_crit_edge

for.inc54.i.for.body.i_crit_edge:                 ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc54.i.cond.end8.i.preheader_crit_edge:      ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8.i.preheader

cond.end8.i.preheader:                            ; preds = %for.inc54.i.cond.end8.i.preheader_crit_edge, %qed_cmdq_lines_rt_init.exit.cond.end8.i.preheader_crit_edge
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.end8.i.cond.end8.i_crit_edge, %cond.end8.i.preheader
  %indvars.iv.i124 = phi i32 [ %indvars.iv.next.i126, %cond.end8.i.cond.end8.i_crit_edge ], [ 0, %cond.end8.i.preheader ]
  %add.i125 = add nuw nsw i32 %indvars.iv.i124, 30029
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add.i125, i32 noundef -2147483648) #8
  %add12.i = add nuw nsw i32 %indvars.iv.i124, 29773
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add12.i, i32 noundef -2147420523) #8
  %add14.i = add nuw nsw i32 %indvars.iv.i124, 29517
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add14.i, i32 noundef 63125) #8
  %indvars.iv.next.i126 = add nuw nsw i32 %indvars.iv.i124, 1
  %exitcond.not.i127 = icmp eq i32 %indvars.iv.next.i126, 256
  br i1 %exitcond.not.i127, label %qed_global_rl_rt_init.exit, label %cond.end8.i.cond.end8.i_crit_edge

cond.end8.i.cond.end8.i_crit_edge:                ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8.i

qed_global_rl_rt_init.exit:                       ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_init_store_rt_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_qm_pf_rt_init(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef readonly %p_params) local_unnamed_addr #1 align 64 {
entry:
  %tx_pq_vf_mask.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vport_params1 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 18
  %0 = ptrtoint ptr %vport_params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport_params1, align 4
  %num_pf_cids = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 4
  %2 = ptrtoint ptr %num_pf_cids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pf_cids, align 4
  %num_tids = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 6
  %4 = ptrtoint ptr %num_tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tids, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  %add5 = shl i32 %add, 2
  %sub = add i32 %add5, 4099
  %6 = lshr i32 %sub, 10
  %phi.bo = and i32 %6, 4194300
  %cond = select i1 %tobool.not, i32 0, i32 %phi.bo
  %num_vports = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 11
  %7 = ptrtoint ptr %num_vports to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_vports, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp138.not = icmp eq i16 %8, 0
  br i1 %cmp138.not, label %entry.for.end19_crit_edge, label %entry.for.cond10.preheader_crit_edge

entry.for.cond10.preheader_crit_edge:             ; preds = %entry
  br label %for.cond10.preheader

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

for.cond10.preheader:                             ; preds = %for.cond10.preheader.for.cond10.preheader_crit_edge, %entry.for.cond10.preheader_crit_edge
  %indvar = phi i32 [ %indvar.next, %for.cond10.preheader.for.cond10.preheader_crit_edge ], [ 0, %entry.for.cond10.preheader_crit_edge ]
  %i.0139 = phi i16 [ %inc18, %for.cond10.preheader.for.cond10.preheader_crit_edge ], [ 0, %entry.for.cond10.preheader_crit_edge ]
  %9 = mul nuw nsw i32 %indvar, 40
  %10 = add nuw nsw i32 %9, 22
  %uglygep = getelementptr i8, ptr %1, i32 %10
  %11 = call ptr @memset(ptr %uglygep, i32 255, i32 18)
  %inc18 = add nuw i16 %i.0139, 1
  %12 = ptrtoint ptr %num_vports to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_vports, align 4
  %cmp = icmp ult i16 %inc18, %13
  %indvar.next = add nuw nsw i32 %indvar, 1
  br i1 %cmp, label %for.cond10.preheader.for.cond10.preheader_crit_edge, label %for.cond10.preheader.for.end19_crit_edge

for.cond10.preheader.for.end19_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

for.cond10.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader

for.end19:                                        ; preds = %for.cond10.preheader.for.end19_crit_edge, %entry.for.end19_crit_edge
  %pf_id = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 1
  %14 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pf_id, align 1
  %is_pf_loading = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 3
  %16 = ptrtoint ptr %is_pf_loading to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_pf_loading, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %num_pf_cids to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_pf_cids, align 4
  %20 = ptrtoint ptr %num_tids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tids, align 4
  %add.i = add i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i = icmp eq i32 %add.i, 0
  %add1.i = shl i32 %add.i, 2
  %sub.i = add i32 %add1.i, 4099
  %div2.i = lshr i32 %sub.i, 12
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %div2.i
  %conv3.i = zext i8 %15 to i32
  %add4.i = add nuw nsw i32 %conv3.i, 29489
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add4.i, i32 noundef %conv3.i) #8
  %sub9.i = add i32 %add.i, 255
  %div101.i = lshr i32 %sub9.i, 8
  %sub11.i = add nsw i32 %div101.i, -1
  %cond14.i = select i1 %tobool.not.i, i32 0, i32 %sub11.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 28909, i32 noundef %cond14.i) #8
  %22 = shl nuw nsw i32 %conv3.i, 3
  %add21.i = add nuw nsw i32 %22, 28974
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add21.i, i32 noundef 0) #8
  br i1 %tobool20.not, label %if.end.2.i, label %for.cond23.preheader.3.i

if.end.2.i:                                       ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #10
  %add21.1.i = add nuw nsw i32 %22, 28975
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add21.1.i, i32 noundef %cond.i) #8
  %add33.1.i = shl nuw nsw i32 %cond.i, 1
  %add21.2.i = add nuw nsw i32 %22, 28976
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add21.2.i, i32 noundef %add33.1.i) #8
  %add33.2.i = mul nuw nsw i32 %cond.i, 3
  %add21.3.i = add nuw nsw i32 %22, 28977
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add21.3.i, i32 noundef %add33.2.i) #8
  br label %qed_other_pq_map_rt_init.exit

for.cond23.preheader.3.i:                         ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #10
  %mul29.i = shl nuw nsw i32 %conv3.i, 4
  %add30.i = add nuw nsw i32 %mul29.i, 29102
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add30.i, i32 noundef 0) #8
  %add32.1.i = add nuw nsw i32 %mul29.i, 29103
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add32.1.i, i32 noundef 0) #8
  %add21.17.i = add nuw nsw i32 %22, 28975
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add21.17.i, i32 noundef %cond.i) #8
  %add30.1.i = add nuw nsw i32 %mul29.i, 29104
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add30.1.i, i32 noundef 0) #8
  %add32.1.1.i = add nuw nsw i32 %mul29.i, 29105
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add32.1.1.i, i32 noundef 0) #8
  %add33.18.i = shl nuw nsw i32 %cond.i, 1
  %add21.29.i = add nuw nsw i32 %22, 28976
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add21.29.i, i32 noundef %add33.18.i) #8
  %add30.2.i = add nuw nsw i32 %mul29.i, 29106
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add30.2.i, i32 noundef 0) #8
  %add32.1.2.i = add nuw nsw i32 %mul29.i, 29107
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add32.1.2.i, i32 noundef 0) #8
  %add33.210.i = mul nuw nsw i32 %cond.i, 3
  %add21.311.i = add nuw nsw i32 %22, 28977
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add21.311.i, i32 noundef %add33.210.i) #8
  %add30.3.i = add nuw nsw i32 %mul29.i, 29108
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add30.3.i, i32 noundef 0) #8
  %add32.1.3.i = add nuw nsw i32 %mul29.i, 29109
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add32.1.3.i, i32 noundef 0) #8
  br label %qed_other_pq_map_rt_init.exit

qed_other_pq_map_rt_init.exit:                    ; preds = %for.cond23.preheader.3.i, %if.end.2.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tx_pq_vf_mask.i) #8
  %23 = call ptr @memset(ptr %tx_pq_vf_mask.i, i32 0, i32 256)
  %24 = ptrtoint ptr %vport_params1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vport_params1, align 4
  %pq_params2.i = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 17
  %26 = ptrtoint ptr %pq_params2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pq_params2.i, align 4
  %num_pf_pqs.i = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 8
  %28 = ptrtoint ptr %num_pf_pqs.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pf_pqs.i, align 2
  %num_vf_pqs.i = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 9
  %30 = ptrtoint ptr %num_vf_pqs.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_vf_pqs.i, align 4
  %add.i78 = add i16 %31, %29
  %start_pq.i = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 7
  %32 = ptrtoint ptr %start_pq.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %start_pq.i, align 4
  %conv5.i = zext i16 %33 to i32
  %div1.i = lshr i16 %33, 3
  %conv9.i = zext i16 %add.i78 to i32
  %add10.i = add nsw i32 %conv9.i, -1
  %sub.i79 = add nsw i32 %add10.i, %conv5.i
  %div11.i = sdiv i32 %sub.i79, 8
  %34 = ptrtoint ptr %num_pf_cids to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_pf_cids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i80 = icmp eq i32 %35, 0
  %add14.i = shl i32 %35, 2
  %sub16.i = add i32 %add14.i, 4099
  %div176.i = lshr i32 %sub16.i, 12
  %cond.i81 = select i1 %tobool.not.i80, i32 0, i32 %div176.i
  %num_vf_cids.i = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 5
  %36 = ptrtoint ptr %num_vf_cids.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_vf_cids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not.i = icmp eq i32 %37, 0
  %add21.i82 = shl i32 %37, 2
  %sub24.i = add i32 %add21.i82, 4099
  %div255.i = lshr i32 %sub24.i, 12
  %cond28.i = select i1 %tobool18.not.i, i32 0, i32 %div255.i
  %conv297.i = zext i16 %div1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div11.i, i32 %conv297.i)
  %cmp.not8.i = icmp ult i32 %div11.i, %conv297.i
  br i1 %cmp.not8.i, label %qed_other_pq_map_rt_init.exit.for.end.i_crit_edge, label %for.body.lr.ph.i

qed_other_pq_map_rt_init.exit.for.end.i_crit_edge: ; preds = %qed_other_pq_map_rt_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %qed_other_pq_map_rt_init.exit
  %38 = trunc i32 %div11.i to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv2910.i = phi i32 [ %conv297.i, %for.body.lr.ph.i ], [ %conv29.i, %for.body.i.for.body.i_crit_edge ]
  %pq_group.09.i = phi i16 [ %div1.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add33.i = add nuw nsw i32 %conv2910.i, 29425
  %39 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pf_id, align 1
  %conv34.i = zext i8 %40 to i32
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add33.i, i32 noundef %conv34.i) #8
  %inc.i = add i16 %pq_group.09.i, 1
  %conv29.i = zext i16 %inc.i to i32
  %cmp.not.i = icmp ugt i16 %inc.i, %38
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %qed_other_pq_map_rt_init.exit.for.end.i_crit_edge
  %41 = ptrtoint ptr %num_pf_cids to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_pf_cids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool36.not.i = icmp eq i32 %42, 0
  %sub40.i = add i32 %42, 255
  %div414.i = lshr i32 %sub40.i, 8
  %sub42.i = add nsw i32 %div414.i, -1
  %cond45.i = select i1 %tobool36.not.i, i32 0, i32 %sub42.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 28907, i32 noundef %cond45.i) #8
  %43 = ptrtoint ptr %num_vf_cids.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_vf_cids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool47.not.i = icmp eq i32 %44, 0
  %sub51.i = add i32 %44, 255
  %div523.i = lshr i32 %sub51.i, 8
  %sub53.i = add nsw i32 %div523.i, -1
  %cond56.i = select i1 %tobool47.not.i, i32 0, i32 %sub53.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef 28908, i32 noundef %cond56.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i78)
  %cmp6112.not.i = icmp eq i16 %add.i78, 0
  br i1 %cmp6112.not.i, label %for.end.i.for.body237.i.preheader_crit_edge, label %for.body63.lr.ph.i

for.end.i.for.body237.i.preheader_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body237.i.preheader

for.body63.lr.ph.i:                               ; preds = %for.end.i
  %45 = ptrtoint ptr %start_pq.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %start_pq.i, align 4
  %max_phys_tcs_per_port.i = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 2
  %start_vport.i = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 10
  br label %for.body63.i

for.body63.i:                                     ; preds = %if.end228.i.for.body63.i_crit_edge, %for.body63.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body63.lr.ph.i ], [ %indvars.iv.next.i83, %if.end228.i.for.body63.i_crit_edge ]
  %mem_addr_4kb.016.i = phi i32 [ %cond, %for.body63.lr.ph.i ], [ %mem_addr_4kb.1.i, %if.end228.i.for.body63.i_crit_edge ]
  %pq_id.014.i = phi i16 [ %46, %for.body63.lr.ph.i ], [ %inc231.i, %if.end228.i.for.body63.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.init_qm_pq_params, ptr %27, i32 %indvars.iv.i
  %tc_id64.i = getelementptr %struct.init_qm_pq_params, ptr %27, i32 %indvars.iv.i, i32 3
  %47 = ptrtoint ptr %tc_id64.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tc_id64.i, align 1
  %port_id.i = getelementptr %struct.init_qm_pq_params, ptr %27, i32 %indvars.iv.i, i32 5
  %49 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port_id.i, align 1
  %51 = ptrtoint ptr %max_phys_tcs_per_port.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %max_phys_tcs_per_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %48)
  %cmp.i.i = icmp eq i8 %48, 8
  %add.i.i = add i8 %50, 16
  %mul.i.i = mul i8 %52, %50
  %add7.i.i = add i8 %mul.i.i, %48
  %retval.0.i.i = select i1 %cmp.i.i, i8 %add.i.i, i8 %add7.i.i
  %53 = ptrtoint ptr %num_pf_pqs.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_pf_pqs.i, align 2
  %55 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.i, i32 %55)
  %cmp70.not.i = icmp ult i32 %indvars.iv.i, %55
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i, align 2
  %58 = ptrtoint ptr %start_vport.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %start_vport.i, align 2
  %sub76.i = sub i16 %57, %59
  %idxprom78.i = zext i16 %sub76.i to i32
  %idxprom80.i = zext i8 %48 to i32
  %arrayidx81.i = getelementptr %struct.init_qm_vport_params, ptr %25, i32 %idxprom78.i, i32 3, i32 %idxprom80.i
  %60 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx81.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %cmp83.i = icmp eq i16 %61, -1
  %conv85.i = zext i8 %retval.0.i.i to i32
  br i1 %cmp83.i, label %if.then.i, label %for.body63.do.body_crit_edge.i

for.body63.do.body_crit_edge.i:                   ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre22.i = zext i16 %pq_id.014.i to i32
  br label %do.body.i

if.then.i:                                        ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pf_id, align 1
  %conv87.i = zext i8 %63 to i32
  %shl88.i = shl nuw nsw i32 %conv87.i, 5
  %or.i = or i32 %shl88.i, %conv85.i
  %64 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %pq_id.014.i, ptr %arrayidx81.i, align 2
  %conv89.i = zext i16 %pq_id.014.i to i32
  %add90.i = add nuw nsw i32 %conv89.i, 33092
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add90.i, i32 noundef %or.i) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %for.body63.do.body_crit_edge.i
  %conv151.pre-phi.i = phi i32 [ %.pre22.i, %for.body63.do.body_crit_edge.i ], [ %conv89.i, %if.then.i ]
  %rl_valid.i = getelementptr %struct.init_qm_pq_params, ptr %27, i32 %indvars.iv.i, i32 2
  %65 = ptrtoint ptr %rl_valid.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rl_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool102.not.i = icmp eq i8 %66, 0
  %67 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx81.i, align 2
  %conv113.i = zext i16 %68 to i32
  %shl114.i = shl nuw nsw i32 %conv113.i, 9
  %conv115.i = select i1 %tobool102.not.i, i32 1, i32 33554433
  %rl_id.i = getelementptr %struct.init_qm_pq_params, ptr %27, i32 %indvars.iv.i, i32 1
  %69 = ptrtoint ptr %rl_id.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rl_id.i, align 2
  %conv124.i = zext i16 %70 to i32
  %shl125.i = shl nuw nsw i32 %conv124.i, 1
  %shl114.masked.i = and i32 %shl114.i, 261632
  %shl134.i = shl nuw nsw i32 %conv85.i, 18
  %shl134.masked.i = and i32 %shl134.i, 41680896
  %wrr_group.i = getelementptr %struct.init_qm_pq_params, ptr %27, i32 %indvars.iv.i, i32 4
  %71 = ptrtoint ptr %wrr_group.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %wrr_group.i, align 2
  %conv144.i = zext i8 %72 to i32
  %shl145.i = shl nuw nsw i32 %conv144.i, 23
  %or116.masked.i = or i32 %conv115.i, %shl134.masked.i
  %and132.i = or i32 %or116.masked.i, %shl114.masked.i
  %and141.i = or i32 %and132.i, %shl125.i
  %or147.i = or i32 %and141.i, %shl145.i
  %add152.i = add nuw nsw i32 %conv151.pre-phi.i, 31044
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add152.i, i32 noundef %or147.i) #8
  %add156.i = add nuw nsw i32 %conv151.pre-phi.i, 30532
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add156.i, i32 noundef %mem_addr_4kb.016.i) #8
  %73 = ptrtoint ptr %is_pf_loading to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_pf_loading, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool157.not.i = icmp eq i8 %74, 0
  br i1 %tobool157.not.i, label %do.body.i.if.end172.i_crit_edge, label %for.cond159.preheader.i

do.body.i.if.end172.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172.i

for.cond159.preheader.i:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul165.i = shl nuw nsw i32 %conv151.pre-phi.i, 1
  %add166.i = add nuw nsw i32 %mul165.i, 33604
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add166.i, i32 noundef 0) #8
  %add168.1.i = add nuw nsw i32 %mul165.i, 33605
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add168.1.i, i32 noundef 0) #8
  br label %if.end172.i

if.end172.i:                                      ; preds = %for.cond159.preheader.i, %do.body.i.if.end172.i_crit_edge
  %75 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx81.i, align 2
  %conv173.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %pf_id, align 1
  %conv176.i = zext i8 %78 to i32
  %shl177.i = shl nuw nsw i32 %conv176.i, 12
  %shl180.i = shl nuw nsw i32 %idxprom80.i, 16
  %79 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %port_id.i, align 1
  %conv185.i = zext i8 %80 to i32
  %shl186.i = shl nuw nsw i32 %conv185.i, 20
  %81 = ptrtoint ptr %rl_valid.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rl_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool192.not.not.i = icmp eq i8 %82, 0
  %shl194.i = select i1 %tobool192.not.not.i, i32 0, i32 4194304
  %83 = ptrtoint ptr %rl_id.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %rl_id.i, align 2
  %conv199.i = zext i16 %84 to i32
  %shl201.i = shl i32 %conv199.i, 24
  %85 = shl nuw nsw i32 %conv199.i, 1
  %shl207.i = and i32 %85, 130560
  %or178.i = or i32 %shl180.i, %conv173.i
  %or181.i = or i32 %or178.i, %shl177.i
  %or187.i = or i32 %or181.i, %shl186.i
  %or195.i = or i32 %or187.i, %shl194.i
  %or202.i = or i32 %or195.i, %shl201.i
  %or208.i = or i32 %or202.i, %shl207.i
  %86 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p_hwfn, align 8
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %87, i32 0, i32 31
  %88 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx209.i = getelementptr %struct.iro, ptr %89, i32 10
  %90 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx209.i, align 4
  %m1.i = getelementptr %struct.iro, ptr %89, i32 10, i32 1
  %92 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %m1.i, align 4
  %conv214.i = zext i16 %93 to i32
  %mul215.i = mul nuw i32 %conv151.pre-phi.i, %conv214.i
  %add216.i = add i32 %91, 21364736
  %add217.i = add i32 %add216.i, %mul215.i
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add217.i, i32 noundef %or208.i) #8
  br i1 %cmp70.not.i, label %if.end172.i.if.end228.i_crit_edge, label %if.then219.i

if.end172.i.if.end228.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228.i

if.then219.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = and i32 %conv151.pre-phi.i, 7
  %shl221.i = shl nuw nsw i32 1, %rem.i
  %div2232.i = lshr i32 %conv151.pre-phi.i, 3
  %arrayidx224.i = getelementptr [64 x i32], ptr %tx_pq_vf_mask.i, i32 0, i32 %div2232.i
  %94 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx224.i, align 4
  %or225.i = or i32 %95, %shl221.i
  store i32 %or225.i, ptr %arrayidx224.i, align 4
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.then219.i, %if.end172.i.if.end228.i_crit_edge
  %cond28.pn.i = phi i32 [ %cond28.i, %if.then219.i ], [ %cond.i81, %if.end172.i.if.end228.i_crit_edge ]
  %mem_addr_4kb.1.i = add i32 %cond28.pn.i, %mem_addr_4kb.016.i
  %indvars.iv.next.i83 = add nuw nsw i32 %indvars.iv.i, 1
  %inc231.i = add i16 %pq_id.014.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i83, %conv9.i
  br i1 %exitcond.not.i, label %if.end228.i.for.body237.i.preheader_crit_edge, label %if.end228.i.for.body63.i_crit_edge

if.end228.i.for.body63.i_crit_edge:               ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body63.i

if.end228.i.for.body237.i.preheader_crit_edge:    ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body237.i.preheader

for.body237.i.preheader:                          ; preds = %if.end228.i.for.body237.i.preheader_crit_edge, %for.end.i.for.body237.i.preheader_crit_edge
  br label %for.body237.i

for.body237.i:                                    ; preds = %for.inc247.i.for.body237.i_crit_edge, %for.body237.i.preheader
  %indvars.iv19.i = phi i32 [ %indvars.iv.next20.i, %for.inc247.i.for.body237.i_crit_edge ], [ 0, %for.body237.i.preheader ]
  %arrayidx239.i = getelementptr [64 x i32], ptr %tx_pq_vf_mask.i, i32 0, i32 %indvars.iv19.i
  %96 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx239.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool240.not.i = icmp eq i32 %97, 0
  br i1 %tobool240.not.i, label %for.body237.i.for.inc247.i_crit_edge, label %if.then241.i

for.body237.i.for.inc247.i_crit_edge:             ; preds = %for.body237.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc247.i

if.then241.i:                                     ; preds = %for.body237.i
  call void @__sanitizer_cov_trace_pc() #10
  %add243.i = add nuw nsw i32 %indvars.iv19.i, 28910
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add243.i, i32 noundef %97) #8
  br label %for.inc247.i

for.inc247.i:                                     ; preds = %if.then241.i, %for.body237.i.for.inc247.i_crit_edge
  %indvars.iv.next20.i = add nuw nsw i32 %indvars.iv19.i, 1
  %exitcond21.not.i = icmp eq i32 %indvars.iv.next20.i, 64
  br i1 %exitcond21.not.i, label %qed_tx_pq_map_rt_init.exit, label %for.inc247.i.for.body237.i_crit_edge

for.inc247.i.for.body237.i_crit_edge:             ; preds = %for.inc247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body237.i

qed_tx_pq_map_rt_init.exit:                       ; preds = %for.inc247.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tx_pq_vf_mask.i) #8
  %pf_wfq = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 14
  %98 = ptrtoint ptr %pf_wfq to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %pf_wfq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool24.not = icmp eq i16 %99, 0
  br i1 %tobool24.not, label %qed_tx_pq_map_rt_init.exit.if.end30_crit_edge, label %if.then25

qed_tx_pq_map_rt_init.exit.if.end30_crit_edge:    ; preds = %qed_tx_pq_map_rt_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %qed_tx_pq_map_rt_init.exit
  %100 = ptrtoint ptr %num_pf_pqs.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %num_pf_pqs.i, align 2
  %102 = ptrtoint ptr %num_vf_pqs.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %num_vf_pqs.i, align 4
  %add.i86 = add i16 %103, %101
  %104 = ptrtoint ptr %pq_params2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pq_params2.i, align 4
  %conv4.i = zext i16 %99 to i32
  %mul.i = mul nuw i32 %conv4.i, 36864
  call void @__sanitizer_cov_trace_const_cmp4(i32 43750000, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 43750000
  br i1 %cmp.i, label %do.body.i91, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i86)
  %cmp2167.not.i = icmp eq i16 %add.i86, 0
  br i1 %cmp2167.not.i, label %for.cond.preheader.i.qed_pf_wfq_rt_init.exit_crit_edge, label %for.body.lr.ph.i90

for.cond.preheader.i.qed_pf_wfq_rt_init.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_pf_wfq_rt_init.exit

for.body.lr.ph.i90:                               ; preds = %for.cond.preheader.i
  %max_phys_tcs_per_port.i88 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 2
  %wide.trip.count.i = zext i16 %add.i86 to i32
  br label %for.body.i102

do.body.i91:                                      ; preds = %if.then25
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %106 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %107)
  %cmp7.i = icmp ult i8 %107, 3
  br i1 %cmp7.i, label %do.end.i, label %do.body.i91.cleanup_crit_edge, !prof !295

do.body.i91.cleanup_crit_edge:                    ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef 795, ptr noundef nonnull %name.i) #11
  br label %cleanup

for.body.i102:                                    ; preds = %for.body.i102.for.body.i102_crit_edge, %for.body.lr.ph.i90
  %indvars.iv.i92 = phi i32 [ 0, %for.body.lr.ph.i90 ], [ %indvars.iv.next.i100, %for.body.i102.for.body.i102_crit_edge ]
  %port_id.i93 = getelementptr %struct.init_qm_pq_params, ptr %105, i32 %indvars.iv.i92, i32 5
  %108 = ptrtoint ptr %port_id.i93 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %port_id.i93, align 1
  %tc_id.i = getelementptr %struct.init_qm_pq_params, ptr %105, i32 %indvars.iv.i92, i32 3
  %110 = ptrtoint ptr %tc_id.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %tc_id.i, align 1
  %112 = ptrtoint ptr %max_phys_tcs_per_port.i88 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %max_phys_tcs_per_port.i88, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %111)
  %cmp.i.i94 = icmp eq i8 %111, 8
  %add.i.i95 = add i8 %109, 16
  %mul.i.i96 = mul i8 %113, %109
  %add7.i.i97 = add i8 %mul.i.i96, %111
  %retval.0.i.i98 = select i1 %cmp.i.i94, i8 %add.i.i95, i8 %add7.i.i97
  %114 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pf_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %115)
  %cmp27.i = icmp ult i8 %115, 8
  %cond29.i = select i1 %cmp27.i, i32 30370, i32 34628
  %conv30.i = zext i8 %retval.0.i.i98 to i32
  %mul31.i = shl nuw nsw i32 %conv30.i, 3
  %116 = and i8 %115, 7
  %rem.i99 = zext i8 %116 to i32
  %add32.i = add nuw nsw i32 %cond29.i, %rem.i99
  %add35.i = add nuw nsw i32 %add32.i, %mul31.i
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add35.i, i32 noundef -2147483648) #8
  %indvars.iv.next.i100 = add nuw nsw i32 %indvars.iv.i92, 1
  %exitcond.not.i101 = icmp eq i32 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i101, label %for.body.i102.qed_pf_wfq_rt_init.exit_crit_edge, label %for.body.i102.for.body.i102_crit_edge

for.body.i102.for.body.i102_crit_edge:            ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i102

for.body.i102.qed_pf_wfq_rt_init.exit_crit_edge:  ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_pf_wfq_rt_init.exit

qed_pf_wfq_rt_init.exit:                          ; preds = %for.body.i102.qed_pf_wfq_rt_init.exit_crit_edge, %for.cond.preheader.i.qed_pf_wfq_rt_init.exit_crit_edge
  %117 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pf_id, align 1
  %conv37.i = zext i8 %118 to i32
  %add38.i = add nuw nsw i32 %conv37.i, 30354
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add38.i, i32 noundef -2084983648) #8
  %119 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %pf_id, align 1
  %conv40.i = zext i8 %120 to i32
  %add41.i = add nuw nsw i32 %conv40.i, 30338
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add41.i, i32 noundef %mul.i) #8
  br label %if.end30

if.end30:                                         ; preds = %qed_pf_wfq_rt_init.exit, %qed_tx_pq_map_rt_init.exit.if.end30_crit_edge
  %121 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %pf_id, align 1
  %pf_rl = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 15
  %123 = ptrtoint ptr %pf_rl to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pf_rl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i104 = icmp eq i32 %124, 0
  %phi.bo1.i = mul i32 %124, 505
  %phi.bo.i = udiv i32 %phi.bo1.i, 800
  %125 = tail call i32 @llvm.umax.i32(i32 %phi.bo.i, i32 1) #8
  %126 = select i1 %tobool.not.i104, i32 63125, i32 %125
  %conv25.i = zext i8 %122 to i32
  %add.i105 = add nuw nsw i32 %conv25.i, 30320
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add.i105, i32 noundef -2147483648) #8
  %add27.i = add nuw nsw i32 %conv25.i, 30304
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add27.i, i32 noundef -2084983648) #8
  %add29.i = add nuw nsw i32 %conv25.i, 30288
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add29.i, i32 noundef %126) #8
  %127 = ptrtoint ptr %num_vports to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %num_vports, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %cmp3.not.i = icmp eq i16 %128, 0
  br i1 %cmp3.not.i, label %if.end30.qed_vp_wfq_rt_init.exit_crit_edge, label %for.cond3.preheader.preheader.i

if.end30.qed_vp_wfq_rt_init.exit_crit_edge:       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_vp_wfq_rt_init.exit

for.cond3.preheader.preheader.i:                  ; preds = %if.end30
  %wide.trip.count.i106 = zext i16 %128 to i32
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc51.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.preheader.i
  %indvars.iv6.i = phi i32 [ 0, %for.cond3.preheader.preheader.i ], [ %indvars.iv.next7.i, %for.inc51.i.for.cond3.preheader.i_crit_edge ]
  %arrayidx.i107 = getelementptr %struct.init_qm_vport_params, ptr %1, i32 %indvars.iv6.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.cond3.preheader.i
  %indvars.iv.i108 = phi i32 [ 0, %for.cond3.preheader.i ], [ %indvars.iv.next.i113, %for.inc.i.for.body7.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.init_qm_vport_params, ptr %1, i32 %indvars.iv6.i, i32 3, i32 %indvars.iv.i108
  %129 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %130)
  %cmp11.i = icmp eq i16 %130, -1
  br i1 %cmp11.i, label %for.body7.i.for.inc.i_crit_edge, label %if.end.i

for.body7.i.for.inc.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body7.i
  %131 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx.i107, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool.not.i109 = icmp eq i16 %132, 0
  br i1 %tobool.not.i109, label %cond.false.i, label %if.end.i.if.end45.i_crit_edge

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21.i = getelementptr %struct.init_qm_vport_params, ptr %1, i32 %indvars.iv6.i, i32 2, i32 %indvars.iv.i108
  %133 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx21.i, align 2
  br label %if.end45.i

if.end45.i:                                       ; preds = %cond.false.i, %if.end.i.if.end45.i_crit_edge
  %cond.in.i = phi i16 [ %134, %cond.false.i ], [ %132, %if.end.i.if.end45.i_crit_edge ]
  %conv24.i = zext i16 %cond.in.i to i32
  %mul.i110 = mul nuw nsw i32 %conv24.i, 10800
  %add.i111 = add nuw nsw i32 %conv10.i, 32580
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add.i111, i32 noundef -2147483648) #8
  %add48.i = add nuw nsw i32 %conv10.i, 32068
  %or.i112 = or i32 %mul.i110, -2147483648
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add48.i, i32 noundef %or.i112) #8
  %add50.i = add nuw nsw i32 %conv10.i, 31556
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add50.i, i32 noundef %mul.i110) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %for.body7.i.for.inc.i_crit_edge
  %indvars.iv.next.i113 = add nuw nsw i32 %indvars.iv.i108, 1
  %exitcond.not.i114 = icmp eq i32 %indvars.iv.next.i113, 9
  br i1 %exitcond.not.i114, label %for.inc51.i, label %for.inc.i.for.body7.i_crit_edge

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i

for.inc51.i:                                      ; preds = %for.inc.i
  %indvars.iv.next7.i = add nuw nsw i32 %indvars.iv6.i, 1
  %exitcond8.not.i = icmp eq i32 %indvars.iv.next7.i, %wide.trip.count.i106
  br i1 %exitcond8.not.i, label %for.inc51.i.qed_vp_wfq_rt_init.exit_crit_edge, label %for.inc51.i.for.cond3.preheader.i_crit_edge

for.inc51.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i

for.inc51.i.qed_vp_wfq_rt_init.exit_crit_edge:    ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_vp_wfq_rt_init.exit

qed_vp_wfq_rt_init.exit:                          ; preds = %for.inc51.i.qed_vp_wfq_rt_init.exit_crit_edge, %if.end30.qed_vp_wfq_rt_init.exit_crit_edge
  %start_rl = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 12
  %135 = ptrtoint ptr %start_rl to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %start_rl, align 2
  %num_rls = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 13
  %137 = ptrtoint ptr %num_rls to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %num_rls, align 4
  %link_speed = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 16
  %139 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %link_speed, align 4
  %rl_params = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, ptr %p_params, i32 0, i32 19
  %141 = ptrtoint ptr %rl_params to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rl_params, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool.not.i115 = icmp eq i16 %138, 0
  br i1 %tobool.not.i115, label %qed_vp_wfq_rt_init.exit.cleanup_crit_edge, label %land.lhs.true.i

qed_vp_wfq_rt_init.exit.cleanup_crit_edge:        ; preds = %qed_vp_wfq_rt_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %qed_vp_wfq_rt_init.exit
  %conv.i = zext i16 %138 to i32
  %conv1.i = zext i16 %136 to i32
  %add.i116 = add nuw nsw i32 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.i116)
  %cmp.i117 = icmp ugt i32 %add.i116, 255
  br i1 %cmp.i117, label %do.body.i119, label %for.body.lr.ph.i125

do.body.i119:                                     ; preds = %land.lhs.true.i
  %dp_level.i118 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %143 = ptrtoint ptr %dp_level.i118 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %dp_level.i118, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %144)
  %cmp5.i = icmp ult i8 %144, 3
  br i1 %cmp5.i, label %do.end.i122, label %do.body.i119.cleanup_crit_edge, !prof !295

do.body.i119.cleanup_crit_edge:                   ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i122:                                      ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #10
  %name.i120 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 581, ptr noundef nonnull %name.i120) #11
  br label %cleanup

for.body.lr.ph.i125:                              ; preds = %land.lhs.true.i
  %mul2.i.i = mul i32 %140, 505
  call void @__sanitizer_cov_trace_const_cmp4(i32 8560799, i32 %mul2.i.i)
  %cmp.i.i123 = icmp ugt i32 %mul2.i.i, 8560799
  %div.i.i = udiv i32 %mul2.i.i, 800
  %cond.i.i = select i1 %cmp.i.i123, i32 %div.i.i, i32 10700
  br label %for.body.i128

for.body.i128:                                    ; preds = %if.end79.i.for.body.i128_crit_edge, %for.body.lr.ph.i125
  %indvars.iv.i126 = phi i32 [ 0, %for.body.lr.ph.i125 ], [ %indvars.iv.next.i131, %if.end79.i.for.body.i128_crit_edge ]
  %rl_id.0120.i = phi i16 [ %136, %for.body.lr.ph.i125 ], [ %inc87.i, %if.end79.i.for.body.i128_crit_edge ]
  %arrayidx.i127 = getelementptr %struct.init_qm_rl_params, ptr %142, i32 %indvars.iv.i126
  %vport_rl_type.i = getelementptr %struct.init_qm_rl_params, ptr %142, i32 %indvars.iv.i126, i32 1
  %145 = ptrtoint ptr %vport_rl_type.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %vport_rl_type.i, align 4
  %147 = zext i8 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values)
  switch i8 %146, label %sw.default.i.i [
    i8 0, label %for.body.i128.qed_get_vport_rl_upper_bound.exit.i_crit_edge
    i8 1, label %sw.bb1.i.i
  ]

for.body.i128.qed_get_vport_rl_upper_bound.exit.i_crit_edge: ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_get_vport_rl_upper_bound.exit.i

sw.bb1.i.i:                                       ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_get_vport_rl_upper_bound.exit.i

sw.default.i.i:                                   ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_get_vport_rl_upper_bound.exit.i

qed_get_vport_rl_upper_bound.exit.i:              ; preds = %sw.default.i.i, %sw.bb1.i.i, %for.body.i128.qed_get_vport_rl_upper_bound.exit.i_crit_edge
  %retval.0.i.i129 = phi i32 [ 0, %sw.default.i.i ], [ %cond.i.i, %sw.bb1.i.i ], [ 98304, %for.body.i128.qed_get_vport_rl_upper_bound.exit.i_crit_edge ]
  %148 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool25.not.i = icmp eq i32 %149, 0
  %link_speed..i = select i1 %tobool25.not.i, i32 %140, i32 %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_speed..i)
  %tobool34.not.i = icmp eq i32 %link_speed..i, 0
  %link_speed..op.i = mul i32 %link_speed..i, 505
  %mul39.i = select i1 %tobool34.not.i, i32 50500000, i32 %link_speed..op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1599, i32 %mul39.i)
  %cmp41.i = icmp ugt i32 %mul39.i, 1599
  %div.i = udiv i32 %mul39.i, 800
  %cond46.i = select i1 %cmp41.i, i32 %div.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond46.i, i32 %retval.0.i.i129)
  %cmp47.i = icmp ugt i32 %cond46.i, %retval.0.i.i129
  br i1 %cmp47.i, label %do.body50.i, label %if.end79.i

do.body50.i:                                      ; preds = %qed_get_vport_rl_upper_bound.exit.i
  %dp_level51.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %150 = ptrtoint ptr %dp_level51.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %dp_level51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %151)
  %cmp53.i = icmp ult i8 %151, 3
  br i1 %cmp53.i, label %do.end64.i, label %do.body50.i.cleanup_crit_edge, !prof !295

do.body50.i.cleanup_crit_edge:                    ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end64.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  %name66.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 599, ptr noundef nonnull %name66.i) #11
  br label %cleanup

if.end79.i:                                       ; preds = %qed_get_vport_rl_upper_bound.exit.i
  %conv80.i = zext i16 %rl_id.0120.i to i32
  %add81.i = add nuw nsw i32 %conv80.i, 30029
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add81.i, i32 noundef -2147483648) #8
  %add83.i = add nuw nsw i32 %conv80.i, 29773
  %or.i130 = or i32 %retval.0.i.i129, -2147483648
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add83.i, i32 noundef %or.i130) #8
  %add85.i = add nuw nsw i32 %conv80.i, 29517
  tail call void @qed_init_store_rt_reg(ptr noundef %p_hwfn, i32 noundef %add85.i, i32 noundef %cond46.i) #8
  %indvars.iv.next.i131 = add nuw nsw i32 %indvars.iv.i126, 1
  %inc87.i = add i16 %rl_id.0120.i, 1
  %exitcond.not.i132 = icmp eq i32 %indvars.iv.next.i131, %conv.i
  br i1 %exitcond.not.i132, label %if.end79.i.cleanup_crit_edge, label %if.end79.i.for.body.i128_crit_edge

if.end79.i.for.body.i128_crit_edge:               ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i128

if.end79.i.cleanup_crit_edge:                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end79.i.cleanup_crit_edge, %do.end64.i, %do.body50.i.cleanup_crit_edge, %do.end.i122, %do.body.i119.cleanup_crit_edge, %qed_vp_wfq_rt_init.exit.cleanup_crit_edge, %do.end.i, %do.body.i91.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qed_vp_wfq_rt_init.exit.cleanup_crit_edge ], [ -1, %do.end.i ], [ -1, %do.body.i91.cleanup_crit_edge ], [ -1, %do.end.i122 ], [ -1, %do.body.i119.cleanup_crit_edge ], [ -1, %do.end64.i ], [ -1, %do.body50.i.cleanup_crit_edge ], [ 0, %if.end79.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_pf_wfq(ptr noundef %p_hwfn, ptr noundef %p_ptt, i8 noundef zeroext %pf_id, i16 noundef zeroext %pf_wfq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %pf_wfq to i32
  %mul = mul nuw i32 %conv, 36864
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pf_wfq)
  %tobool.not = icmp eq i16 %pf_wfq, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 43750000, i32 %mul)
  %cmp = icmp ugt i32 %mul, 43750000
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp3 = icmp ult i8 %1, 3
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge, !prof !295

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1044, ptr noundef nonnull %spec.select) #11
  br label %cleanup

if.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv15 = zext i8 %pf_id to i32
  %mul16 = shl nuw nsw i32 %conv15, 2
  %add = add nuw nsw i32 %mul16, 3100288
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef %mul) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_wr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_pf_rl(ptr noundef %p_hwfn, ptr noundef %p_ptt, i8 noundef zeroext %pf_id, i32 noundef %pf_rl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pf_rl)
  %tobool.not = icmp eq i32 %pf_rl, 0
  %phi.bo40 = mul i32 %pf_rl, 505
  %phi.bo = udiv i32 %phi.bo40, 800
  %0 = tail call i32 @llvm.umax.i32(i32 %phi.bo, i32 1)
  %1 = select i1 %tobool.not, i32 63125, i32 %0
  %conv25 = zext i8 %pf_id to i32
  %mul26 = shl nuw nsw i32 %conv25, 2
  %add = add nuw nsw i32 %mul26, 3100032
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef -2147483648) #8
  %add29 = add nuw nsw i32 %mul26, 3099776
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add29, i32 noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_vport_wfq(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %first_tx_pq_id, i16 noundef zeroext %wfq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %first_tx_pq_id, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp3.not = icmp eq i16 %1, -1
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @qed_init_vport_tc_wfq(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %1, i16 noundef zeroext %wfq)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %result.1 = phi i32 [ %call, %if.then ], [ 0, %for.body.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv)
  %cmp = icmp ult i32 %indvars.iv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1)
  %tobool.not = icmp eq i32 %result.1, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_vport_tc_wfq(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %first_tx_pq_id, i16 noundef zeroext %wfq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %first_tx_pq_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %first_tx_pq_id)
  %cmp = icmp eq i16 %first_tx_pq_id, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wfq)
  %tobool.not = icmp eq i16 %wfq, 0
  br i1 %tobool.not, label %do.body, label %if.end19

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp7 = icmp ult i8 %1, 3
  br i1 %cmp7, label %do.end, label %do.body.cleanup_crit_edge, !prof !295

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool13.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool13.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1098, ptr noundef nonnull %spec.select) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = zext i16 %wfq to i32
  %mul = mul nuw nsw i32 %conv2, 10800
  %mul21 = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul21, 3129344
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef -2147483648) #8
  %add24 = add nuw nsw i32 %mul21, 3125248
  %or = or i32 %mul, -2147483648
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add24, i32 noundef %or) #8
  %add27 = add nuw nsw i32 %mul21, 3121152
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add27, i32 noundef %mul) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_init_global_rl(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %rl_id, i32 noundef %rate_limit, i32 noundef %vport_rl_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vport_rl_type)
  %cmp = icmp eq i32 %vport_rl_type, 1
  %cond = select i1 %cmp, i32 63125, i32 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate_limit)
  %tobool.not = icmp eq i32 %rate_limit, 0
  %phi.bo50 = mul i32 %rate_limit, 505
  %phi.bo = udiv i32 %phi.bo50, 800
  %0 = tail call i32 @llvm.umax.i32(i32 %phi.bo, i32 1)
  %1 = select i1 %tobool.not, i32 63125, i32 %0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cond)
  %cmp9 = icmp ugt i32 %1, %cond
  br i1 %cmp9, label %do.body, label %if.end26

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp10 = icmp ult i8 %3, 3
  br i1 %cmp10, label %do.end, label %do.body.cleanup_crit_edge, !prof !295

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool17.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool17.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1124, ptr noundef nonnull %spec.select) #11
  br label %cleanup

if.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv27 = zext i16 %rl_id to i32
  %mul28 = shl nuw nsw i32 %conv27, 2
  %add = add nuw nsw i32 %mul28, 3097600
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef -2147483648) #8
  %add31 = add nuw nsw i32 %mul28, 3095552
  %or = or i32 %cond, -2147483648
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add31, i32 noundef %or) #8
  %add34 = add nuw nsw i32 %mul28, 3093504
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add34, i32 noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qed_send_qm_stop_cmd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %is_release_cmd, i1 noundef zeroext %is_tx_pq, i16 noundef zeroext %start_pq, i16 noundef zeroext %num_pqs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %start_pq to i32
  %conv2 = zext i16 %num_pqs to i32
  %add = add nsw i32 %conv, -1
  %sub = add nsw i32 %add, %conv2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp.not68 = icmp ult i32 %sub, %conv
  br i1 %cmp.not68, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %shl = select i1 %is_tx_pq, i32 0, i32 16777216
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %pq_id.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %pq_mask.070 = phi i32 [ %pq_mask.2, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %cmd_arr.sroa.8.069 = phi i32 [ %cmd_arr.sroa.8.1, %for.inc.for.body_crit_edge ], [ %shl, %for.body.preheader ]
  %rem = and i32 %pq_id.071, 31
  %shl8 = shl nuw i32 1, %rem
  %or9 = select i1 %is_release_cmd, i32 0, i32 %shl8
  %pq_mask.1 = or i32 %or9, %pq_mask.070
  call void @__sanitizer_cov_trace_cmp4(i32 %pq_id.071, i32 %sub)
  %cmp10 = icmp eq i32 %pq_id.071, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rem)
  %cmp13 = icmp eq i32 %rem, 31
  %or.cond = or i1 %cmp10, %cmp13
  br i1 %or.cond, label %do.body16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body16:                                        ; preds = %for.body
  %0 = shl i32 %pq_id.071, 11
  %shl31 = and i32 %0, -65536
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body16
  %i.026.i.i = phi i32 [ 0, %do.body16 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 107374000) #8
  %call.i.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3087888) #8
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.026.i.i)
  %cmp.i.i = icmp ult i32 %i.026.i.i, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %and29 = and i32 %cmd_arr.sroa.8.069, -983041
  %or34 = or i32 %shl31, %and29
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i.i)
  %cmp1.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %cmp1.i.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %for.end.i.i
  %dp_level.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.i.i = icmp eq i8 %3, 0
  br i1 %cmp2.i.i, label %land.rhs4.i.i, label %do.body.i.i.cleanup_crit_edge

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs4.i.i:                                    ; preds = %do.body.i.i
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %4 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %land.rhs4.i.i.cleanup_crit_edge, label %land.rhs4.i.i.cleanup.sink.split_crit_edge, !prof !296

land.rhs4.i.i.cleanup.sink.split_crit_edge:       ; preds = %land.rhs4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.rhs4.i.i.cleanup_crit_edge:                  ; preds = %land.rhs4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3087876, i32 noundef 2) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3087880, i32 noundef %pq_mask.1) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3087884, i32 noundef %or34) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3087892, i32 noundef 1) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3087892, i32 noundef 0) #8
  br label %for.body.i7.i

for.body.i7.i:                                    ; preds = %for.body.i7.i.for.body.i7.i_crit_edge, %if.end.i
  %i.026.i1.i = phi i32 [ 0, %if.end.i ], [ %inc.i3.i, %for.body.i7.i.for.body.i7.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 107374000) #8
  %call.i2.i = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3087888) #8
  %inc.i3.i = add nuw nsw i32 %i.026.i1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %i.026.i1.i)
  %cmp.i4.i = icmp ult i32 %i.026.i1.i, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i5.i = icmp eq i32 %call.i2.i, 0
  %or.cond.i6.i = select i1 %cmp.i4.i, i1 %tobool.not.i5.i, i1 false
  br i1 %or.cond.i6.i, label %for.body.i7.i.for.body.i7.i_crit_edge, label %for.end.i9.i

for.body.i7.i.for.body.i7.i_crit_edge:            ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i7.i

for.end.i9.i:                                     ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i3.i)
  %cmp1.i8.i = icmp eq i32 %inc.i3.i, 100
  br i1 %cmp1.i8.i, label %do.body.i12.i, label %for.end.i9.i.for.inc_crit_edge

for.end.i9.i.for.inc_crit_edge:                   ; preds = %for.end.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body.i12.i:                                    ; preds = %for.end.i9.i
  %dp_level.i10.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level.i10.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level.i10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp2.i11.i = icmp eq i8 %8, 0
  br i1 %cmp2.i11.i, label %land.rhs4.i16.i, label %do.body.i12.i.cleanup_crit_edge

do.body.i12.i.cleanup_crit_edge:                  ; preds = %do.body.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs4.i16.i:                                  ; preds = %do.body.i12.i
  %dp_module.i13.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %9 = ptrtoint ptr %dp_module.i13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dp_module.i13.i, align 4
  %and.i14.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %tobool5.not.i15.i = icmp eq i32 %and.i14.i, 0
  br i1 %tobool5.not.i15.i, label %land.rhs4.i16.i.cleanup_crit_edge, label %land.rhs4.i16.i.cleanup.sink.split_crit_edge, !prof !296

land.rhs4.i16.i.cleanup.sink.split_crit_edge:     ; preds = %land.rhs4.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.rhs4.i16.i.cleanup_crit_edge:                ; preds = %land.rhs4.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.end.i9.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmd_arr.sroa.8.1 = phi i32 [ %cmd_arr.sroa.8.069, %for.body.for.inc_crit_edge ], [ %or34, %for.end.i9.i.for.inc_crit_edge ]
  %pq_mask.2 = phi i32 [ %pq_mask.1, %for.body.for.inc_crit_edge ], [ 0, %for.end.i9.i.for.inc_crit_edge ]
  %inc = add i32 %pq_id.071, 1
  %cmp.not = icmp ugt i32 %inc, %sub
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.rhs4.i16.i.cleanup.sink.split_crit_edge, %land.rhs4.i.i.cleanup.sink.split_crit_edge
  %name.i17.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call15.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 905, ptr noundef nonnull %name.i17.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %land.rhs4.i16.i.cleanup_crit_edge, %do.body.i12.i.cleanup_crit_edge, %land.rhs4.i.i.cleanup_crit_edge, %do.body.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not67 = phi i1 [ false, %land.rhs4.i16.i.cleanup_crit_edge ], [ false, %do.body.i12.i.cleanup_crit_edge ], [ false, %land.rhs4.i.i.cleanup_crit_edge ], [ false, %do.body.i.i.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ false, %cleanup.sink.split ], [ true, %for.inc.cleanup_crit_edge ]
  ret i1 %cmp.not67
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_set_vxlan_dest_port(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %dest_port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %dest_port to i32
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033464, i32 noundef %conv) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5247068, i32 noundef %conv) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14157080, i32 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_set_vxlan_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %vxlan_enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033456) #8
  %and = and i32 %call, -5
  %shl = select i1 %vxlan_enable, i32 4, i32 0
  %or = or i32 %and, %shl
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033456, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool3.not = icmp eq i32 %or, 0
  br i1 %tobool3.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034076) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -46832, i32 %call4)
  %cmp = icmp eq i32 %call4, -46832
  br i1 %cmp, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034076, i32 noundef -186992368) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5247064) #8
  %and12 = and i32 %call8, -5
  %or17 = or i32 %and12, %shl
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5247064, i32 noundef %or17) #8
  %cond22 = zext i1 %vxlan_enable to i32
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050900, i32 noundef %cond22) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_set_gre_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %eth_gre_enable, i1 noundef zeroext %ip_gre_enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033456) #8
  %and = and i32 %call, -4
  %conv = zext i1 %eth_gre_enable to i32
  %shl8 = select i1 %ip_gre_enable, i32 2, i32 0
  %or = or i32 %shl8, %conv
  %or10 = or i32 %or, %and
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033456, i32 noundef %or10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool14.not = icmp eq i32 %or10, 0
  br i1 %tobool14.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %entry
  %call15 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034076) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -46832, i32 %call15)
  %cmp = icmp eq i32 %call15, -46832
  br i1 %cmp, label %if.then17, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034076, i32 noundef -186992368) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %call19 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5247064) #8
  %and23 = and i32 %call19, -4
  %or46 = or i32 %or, %and23
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5247064, i32 noundef %or46) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050892, i32 noundef %conv) #8
  %cond54 = zext i1 %ip_gre_enable to i32
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050896, i32 noundef %cond54) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_set_geneve_dest_port(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %dest_port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %dest_port to i32
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033772, i32 noundef %conv) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5278520, i32 noundef %conv) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 14157084, i32 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_set_geneve_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %eth_geneve_enable, i1 noundef zeroext %ip_geneve_enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033456) #8
  %and = and i32 %call, -49
  %shl = select i1 %eth_geneve_enable, i32 16, i32 0
  %shl8 = select i1 %ip_geneve_enable, i32 32, i32 0
  %or = or i32 %shl8, %shl
  %or10 = or i32 %or, %and
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2033456, i32 noundef %or10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool14.not = icmp eq i32 %or10, 0
  br i1 %tobool14.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %entry
  %call15 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034076) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -46832, i32 %call15)
  %cmp = icmp eq i32 %call15, -46832
  br i1 %cmp, label %if.then17, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034076, i32 noundef -186992368) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %cond = zext i1 %eth_geneve_enable to i32
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5278508, i32 noundef %cond) #8
  %cond23 = zext i1 %ip_geneve_enable to i32
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5278504, i32 noundef %cond23) #8
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24 = icmp eq i32 %3, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end18.if.end31_crit_edge

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %chip_rev = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp28 = icmp eq i16 %5, 1
  br i1 %cmp28, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050928, i32 noundef %cond) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 1050924, i32 noundef %cond23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_set_vxlan_no_l2_enable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034204) #8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call, 8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034076, i32 noundef -925189872) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call, -9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reg_val.0 = phi i32 [ %or, %if.then ], [ %and, %if.else ]
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2034204, i32 noundef %reg_val.0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_gft_disable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %pf_id) local_unnamed_addr #1 align 64 {
entry:
  %ram_line = alloca %struct.regpair, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ram_line) #8
  %0 = ptrtoint ptr %ram_line to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ram_line, align 8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2036156, i32 noundef 0) #8
  %conv = zext i16 %pf_id to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 2035968
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef 0) #8
  %mul2 = shl nuw nsw i32 %conv, 3
  %add3 = add nuw nsw i32 %mul2, 2035712
  call fastcc void @qed_dmae_to_grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %ram_line, i32 noundef %add3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ram_line) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_dmae_to_grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %p_data, i32 noundef %addr) unnamed_addr #1 align 64 {
entry:
  %params = alloca %struct.qed_dmae_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #8
  %0 = call ptr @memset(ptr %params, i32 0, i32 12)
  %tobool.not = icmp eq ptr %p_data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 4
  %3 = or i32 %2, 8
  store i32 %3, ptr %params, align 4
  %4 = ptrtoint ptr %p_data to i32
  %conv3 = zext i32 %4 to i64
  %call = call i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv3, i32 noundef %addr, i32 noundef 2, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.body6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body6:                                         ; preds = %do.body
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %land.rhs, label %do.body6.do.end23_crit_edge

do.body6.do.end23_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

land.rhs:                                         ; preds = %do.body6
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %7 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dp_module, align 4
  %and9 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.rhs.do.end23_crit_edge, label %do.end16, !prof !296

land.rhs.do.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end16:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool17.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool17.not, ptr @.str.3, ptr %name
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1234, ptr noundef nonnull %spec.select) #11
  br label %do.end23

do.end23:                                         ; preds = %do.end16, %land.rhs.do.end23_crit_edge, %do.body6.do.end23_crit_edge
  %9 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_data, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %p_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %p_data, align 4
  %incdec.ptr.i = getelementptr i32, ptr %p_data, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %incdec.ptr.i, align 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %addr, i32 noundef %4) #8
  %add.1 = add i32 %addr, 4
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.1, i32 noundef %4) #8
  %17 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p_data, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %p_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %p_data, align 4
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %incdec.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_gft_config(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %pf_id, i1 noundef zeroext %tcp, i1 noundef zeroext %udp, i1 noundef zeroext %ipv4, i1 noundef zeroext %ipv6, i32 noundef %profile_type) local_unnamed_addr #1 align 64 {
entry:
  %ram_line = alloca %struct.regpair, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ram_line) #8
  %brmerge = or i1 %ipv4, %ipv6
  br i1 %brmerge, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %do.end, label %do.body.if.end15_crit_edge, !prof !295

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 1464, ptr noundef nonnull %spec.select) #11
  br label %if.end15

if.end15:                                         ; preds = %do.end, %do.body.if.end15_crit_edge, %entry.if.end15_crit_edge
  %brmerge409 = or i1 %tcp, %udp
  br i1 %brmerge409, label %if.end15.if.end49_crit_edge, label %do.body20

if.end15.if.end49_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body20:                                        ; preds = %if.end15
  %dp_level21 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level21 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level21, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp23 = icmp ult i8 %3, 3
  br i1 %cmp23, label %do.end34, label %do.body20.if.end49_crit_edge, !prof !295

do.body20.if.end49_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end34:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %name36 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool38.not = icmp eq ptr %name36, null
  %spec.select410 = select i1 %tobool38.not, ptr @.str.3, ptr %name36
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 1467, ptr noundef nonnull %spec.select410) #11
  br label %if.end49

if.end49:                                         ; preds = %do.end34, %do.body20.if.end49_crit_edge, %if.end15.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %profile_type)
  %cmp50 = icmp ugt i32 %profile_type, 4
  br i1 %cmp50, label %do.body53, label %if.end49.if.end82_crit_edge

if.end49.if.end82_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.body53:                                        ; preds = %if.end49
  %dp_level54 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level54 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level54, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp56 = icmp ult i8 %5, 3
  br i1 %cmp56, label %do.end67, label %do.body53.if.end82_crit_edge, !prof !295

do.body53.if.end82_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end67:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %name69 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool71.not = icmp eq ptr %name69, null
  %spec.select411 = select i1 %tobool71.not, ptr @.str.3, ptr %name69
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 1469, ptr noundef nonnull %spec.select411) #11
  br label %if.end82

if.end82:                                         ; preds = %do.end67, %do.body53.if.end82_crit_edge, %if.end49.if.end82_crit_edge
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2036168, i32 noundef 25) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2032024, i32 noundef 0) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2032716, i32 noundef 0) #8
  %conv98 = zext i16 %pf_id to i32
  %shl = shl nuw nsw i32 %conv98, 11
  %spec.select413.v = select i1 %udp, i32 503316481, i32 505282617
  %cam_line.0.v = select i1 %tcp, i32 %spec.select413.v, i32 505282641
  %cam_line.0 = or i32 %cam_line.0.v, %shl
  %brmerge412.demorgan = and i1 %ipv4, %ipv6
  br i1 %brmerge412.demorgan, label %if.end82.if.end166_crit_edge, label %do.body141

if.end82.if.end166_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

do.body141:                                       ; preds = %if.end82
  br i1 %ipv4, label %do.body150, label %do.body158

do.body150:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %and151 = or i32 %cam_line.0, 32768
  br label %if.end166

do.body158:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %6 = or i32 %cam_line.0, 32770
  br label %if.end166

if.end166:                                        ; preds = %do.body158, %do.body150, %if.end82.if.end166_crit_edge
  %cam_line.1 = phi i32 [ %and151, %do.body150 ], [ %6, %do.body158 ], [ %cam_line.0, %if.end82.if.end166_crit_edge ]
  %mul = shl nuw nsw i32 %conv98, 2
  %add = add nuw nsw i32 %mul, 2035968
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef %cam_line.1) #8
  %call171 = tail call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %profile_type)
  %7 = icmp ult i32 %profile_type, 5
  br i1 %7, label %switch.lookup, label %if.end166.if.end307_crit_edge

if.end166.if.end307_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end307

switch.lookup:                                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.qed_gft_config, i32 0, i32 %profile_type
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep414 = getelementptr inbounds [5 x i32], ptr @switch.table.qed_gft_config.135, i32 0, i32 %profile_type
  %9 = ptrtoint ptr %switch.gep414 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load415 = load i32, ptr %switch.gep414, align 4
  %switch.gep416 = getelementptr inbounds [5 x i32], ptr @switch.table.qed_gft_config.136, i32 0, i32 %profile_type
  %10 = ptrtoint ptr %switch.gep416 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load417 = load i32, ptr %switch.gep416, align 4
  br label %if.end307

if.end307:                                        ; preds = %switch.lookup, %if.end166.if.end307_crit_edge
  %lo.0 = phi i32 [ %switch.load, %switch.lookup ], [ 576, %if.end166.if.end307_crit_edge ]
  %hi.0 = phi i32 [ %switch.load415, %switch.lookup ], [ 0, %if.end166.if.end307_crit_edge ]
  %search_non_ip_as_gft.0 = phi i32 [ %switch.load417, %switch.lookup ], [ 0, %if.end166.if.end307_crit_edge ]
  %11 = getelementptr inbounds %struct.regpair, ptr %ram_line, i32 0, i32 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %lo.0)
  %13 = ptrtoint ptr %ram_line to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ram_line, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %hi.0, ptr %11, align 4
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2036160, i32 noundef %search_non_ip_as_gft.0) #8
  %mul312 = shl nuw nsw i32 %conv98, 3
  %add313 = add nuw nsw i32 %mul312, 2035712
  call fastcc void @qed_dmae_to_grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %ram_line, i32 noundef %add313)
  %15 = ptrtoint ptr %ram_line to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %ram_line, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -16580608, ptr %11, align 4
  call fastcc void @qed_dmae_to_grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %ram_line, i32 noundef 2035960)
  call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 2036156, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ram_line) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_calc_session_ctx_validation(ptr nocapture noundef writeonly %p_ctx_mem, i16 noundef zeroext %ctx_size, i8 noundef zeroext %ctx_type, i32 noundef %cid) local_unnamed_addr #1 align 64 {
entry:
  %data_to_crc.i35 = alloca i32, align 4
  %data_to_crc.i23 = alloca i32, align 4
  %data_to_crc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %ctx_type to i32
  %arrayidx = getelementptr [8 x i16], ptr @con_region_offsets, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %idxprom1 = zext i16 %1 to i32
  %arrayidx2 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom1
  %arrayidx4 = getelementptr [3 x [8 x i16]], ptr @con_region_offsets, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx4, align 2
  %idxprom5 = zext i16 %3 to i32
  %arrayidx6 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom5
  %arrayidx8 = getelementptr [3 x [8 x i16]], ptr @con_region_offsets, i32 0, i32 2, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx8, align 2
  %conv = zext i16 %ctx_size to i32
  %6 = call ptr @memset(ptr %p_ctx_mem, i32 0, i32 %conv)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_to_crc.i) #8
  %.b.i = load i1, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br i1 %.b.i, label %entry.qed_calc_cdu_validation_byte.exit_crit_edge, label %if.then.i

entry.qed_calc_cdu_validation_byte.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_calc_cdu_validation_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crc8_populate_msb(ptr noundef nonnull @cdu_crc8_table, i8 noundef zeroext 7) #8
  store i1 true, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br label %qed_calc_cdu_validation_byte.exit

qed_calc_cdu_validation_byte.exit:                ; preds = %if.then.i, %entry.qed_calc_cdu_validation_byte.exit_crit_edge
  %and.i = and i32 %cid, -1048576
  %and1.i = shl i32 %cid, 8
  %shl.i = and i32 %and1.i, 1048320
  %7 = and i8 %ctx_type, 15
  %and7.i = zext i8 %7 to i32
  %or.i = or i32 %and.i, %and7.i
  %or5.i = or i32 %or.i, %shl.i
  %or8.i = or i32 %or5.i, 48
  %8 = ptrtoint ptr %data_to_crc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or8.i, ptr %data_to_crc.i, align 4
  %call.i = call zeroext i8 @crc8(ptr noundef nonnull @cdu_crc8_table, ptr noundef nonnull %data_to_crc.i, i32 noundef 4, i8 noundef zeroext -1) #8
  %9 = or i8 %call.i, -128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_to_crc.i) #8
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_to_crc.i23) #8
  %.b.i24 = load i1, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br i1 %.b.i24, label %qed_calc_cdu_validation_byte.exit.qed_calc_cdu_validation_byte.exit34_crit_edge, label %if.then.i25

qed_calc_cdu_validation_byte.exit.qed_calc_cdu_validation_byte.exit34_crit_edge: ; preds = %qed_calc_cdu_validation_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_calc_cdu_validation_byte.exit34

if.then.i25:                                      ; preds = %qed_calc_cdu_validation_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @crc8_populate_msb(ptr noundef nonnull @cdu_crc8_table, i8 noundef zeroext 7) #8
  store i1 true, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br label %qed_calc_cdu_validation_byte.exit34

qed_calc_cdu_validation_byte.exit34:              ; preds = %if.then.i25, %qed_calc_cdu_validation_byte.exit.qed_calc_cdu_validation_byte.exit34_crit_edge
  %or8.i32 = or i32 %or5.i, 64
  %11 = ptrtoint ptr %data_to_crc.i23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or8.i32, ptr %data_to_crc.i23, align 4
  %call.i33 = call zeroext i8 @crc8(ptr noundef nonnull @cdu_crc8_table, ptr noundef nonnull %data_to_crc.i23, i32 noundef 4, i8 noundef zeroext -1) #8
  %12 = or i8 %call.i33, -128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_to_crc.i23) #8
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_to_crc.i35) #8
  %.b.i36 = load i1, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br i1 %.b.i36, label %qed_calc_cdu_validation_byte.exit34.qed_calc_cdu_validation_byte.exit46_crit_edge, label %if.then.i37

qed_calc_cdu_validation_byte.exit34.qed_calc_cdu_validation_byte.exit46_crit_edge: ; preds = %qed_calc_cdu_validation_byte.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_calc_cdu_validation_byte.exit46

if.then.i37:                                      ; preds = %qed_calc_cdu_validation_byte.exit34
  call void @__sanitizer_cov_trace_pc() #10
  call void @crc8_populate_msb(ptr noundef nonnull @cdu_crc8_table, i8 noundef zeroext 7) #8
  store i1 true, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br label %qed_calc_cdu_validation_byte.exit46

qed_calc_cdu_validation_byte.exit46:              ; preds = %if.then.i37, %qed_calc_cdu_validation_byte.exit34.qed_calc_cdu_validation_byte.exit46_crit_edge
  %idxprom9 = zext i16 %5 to i32
  %arrayidx10 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom9
  %or8.i44 = or i32 %or5.i, 80
  %14 = ptrtoint ptr %data_to_crc.i35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or8.i44, ptr %data_to_crc.i35, align 4
  %call.i45 = call zeroext i8 @crc8(ptr noundef nonnull @cdu_crc8_table, ptr noundef nonnull %data_to_crc.i35, i32 noundef 4, i8 noundef zeroext -1) #8
  %15 = or i8 %call.i45, -128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_to_crc.i35) #8
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx10, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_calc_task_ctx_validation(ptr nocapture noundef writeonly %p_ctx_mem, i16 noundef zeroext %ctx_size, i8 noundef zeroext %ctx_type, i32 noundef %tid) local_unnamed_addr #1 align 64 {
entry:
  %data_to_crc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %ctx_type to i32
  %arrayidx = getelementptr [8 x i16], ptr @task_region_offsets, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %ctx_size to i32
  %2 = call ptr @memset(ptr %p_ctx_mem, i32 0, i32 %conv)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_to_crc.i) #8
  %.b.i = load i1, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br i1 %.b.i, label %entry.qed_calc_cdu_validation_byte.exit_crit_edge, label %if.then.i

entry.qed_calc_cdu_validation_byte.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_calc_cdu_validation_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @crc8_populate_msb(ptr noundef nonnull @cdu_crc8_table, i8 noundef zeroext 7) #8
  store i1 true, ptr @qed_calc_cdu_validation_byte.crc8_table_valid, align 1
  br label %qed_calc_cdu_validation_byte.exit

qed_calc_cdu_validation_byte.exit:                ; preds = %if.then.i, %entry.qed_calc_cdu_validation_byte.exit_crit_edge
  %idxprom1 = zext i16 %1 to i32
  %arrayidx2 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom1
  %and.i = and i32 %tid, -1048576
  %and1.i = shl i32 %tid, 8
  %shl.i = and i32 %and1.i, 1048320
  %3 = and i8 %ctx_type, 15
  %4 = or i8 %3, 16
  %or.i = zext i8 %4 to i32
  %or5.i = or i32 %and.i, %or.i
  %or8.i = or i32 %or5.i, %shl.i
  %5 = ptrtoint ptr %data_to_crc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or8.i, ptr %data_to_crc.i, align 4
  %call.i = call zeroext i8 @crc8(ptr noundef nonnull @cdu_crc8_table, ptr noundef nonnull %data_to_crc.i, i32 noundef 4, i8 noundef zeroext -1) #8
  %6 = or i8 %call.i, -128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_to_crc.i) #8
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx2, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_memset_session_ctx(ptr nocapture noundef %p_ctx_mem, i32 noundef %ctx_size, i8 noundef zeroext %ctx_type) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %ctx_type to i32
  %arrayidx = getelementptr [8 x i16], ptr @con_region_offsets, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %idxprom1 = zext i16 %1 to i32
  %arrayidx2 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom1
  %arrayidx4 = getelementptr [3 x [8 x i16]], ptr @con_region_offsets, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx4, align 2
  %idxprom5 = zext i16 %3 to i32
  %arrayidx6 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom5
  %arrayidx8 = getelementptr [3 x [8 x i16]], ptr @con_region_offsets, i32 0, i32 2, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx8, align 2
  %idxprom9 = zext i16 %5 to i32
  %arrayidx10 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom9
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %12 = call ptr @memset(ptr %p_ctx_mem, i32 0, i32 %ctx_size)
  store i8 %7, ptr %arrayidx2, align 1
  store i8 %9, ptr %arrayidx6, align 1
  store i8 %11, ptr %arrayidx10, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_memset_task_ctx(ptr nocapture noundef %p_ctx_mem, i32 noundef %ctx_size, i8 noundef zeroext %ctx_type) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %ctx_type to i32
  %arrayidx = getelementptr [8 x i16], ptr @task_region_offsets, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %idxprom1 = zext i16 %1 to i32
  %arrayidx2 = getelementptr i8, ptr %p_ctx_mem, i32 %idxprom1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %4 = call ptr @memset(ptr %p_ctx_mem, i32 0, i32 %ctx_size)
  store i8 %3, ptr %arrayidx2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_enable_context_validation(ptr noundef %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5768192, i32 noundef 1023410176) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5768196, i32 noundef 15616) #8
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 5768200, i32 noundef 15616) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qed_get_protocol_type_str(i32 noundef %protocol_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %protocol_type)
  %cmp = icmp ugt i32 %protocol_type, 11
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [12 x ptr], ptr @s_protocol_types, i32 0, i32 %protocol_type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str.18, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @qed_get_ramrod_cmd_id_str(i32 noundef %protocol_type, i32 noundef %ramrod_cmd_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %protocol_type)
  %cmp = icmp ugt i32 %protocol_type, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %ramrod_cmd_id)
  %cmp1 = icmp ugt i32 %ramrod_cmd_id, 27
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr [9 x [28 x ptr]], ptr @s_ramrod_cmd_ids, i32 0, i32 %protocol_type, i32 %ramrod_cmd_id
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %1, null
  %.str.19. = select i1 %tobool.not, ptr @.str.19, ptr %1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @.str.18, %entry.cleanup_crit_edge ], [ @.str.19, %if.end.cleanup_crit_edge ], [ %.str.19., %if.end3 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_set_rdma_error_level(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %assert_level) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rel_pf_id72.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %qed_get_rdma_assert_ram_addr.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %qed_get_rdma_assert_ram_addr.exit.for.body_crit_edge ]
  %storm_id.07 = phi i8 [ 0, %entry ], [ %inc, %qed_get_rdma_assert_ram_addr.exit.for.body_crit_edge ]
  %trunc = trunc i8 %storm_id.07 to i7
  %0 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.138)
  switch i7 %trunc, label %for.body.qed_get_rdma_assert_ram_addr.exit_crit_edge [
    i7 0, label %sw.bb.i
    i7 1, label %sw.bb7.i
    i7 2, label %sw.bb22.i
    i7 3, label %sw.bb37.i
    i7 4, label %sw.bb52.i
    i7 5, label %sw.bb67.i
  ]

for.body.qed_get_rdma_assert_ram_addr.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_get_rdma_assert_ram_addr.exit

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_hwfn, align 8
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx.i = getelementptr %struct.iro, ptr %4, i32 60
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %rel_pf_id72.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rel_pf_id72.i, align 1
  %conv1.i = zext i8 %8 to i32
  %m1.i = getelementptr %struct.iro, ptr %4, i32 60, i32 1
  %9 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %m1.i, align 4
  %conv5.i = zext i16 %10 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, %conv1.i
  %add.i = add i32 %6, 24510464
  %add6.i = add i32 %add.i, %mul.i
  br label %qed_get_rdma_assert_ram_addr.exit

sw.bb7.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_hwfn, align 8
  %iro_arr9.i = getelementptr inbounds %struct.qed_dev, ptr %12, i32 0, i32 31
  %13 = ptrtoint ptr %iro_arr9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iro_arr9.i, align 8
  %arrayidx10.i = getelementptr %struct.iro, ptr %14, i32 61
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10.i, align 4
  %17 = ptrtoint ptr %rel_pf_id72.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rel_pf_id72.i, align 1
  %conv13.i = zext i8 %18 to i32
  %m117.i = getelementptr %struct.iro, ptr %14, i32 61, i32 1
  %19 = ptrtoint ptr %m117.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %m117.i, align 4
  %conv18.i = zext i16 %20 to i32
  %mul19.i = mul nuw nsw i32 %conv18.i, %conv13.i
  %add20.i = add i32 %16, 25559040
  %add21.i = add i32 %add20.i, %mul19.i
  br label %qed_get_rdma_assert_ram_addr.exit

sw.bb22.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p_hwfn, align 8
  %iro_arr24.i = getelementptr inbounds %struct.qed_dev, ptr %22, i32 0, i32 31
  %23 = ptrtoint ptr %iro_arr24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iro_arr24.i, align 8
  %arrayidx25.i = getelementptr %struct.iro, ptr %24, i32 62
  %25 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx25.i, align 4
  %27 = ptrtoint ptr %rel_pf_id72.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rel_pf_id72.i, align 1
  %conv28.i = zext i8 %28 to i32
  %m132.i = getelementptr %struct.iro, ptr %24, i32 62, i32 1
  %29 = ptrtoint ptr %m132.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %m132.i, align 4
  %conv33.i = zext i16 %30 to i32
  %mul34.i = mul nuw nsw i32 %conv33.i, %conv28.i
  %add35.i = add i32 %26, 26607616
  %add36.i = add i32 %add35.i, %mul34.i
  br label %qed_get_rdma_assert_ram_addr.exit

sw.bb37.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p_hwfn, align 8
  %iro_arr39.i = getelementptr inbounds %struct.qed_dev, ptr %32, i32 0, i32 31
  %33 = ptrtoint ptr %iro_arr39.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iro_arr39.i, align 8
  %arrayidx40.i = getelementptr %struct.iro, ptr %34, i32 57
  %35 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx40.i, align 4
  %37 = ptrtoint ptr %rel_pf_id72.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rel_pf_id72.i, align 1
  %conv43.i = zext i8 %38 to i32
  %m147.i = getelementptr %struct.iro, ptr %34, i32 57, i32 1
  %39 = ptrtoint ptr %m147.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %m147.i, align 4
  %conv48.i = zext i16 %40 to i32
  %mul49.i = mul nuw nsw i32 %conv48.i, %conv43.i
  %add50.i = add i32 %36, 21364736
  %add51.i = add i32 %add50.i, %mul49.i
  br label %qed_get_rdma_assert_ram_addr.exit

sw.bb52.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_hwfn, align 8
  %iro_arr54.i = getelementptr inbounds %struct.qed_dev, ptr %42, i32 0, i32 31
  %43 = ptrtoint ptr %iro_arr54.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iro_arr54.i, align 8
  %arrayidx55.i = getelementptr %struct.iro, ptr %44, i32 58
  %45 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx55.i, align 4
  %47 = ptrtoint ptr %rel_pf_id72.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rel_pf_id72.i, align 1
  %conv58.i = zext i8 %48 to i32
  %m162.i = getelementptr %struct.iro, ptr %44, i32 58, i32 1
  %49 = ptrtoint ptr %m162.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %m162.i, align 4
  %conv63.i = zext i16 %50 to i32
  %mul64.i = mul nuw nsw i32 %conv63.i, %conv58.i
  %add65.i = add i32 %46, 22413312
  %add66.i = add i32 %add65.i, %mul64.i
  br label %qed_get_rdma_assert_ram_addr.exit

sw.bb67.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %p_hwfn, align 8
  %iro_arr69.i = getelementptr inbounds %struct.qed_dev, ptr %52, i32 0, i32 31
  %53 = ptrtoint ptr %iro_arr69.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iro_arr69.i, align 8
  %arrayidx70.i = getelementptr %struct.iro, ptr %54, i32 59
  %55 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx70.i, align 4
  %57 = ptrtoint ptr %rel_pf_id72.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rel_pf_id72.i, align 1
  %conv73.i = zext i8 %58 to i32
  %m177.i = getelementptr %struct.iro, ptr %54, i32 59, i32 1
  %59 = ptrtoint ptr %m177.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %m177.i, align 4
  %conv78.i = zext i16 %60 to i32
  %mul79.i = mul nuw nsw i32 %conv78.i, %conv73.i
  %add80.i = add i32 %56, 23461888
  %add81.i = add i32 %add80.i, %mul79.i
  br label %qed_get_rdma_assert_ram_addr.exit

qed_get_rdma_assert_ram_addr.exit:                ; preds = %sw.bb67.i, %sw.bb52.i, %sw.bb37.i, %sw.bb22.i, %sw.bb7.i, %sw.bb.i, %for.body.qed_get_rdma_assert_ram_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %add81.i, %sw.bb67.i ], [ %add66.i, %sw.bb52.i ], [ %add51.i, %sw.bb37.i ], [ %add36.i, %sw.bb22.i ], [ %add21.i, %sw.bb7.i ], [ %add6.i, %sw.bb.i ], [ 0, %for.body.qed_get_rdma_assert_ram_addr.exit_crit_edge ]
  %arrayidx = getelementptr i8, ptr %assert_level, i32 %indvars.iv
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %62 to i32
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %retval.0.i, i32 noundef %conv2) #8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i8 %storm_id.07, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %qed_get_rdma_assert_ram_addr.exit.for.body_crit_edge

qed_get_rdma_assert_ram_addr.exit.for.body_crit_edge: ; preds = %qed_get_rdma_assert_ram_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %qed_get_rdma_assert_ram_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qed_fw_overlay_mem_alloc(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef readonly %fw_overlay_in_buf, i32 noundef %buf_size_in_bytes) local_unnamed_addr #1 align 64 {
entry:
  %allocated_mem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div51 = lshr i32 %buf_size_in_bytes, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocated_mem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buf_size_in_bytes)
  %tobool.not = icmp ult i32 %buf_size_in_bytes, 4
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #12
  %1 = ptrtoint ptr %allocated_mem to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %allocated_mem, align 4
  %tobool1.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup30_crit_edge, label %while.body.preheader

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

while.body.preheader:                             ; preds = %if.end
  %2 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 72)
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %buf_offset.056 = phi i32 [ %add22, %cleanup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %arrayidx = getelementptr i32, ptr %fw_overlay_in_buf, i32 %buf_offset.056
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %4, 8
  %conv7 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv7)
  %cmp8 = icmp ugt i32 %conv7, 5
  br i1 %cmp8, label %while.body.while.end_crit_edge, label %if.end11

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end11:                                         ; preds = %while.body
  %5 = ptrtoint ptr %allocated_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %allocated_mem, align 4
  %add.ptr = getelementptr %struct.phys_mem_desc, ptr %6, i32 %conv7
  %mul = shl nuw nsw i32 %shr, 2
  %size = getelementptr %struct.phys_mem_desc, ptr %6, i32 %conv7, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %size, align 4
  %8 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 50
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %add.ptr, i32 noundef 3264, i32 noundef 0) #8
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %6, i32 %conv7, i32 1
  %12 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %virt_addr, align 4
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end11.while.end_crit_edge, label %cleanup

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup:                                          ; preds = %if.end11
  %add = add nuw i32 %buf_offset.056, 1
  %arrayidx20 = getelementptr i32, ptr %fw_overlay_in_buf, i32 %add
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %15 = call ptr @memcpy(ptr %call.i, ptr %arrayidx20, i32 %14)
  %add22 = add i32 %shr, %add
  %cmp = icmp ult i32 %add22, %div51
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end11.while.end_crit_edge, %while.body.while.end_crit_edge
  %buf_offset.0.lcssa.ph = phi i32 [ %add22, %cleanup.while.end_crit_edge ], [ %buf_offset.056, %while.body.while.end_crit_edge ], [ %buf_offset.056, %if.end11.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_offset.0.lcssa.ph, i32 %div51)
  %cmp26 = icmp ult i32 %buf_offset.0.lcssa.ph, %div51
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @qed_fw_overlay_mem_free(ptr noundef %p_hwfn, ptr noundef nonnull %allocated_mem)
  br label %cleanup30

if.end29:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %allocated_mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %allocated_mem, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %if.end29, %if.then28, %if.end.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi ptr [ null, %if.then28 ], [ %17, %if.end29 ], [ null, %entry.cleanup30_crit_edge ], [ null, %if.end.cleanup30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocated_mem) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_fw_overlay_mem_free(ptr nocapture noundef readonly %p_hwfn, ptr noundef %fw_overlay_mem) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw_overlay_mem, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_overlay_mem, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_overlay_mem, align 4
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %for.body.preheader.if.end7_crit_edge, label %if.then5

for.body.preheader.if.end7_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %size = getelementptr %struct.phys_mem_desc, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %11, ptr noundef nonnull %5, i32 noundef %13, i32 noundef 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.body.preheader.if.end7_crit_edge
  %14 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_overlay_mem, align 4
  %virt_addr.1 = getelementptr %struct.phys_mem_desc, ptr %15, i32 1, i32 1
  %16 = ptrtoint ptr %virt_addr.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt_addr.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %if.end7.if.end7.1_crit_edge, label %if.then5.1

if.end7.if.end7.1_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.1

if.then5.1:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.1 = getelementptr %struct.phys_mem_desc, ptr %15, i32 1
  %18 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_hwfn, align 8
  %pdev.1 = getelementptr inbounds %struct.qed_dev, ptr %19, i32 0, i32 50
  %20 = ptrtoint ptr %pdev.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.1, align 8
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %size.1 = getelementptr %struct.phys_mem_desc, ptr %15, i32 1, i32 2
  %22 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.1, align 4
  %24 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1, i32 noundef %23, ptr noundef nonnull %17, i32 noundef %25, i32 noundef 0) #8
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.then5.1, %if.end7.if.end7.1_crit_edge
  %26 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw_overlay_mem, align 4
  %virt_addr.2 = getelementptr %struct.phys_mem_desc, ptr %27, i32 2, i32 1
  %28 = ptrtoint ptr %virt_addr.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt_addr.2, align 4
  %tobool4.not.2 = icmp eq ptr %29, null
  br i1 %tobool4.not.2, label %if.end7.1.if.end7.2_crit_edge, label %if.then5.2

if.end7.1.if.end7.2_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.2

if.then5.2:                                       ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.2 = getelementptr %struct.phys_mem_desc, ptr %27, i32 2
  %30 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_hwfn, align 8
  %pdev.2 = getelementptr inbounds %struct.qed_dev, ptr %31, i32 0, i32 50
  %32 = ptrtoint ptr %pdev.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.2, align 8
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %size.2 = getelementptr %struct.phys_mem_desc, ptr %27, i32 2, i32 2
  %34 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.2, align 4
  %36 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.2, i32 noundef %35, ptr noundef nonnull %29, i32 noundef %37, i32 noundef 0) #8
  br label %if.end7.2

if.end7.2:                                        ; preds = %if.then5.2, %if.end7.1.if.end7.2_crit_edge
  %38 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw_overlay_mem, align 4
  %virt_addr.3 = getelementptr %struct.phys_mem_desc, ptr %39, i32 3, i32 1
  %40 = ptrtoint ptr %virt_addr.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virt_addr.3, align 4
  %tobool4.not.3 = icmp eq ptr %41, null
  br i1 %tobool4.not.3, label %if.end7.2.if.end7.3_crit_edge, label %if.then5.3

if.end7.2.if.end7.3_crit_edge:                    ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.3

if.then5.3:                                       ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.3 = getelementptr %struct.phys_mem_desc, ptr %39, i32 3
  %42 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_hwfn, align 8
  %pdev.3 = getelementptr inbounds %struct.qed_dev, ptr %43, i32 0, i32 50
  %44 = ptrtoint ptr %pdev.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.3, align 8
  %dev.3 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %size.3 = getelementptr %struct.phys_mem_desc, ptr %39, i32 3, i32 2
  %46 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.3, align 4
  %48 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.3, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.3, i32 noundef %47, ptr noundef nonnull %41, i32 noundef %49, i32 noundef 0) #8
  br label %if.end7.3

if.end7.3:                                        ; preds = %if.then5.3, %if.end7.2.if.end7.3_crit_edge
  %50 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw_overlay_mem, align 4
  %virt_addr.4 = getelementptr %struct.phys_mem_desc, ptr %51, i32 4, i32 1
  %52 = ptrtoint ptr %virt_addr.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %virt_addr.4, align 4
  %tobool4.not.4 = icmp eq ptr %53, null
  br i1 %tobool4.not.4, label %if.end7.3.if.end7.4_crit_edge, label %if.then5.4

if.end7.3.if.end7.4_crit_edge:                    ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.4

if.then5.4:                                       ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.4 = getelementptr %struct.phys_mem_desc, ptr %51, i32 4
  %54 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p_hwfn, align 8
  %pdev.4 = getelementptr inbounds %struct.qed_dev, ptr %55, i32 0, i32 50
  %56 = ptrtoint ptr %pdev.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.4, align 8
  %dev.4 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %size.4 = getelementptr %struct.phys_mem_desc, ptr %51, i32 4, i32 2
  %58 = ptrtoint ptr %size.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.4, align 4
  %60 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.4, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.4, i32 noundef %59, ptr noundef nonnull %53, i32 noundef %61, i32 noundef 0) #8
  br label %if.end7.4

if.end7.4:                                        ; preds = %if.then5.4, %if.end7.3.if.end7.4_crit_edge
  %62 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw_overlay_mem, align 4
  %virt_addr.5 = getelementptr %struct.phys_mem_desc, ptr %63, i32 5, i32 1
  %64 = ptrtoint ptr %virt_addr.5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %virt_addr.5, align 4
  %tobool4.not.5 = icmp eq ptr %65, null
  br i1 %tobool4.not.5, label %if.end7.4.if.end7.5_crit_edge, label %if.then5.5

if.end7.4.if.end7.5_crit_edge:                    ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.5

if.then5.5:                                       ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.5 = getelementptr %struct.phys_mem_desc, ptr %63, i32 5
  %66 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %p_hwfn, align 8
  %pdev.5 = getelementptr inbounds %struct.qed_dev, ptr %67, i32 0, i32 50
  %68 = ptrtoint ptr %pdev.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.5, align 8
  %dev.5 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %size.5 = getelementptr %struct.phys_mem_desc, ptr %63, i32 5, i32 2
  %70 = ptrtoint ptr %size.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.5, align 4
  %72 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.5, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.5, i32 noundef %71, ptr noundef nonnull %65, i32 noundef %73, i32 noundef 0) #8
  br label %if.end7.5

if.end7.5:                                        ; preds = %if.then5.5, %if.end7.4.if.end7.5_crit_edge
  %74 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fw_overlay_mem, align 4
  tail call void @kfree(ptr noundef %75) #8
  %76 = ptrtoint ptr %fw_overlay_mem to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %fw_overlay_mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7.5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_fw_overlay_init_ram(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %fw_overlay_mem) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.phys_mem_desc, ptr %fw_overlay_mem, i32 %indvars.iv
  %virt_addr = getelementptr %struct.phys_mem_desc, ptr %fw_overlay_mem, i32 %indvars.iv, i32 1
  %0 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = trunc i32 %indvars.iv to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %3 = icmp ult i8 %2, 6
  br i1 %3, label %switch.lookup, label %if.end.qed_get_overlay_addr_ram_addr.exit_crit_edge

if.end.qed_get_overlay_addr_ram_addr.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qed_get_overlay_addr_ram_addr.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sext = shl i32 %indvars.iv, 24
  %4 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.qed_fw_overlay_init_ram, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sext28 = shl i32 %indvars.iv, 24
  %6 = ashr exact i32 %sext28, 24
  %switch.gep26 = getelementptr inbounds [6 x i32], ptr @switch.table.qed_fw_overlay_init_ram.137, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load27 = load i32, ptr %switch.gep26, align 4
  %8 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_hwfn, align 8
  %iro_arr27.i = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %iro_arr27.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iro_arr27.i, align 8
  %arrayidx28.i = getelementptr %struct.iro, ptr %11, i32 %switch.load
  %12 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx28.i, align 4
  %add30.i = add i32 %13, %switch.load27
  br label %qed_get_overlay_addr_ram_addr.exit

qed_get_overlay_addr_ram_addr.exit:               ; preds = %switch.lookup, %if.end.qed_get_overlay_addr_ram_addr.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.qed_get_overlay_addr_ram_addr.exit_crit_edge ], [ %add30.i, %switch.lookup ]
  %14 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rel_pf_id, align 1
  %conv3 = zext i8 %15 to i32
  %mul = shl nuw nsw i32 %conv3, 2
  %add = add i32 %mul, %retval.0.i
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  tail call void @qed_wr(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %qed_get_overlay_addr_ram_addr.exit, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end13, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end13:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dmae_host2grc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283}
!llvm.module.flags = !{!285, !286, !287, !288, !289, !290, !291, !292}
!llvm.ident = !{!293}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1044, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_init_pf_wfq._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_init_pf_wfq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1059, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qed_init_pf_rl._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @qed_init_pf_rl._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1098, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qed_init_vport_tc_wfq._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @qed_init_vport_tc_wfq._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1124, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qed_init_global_rl._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @qed_init_global_rl._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1463, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qed_gft_config._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @qed_gft_config._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1466, i32 3}
!29 = !{ptr @qed_gft_config._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qed_gft_config._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1469, i32 3}
!33 = !{ptr @qed_gft_config._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qed_gft_config._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1729, i32 10}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1742, i32 10}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 795, i32 3}
!41 = !{ptr @qed_pf_wfq_rt_init._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qed_pf_wfq_rt_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 831, i32 3}
!45 = !{ptr @qed_pf_rl_rt_init._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @qed_pf_rl_rt_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 871, i32 5}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @qed_vp_wfq_rt_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @qed_vp_wfq_rt_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 581, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qed_vport_rl_rt_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @qed_vport_rl_rt_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 598, i32 4}
!59 = !{ptr @qed_vport_rl_rt_init._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qed_vport_rl_rt_init._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 904, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qed_poll_on_qm_cmd_ready._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qed_poll_on_qm_cmd_ready._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1232, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @qed_dmae_to_grc._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @qed_dmae_to_grc._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @con_region_offsets, !72, !"con_region_offsets", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 21, i32 12}
!73 = distinct !{null, !74, !"crc8_table_valid", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1586, i32 12}
!75 = !{ptr @cdu_crc8_table, !76, !"cdu_crc8_table", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 1579, i32 1}
!77 = !{ptr @task_region_offsets, !78, !"task_region_offsets", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 27, i32 12}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 214, i32 2}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 214, i32 22}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 214, i32 41}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 215, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 215, i32 21}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 215, i32 39}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 216, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 216, i32 20}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 216, i32 42}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 217, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 217, i32 20}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 217, i32 39}
!103 = !{ptr @s_protocol_types, !104, !"s_protocol_types", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 213, i32 27}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 222, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 222, i32 32}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 223, i32 3}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 224, i32 3}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 225, i32 3}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 226, i32 3}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 227, i32 3}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 227, i32 35}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 228, i32 3}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 229, i32 4}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 229, i32 36}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 230, i32 3}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 231, i32 3}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 232, i32 3}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 233, i32 4}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 233, i32 26}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 234, i32 3}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 234, i32 29}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 235, i32 3}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 235, i32 32}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 236, i32 3}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 236, i32 28}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 237, i32 3}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 237, i32 29}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 238, i32 3}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 238, i32 30}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 239, i32 3}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 239, i32 35}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 240, i32 3}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 240, i32 28}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 241, i32 3}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 241, i32 29}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 242, i32 3}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 242, i32 32}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 243, i32 3}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 243, i32 29}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 244, i32 3}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 244, i32 38}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 245, i32 3}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 245, i32 32}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 246, i32 3}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 246, i32 41}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 247, i32 4}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 247, i32 26}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 248, i32 3}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 248, i32 33}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 249, i32 3}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 250, i32 3}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 251, i32 3}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 251, i32 34}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 252, i32 4}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 252, i32 25}
!209 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 253, i32 3}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 253, i32 30}
!213 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 254, i32 3}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 254, i32 32}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 255, i32 3}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 255, i32 32}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 256, i32 3}
!223 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 256, i32 32}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 257, i32 3}
!227 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 258, i32 3}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 259, i32 3}
!231 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 260, i32 3}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 261, i32 3}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 262, i32 3}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 263, i32 3}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 263, i32 38}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 264, i32 3}
!243 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 264, i32 33}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 265, i32 3}
!247 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 265, i32 33}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 266, i32 3}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 274, i32 3}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 275, i32 3}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 276, i32 3}
!257 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 277, i32 3}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 277, i32 36}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 278, i32 3}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 279, i32 3}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 280, i32 3}
!267 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 283, i32 4}
!269 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 283, i32 28}
!271 = !{ptr @.str.128, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 284, i32 7}
!273 = !{ptr @.str.129, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 284, i32 32}
!275 = !{ptr @.str.130, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 285, i32 7}
!277 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 285, i32 32}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 286, i32 7}
!281 = !{ptr @.str.133, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 286, i32 34}
!283 = !{ptr @s_ramrod_cmd_ids, !284, !"s_ramrod_cmd_ids", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/qlogic/qed/qed_init_fw_funcs.c", i32 220, i32 20}
!285 = !{i32 1, !"wchar_size", i32 2}
!286 = !{i32 1, !"min_enum_size", i32 4}
!287 = !{i32 8, !"branch-target-enforcement", i32 0}
!288 = !{i32 8, !"sign-return-address", i32 0}
!289 = !{i32 8, !"sign-return-address-all", i32 0}
!290 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!291 = !{i32 7, !"uwtable", i32 1}
!292 = !{i32 7, !"frame-pointer", i32 2}
!293 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!294 = !{i8 0, i8 2}
!295 = !{!"branch_weights", i32 1, i32 2000}
!296 = !{!"branch_weights", i32 2000, i32 1}
