; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_selftest_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_mfw_speed_map = type { i32, [3 x i32], ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.109, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
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
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.109 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.108, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.108 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.qed_link_output = type { i8, [3 x i32], [3 x i32], [3 x i32], i32, i8, i8, i8, i32, i8, i8, i8, %struct.qed_link_eee_params, i32, i32 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_common_cb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_mcp_link_capabilities = type { i32, i8, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_mcp_info = type { %struct.list_head, %struct.spinlock, i8, %struct.spinlock, i32, i32, i32, i32, i16, i16, %struct.qed_mcp_link_params, %struct.qed_mcp_link_state, %struct.qed_mcp_link_capabilities, %struct.qed_mcp_function_info, ptr, ptr, i16, i32, i32, %struct.atomic_t }
%struct.qed_mcp_function_info = type { i8, i32, i8, i8, [6 x i8], i64, i64, i16, i16 }
%struct.qed_probe_params = type { i32, i32, i8, i8, i8 }
%struct.qed_drv_load_params = type { i8, i8, i8, i32 }
%struct.qed_hw_init_params = type { ptr, i8, i32, i8, ptr, ptr }
%struct.qed_mcp_drv_version = type { i32, [12 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.qed_slowpath_params = type { i32, i8, i8, i8, i8, [12 x i8] }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.qed_link_params = type { i8, i32, i8, [3 x i32], i32, i32, i32, %struct.qed_link_eee_params, i32 }
%struct.bist_nvm_image_att = type { i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.qed_eth_stats = type { %struct.qed_eth_stats_common, %union.anon.10 }
%struct.qed_eth_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.10 = type { %struct.qed_eth_stats_bb }
%struct.qed_eth_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_mcp_lan_stats = type { i64, i64, i32 }
%struct.qed_generic_tlvs = type { i16, [3 x [6 x i8]] }
%struct.anon.135 = type { i8, i8, i8 }
%struct.qed_mfw_tlv_generic = type { %struct.anon.135, [3 x [6 x i8]], [3 x i8], i64, i8, i64, i8, i64, i8, i64, i8 }
%struct.qed_sb_cnt_info = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description357 = internal constant [50 x i8] c"qed.description=QLogic FastLinQ 4xxxx Core Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [45 x i8] c"qed.file=drivers/net/ethernet/qlogic/qed/qed\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [16 x i8] c"qed.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [53 x i8] c"qed.firmware=qed/qed_init_values_zipped-8.59.1.0.bin\00", section ".modinfo", align 1
@__initcall__kmod_qed__361_250_qed_init6 = internal global ptr @qed_init, section ".initcall6.init", align 4
@__exitcall_qed_exit = internal global ptr @qed_exit, section ".exitcall.exit", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sp-%d-%02x:%02x.%02x\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02x:%02x.%02x\00", [17 x i8] zeroinitializer }, align 32
@qed_slowpath_irq_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]request_irq failed, rc = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_slowpath_irq_req\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/qlogic/qed/qed_main.c\00", [53 x i8] zeroinitializer }, align 32
@qed_slowpath_irq_req._entry_ptr = internal global ptr @qed_slowpath_irq_req._entry, section ".printk_index", align 4
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_slowpath_irq_req._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Requested slowpath %s\0A\00", [60 x i8] zeroinitializer }, align 32
@qed_slowpath_irq_req._entry_ptr.8 = internal global ptr @qed_slowpath_irq_req._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSI-X\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IRQ\00", [28 x i8] zeroinitializer }, align 32
@qed_unzip_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]zlib init failed, rc = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_unzip_data\00", [17 x i8] zeroinitializer }, align 32
@qed_unzip_data._entry_ptr = internal global ptr @qed_unzip_data._entry, section ".printk_index", align 4
@qed_unzip_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]FW unzip error: %s, rc=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_unzip_data._entry_ptr.15 = internal global ptr @qed_unzip_data._entry.13, section ".printk_index", align 4
@qed_hw_err_type_descr = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [36 x i8] zeroinitializer }, align 32
@qed_hw_error_occurred._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 2775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]HW error occurred [%s]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_hw_error_occurred\00", [42 x i8] zeroinitializer }, align 32
@qed_hw_error_occurred._entry_ptr = internal global ptr @qed_hw_error_occurred._entry, section ".printk_index", align 4
@qed_selftest_ops_pass = internal global { %struct.qed_selftest_ops, [44 x i8] } { %struct.qed_selftest_ops { ptr @qed_selftest_interrupt, ptr @qed_selftest_memory, ptr @qed_selftest_register, ptr @qed_selftest_clock, ptr @qed_selftest_nvram }, [44 x i8] zeroinitializer }, align 32
@qed_common_ops_pass = dso_local constant { %struct.qed_common_ops, [60 x i8] } { %struct.qed_common_ops { ptr @qed_selftest_ops_pass, ptr @qed_probe, ptr @qed_remove, ptr @qed_set_power_state, ptr @qed_set_name, ptr @qed_update_pf_params, ptr @qed_slowpath_start, ptr @qed_slowpath_stop, ptr @qed_set_int_fp, ptr @qed_get_int_fp, ptr @qed_sb_init, ptr @qed_sb_release, ptr @qed_simd_handler_config, ptr @qed_simd_handler_clean, ptr @qed_dbg_grc, ptr @qed_dbg_grc_size, ptr @qed_dbg_all_data, ptr @qed_dbg_all_data_size, ptr @qed_report_fatal_error, ptr @qed_can_link_change, ptr @qed_set_link, ptr @qed_get_current_link, ptr @qed_drain, ptr @qed_init_dp, ptr @qed_chain_alloc, ptr @qed_chain_free, ptr @qed_nvm_flash, ptr @qed_nvm_get_image, ptr @qed_set_coalesce, ptr @qed_set_led, ptr @qed_int_attn_clr_enable, ptr @qed_db_recovery_add, ptr @qed_db_recovery_del, ptr @qed_recovery_process, ptr @qed_recovery_prolog, ptr @qed_update_drv_state, ptr @qed_update_mac, ptr @qed_update_mtu, ptr @qed_update_wol, ptr @qed_read_module_eeprom, ptr @qed_get_affin_hwfn_idx, ptr @qed_nvm_flash_cfg_read, ptr @qed_nvm_flash_cfg_len, ptr @qed_set_grc_config, ptr @qed_devlink_register, ptr @qed_devlink_unregister, ptr @qed_mfw_report, ptr @qed_get_sb_info, ptr @qed_get_esl_status }, [60 x i8] zeroinitializer }, align 32
@qed_get_protocol_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 3120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Invalid protocol type = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_get_protocol_stats\00", [41 x i8] zeroinitializer }, align 32
@qed_get_protocol_stats._entry_ptr = internal global ptr @qed_get_protocol_stats._entry, section ".printk_index", align 4
@qed_mfw_tlv_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 3129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Scheduling slowpath task [Flag: %d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_mfw_tlv_req\00", [16 x i8] zeroinitializer }, align 32
@qed_mfw_tlv_req._entry_ptr = internal global ptr @qed_mfw_tlv_req._entry, section ".printk_index", align 4
@qed_mfw_fill_tlv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 3189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Can't collect TLV management info\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_mfw_fill_tlv_data\00", [42 x i8] zeroinitializer }, align 32
@qed_mfw_fill_tlv_data._entry_ptr = internal global ptr @qed_mfw_fill_tlv_data._entry, section ".printk_index", align 4
@qed_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qed_init\00", [23 x i8] zeroinitializer }, align 32
@qed_init._entry_ptr = internal global ptr @qed_init._entry, section ".printk_index", align 4
@version = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"QLogic FastLinQ 4xxxx Core Module qed\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_mfw_ext_maps = internal global [8 x %struct.qed_mfw_speed_map] [%struct.qed_mfw_speed_map { i32 65536, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_1g, i32 3 }, %struct.qed_mfw_speed_map { i32 131072, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_10g, i32 8 }, %struct.qed_mfw_speed_map { i32 262144, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_25g, i32 3 }, %struct.qed_mfw_speed_map { i32 524288, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_40g, i32 4 }, %struct.qed_mfw_speed_map { i32 1048576, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_50g_base_r, i32 5 }, %struct.qed_mfw_speed_map { i32 2097152, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_50g_base_r2, i32 3 }, %struct.qed_mfw_speed_map { i32 4194304, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_100g_base_r2, i32 5 }, %struct.qed_mfw_speed_map { i32 8388608, [3 x i32] zeroinitializer, ptr @qed_mfw_ext_100g_base_r4, i32 4 }], section ".data..ro_after_init", align 4
@qed_mfw_legacy_maps = internal global [7 x %struct.qed_mfw_speed_map] [%struct.qed_mfw_speed_map { i32 1, [3 x i32] zeroinitializer, ptr @qed_mfw_legacy_1g, i32 3 }, %struct.qed_mfw_speed_map { i32 2, [3 x i32] zeroinitializer, ptr @qed_mfw_legacy_10g, i32 8 }, %struct.qed_mfw_speed_map { i32 4, [3 x i32] zeroinitializer, ptr @qed_mfw_legacy_20g, i32 1 }, %struct.qed_mfw_speed_map { i32 8, [3 x i32] zeroinitializer, ptr @qed_mfw_legacy_25g, i32 3 }, %struct.qed_mfw_speed_map { i32 16, [3 x i32] zeroinitializer, ptr @qed_mfw_legacy_40g, i32 4 }, %struct.qed_mfw_speed_map { i32 32, [3 x i32] zeroinitializer, ptr @qed_mfw_legacy_50g, i32 3 }, %struct.qed_mfw_speed_map { i32 64, [3 x i32] zeroinitializer, ptr @qed_mfw_legacy_bb_100g, i32 4 }], section ".data..ro_after_init", align 4
@qed_mfw_ext_1g = internal constant [3 x i32] [i32 5, i32 17, i32 41], section ".init.rodata", align 4
@qed_mfw_ext_10g = internal constant [8 x i32] [i32 12, i32 19, i32 18, i32 20, i32 42, i32 43, i32 44, i32 45], section ".init.rodata", align 4
@qed_mfw_ext_25g = internal constant [3 x i32] [i32 32, i32 31, i32 33], section ".init.rodata", align 4
@qed_mfw_ext_40g = internal constant [4 x i32] [i32 26, i32 23, i32 24, i32 25], section ".init.rodata", align 4
@qed_mfw_ext_50g_base_r = internal constant [5 x i32] [i32 52, i32 54, i32 53, i32 55, i32 56], section ".init.rodata", align 4
@qed_mfw_ext_50g_base_r2 = internal constant [3 x i32] [i32 35, i32 34, i32 40], section ".init.rodata", align 4
@qed_mfw_ext_100g_base_r2 = internal constant [5 x i32] [i32 57, i32 58, i32 59, i32 61, i32 60], section ".init.rodata", align 4
@qed_mfw_ext_100g_base_r4 = internal constant [4 x i32] [i32 36, i32 37, i32 38, i32 39], section ".init.rodata", align 4
@qed_mfw_legacy_1g = internal constant [3 x i32] [i32 5, i32 17, i32 41], section ".init.rodata", align 4
@qed_mfw_legacy_10g = internal constant [8 x i32] [i32 12, i32 19, i32 18, i32 20, i32 42, i32 43, i32 44, i32 45], section ".init.rodata", align 4
@qed_mfw_legacy_20g = internal constant [1 x i32] [i32 22], section ".init.rodata", align 4
@qed_mfw_legacy_25g = internal constant [3 x i32] [i32 32, i32 31, i32 33], section ".init.rodata", align 4
@qed_mfw_legacy_40g = internal constant [4 x i32] [i32 26, i32 23, i32 24, i32 25], section ".init.rodata", align 4
@qed_mfw_legacy_50g = internal constant [3 x i32] [i32 35, i32 34, i32 40], section ".init.rodata", align 4
@qed_mfw_legacy_bb_100g = internal constant [4 x i32] [i32 36, i32 37, i32 38, i32 39], section ".init.rodata", align 4
@qed_single_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\015[%s:%d(%s)]Not calling fastpath handler as it is NULL [handler #%d, status 0x%llx]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_single_int\00", [17 x i8] zeroinitializer }, align 32
@qed_single_int._entry_ptr = internal global ptr @qed_single_int._entry, section ".printk_index", align 4
@qed_single_int._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]got an unknown interrupt status 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@qed_single_int._entry_ptr.30 = internal global ptr @qed_single_int._entry.28, section ".printk_index", align 4
@qed_fill_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 2094, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no link data available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_fill_link\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qed_fill_link._entry_ptr = internal global ptr @qed_fill_link._entry, section ".printk_index", align 4
@qed_fill_link_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 1868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\015[%s:%d(%s)]Media_type = 0x%x tcvr_state = 0x%x tcvr_type = 0x%x speed_mask = 0x%x board_cfg = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_fill_link_capability\00", [39 x i8] zeroinitializer }, align 32
@qed_fill_link_capability._entry_ptr = internal global ptr @qed_fill_link_capability._entry, section ".printk_index", align 4
@qed_fill_link_capability._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 2055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Unknown media and transceiver type;\0A\00", [46 x i8] zeroinitializer }, align 32
@qed_fill_link_capability._entry_ptr.39 = internal global ptr @qed_fill_link_capability._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Fan Failure\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MFW Response Failure\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HW Attention\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMAE Failure\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ramrod Failure\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FW Assertion\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@qed_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013[%s:%d(%s)]init pci failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qed_probe\00", [22 x i8] zeroinitializer }, align 32
@qed_probe._entry_ptr = internal global ptr @qed_probe._entry, section ".printk_index", align 4
@qed_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]PCI init completed successfully\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_probe._entry_ptr.51 = internal global ptr @qed_probe._entry.49, section ".printk_index", align 4
@qed_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.4, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013[%s:%d(%s)]hw prepare failed\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_probe._entry_ptr.54 = internal global ptr @qed_probe._entry.52, section ".printk_index", align 4
@qed_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.4, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]%s completed successfully\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_probe._entry_ptr.57 = internal global ptr @qed_probe._entry.55, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_init_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Cannot enable PCI device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_init_pci\00", [19 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr = internal global ptr @qed_init_pci._entry, section ".printk_index", align 4
@qed_init_pci._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]No memory region found in bar #0\0A\00", [49 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.62 = internal global ptr @qed_init_pci._entry.60, section ".printk_index", align 4
@qed_init_pci._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.4, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]No memory region found in bar #2\0A\00", [49 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.65 = internal global ptr @qed_init_pci._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qed\00", [28 x i8] zeroinitializer }, align 32
@qed_init_pci._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.59, ptr @.str.4, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Failed to request PCI memory resources\0A\00", [43 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.69 = internal global ptr @qed_init_pci._entry.67, section ".printk_index", align 4
@qed_init_pci._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.59, ptr @.str.4, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\015[%s:%d(%s)]Detected PCI device error [rev_id 0x%x]. Probably due to prior indication. Aborting.\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.72 = internal global ptr @qed_init_pci._entry.70, section ".printk_index", align 4
@qed_init_pci._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.59, ptr @.str.4, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]The bus is not PCI Express\0A\00", [55 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.75 = internal global ptr @qed_init_pci._entry.73, section ".printk_index", align 4
@qed_init_pci._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.59, ptr @.str.4, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Cannot find power management capability\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.78 = internal global ptr @qed_init_pci._entry.76, section ".printk_index", align 4
@qed_init_pci._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.59, ptr @.str.4, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Can't request DMA addresses\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.81 = internal global ptr @qed_init_pci._entry.79, section ".printk_index", align 4
@qed_init_pci._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.59, ptr @.str.4, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Cannot map register space, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.84 = internal global ptr @qed_init_pci._entry.82, section ".printk_index", align 4
@qed_init_pci._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.59, ptr @.str.4, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]No Doorbell bar available\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.87 = internal global ptr @qed_init_pci._entry.85, section ".printk_index", align 4
@qed_init_pci._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.59, ptr @.str.4, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Cannot map doorbell space\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.90 = internal global ptr @qed_init_pci._entry.88, section ".printk_index", align 4
@qed_init_pci._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.59, ptr @.str.4, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Failed to configure PCIe AER [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_init_pci._entry_ptr.93 = internal global ptr @qed_init_pci._entry.91, section ".printk_index", align 4
@qed_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Omitting Power state change\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qed_set_power_state\00", [44 x i8] zeroinitializer }, align 32
@qed_set_power_state._entry_ptr = internal global ptr @qed_set_power_state._entry, section ".printk_index", align 4
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"qed/qed_init_values_zipped-8.59.1.0.bin\00", [56 x i8] zeroinitializer }, align 32
@qed_slowpath_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]Failed to find fw file - /lib/firmware/%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_slowpath_start\00", [45 x i8] zeroinitializer }, align 32
@qed_slowpath_start._entry_ptr = internal global ptr @qed_slowpath_start._entry, section ".printk_index", align 4
@qed_slowpath_start._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Failed to acquire PTT for aRFS\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_slowpath_start._entry_ptr.102 = internal global ptr @qed_slowpath_start._entry.100, section ".printk_index", align 4
@qed_slowpath_start._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.4, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\015[%s:%d(%s)]HW initialization and function start completed successfully\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_slowpath_start._entry_ptr.105 = internal global ptr @qed_slowpath_start._entry.103, section ".printk_index", align 4
@qed_slowpath_start._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.4, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Failed sending drv version command\0A\00", [47 x i8] zeroinitializer }, align 32
@qed_slowpath_start._entry_ptr.108 = internal global ptr @qed_slowpath_start._entry.106, section ".printk_index", align 4
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"slowpath-%02x:%02x.%02x\00", [40 x i8] zeroinitializer }, align 32
@qed_slowpath_wq_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.4, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Cannot create slowpath workqueue\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_slowpath_wq_start\00", [42 x i8] zeroinitializer }, align 32
@qed_slowpath_wq_start._entry_ptr = internal global ptr @qed_slowpath_wq_start._entry, section ".printk_index", align 4
@qed_slowpath_wq_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&hwfn->slowpath_task)->work)\00", [47 x i8] zeroinitializer }, align 32
@qed_slowpath_wq_start.__key.113 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&hwfn->slowpath_task)->timer\00", [33 x i8] zeroinitializer }, align 32
@qed_nic_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Allocated qed resources\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_nic_setup\00", [18 x i8] zeroinitializer }, align 32
@qed_nic_setup._entry_ptr = internal global ptr @qed_nic_setup._entry, section ".printk_index", align 4
@qed_slowpath_setup_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.4, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]MSI mode is not supported for CMT devices\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_slowpath_setup_int\00", [41 x i8] zeroinitializer }, align 32
@qed_slowpath_setup_int._entry_ptr = internal global ptr @qed_slowpath_setup_int._entry, section ".printk_index", align 4
@qed_slowpath_setup_int._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.4, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]Kdump kernel: Limit the max number of requested MSI-X vectors to %hd\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_slowpath_setup_int._entry_ptr.121 = internal global ptr @qed_slowpath_setup_int._entry.119, section ".printk_index", align 4
@qed_slowpath_setup_int._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.4, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013[%s:%d(%s)]%s ERR\0A\00", [43 x i8] zeroinitializer }, align 32
@qed_slowpath_setup_int._entry_ptr.124 = internal global ptr @qed_slowpath_setup_int._entry.122, section ".printk_index", align 4
@qed_set_int_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.4, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Failed to enable MSI-X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_set_int_mode\00", [47 x i8] zeroinitializer }, align 32
@qed_set_int_mode._entry_ptr = internal global ptr @qed_set_int_mode._entry, section ".printk_index", align 4
@qed_set_int_mode._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.4, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Failed to enable MSI\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_set_int_mode._entry_ptr.129 = internal global ptr @qed_set_int_mode._entry.127, section ".printk_index", align 4
@qed_set_int_mode._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.4, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Unknown int_mode value %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_set_int_mode._entry_ptr.132 = internal global ptr @qed_set_int_mode._entry.130, section ".printk_index", align 4
@qed_set_int_mode._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.4, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]Using %s interrupts\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_set_int_mode._entry_ptr.135 = internal global ptr @qed_set_int_mode._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTa\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MSIX\00", [27 x i8] zeroinitializer }, align 32
@qed_enable_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.4, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]Trying to enable MSI-X with less vectors (%d out of %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_enable_msix\00", [16 x i8] zeroinitializer }, align 32
@qed_enable_msix._entry_ptr = internal global ptr @qed_enable_msix._entry, section ".printk_index", align 4
@qed_enable_msix._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.4, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]Failed to enable MSI-X [Requested %d vectors][rc %d]\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_enable_msix._entry_ptr.143 = internal global ptr @qed_enable_msix._entry.141, section ".printk_index", align 4
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@qed_nic_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.4, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Disabled sp tasklet [hwfn %d] at %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_nic_stop\00", [19 x i8] zeroinitializer }, align 32
@qed_nic_stop._entry_ptr = internal global ptr @qed_nic_stop._entry, section ".printk_index", align 4
@qed_get_int_fp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.4, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\015[%s:%d(%s)]Protocol driver requested interrupt information, but its support is not yet configured\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_get_int_fp\00", [17 x i8] zeroinitializer }, align 32
@qed_get_int_fp._entry_ptr = internal global ptr @qed_get_int_fp._entry, section ".printk_index", align 4
@qed_sb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.4, i32 1471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]hwfn [%d] <--[init]-- SB %04x [0x%04x upper]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qed_sb_init\00", [20 x i8] zeroinitializer }, align 32
@qed_sb_init._entry_ptr = internal global ptr @qed_sb_init._entry, section ".printk_index", align 4
@qed_sb_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.150, ptr @.str.4, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_sb_release\00", [17 x i8] zeroinitializer }, align 32
@qed_sb_release._entry_ptr = internal global ptr @qed_sb_release._entry, section ".printk_index", align 4
@qed_get_current_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.4, i32 2205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Failed to fill link; No PTT\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_get_current_link\00", [43 x i8] zeroinitializer }, align 32
@qed_get_current_link._entry_ptr = internal global ptr @qed_get_current_link._entry, section ".printk_index", align 4
@qed_drain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.4, i32 2250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Failed to drain NIG; No PTT\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qed_drain\00", [22 x i8] zeroinitializer }, align 32
@qed_drain._entry_ptr = internal global ptr @qed_drain._entry, section ".printk_index", align 4
@qed_nvm_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.4, i32 2660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013[%s:%d(%s)]Failed to find '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_nvm_flash\00", [18 x i8] zeroinitializer }, align 32
@qed_nvm_flash._entry_ptr = internal global ptr @qed_nvm_flash._entry, section ".printk_index", align 4
@qed_nvm_flash._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.4, i32 2666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]Flashing '%s' - firmware's data at %p, size is %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_nvm_flash._entry_ptr.159 = internal global ptr @qed_nvm_flash._entry.157, section ".printk_index", align 4
@qed_nvm_flash._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.156, ptr @.str.4, i32 2696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013[%s:%d(%s)]Unknown command %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@qed_nvm_flash._entry_ptr.162 = internal global ptr @qed_nvm_flash._entry.160, section ".printk_index", align 4
@qed_nvm_flash._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.156, ptr @.str.4, i32 2702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013[%s:%d(%s)]Command %08x failed\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_nvm_flash._entry_ptr.165 = internal global ptr @qed_nvm_flash._entry.163, section ".printk_index", align 4
@qed_nvm_flash._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.156, ptr @.str.4, i32 2711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]Failed getting MCP response\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_nvm_flash._entry_ptr.168 = internal global ptr @qed_nvm_flash._entry.166, section ".printk_index", align 4
@qed_nvm_flash._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.156, ptr @.str.4, i32 2724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]MFW returns error: %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_nvm_flash._entry_ptr.171 = internal global ptr @qed_nvm_flash._entry.169, section ".printk_index", align 4
@qed_nvm_flash_image_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.4, i32 2489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[%s:%d(%s)]Image is too short [%08x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qed_nvm_flash_image_validate\00", [35 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_validate._entry_ptr = internal global ptr @qed_nvm_flash_image_validate._entry, section ".printk_index", align 4
@qed_nvm_flash_image_validate._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.4, i32 2496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Wrong signature '%08x'\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_validate._entry_ptr.176 = internal global ptr @qed_nvm_flash_image_validate._entry.174, section ".printk_index", align 4
@qed_nvm_flash_image_validate._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.4, i32 2505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013[%s:%d(%s)]Size mismatch: internal = %08x image = %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_validate._entry_ptr.179 = internal global ptr @qed_nvm_flash_image_validate._entry.177, section ".printk_index", align 4
@qed_nvm_flash_image_validate._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.4, i32 2513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[%s:%d(%s)]File contains unsupported commands [Need %04x]\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_validate._entry_ptr.182 = internal global ptr @qed_nvm_flash_image_validate._entry.180, section ".printk_index", align 4
@qed_nvm_flash_image_file_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.4, i32 2465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]About to write File-data: %08x bytes to offset %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_nvm_flash_image_file_data\00", [34 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_file_data._entry_ptr = internal global ptr @qed_nvm_flash_image_file_data._entry, section ".printk_index", align 4
@qed_nvm_flash_image_file_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.4, i32 2425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]About to start a new file of type %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_nvm_flash_image_file_start\00", [33 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_file_start._entry_ptr = internal global ptr @qed_nvm_flash_image_file_start._entry, section ".printk_index", align 4
@qed_nvm_flash_image_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.4, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[%s:%d(%s)]Failed to find nvram image of type %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_nvm_flash_image_access\00", [37 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access._entry_ptr = internal global ptr @qed_nvm_flash_image_access._entry, section ".printk_index", align 4
@qed_nvm_flash_image_access._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.4, i32 2339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Read image %02x; type = %08x; NVM [%08x,...,%08x]\0A\00", [32 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access._entry_ptr.191 = internal global ptr @qed_nvm_flash_image_access._entry.189, section ".printk_index", align 4
@qed_nvm_flash_image_access._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.4, i32 2350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]Failed calculating CRC, rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access._entry_ptr.194 = internal global ptr @qed_nvm_flash_image_access._entry.192, section ".printk_index", align 4
@qed_nvm_flash_image_access._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.188, ptr @.str.4, i32 2359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]Failed writing to %08x, rc = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access._entry_ptr.197 = internal global ptr @qed_nvm_flash_image_access._entry.195, section ".printk_index", align 4
@qed_nvm_flash_image_access._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.188, ptr @.str.4, i32 2379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]Failed reading from %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access._entry_ptr.200 = internal global ptr @qed_nvm_flash_image_access._entry.198, section ".printk_index", align 4
@qed_nvm_flash_image_access._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.188, ptr @.str.4, i32 2387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]NVM %08x: %08x -> %08x [Value %08x Mask %08x]\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access._entry_ptr.203 = internal global ptr @qed_nvm_flash_image_access._entry.201, section ".printk_index", align 4
@qed_nvm_flash_image_access._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.188, ptr @.str.4, i32 2394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Failed writing to %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access._entry_ptr.206 = internal global ptr @qed_nvm_flash_image_access._entry.204, section ".printk_index", align 4
@qed_nvm_flash_image_access_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.4, i32 2278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]Failed reading image from nvm\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_nvm_flash_image_access_crc\00", [33 x i8] zeroinitializer }, align 32
@qed_nvm_flash_image_access_crc._entry_ptr = internal global ptr @qed_nvm_flash_image_access_crc._entry, section ".printk_index", align 4
@qed_nvm_flash_cfg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.4, i32 2556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Read config ids: num_attrs = %0d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_nvm_flash_cfg_write\00", [40 x i8] zeroinitializer }, align 32
@qed_nvm_flash_cfg_write._entry_ptr = internal global ptr @qed_nvm_flash_cfg_write._entry, section ".printk_index", align 4
@qed_nvm_flash_cfg_write._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.4, i32 2588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]cfg_id = %d entity = %d len = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@qed_nvm_flash_cfg_write._entry_ptr.213 = internal global ptr @qed_nvm_flash_cfg_write._entry.211, section ".printk_index", align 4
@qed_nvm_flash_cfg_write._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.210, ptr @.str.4, i32 2592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Error %d configuring %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_nvm_flash_cfg_write._entry_ptr.216 = internal global ptr @qed_nvm_flash_cfg_write._entry.214, section ".printk_index", align 4
@qed_nvm_flash_cfg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.4, i32 2640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Read config cmd = %d entity id %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_nvm_flash_cfg_read\00", [41 x i8] zeroinitializer }, align 32
@qed_nvm_flash_cfg_read._entry_ptr = internal global ptr @qed_nvm_flash_cfg_read._entry, section ".printk_index", align 4
@qed_nvm_flash_cfg_read._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.4, i32 2644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013[%s:%d(%s)]Error %d reading %d\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_nvm_flash_cfg_read._entry_ptr.221 = internal global ptr @qed_nvm_flash_cfg_read._entry.219, section ".printk_index", align 4
@qed_nvm_flash_cfg_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.222, ptr @.str.4, i32 2618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_nvm_flash_cfg_len\00", [42 x i8] zeroinitializer }, align 32
@qed_nvm_flash_cfg_len._entry_ptr = internal global ptr @qed_nvm_flash_cfg_len._entry, section ".printk_index", align 4
@qed_get_sb_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.4, i32 2934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]Can't acquire PTT\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_get_sb_info\00", [16 x i8] zeroinitializer }, align 32
@qed_get_sb_info._entry_ptr = internal global ptr @qed_get_sb_info._entry, section ".printk_index", align 4
@switch.table.qed_set_link = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1024, i32 2048, i32 4096, i32 1024, i32 1024, i32 1024, i32 1024, i32 7168], [32 x i8] zeroinitializer }, align 32
@switch.table.qed_set_link.225 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32768, i32 65536, i32 131072, i32 32768, i32 32768, i32 32768, i32 32768, i32 229376], [32 x i8] zeroinitializer }, align 32
@switch.table.qed_set_link.226 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 524288, i32 1048576, i32 2097152, i32 524288, i32 524288, i32 524288, i32 524288, i32 3670016], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 240, i64 255]
@__sancov_gen_cov_switch_values.227 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.228 = internal global [9 x i64] [i64 7, i64 32, i64 1000, i64 10000, i64 20000, i64 25000, i64 40000, i64 50000, i64 100000]
@__sancov_gen_cov_switch_values.229 = internal global [6 x i64] [i64 4, i64 32, i64 25000, i64 40000, i64 50000, i64 100000]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.231 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.232 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.233 = internal global [6 x i64] [i64 4, i64 32, i64 65536, i64 1114112, i64 1441792, i64 4194304]
@__sancov_gen_cov_switch_values.234 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.235 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.236 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 240]
@__sancov_gen_cov_switch_values.237 = internal global [5 x i64] [i64 3, i64 32, i64 14, i64 49, i64 52]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 52]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.240 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 57, i64 58]
@__sancov_gen_cov_switch_values.241 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 6, i64 7, i64 8, i64 48, i64 50, i64 55, i64 56, i64 57, i64 58]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 32, i64 28, i64 55]
@__sancov_gen_cov_switch_values.243 = internal global [8 x i64] [i64 6, i64 32, i64 12, i64 13, i64 48, i64 50, i64 51, i64 53]
@__sancov_gen_cov_switch_values.244 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 51, i64 53]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.246 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 762, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 770, i32 35 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 782, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 784, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1039, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1048, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [22 x i8] c"qed_hw_err_type_descr\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2754, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2775, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [22 x i8] c"qed_selftest_ops_pass\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 3035, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c"qed_common_ops_pass\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 3043, i32 29 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 3119, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 3127, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 3189, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 244, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 51, i32 13 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 734, i32 6 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 744, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2094, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1866, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2054, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2755, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2756, i32 31 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2757, i32 26 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2758, i32 28 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2759, i32 29 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2760, i32 28 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2761, i32 23 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 516, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 519, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 523, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 527, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 288, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 293, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 299, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 305, i32 34 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 307, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 317, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 324, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 331, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 335, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 346, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 355, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 365, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 372, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 489, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1446, i32 44 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1264, i32 42 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1267, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1278, i32 5 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1340, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1368, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1228, i32 29 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1234, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1238, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 877, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 934, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 951, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 960, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 636, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 650, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 661, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 668, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 586, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 606, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 849, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 907, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1469, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 1507, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2205, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2250, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2660, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2664, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2696, i32 4 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2702, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2711, i32 5 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2723, i32 5 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2489, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2496, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2504, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2512, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2463, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2424, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2328, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2336, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2350, i32 4 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2358, i32 4 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2378, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2384, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2393, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2278, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2555, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2586, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2592, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2639, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2644, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2618, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.907 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.908 = private constant [46 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_main.c\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.908, i32 2934, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant [26 x i8] c"switch.table.qed_set_link\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [30 x i8] c"switch.table.qed_set_link.225\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [30 x i8] c"switch.table.qed_set_link.226\00", align 1
@llvm.compiler.used = appending global [310 x ptr] [ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_license359, ptr @__exitcall_qed_exit, ptr @__initcall__kmod_qed__361_250_qed_init6, ptr @qed_drain._entry, ptr @qed_drain._entry_ptr, ptr @qed_enable_msix._entry, ptr @qed_enable_msix._entry.141, ptr @qed_enable_msix._entry_ptr, ptr @qed_enable_msix._entry_ptr.143, ptr @qed_exit, ptr @qed_fill_link._entry, ptr @qed_fill_link._entry_ptr, ptr @qed_fill_link_capability._entry, ptr @qed_fill_link_capability._entry.37, ptr @qed_fill_link_capability._entry_ptr, ptr @qed_fill_link_capability._entry_ptr.39, ptr @qed_get_current_link._entry, ptr @qed_get_current_link._entry_ptr, ptr @qed_get_int_fp._entry, ptr @qed_get_int_fp._entry_ptr, ptr @qed_get_protocol_stats._entry, ptr @qed_get_protocol_stats._entry_ptr, ptr @qed_get_sb_info._entry, ptr @qed_get_sb_info._entry_ptr, ptr @qed_hw_error_occurred._entry, ptr @qed_hw_error_occurred._entry_ptr, ptr @qed_init._entry, ptr @qed_init._entry_ptr, ptr @qed_init_pci._entry, ptr @qed_init_pci._entry.60, ptr @qed_init_pci._entry.63, ptr @qed_init_pci._entry.67, ptr @qed_init_pci._entry.70, ptr @qed_init_pci._entry.73, ptr @qed_init_pci._entry.76, ptr @qed_init_pci._entry.79, ptr @qed_init_pci._entry.82, ptr @qed_init_pci._entry.85, ptr @qed_init_pci._entry.88, ptr @qed_init_pci._entry.91, ptr @qed_init_pci._entry_ptr, ptr @qed_init_pci._entry_ptr.62, ptr @qed_init_pci._entry_ptr.65, ptr @qed_init_pci._entry_ptr.69, ptr @qed_init_pci._entry_ptr.72, ptr @qed_init_pci._entry_ptr.75, ptr @qed_init_pci._entry_ptr.78, ptr @qed_init_pci._entry_ptr.81, ptr @qed_init_pci._entry_ptr.84, ptr @qed_init_pci._entry_ptr.87, ptr @qed_init_pci._entry_ptr.90, ptr @qed_init_pci._entry_ptr.93, ptr @qed_mfw_fill_tlv_data._entry, ptr @qed_mfw_fill_tlv_data._entry_ptr, ptr @qed_mfw_tlv_req._entry, ptr @qed_mfw_tlv_req._entry_ptr, ptr @qed_nic_setup._entry, ptr @qed_nic_setup._entry_ptr, ptr @qed_nic_stop._entry, ptr @qed_nic_stop._entry_ptr, ptr @qed_nvm_flash._entry, ptr @qed_nvm_flash._entry.157, ptr @qed_nvm_flash._entry.160, ptr @qed_nvm_flash._entry.163, ptr @qed_nvm_flash._entry.166, ptr @qed_nvm_flash._entry.169, ptr @qed_nvm_flash._entry_ptr, ptr @qed_nvm_flash._entry_ptr.159, ptr @qed_nvm_flash._entry_ptr.162, ptr @qed_nvm_flash._entry_ptr.165, ptr @qed_nvm_flash._entry_ptr.168, ptr @qed_nvm_flash._entry_ptr.171, ptr @qed_nvm_flash_cfg_len._entry, ptr @qed_nvm_flash_cfg_len._entry_ptr, ptr @qed_nvm_flash_cfg_read._entry, ptr @qed_nvm_flash_cfg_read._entry.219, ptr @qed_nvm_flash_cfg_read._entry_ptr, ptr @qed_nvm_flash_cfg_read._entry_ptr.221, ptr @qed_nvm_flash_cfg_write._entry, ptr @qed_nvm_flash_cfg_write._entry.211, ptr @qed_nvm_flash_cfg_write._entry.214, ptr @qed_nvm_flash_cfg_write._entry_ptr, ptr @qed_nvm_flash_cfg_write._entry_ptr.213, ptr @qed_nvm_flash_cfg_write._entry_ptr.216, ptr @qed_nvm_flash_image_access._entry, ptr @qed_nvm_flash_image_access._entry.189, ptr @qed_nvm_flash_image_access._entry.192, ptr @qed_nvm_flash_image_access._entry.195, ptr @qed_nvm_flash_image_access._entry.198, ptr @qed_nvm_flash_image_access._entry.201, ptr @qed_nvm_flash_image_access._entry.204, ptr @qed_nvm_flash_image_access._entry_ptr, ptr @qed_nvm_flash_image_access._entry_ptr.191, ptr @qed_nvm_flash_image_access._entry_ptr.194, ptr @qed_nvm_flash_image_access._entry_ptr.197, ptr @qed_nvm_flash_image_access._entry_ptr.200, ptr @qed_nvm_flash_image_access._entry_ptr.203, ptr @qed_nvm_flash_image_access._entry_ptr.206, ptr @qed_nvm_flash_image_access_crc._entry, ptr @qed_nvm_flash_image_access_crc._entry_ptr, ptr @qed_nvm_flash_image_file_data._entry, ptr @qed_nvm_flash_image_file_data._entry_ptr, ptr @qed_nvm_flash_image_file_start._entry, ptr @qed_nvm_flash_image_file_start._entry_ptr, ptr @qed_nvm_flash_image_validate._entry, ptr @qed_nvm_flash_image_validate._entry.174, ptr @qed_nvm_flash_image_validate._entry.177, ptr @qed_nvm_flash_image_validate._entry.180, ptr @qed_nvm_flash_image_validate._entry_ptr, ptr @qed_nvm_flash_image_validate._entry_ptr.176, ptr @qed_nvm_flash_image_validate._entry_ptr.179, ptr @qed_nvm_flash_image_validate._entry_ptr.182, ptr @qed_probe._entry, ptr @qed_probe._entry.49, ptr @qed_probe._entry.52, ptr @qed_probe._entry.55, ptr @qed_probe._entry_ptr, ptr @qed_probe._entry_ptr.51, ptr @qed_probe._entry_ptr.54, ptr @qed_probe._entry_ptr.57, ptr @qed_sb_init._entry, ptr @qed_sb_init._entry_ptr, ptr @qed_sb_release._entry, ptr @qed_sb_release._entry_ptr, ptr @qed_set_int_mode._entry, ptr @qed_set_int_mode._entry.127, ptr @qed_set_int_mode._entry.130, ptr @qed_set_int_mode._entry.133, ptr @qed_set_int_mode._entry_ptr, ptr @qed_set_int_mode._entry_ptr.129, ptr @qed_set_int_mode._entry_ptr.132, ptr @qed_set_int_mode._entry_ptr.135, ptr @qed_set_power_state._entry, ptr @qed_set_power_state._entry_ptr, ptr @qed_single_int._entry, ptr @qed_single_int._entry.28, ptr @qed_single_int._entry_ptr, ptr @qed_single_int._entry_ptr.30, ptr @qed_slowpath_irq_req._entry, ptr @qed_slowpath_irq_req._entry.6, ptr @qed_slowpath_irq_req._entry_ptr, ptr @qed_slowpath_irq_req._entry_ptr.8, ptr @qed_slowpath_setup_int._entry, ptr @qed_slowpath_setup_int._entry.119, ptr @qed_slowpath_setup_int._entry.122, ptr @qed_slowpath_setup_int._entry_ptr, ptr @qed_slowpath_setup_int._entry_ptr.121, ptr @qed_slowpath_setup_int._entry_ptr.124, ptr @qed_slowpath_start._entry, ptr @qed_slowpath_start._entry.100, ptr @qed_slowpath_start._entry.103, ptr @qed_slowpath_start._entry.106, ptr @qed_slowpath_start._entry_ptr, ptr @qed_slowpath_start._entry_ptr.102, ptr @qed_slowpath_start._entry_ptr.105, ptr @qed_slowpath_start._entry_ptr.108, ptr @qed_slowpath_wq_start._entry, ptr @qed_slowpath_wq_start._entry_ptr, ptr @qed_unzip_data._entry, ptr @qed_unzip_data._entry.13, ptr @qed_unzip_data._entry_ptr, ptr @qed_unzip_data._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @qed_hw_err_type_descr, ptr @.str.16, ptr @.str.17, ptr @qed_selftest_ops_pass, ptr @qed_common_ops_pass, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @version, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @qed_slowpath_wq_start.__key, ptr @.str.112, ptr @qed_slowpath_wq_start.__key.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @switch.table.qed_set_link, ptr @switch.table.qed_set_link.225, ptr @switch.table.qed_set_link.226], section "llvm.metadata"
@0 = internal global [224 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_irq_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_irq_req._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_unzip_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_unzip_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_hw_err_type_descr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_hw_error_occurred._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_ops_pass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_common_ops_pass to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_protocol_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_tlv_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_mfw_fill_tlv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_single_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_single_int._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fill_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fill_link_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fill_link_capability._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_init_pci._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_start._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_start._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_start._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_wq_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_wq_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_wq_start.__key.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nic_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_setup_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_setup_int._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_slowpath_setup_int._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_set_int_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_set_int_mode._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_set_int_mode._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_set_int_mode._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_enable_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_enable_msix._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nic_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_int_fp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sb_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_current_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_drain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_validate._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_validate._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_validate._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_file_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_file_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_image_access_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_cfg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_cfg_write._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_cfg_write._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_cfg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_cfg_read._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_nvm_flash_cfg_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_sb_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_set_link to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_set_link.225 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_set_link.226 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @version) #24
  tail call fastcc void @qed_mfw_speed_maps_init() #25
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qed_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_fill_dev_info(ptr noundef %cdev, ptr noundef %dev_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %hw_info1 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = call ptr @memset(ptr %dev_info, i32 0, i32 60)
  %tun_cls = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 0, i32 2
  %1 = ptrtoint ptr %tun_cls to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tun_cls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %b_mode_enabled = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 0, i32 1
  %3 = ptrtoint ptr %b_mode_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_mode_enabled, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %vxlan_enable = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 21
  %5 = ptrtoint ptr %vxlan_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %vxlan_enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %b_mode_enabled3 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 3, i32 1
  %6 = ptrtoint ptr %b_mode_enabled3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_mode_enabled3, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end17_crit_edge, label %land.lhs.true5

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

land.lhs.true5:                                   ; preds = %if.end
  %b_mode_enabled6 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 4, i32 1
  %8 = ptrtoint ptr %b_mode_enabled6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %b_mode_enabled6, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %land.lhs.true5.if.end17_crit_edge, label %land.lhs.true8

land.lhs.true5.if.end17_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %tun_cls10 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 3, i32 2
  %10 = ptrtoint ptr %tun_cls10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tun_cls10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true8.if.end17_crit_edge

land.lhs.true8.if.end17_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %tun_cls14 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 4, i32 2
  %12 = ptrtoint ptr %tun_cls14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tun_cls14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15 = icmp eq i32 %13, 0
  br i1 %cmp15, label %if.then16, label %land.lhs.true12.if.end17_crit_edge

land.lhs.true12.if.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #23
  %gre_enable = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 22
  %14 = ptrtoint ptr %gre_enable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %gre_enable, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true12.if.end17_crit_edge, %land.lhs.true8.if.end17_crit_edge, %land.lhs.true5.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %b_mode_enabled18 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 1, i32 1
  %15 = ptrtoint ptr %b_mode_enabled18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %b_mode_enabled18, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not = icmp eq i8 %16, 0
  br i1 %tobool19.not, label %if.end17.if.end32_crit_edge, label %land.lhs.true20

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

land.lhs.true20:                                  ; preds = %if.end17
  %b_mode_enabled21 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 2, i32 1
  %17 = ptrtoint ptr %b_mode_enabled21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %b_mode_enabled21, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not = icmp eq i8 %18, 0
  br i1 %tobool22.not, label %land.lhs.true20.if.end32_crit_edge, label %land.lhs.true23

land.lhs.true20.if.end32_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %tun_cls25 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 1, i32 2
  %19 = ptrtoint ptr %tun_cls25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tun_cls25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp26 = icmp eq i32 %20, 0
  br i1 %cmp26, label %land.lhs.true27, label %land.lhs.true23.if.end32_crit_edge

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %tun_cls29 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 38, i32 2, i32 2
  %21 = ptrtoint ptr %tun_cls29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tun_cls29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp30 = icmp eq i32 %22, 0
  br i1 %cmp30, label %if.then31, label %land.lhs.true27.if.end32_crit_edge

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #23
  %geneve_enable = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 23
  %23 = ptrtoint ptr %geneve_enable to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %geneve_enable, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true27.if.end32_crit_edge, %land.lhs.true23.if.end32_crit_edge, %land.lhs.true20.if.end32_crit_edge, %if.end17.if.end32_crit_edge
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %24 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_hwfns, align 4
  %num_hwfns33 = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 3
  %26 = ptrtoint ptr %num_hwfns33 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %num_hwfns33, align 4
  %mem_start = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 53, i32 1
  %27 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_start, align 4
  %29 = ptrtoint ptr %dev_info to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dev_info, align 4
  %mem_end = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 53, i32 2
  %30 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_end, align 4
  %pci_mem_end = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 1
  %32 = ptrtoint ptr %pci_mem_end to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pci_mem_end, align 4
  %irq = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 53, i32 3
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %pci_irq = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 2
  %35 = ptrtoint ptr %pci_irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pci_irq, align 4
  %36 = ptrtoint ptr %hw_info1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_info1, align 8
  %.off = add i32 %37, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %rdma_supported = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 14
  %frombool = zext i1 %switch to i8
  %38 = ptrtoint ptr %rdma_supported to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %rdma_supported, align 1
  %type = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 3
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 8
  %dev_type = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 20
  %41 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dev_type, align 4
  %hw_mac = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 4
  %hw_mac_addr = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 13
  %42 = ptrtoint ptr %hw_mac_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hw_mac_addr, align 4
  %44 = ptrtoint ptr %hw_mac to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hw_mac, align 4
  %add.ptr.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 13, i32 4
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qed_dev_info, ptr %dev_info, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr1.i, align 2
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %48 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool45.not = icmp eq i8 %49, 0
  %fw_major = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 5
  br i1 %tobool45.not, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end32
  %50 = ptrtoint ptr %fw_major to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 8, ptr %fw_major, align 4
  %fw_minor = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 6
  %51 = ptrtoint ptr %fw_minor to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 59, ptr %fw_minor, align 2
  %fw_rev = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 7
  %52 = ptrtoint ptr %fw_rev to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %fw_rev, align 4
  %fw_eng = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 8
  %53 = ptrtoint ptr %fw_eng to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %fw_eng, align 2
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 15
  %54 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %mf_bits, align 4
  %b_inter_pf_switch = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 12
  %56 = trunc i32 %55 to i8
  %57 = lshr i8 %56, 5
  %58 = and i8 %57, 1
  %59 = ptrtoint ptr %b_inter_pf_switch to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %b_inter_pf_switch, align 1
  %60 = load volatile i32, ptr %mf_bits, align 4
  %61 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool51.not = icmp eq i32 %61, 0
  br i1 %tobool51.not, label %if.then52, label %if.then46.if.end53_crit_edge

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #23
  %b_arfs_capable = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 11
  %62 = ptrtoint ptr %b_arfs_capable to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %b_arfs_capable, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then46.if.end53_crit_edge
  %tx_switching = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 13
  %63 = ptrtoint ptr %tx_switching to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %tx_switching, align 2
  %b_wol_support = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 21
  %64 = ptrtoint ptr %b_wol_support to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %b_wol_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp54 = icmp eq i32 %65, 1
  br i1 %cmp54, label %if.then55, label %if.end53.if.end56_crit_edge

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end56

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #23
  %wol_support = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 16
  %66 = ptrtoint ptr %wol_support to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %wol_support, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53.if.end56_crit_edge
  %call57 = tail call zeroext i1 @qed_mcp_is_smart_an_supported(ptr noundef %hwfns) #21
  %smart_an = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 17
  %frombool58 = zext i1 %call57 to i8
  %67 = ptrtoint ptr %smart_an to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool58, ptr %smart_an, align 1
  %call59 = tail call zeroext i1 @qed_mcp_is_esl_supported(ptr noundef %hwfns) #21
  %esl = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 18
  %frombool60 = zext i1 %call59 to i8
  %68 = ptrtoint ptr %esl to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool60, ptr %esl, align 4
  %abs_pf_id = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 3
  %69 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %abs_pf_id, align 2
  %abs_pf_id63 = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 24
  %71 = ptrtoint ptr %abs_pf_id63 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %abs_pf_id63, align 1
  br label %if.end70

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #23
  %fw_minor67 = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 6
  %fw_rev68 = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 7
  %fw_eng69 = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 8
  tail call void @qed_vf_get_fw_version(ptr noundef %hwfns, ptr noundef %fw_major, ptr noundef %fw_minor67, ptr noundef %fw_rev68, ptr noundef %fw_eng69) #21
  br label %if.end70

if.end70:                                         ; preds = %if.else, %if.end56
  %72 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool72.not = icmp eq i8 %73, 0
  br i1 %tobool72.not, label %if.then73, label %if.else91

if.then73:                                        ; preds = %if.end70
  %call76 = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.then73.if.end96_crit_edge, label %if.then78

if.then73.if.end96_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end96

if.then78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #23
  %mfw_rev = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 9
  %call81 = tail call i32 @qed_mcp_get_mfw_ver(ptr noundef %hwfns, ptr noundef nonnull %call76, ptr noundef %mfw_rev, ptr noundef null) #21
  %mbi_version = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 19
  %call84 = tail call i32 @qed_mcp_get_mbi_ver(ptr noundef %hwfns, ptr noundef nonnull %call76, ptr noundef %mbi_version) #21
  %flash_size = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 10
  %call87 = tail call i32 @qed_mcp_get_flash_size(ptr noundef %hwfns, ptr noundef nonnull %call76, ptr noundef %flash_size) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call76) #21
  br label %if.end96

if.else91:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #23
  %mfw_rev94 = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 9
  %call95 = tail call i32 @qed_mcp_get_mfw_ver(ptr noundef %hwfns, ptr noundef null, ptr noundef %mfw_rev94, ptr noundef null) #21
  br label %if.end96

if.end96:                                         ; preds = %if.else91, %if.then78, %if.then73.if.end96_crit_edge
  %mtu = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 20
  %74 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mtu, align 8
  %mtu97 = getelementptr inbounds %struct.qed_dev_info, ptr %dev_info, i32 0, i32 15
  %76 = ptrtoint ptr %mtu97 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %mtu97, align 4
  %common_dev_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 48
  %77 = call ptr @memcpy(ptr %common_dev_info, ptr %dev_info, i32 60)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qed_mcp_is_smart_an_supported(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qed_mcp_is_esl_supported(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_fw_version(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_mfw_ver(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_mbi_ver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_flash_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_slowpath_irq_req(ptr noundef %hwfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwfn, align 8
  %out = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 54, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 1
  %4 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %my_id, align 4
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 8
  %conv = zext i8 %5 to i32
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 50
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %conv3 = zext i8 %11 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %13, 3
  %and = and i32 %shr, 31
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 3
  %14 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %abs_pf_id, align 2
  %conv5 = zext i8 %15 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv3, i32 noundef %and, i32 noundef %conv5)
  %msix_table = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 54, i32 2
  %16 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msix_table, align 8
  %arrayidx = getelementptr %struct.msix_entry, ptr %17, i32 %conv
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %sp_dpc = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 22
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @qed_msix_sp_int, ptr noundef null, i32 noundef 0, ptr noundef %name, ptr noundef %sp_dpc) #21
  br label %if.end34

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %name10 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 2
  %pdev12 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 50
  %20 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev12, align 8
  %bus13 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bus13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus13, align 8
  %number14 = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %number14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number14, align 4
  %conv15 = zext i8 %25 to i32
  %devfn17 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %devfn17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devfn17, align 4
  %shr18 = lshr i32 %27, 3
  %and19 = and i32 %shr18, 31
  %and22 = and i32 %27, 7
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name10, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %conv15, i32 noundef %and19, i32 noundef %and22)
  %28 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp27 = icmp eq i32 %29, 0
  %spec.select = select i1 %cmp27, i32 128, i32 0
  %30 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev12, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %call.i118 = tail call i32 @request_threaded_irq(i32 noundef %33, ptr noundef nonnull @qed_single_int, ptr noundef null, i32 noundef %spec.select, ptr noundef %name10, ptr noundef %1) #21
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then
  %rc.0 = phi i32 [ %call.i, %if.then ], [ %call.i118, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool.not = icmp eq i32 %rc.0, 0
  br i1 %tobool.not, label %do.body53, label %do.body

do.body:                                          ; preds = %if.end34
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp37 = icmp ult i8 %35, 3
  br i1 %cmp37, label %do.end, label %do.body.if.end87_crit_edge, !prof !452

do.body.if.end87_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end87

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name43 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 2
  %tobool45.not = icmp eq ptr %name43, null
  %spec.select116 = select i1 %tobool45.not, ptr @.str.5, ptr %name43
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 782, ptr noundef nonnull %spec.select116, i32 noundef %rc.0) #24
  br label %if.end87

do.body53:                                        ; preds = %if.end34
  %dp_level54 = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 7
  %36 = ptrtoint ptr %dp_level54 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dp_level54, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp56 = icmp eq i8 %37, 0
  br i1 %cmp56, label %land.rhs, label %do.body53.if.end87_crit_edge

do.body53.if.end87_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end87

land.rhs:                                         ; preds = %do.body53
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 6
  %38 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dp_module, align 4
  %and58 = and i32 %39, 1049088
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %land.rhs.if.end87_crit_edge, label %do.end69, !prof !453

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end87

do.end69:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name71 = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 8
  %tobool73.not = icmp eq ptr %name71, null
  %spec.select117 = select i1 %tobool73.not, ptr @.str.5, ptr %name71
  %cond82 = select i1 %cmp, ptr @.str.9, ptr @.str.10
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 786, ptr noundef nonnull %spec.select117, ptr noundef nonnull %cond82) #24
  br label %if.end87

if.end87:                                         ; preds = %do.end69, %land.rhs.if.end87_crit_edge, %do.body53.if.end87_crit_edge, %do.end, %do.body.if.end87_crit_edge
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_msix_sp_int(i32 noundef %irq, ptr noundef %tasklet) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %tasklet, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #21
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_single_int(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %dev_instance, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp122.not = icmp eq i8 %1, 0
  br i1 %cmp122.not, label %entry.for.end86_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end86

for.body:                                         ; preds = %for.inc84.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0124 = phi i32 [ %inc85, %for.inc84.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rc.0123 = phi i32 [ %rc.4, %for.inc84.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %dev_instance, i32 0, i32 33, i32 %i.0124
  %call = tail call i64 @qed_int_igu_read_sisr_reg(ptr noundef %arrayidx) #21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %for.body.for.inc84_crit_edge, label %if.end

for.body.for.inc84_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc84

if.end:                                           ; preds = %for.body
  %and = and i64 %call, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then7, !prof !453

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %sp_dpc = getelementptr %struct.qed_dev, ptr %dev_instance, i32 0, i32 33, i32 %i.0124, i32 22
  tail call fastcc void @tasklet_schedule(ptr noundef %sp_dpc)
  %and8 = and i64 %call, -2
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %rc.1 = phi i32 [ 1, %if.then7 ], [ %rc.0123, %if.end.if.end9_crit_edge ]
  %status.0 = phi i64 [ %and8, %if.then7 ], [ %call, %if.end.if.end9_crit_edge ]
  %dp_level = getelementptr %struct.qed_dev, ptr %dev_instance, i32 0, i32 33, i32 %i.0124, i32 7
  %name = getelementptr %struct.qed_dev, ptr %dev_instance, i32 0, i32 33, i32 %i.0124, i32 8
  %tobool32.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool32.not, ptr @.str.5, ptr %name
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %if.end9
  %j.0118 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body13_crit_edge ]
  %status.1116 = phi i64 [ %status.0, %if.end9 ], [ %status.2, %for.inc.for.body13_crit_edge ]
  %rc.2115 = phi i32 [ %rc.1, %if.end9 ], [ %rc.3, %for.inc.for.body13_crit_edge ]
  %sh_prom = zext i32 %j.0118 to i64
  %shl = shl i64 2, %sh_prom
  %and14 = and i64 %shl, %status.1116
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %for.body13.for.inc_crit_edge, label %if.then16

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then16:                                        ; preds = %for.body13
  %func = getelementptr %struct.qed_dev, ptr %dev_instance, i32 0, i32 33, i32 %i.0124, i32 66, i32 %j.0118, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %do.body, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx17 = getelementptr %struct.qed_dev, ptr %dev_instance, i32 0, i32 33, i32 %i.0124, i32 66, i32 %j.0118
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx17, align 4
  tail call void %3(ptr noundef %5) #21
  br label %if.end39

do.body:                                          ; preds = %if.then16
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp22 = icmp ult i8 %7, 3
  br i1 %cmp22, label %do.end, label %do.body.if.end39_crit_edge, !prof !452

do.body.if.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end39

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 736, ptr noundef nonnull %spec.select, i32 noundef %j.0118, i64 noundef %status.1116) #24
  br label %if.end39

if.end39:                                         ; preds = %do.end, %do.body.if.end39_crit_edge, %if.then19
  %neg = xor i64 %shl, -1
  %and42 = and i64 %status.1116, %neg
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %for.body13.for.inc_crit_edge
  %rc.3 = phi i32 [ 1, %if.end39 ], [ %rc.2115, %for.body13.for.inc_crit_edge ]
  %status.2 = phi i64 [ %and42, %if.end39 ], [ %status.1116, %for.body13.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0118, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body13

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %status.2)
  %tobool44.not = icmp eq i64 %status.2, 0
  br i1 %tobool44.not, label %for.end.for.inc84_crit_edge, label %do.body52, !prof !453

for.end.for.inc84_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc84

do.body52:                                        ; preds = %for.end
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp55 = icmp eq i8 %9, 0
  br i1 %cmp55, label %land.rhs, label %do.body52.for.inc84_crit_edge

do.body52.for.inc84_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc84

land.rhs:                                         ; preds = %do.body52
  %dp_module = getelementptr %struct.qed_dev, ptr %dev_instance, i32 0, i32 33, i32 %i.0124, i32 6
  %10 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module, align 4
  %and57 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.rhs.for.inc84_crit_edge, label %do.end68, !prof !453

land.rhs.for.inc84_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc84

do.end68:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 746, ptr noundef nonnull %spec.select, i64 noundef %status.2) #24
  br label %for.inc84

for.inc84:                                        ; preds = %do.end68, %land.rhs.for.inc84_crit_edge, %do.body52.for.inc84_crit_edge, %for.end.for.inc84_crit_edge, %for.body.for.inc84_crit_edge
  %rc.4 = phi i32 [ %rc.3, %do.end68 ], [ %rc.3, %land.rhs.for.inc84_crit_edge ], [ %rc.3, %for.end.for.inc84_crit_edge ], [ %rc.0123, %for.body.for.inc84_crit_edge ], [ %rc.3, %do.body52.for.inc84_crit_edge ]
  %inc85 = add nuw nsw i32 %i.0124, 1
  %12 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc85, %conv
  br i1 %cmp, label %for.inc84.for.body_crit_edge, label %for.inc84.for.end86_crit_edge

for.inc84.for.end86_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end86

for.inc84.for.body_crit_edge:                     ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end86:                                        ; preds = %for.inc84.for.end86_crit_edge, %entry.for.end86_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.for.end86_crit_edge ], [ %rc.4, %for.inc84.for.end86_crit_edge ]
  ret i32 %rc.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_slowpath_irq_sync(ptr noundef %p_hwfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %out = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 54, i32 1
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %4 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %my_id, align 4
  %msix_table = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 54, i32 2
  %6 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msix_table, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.msix_entry, ptr %7, i32 %idxprom
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 50
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %irq.sink = phi ptr [ %irq, %if.else ], [ %arrayidx, %if.then ]
  %10 = ptrtoint ptr %irq.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.sink, align 4
  tail call void @synchronize_irq(i32 noundef %11) #21
  %b_sp_dpc_enabled.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 23
  %12 = ptrtoint ptr %b_sp_dpc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b_sp_dpc_enabled.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.qed_slowpath_tasklet_flush.exit_crit_edge, label %if.then.i

if.end.qed_slowpath_tasklet_flush.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_slowpath_tasklet_flush.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %sp_dpc.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 22
  %count.i.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 22, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #21
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #21, !srcloc !454
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !455
  tail call void @tasklet_unlock_wait(ptr noundef %sp_dpc.i) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !457
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #21
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #21, !srcloc !458
  br label %qed_slowpath_tasklet_flush.exit

qed_slowpath_tasklet_flush.exit:                  ; preds = %if.then.i, %if.end.qed_slowpath_tasklet_flush.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_unzip_data(ptr noundef %p_hwfn, i32 noundef %input_len, ptr noundef %input_buf, i32 noundef %max_size, ptr noundef %unzip_buf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 70
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %input_buf, ptr %1, align 4
  %3 = load ptr, ptr %stream, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %input_len, ptr %avail_in, align 4
  %5 = load ptr, ptr %stream, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %unzip_buf, ptr %next_out, align 4
  %7 = load ptr, ptr %stream, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %max_size, ptr %avail_out, align 4
  %9 = load ptr, ptr %stream, align 8
  %call = tail call i32 @zlib_inflateInit2(ptr noundef %9, i32 noundef 15) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end17, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp5 = icmp eq i8 %11, 0
  br i1 %cmp5, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !453

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool11.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool11.not, ptr @.str.5, ptr %name
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 1040, ptr noundef nonnull %spec.select, i32 noundef %call) #24
  br label %cleanup

if.end17:                                         ; preds = %entry
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream, align 8
  %call19 = tail call i32 @zlib_inflate(ptr noundef %15, i32 noundef 5) #21
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream, align 8
  %call21 = tail call i32 @zlib_inflateEnd(ptr noundef %17) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call19)
  %switch = icmp ult i32 %call19, 2
  br i1 %switch, label %if.end62, label %do.body27

do.body27:                                        ; preds = %if.end17
  %dp_level28 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %18 = ptrtoint ptr %dp_level28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level28, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp30 = icmp eq i8 %19, 0
  br i1 %cmp30, label %land.rhs32, label %do.body27.cleanup_crit_edge

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.rhs32:                                       ; preds = %do.body27
  %dp_module33 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %20 = ptrtoint ptr %dp_module33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_module33, align 4
  %and34 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.rhs32.cleanup_crit_edge, label %do.end46, !prof !453

land.rhs32.cleanup_crit_edge:                     ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end46:                                         ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #23
  %name48 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool50.not = icmp eq ptr %name48, null
  %spec.select85 = select i1 %tobool50.not, ptr @.str.5, ptr %name48
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msg, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 1049, ptr noundef nonnull %spec.select85, ptr noundef %25, i32 noundef %call19) #24
  br label %cleanup

if.end62:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  %26 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_out, align 4
  %div84 = lshr i32 %29, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end46, %land.rhs32.cleanup_crit_edge, %do.body27.cleanup_crit_edge, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %div84, %if.end62 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %do.body27.cleanup_crit_edge ], [ 0, %do.end46 ], [ 0, %land.rhs32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_periodic_db_rec_start(ptr noundef %p_hwfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %periodic_db_rec_count = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 75
  %0 = ptrtoint ptr %periodic_db_rec_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %periodic_db_rec_count, align 4
  %slowpath_task_flags = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 74
  %1 = ptrtoint ptr %slowpath_task_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %slowpath_task_flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  %slowpath_wq_active.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 71
  %4 = ptrtoint ptr %slowpath_wq_active.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slowpath_wq_active.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %do.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !459
  tail call void @_set_bit(i32 noundef 1, ptr noundef %slowpath_task_flags) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !460
  %slowpath_wq.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 72
  %6 = ptrtoint ptr %slowpath_wq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slowpath_wq.i, align 8
  %slowpath_task.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 73
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %slowpath_task.i, i32 noundef 10) #21
  br label %return

return:                                           ; preds = %do.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_link_update(ptr noundef %hwfn, ptr noundef %ptt) local_unnamed_addr #2 align 64 {
entry:
  %if_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwfn, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops_cookie, align 4
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol_ops, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %if_link) #21
  %6 = call ptr @memset(ptr %if_link, i32 255, i32 72)
  call fastcc void @qed_fill_link(ptr noundef %hwfn, ptr noundef %ptt, ptr noundef nonnull %if_link)
  call void @qed_inform_vf_link_state(ptr noundef %hwfn) #21
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 1
  %7 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp ne i8 %8, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %link_update = getelementptr inbounds %struct.qed_common_cb_ops, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %link_update to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link_update, align 4
  call void %10(ptr noundef nonnull %3, ptr noundef nonnull %if_link) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %if_link) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_fill_link(ptr noundef %hwfn, ptr noundef %ptt, ptr noundef %if_link) unnamed_addr #2 align 64 {
entry:
  %link_caps = alloca %struct.qed_mcp_link_capabilities, align 4
  %params = alloca %struct.qed_mcp_link_params, align 4
  %link = alloca %struct.qed_mcp_link_state, align 4
  %media_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %link_caps) #21
  %0 = call ptr @memset(ptr %link_caps, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #21
  %1 = call ptr @memset(ptr %params, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %link) #21
  %2 = call ptr @memset(ptr %link, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %media_type) #21
  %3 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %media_type, align 4, !annotation !461
  %4 = call ptr @memset(ptr %if_link, i32 0, i32 72)
  %5 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 39
  %7 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  call void @qed_vf_get_link_params(ptr noundef %hwfn, ptr noundef nonnull %params) #21
  call void @qed_vf_get_link_state(ptr noundef %hwfn, ptr noundef nonnull %link) #21
  call void @qed_vf_get_link_caps(ptr noundef %hwfn, ptr noundef nonnull %link_caps) #21
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @qed_mcp_get_link_params(ptr noundef %hwfn) #21
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.do.end_crit_edge, label %if.end3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %9 = call ptr @memcpy(ptr %params, ptr %call.i, i32 48)
  %call4.i = tail call ptr @qed_mcp_get_link_state(ptr noundef %hwfn) #21
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.do.end_crit_edge, label %if.end7.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

if.end7.i:                                        ; preds = %if.end3.i
  %10 = call ptr @memcpy(ptr %link, ptr %call4.i, i32 40)
  %call8.i = tail call ptr @qed_mcp_get_link_capabilities(ptr noundef %hwfn) #21
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.do.end_crit_edge, label %if.end11.i

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  %11 = call ptr @memcpy(ptr %link_caps, ptr %call8.i, i32 40)
  br label %if.end

do.end:                                           ; preds = %if.end7.i.do.end_crit_edge, %if.end3.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %12 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %13, i32 0, i32 50
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31) #24
  br label %cleanup

if.end:                                           ; preds = %if.end11.i, %if.then.i
  %16 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not = icmp eq i8 %17, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %18 = ptrtoint ptr %if_link to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %if_link, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %19 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %20, i32 0, i32 39
  %21 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not = icmp eq i8 %22, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end4.if.else25_crit_edge

if.end4.if.else25_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else25

land.lhs.true:                                    ; preds = %if.end4
  %mcp_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 45
  %23 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mcp_info.i, align 8
  %capabilities.i = getelementptr inbounds %struct.qed_mcp_info, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities.i, align 8
  %and.i225 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225)
  %tobool.i.not = icmp eq i32 %and.i225, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else25_crit_edge, label %if.then8

land.lhs.true.if.else25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else25

if.then8:                                         ; preds = %land.lhs.true
  %default_ext_autoneg = getelementptr inbounds %struct.qed_mcp_link_capabilities, ptr %link_caps, i32 0, i32 7
  %27 = ptrtoint ptr %default_ext_autoneg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %default_ext_autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not = icmp eq i32 %28, 0
  br i1 %tobool9.not, label %if.then8.if.end11_crit_edge, label %if.then10

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #23
  %supported_caps = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  %29 = ptrtoint ptr %supported_caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %supported_caps, align 4
  %or.i = or i32 %30, 64
  store i32 %or.i, ptr %supported_caps, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %advertised_caps = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 2
  %supported_caps13 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %advertised_caps, ptr %supported_caps13, i32 12)
  %ext_speed = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 5
  %32 = ptrtoint ptr %ext_speed to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ext_speed, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool15.not = icmp eq i8 %33, 0
  %34 = ptrtoint ptr %advertised_caps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %advertised_caps, align 4
  %and.i = and i32 %35, -65
  %masksel = select i1 %tobool15.not, i32 0, i32 64
  %storemerge = or i32 %and.i, %masksel
  store i32 %storemerge, ptr %advertised_caps, align 4
  %advertised_speeds = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %advertised_speeds, align 4
  call fastcc void @qed_fill_link_capability(ptr noundef %hwfn, ptr noundef %ptt, i32 noundef %37, ptr noundef %advertised_caps)
  br label %if.end44

if.else25:                                        ; preds = %land.lhs.true.if.else25_crit_edge, %if.end4.if.else25_crit_edge
  %default_speed_autoneg = getelementptr inbounds %struct.qed_mcp_link_capabilities, ptr %link_caps, i32 0, i32 1
  %38 = ptrtoint ptr %default_speed_autoneg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %default_speed_autoneg, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool26.not = icmp eq i8 %39, 0
  br i1 %tobool26.not, label %if.else25.if.end30_crit_edge, label %if.then27

if.else25.if.end30_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end30

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #23
  %supported_caps28 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  %40 = ptrtoint ptr %supported_caps28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %supported_caps28, align 4
  %or.i217 = or i32 %41, 64
  store i32 %or.i217, ptr %supported_caps28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.else25.if.end30_crit_edge
  %advertised_caps31 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 2
  %supported_caps33 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %advertised_caps31, ptr %supported_caps33, i32 12)
  %43 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %params, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool36.not = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %advertised_caps31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %advertised_caps31, align 4
  br i1 %tobool36.not, label %if.else40, label %if.then37

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #23
  %or.i218 = or i32 %46, 64
  %47 = ptrtoint ptr %advertised_caps31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i218, ptr %advertised_caps31, align 4
  br label %if.end44

if.else40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #23
  %and.i219 = and i32 %46, -65
  %48 = ptrtoint ptr %advertised_caps31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i219, ptr %advertised_caps31, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then37, %if.end11
  %pause = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1
  %49 = ptrtoint ptr %pause to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pause, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool46.not = icmp eq i8 %50, 0
  br i1 %tobool46.not, label %lor.lhs.false, label %if.end55

lor.lhs.false:                                    ; preds = %if.end44
  %forced_rx = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %forced_rx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %forced_rx, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool48.not = icmp eq i8 %52, 0
  br i1 %tobool48.not, label %lor.lhs.false.lor.lhs.false63_crit_edge, label %land.lhs.true49

lor.lhs.false.lor.lhs.false63_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false63

land.lhs.true49:                                  ; preds = %lor.lhs.false
  %forced_tx = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %forced_tx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %forced_tx, align 2, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool51.not = icmp eq i8 %54, 0
  br i1 %tobool51.not, label %land.lhs.true49.lor.lhs.false59_crit_edge, label %if.end55.thread235

land.lhs.true49.lor.lhs.false59_crit_edge:        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false59

if.end55.thread235:                               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #23
  %supported_caps53236 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  %55 = ptrtoint ptr %supported_caps53236 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %supported_caps53236, align 4
  %or.i220237 = or i32 %56, 16384
  store i32 %or.i220237, ptr %supported_caps53236, align 4
  br label %lor.lhs.false59

if.end55:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #23
  %supported_caps53 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  %57 = ptrtoint ptr %supported_caps53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %supported_caps53, align 4
  %or.i220 = or i32 %58, 16384
  store i32 %or.i220, ptr %supported_caps53, align 4
  br label %if.then67

lor.lhs.false59:                                  ; preds = %if.end55.thread235, %land.lhs.true49.lor.lhs.false59_crit_edge
  %59 = ptrtoint ptr %forced_rx to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr = load i8, ptr %forced_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool62.not = icmp eq i8 %.pr, 0
  br i1 %tobool62.not, label %lor.lhs.false59.lor.lhs.false63_crit_edge, label %lor.lhs.false59.if.then67_crit_edge

lor.lhs.false59.if.then67_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then67

lor.lhs.false59.lor.lhs.false63_crit_edge:        ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59.lor.lhs.false63_crit_edge, %lor.lhs.false.lor.lhs.false63_crit_edge
  %forced_tx65 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %forced_tx65 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %forced_tx65, align 2, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool66.not = icmp eq i8 %61, 0
  br i1 %tobool66.not, label %lor.lhs.false63.if.end70_crit_edge, label %lor.lhs.false63.if.then67_crit_edge

lor.lhs.false63.if.then67_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then67

lor.lhs.false63.if.end70_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end70

if.then67:                                        ; preds = %lor.lhs.false63.if.then67_crit_edge, %lor.lhs.false59.if.then67_crit_edge, %if.end55
  %supported_caps68 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  %62 = ptrtoint ptr %supported_caps68 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %supported_caps68, align 4
  %or.i221 = or i32 %63, 8192
  store i32 %or.i221, ptr %supported_caps68, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %lor.lhs.false63.if.end70_crit_edge
  %fec_default = getelementptr inbounds %struct.qed_mcp_link_capabilities, ptr %link_caps, i32 0, i32 2
  %64 = ptrtoint ptr %fec_default to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fec_default, align 4
  %sup_fec = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 13
  %66 = ptrtoint ptr %sup_fec to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %sup_fec, align 4
  %fec = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 4
  %67 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fec, align 4
  %active_fec = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 14
  %69 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %active_fec, align 4
  %advertised_speeds72 = getelementptr inbounds %struct.qed_mcp_link_speed_params, ptr %params, i32 0, i32 1
  %70 = ptrtoint ptr %advertised_speeds72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %advertised_speeds72, align 4
  %advertised_caps73 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 2
  call fastcc void @qed_fill_link_capability(ptr noundef %hwfn, ptr noundef %ptt, i32 noundef %71, ptr noundef %advertised_caps73)
  %72 = ptrtoint ptr %link_caps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %link_caps, align 4
  %supported_caps75 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 1
  call fastcc void @qed_fill_link_capability(ptr noundef %hwfn, ptr noundef %ptt, i32 noundef %73, ptr noundef %supported_caps75)
  %partner_adv_speed = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 9
  %74 = ptrtoint ptr %partner_adv_speed to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %partner_adv_speed, align 4
  %and.i226 = and i32 %75, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226)
  %tobool.not.i227 = icmp ne i32 %and.i226, 0
  %spec.select.i = zext i1 %tobool.not.i227 to i32
  %and1.i = lshr i32 %75, 1
  %76 = and i32 %and1.i, 126
  %77 = or i32 %76, %spec.select.i
  %lp_caps = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 3
  call fastcc void @qed_fill_link_capability(ptr noundef %hwfn, ptr noundef %ptt, i32 noundef %77, ptr noundef %lp_caps)
  %78 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %link, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool79.not = icmp eq i8 %79, 0
  br i1 %tobool79.not, label %if.end70.if.end83_crit_edge, label %if.then80

if.end70.if.end83_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end83

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #23
  %speed81 = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 3
  %80 = ptrtoint ptr %speed81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %speed81, align 4
  %speed82 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 4
  %82 = ptrtoint ptr %speed82 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %speed82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end70.if.end83_crit_edge
  %duplex = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 5
  %83 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %duplex, align 4
  %call84 = call i32 @qed_mcp_get_media_type(ptr noundef %hwfn, ptr noundef %ptt, ptr noundef nonnull %media_type) #21
  %84 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %media_type, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %85, label %sw.default.i [
    i32 1, label %if.end83.qed_get_port_type.exit_crit_edge
    i32 5, label %if.end83.qed_get_port_type.exit_crit_edge241
    i32 2, label %if.end83.qed_get_port_type.exit_crit_edge242
    i32 6, label %if.end83.qed_get_port_type.exit_crit_edge243
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 240, label %if.end83.sw.bb3.i_crit_edge
    i32 255, label %if.end83.sw.bb3.i_crit_edge244
  ]

if.end83.sw.bb3.i_crit_edge244:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb3.i

if.end83.sw.bb3.i_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb3.i

if.end83.qed_get_port_type.exit_crit_edge243:     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_get_port_type.exit

if.end83.qed_get_port_type.exit_crit_edge242:     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_get_port_type.exit

if.end83.qed_get_port_type.exit_crit_edge241:     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_get_port_type.exit

if.end83.qed_get_port_type.exit_crit_edge:        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_get_port_type.exit

sw.bb1.i:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_get_port_type.exit

sw.bb2.i:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_get_port_type.exit

sw.bb3.i:                                         ; preds = %if.end83.sw.bb3.i_crit_edge, %if.end83.sw.bb3.i_crit_edge244
  br label %qed_get_port_type.exit

sw.default.i:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_get_port_type.exit

qed_get_port_type.exit:                           ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end83.qed_get_port_type.exit_crit_edge, %if.end83.qed_get_port_type.exit_crit_edge241, %if.end83.qed_get_port_type.exit_crit_edge242, %if.end83.qed_get_port_type.exit_crit_edge243
  %port_type.0.i = phi i8 [ -1, %sw.default.i ], [ -17, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 5, %sw.bb1.i ], [ 3, %if.end83.qed_get_port_type.exit_crit_edge ], [ 3, %if.end83.qed_get_port_type.exit_crit_edge241 ], [ 3, %if.end83.qed_get_port_type.exit_crit_edge242 ], [ 3, %if.end83.qed_get_port_type.exit_crit_edge243 ]
  %port = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 6
  %87 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %port_type.0.i, ptr %port, align 1
  %88 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %params, align 4, !range !451
  %autoneg89 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 7
  %90 = ptrtoint ptr %autoneg89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %autoneg89, align 2
  %91 = ptrtoint ptr %pause to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %pause, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool92.not = icmp eq i8 %92, 0
  br i1 %tobool92.not, label %qed_get_port_type.exit.if.end94_crit_edge, label %if.then93

qed_get_port_type.exit.if.end94_crit_edge:        ; preds = %qed_get_port_type.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end94

if.then93:                                        ; preds = %qed_get_port_type.exit
  call void @__sanitizer_cov_trace_pc() #23
  %pause_config = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 8
  %93 = ptrtoint ptr %pause_config to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pause_config, align 4
  %or = or i32 %94, 1
  store i32 %or, ptr %pause_config, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %qed_get_port_type.exit.if.end94_crit_edge
  %forced_rx96 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %forced_rx96 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %forced_rx96, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool97.not = icmp eq i8 %96, 0
  br i1 %tobool97.not, label %if.end94.if.end101_crit_edge, label %if.then98

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end101

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #23
  %pause_config99 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 8
  %97 = ptrtoint ptr %pause_config99 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pause_config99, align 4
  %or100 = or i32 %98, 2
  store i32 %or100, ptr %pause_config99, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end94.if.end101_crit_edge
  %forced_tx103 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %forced_tx103 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %forced_tx103, align 2, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool104.not = icmp eq i8 %100, 0
  br i1 %tobool104.not, label %if.end101.if.end108_crit_edge, label %if.then105

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end108

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #23
  %pause_config106 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 8
  %101 = ptrtoint ptr %pause_config106 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pause_config106, align 4
  %or107 = or i32 %102, 4
  store i32 %or107, ptr %pause_config106, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end101.if.end108_crit_edge
  %an_complete = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 6
  %103 = ptrtoint ptr %an_complete to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %an_complete, align 2, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool109.not = icmp eq i8 %104, 0
  br i1 %tobool109.not, label %if.end108.if.end113_crit_edge, label %if.then110

if.end108.if.end113_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end113

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #23
  %105 = ptrtoint ptr %lp_caps to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %lp_caps, align 4
  %or.i222 = or i32 %106, 64
  store i32 %or.i222, ptr %lp_caps, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end108.if.end113_crit_edge
  %partner_adv_pause = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 12
  %107 = ptrtoint ptr %partner_adv_pause to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %partner_adv_pause, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool114.not = icmp eq i8 %108, 0
  br i1 %tobool114.not, label %if.end113.if.end130_crit_edge, label %if.end118

if.end113.if.end130_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end130

if.end118:                                        ; preds = %if.end113
  %109 = ptrtoint ptr %lp_caps to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lp_caps, align 4
  %or.i223 = or i32 %110, 8192
  store i32 %or.i223, ptr %lp_caps, align 4
  %111 = and i8 %108, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %switch = icmp eq i8 %111, 2
  br i1 %switch, label %if.then127, label %if.end118.if.end130_crit_edge

if.end118.if.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end130

if.then127:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #23
  %112 = ptrtoint ptr %lp_caps to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %lp_caps, align 4
  %or.i224 = or i32 %113, 16384
  store i32 %or.i224, ptr %lp_caps, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end118.if.end130_crit_edge, %if.end113.if.end130_crit_edge
  %default_eee = getelementptr inbounds %struct.qed_mcp_link_capabilities, ptr %link_caps, i32 0, i32 3
  %114 = ptrtoint ptr %default_eee to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %default_eee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp131 = icmp eq i32 %115, 2
  %eee_supported = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 9
  br i1 %cmp131, label %if.then133, label %if.else134

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #23
  %116 = ptrtoint ptr %eee_supported to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %eee_supported, align 4
  br label %cleanup

if.else134:                                       ; preds = %if.end130
  %117 = ptrtoint ptr %eee_supported to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %eee_supported, align 4
  %eee_active = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 14
  %118 = ptrtoint ptr %eee_active to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %eee_active, align 4, !range !451
  %eee_active137 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 10
  %120 = ptrtoint ptr %eee_active137 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %eee_active137, align 1
  %eee_speed_caps = getelementptr inbounds %struct.qed_mcp_link_capabilities, ptr %link_caps, i32 0, i32 5
  %121 = ptrtoint ptr %eee_speed_caps to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %eee_speed_caps, align 4
  %sup_caps = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 11
  %123 = ptrtoint ptr %sup_caps to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %sup_caps, align 2
  %eee_adv_caps = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 15
  %124 = ptrtoint ptr %eee_adv_caps to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %eee_adv_caps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool140.not = icmp eq i8 %125, 0
  br i1 %tobool140.not, label %cond.false, label %if.else134.cond.end_crit_edge

if.else134.cond.end_crit_edge:                    ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end

cond.false:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #23
  %adv_caps = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 3, i32 1
  %126 = ptrtoint ptr %adv_caps to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %adv_caps, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else134.cond.end_crit_edge
  %cond.in = phi i8 [ %127, %cond.false ], [ %125, %if.else134.cond.end_crit_edge ]
  %eee145 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 12
  %adv_caps146 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 12, i32 1
  %128 = ptrtoint ptr %adv_caps146 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %cond.in, ptr %adv_caps146, align 4
  %eee_lp_adv_caps = getelementptr inbounds %struct.qed_mcp_link_state, ptr %link, i32 0, i32 16
  %129 = ptrtoint ptr %eee_lp_adv_caps to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %eee_lp_adv_caps, align 2
  %lp_adv_caps = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 12, i32 2
  %131 = ptrtoint ptr %lp_adv_caps to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %lp_adv_caps, align 1
  %eee148 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 3
  %enable = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 3, i32 3
  %132 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %enable, align 2, !range !451
  %enable151 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 12, i32 3
  %134 = ptrtoint ptr %enable151 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %enable151, align 2
  %tx_lpi_enable = getelementptr inbounds %struct.qed_mcp_link_params, ptr %params, i32 0, i32 3, i32 4
  %135 = ptrtoint ptr %tx_lpi_enable to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %tx_lpi_enable, align 1, !range !451
  %tx_lpi_enable156 = getelementptr inbounds %struct.qed_link_output, ptr %if_link, i32 0, i32 12, i32 4
  %137 = ptrtoint ptr %tx_lpi_enable156 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %tx_lpi_enable156, align 1
  %138 = ptrtoint ptr %eee148 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %eee148, align 4
  %140 = ptrtoint ptr %eee145 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %eee145, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then133, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %media_type) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %link) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %link_caps) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_inform_vf_link_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_bw_update(ptr nocapture noundef readonly %hwfn, ptr nocapture noundef readnone %ptt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwfn, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops_cookie, align 4
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol_ops, align 8
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 1
  %6 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  %tobool4.not = icmp eq ptr %5, null
  %or.cond15 = select i1 %or.cond, i1 true, i1 %tobool4.not
  br i1 %or.cond15, label %entry.if.end_crit_edge, label %land.lhs.true5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true5:                                   ; preds = %entry
  %bw_update = getelementptr inbounds %struct.qed_common_cb_ops, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %bw_update to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bw_update, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end_crit_edge, label %if.then

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #23
  tail call void %9(ptr noundef nonnull %3) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_schedule_recovery_handler(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %protocol_ops, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %4 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops_cookie, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %schedule_recovery_handler = getelementptr inbounds %struct.qed_common_cb_ops, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %schedule_recovery_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %schedule_recovery_handler, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  tail call void %7(ptr noundef %5) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_hw_error_occurred(ptr noundef %p_hwfn, i32 noundef %err_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %protocol_ops, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %4 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops_cookie, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %err_type, i32 6)
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp2 = icmp ult i8 %8, 3
  br i1 %cmp2, label %do.end, label %entry.do.end12_crit_edge, !prof !452

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx = getelementptr [7 x ptr], ptr @qed_hw_err_type_descr, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.5, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 2775, ptr noundef nonnull %spec.select, ptr noundef %10) #24
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %do.end12.if.else_crit_edge, label %land.lhs.true

do.end12.if.else_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

land.lhs.true:                                    ; preds = %do.end12
  %schedule_hw_err_handler = getelementptr inbounds %struct.qed_common_cb_ops, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %schedule_hw_err_handler to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %schedule_hw_err_handler, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %land.lhs.true.if.else_crit_edge, label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  tail call void %12(ptr noundef %5, i32 noundef %6) #21
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end12.if.else_crit_edge
  %13 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_hwfn, align 8
  tail call void @qed_int_attn_clr_enable(ptr noundef %14, i1 noundef zeroext true) #21
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_int_attn_clr_enable(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_recovery_process(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call1 = tail call i32 @qed_start_recovery_process(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_start_recovery_process(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qed_probe(ptr noundef %pdev, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %rev_id.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 18336, i32 noundef 3520, i32 noundef 3) #26
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @qed_init_struct(ptr noundef nonnull %call1.i.i.i.i) #21
  %drv_type = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 40
  %0 = ptrtoint ptr %drv_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777216, ptr %drv_type, align 8
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 4
  %conv = trunc i32 %2 to i8
  %protocol1 = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 55
  %3 = ptrtoint ptr %protocol1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %protocol1, align 4
  %is_vf = getelementptr inbounds %struct.qed_probe_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %is_vf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vf, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 39
  %6 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %b_is_vf, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %dp_module = getelementptr inbounds %struct.qed_probe_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dp_module, align 4
  %dp_level = getelementptr inbounds %struct.qed_probe_params, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 4
  tail call void @qed_init_dp(ptr noundef nonnull %call1.i.i.i.i, i32 noundef %8, i8 noundef zeroext %10) #21
  %recov_in_prog = getelementptr inbounds %struct.qed_probe_params, ptr %params, i32 0, i32 4
  %11 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %recov_in_prog, align 2, !range !451
  %recov_in_prog6 = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 44
  %13 = ptrtoint ptr %recov_in_prog6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %recov_in_prog6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rev_id.i) #21
  %14 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %rev_id.i, align 1, !annotation !461
  %pdev1.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 50
  %15 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pdev, ptr %pdev1.i, align 16
  %call.i = tail call i32 @pci_enable_device(ptr noundef %pdev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i122 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i122, label %if.end13.i, label %do.body.i

do.body.i:                                        ; preds = %if.end4
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.i = icmp ult i8 %17, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end_crit_edge, !prof !452

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 288, ptr noundef nonnull %name.i) #24
  br label %do.end

if.end13.i:                                       ; preds = %if.end4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %do.body16.i, label %if.end45.i

do.body16.i:                                      ; preds = %if.end13.i
  %dp_level17.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %dp_level17.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp19.i = icmp ult i8 %21, 3
  br i1 %cmp19.i, label %do.end30.i, label %do.body16.i.err1.i_crit_edge, !prof !452

do.body16.i.err1.i_crit_edge:                     ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err1.i

do.end30.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #23
  %name32.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 293, ptr noundef nonnull %name32.i) #24
  br label %err1.i

if.end45.i:                                       ; preds = %if.end13.i
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 39
  %22 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool46.not.i = icmp eq i8 %23, 0
  br i1 %tobool46.not.i, label %land.lhs.true.i, label %if.end45.i.if.end82.i_crit_edge

if.end45.i.if.end82.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82.i

land.lhs.true.i:                                  ; preds = %if.end45.i
  %flags49.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %24 = ptrtoint ptr %flags49.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags49.i, align 4
  %and50.i = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %do.body53.i, label %land.lhs.true.i.if.end82.i_crit_edge

land.lhs.true.i.if.end82.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82.i

do.body53.i:                                      ; preds = %land.lhs.true.i
  %dp_level54.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %dp_level54.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp56.i = icmp ult i8 %27, 3
  br i1 %cmp56.i, label %do.end67.i, label %do.body53.i.err1.i_crit_edge, !prof !452

do.body53.i.err1.i_crit_edge:                     ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err1.i

do.end67.i:                                       ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #23
  %name69.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59, i32 noundef 299, ptr noundef nonnull %name69.i) #24
  br label %err1.i

if.end82.i:                                       ; preds = %land.lhs.true.i.if.end82.i_crit_edge, %if.end45.i.if.end82.i_crit_edge
  %enable_cnt.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 51
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i, i32 noundef 4) #21
  %28 = ptrtoint ptr %enable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %enable_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp84.i = icmp eq i32 %29, 1
  br i1 %cmp84.i, label %if.then86.i, label %if.end82.i.if.end121.i_crit_edge

if.end82.i.if.end121.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end121.i

if.then86.i:                                      ; preds = %if.end82.i
  %call87.i = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.66) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end119.i, label %do.body90.i

do.body90.i:                                      ; preds = %if.then86.i
  %dp_level91.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %dp_level91.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dp_level91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp93.i = icmp ult i8 %31, 3
  br i1 %cmp93.i, label %do.end104.i, label %do.body90.i.err1.i_crit_edge, !prof !452

do.body90.i.err1.i_crit_edge:                     ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err1.i

do.end104.i:                                      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #23
  %name106.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.59, i32 noundef 308, ptr noundef nonnull %name106.i) #24
  br label %err1.i

if.end119.i:                                      ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @pci_set_master(ptr noundef %pdev) #21
  %call120.i = tail call i32 @pci_save_state(ptr noundef %pdev) #21
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end119.i, %if.end82.i.if.end121.i_crit_edge
  %call122.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull %rev_id.i) #21
  %32 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rev_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp124.i = icmp eq i8 %33, -1
  br i1 %cmp124.i, label %do.body127.i, label %if.end157.i

do.body127.i:                                     ; preds = %if.end121.i
  %dp_level128.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %dp_level128.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dp_level128.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp130.i = icmp ult i8 %35, 3
  br i1 %cmp130.i, label %do.end141.i, label %do.body127.i.err2.i_crit_edge, !prof !452

do.body127.i.err2.i_crit_edge:                    ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err2.i

do.end141.i:                                      ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #23
  %name143.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call153.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.59, i32 noundef 319, ptr noundef nonnull %name143.i, i32 noundef 255) #24
  br label %err2.i

if.end157.i:                                      ; preds = %if.end121.i
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %36 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i, label %do.body160.i, label %if.end189.i

do.body160.i:                                     ; preds = %if.end157.i
  %dp_level161.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %dp_level161.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dp_level161.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp163.i = icmp ult i8 %39, 3
  br i1 %cmp163.i, label %do.end174.i, label %do.body160.i.err2.i_crit_edge, !prof !452

do.body160.i.err2.i_crit_edge:                    ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err2.i

do.end174.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #23
  %name176.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call185.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.59, i32 noundef 324, ptr noundef nonnull %name176.i) #24
  br label %err2.i

if.end189.i:                                      ; preds = %if.end157.i
  %call190.i = call zeroext i8 @pci_find_capability(ptr noundef %pdev, i32 noundef 1) #21
  %conv191.i = zext i8 %call190.i to i32
  %pci_params.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 53
  %40 = ptrtoint ptr %pci_params.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv191.i, ptr %pci_params.i, align 4
  %41 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool193.not.i = icmp eq i8 %42, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call190.i)
  %tobool197.not.i = icmp eq i8 %call190.i, 0
  %or.cond.i = select i1 %tobool193.not.i, i1 %tobool197.not.i, i1 false
  br i1 %or.cond.i, label %do.body199.i, label %if.end189.i.if.end228.i_crit_edge

if.end189.i.if.end228.i_crit_edge:                ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end228.i

do.body199.i:                                     ; preds = %if.end189.i
  %dp_level200.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %dp_level200.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dp_level200.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp202.i = icmp ult i8 %44, 3
  br i1 %cmp202.i, label %do.end213.i, label %do.body199.i.if.end228.i_crit_edge, !prof !452

do.body199.i.if.end228.i_crit_edge:               ; preds = %do.body199.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end228.i

do.end213.i:                                      ; preds = %do.body199.i
  call void @__sanitizer_cov_trace_pc() #23
  %name215.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call224.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.59, i32 noundef 331, ptr noundef nonnull %name215.i) #24
  br label %if.end228.i

if.end228.i:                                      ; preds = %do.end213.i, %do.body199.i.if.end228.i_crit_edge, %if.end189.i.if.end228.i_crit_edge
  %45 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev1.i, align 16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end262.i, label %do.body233.i

do.body233.i:                                     ; preds = %if.end228.i
  %dp_level234.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %dp_level234.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dp_level234.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %cmp236.i = icmp ult i8 %48, 3
  br i1 %cmp236.i, label %do.end247.i, label %do.body233.i.err2.i_crit_edge, !prof !452

do.body233.i.err2.i_crit_edge:                    ; preds = %do.body233.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err2.i

do.end247.i:                                      ; preds = %do.body233.i
  call void @__sanitizer_cov_trace_pc() #23
  %name249.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call258.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.59, i32 noundef 335, ptr noundef nonnull %name249.i) #24
  br label %err2.i

if.end262.i:                                      ; preds = %if.end228.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef -1) #21
  %49 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %resource.i, align 8
  %mem_start.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 53, i32 1
  %51 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %mem_start.i, align 64
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %mem_end.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 53, i32 2
  %54 = ptrtoint ptr %mem_end.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %mem_end.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %55 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq.i, align 4
  %irq270.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 53, i32 3
  %57 = ptrtoint ptr %irq270.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %irq270.i, align 8
  %call271.i = call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #21
  %regview.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 26
  %58 = ptrtoint ptr %regview.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call271.i, ptr %regview.i, align 4
  %tobool273.not.i = icmp eq ptr %call271.i, null
  br i1 %tobool273.not.i, label %do.body275.i, label %if.end304.i

do.body275.i:                                     ; preds = %if.end262.i
  %dp_level276.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %dp_level276.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dp_level276.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp278.i = icmp ult i8 %60, 3
  br i1 %cmp278.i, label %do.end289.i, label %do.body275.i.err2.i_crit_edge, !prof !452

do.body275.i.err2.i_crit_edge:                    ; preds = %do.body275.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err2.i

do.end289.i:                                      ; preds = %do.body275.i
  call void @__sanitizer_cov_trace_pc() #23
  %name291.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call300.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.59, i32 noundef 346, ptr noundef nonnull %name291.i) #24
  br label %err2.i

if.end304.i:                                      ; preds = %if.end262.i
  %61 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev1.i, align 16
  %arrayidx307.i = getelementptr %struct.pci_dev, ptr %62, i32 0, i32 47, i32 2
  %63 = ptrtoint ptr %arrayidx307.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx307.i, align 8
  %conv309.i = zext i32 %64 to i64
  %db_phys_addr.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 28
  %65 = ptrtoint ptr %db_phys_addr.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv309.i, ptr %db_phys_addr.i, align 32
  %end313.i = getelementptr %struct.pci_dev, ptr %62, i32 0, i32 47, i32 2, i32 1
  %66 = ptrtoint ptr %end313.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %end313.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp314.i = icmp eq i32 %67, 0
  br i1 %cmp314.i, label %cond.end326.thread.i, label %cond.end326.i

cond.end326.thread.i:                             ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_pc() #23
  %db_size530.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 29
  %68 = ptrtoint ptr %db_size530.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %db_size530.i, align 8
  br label %if.then330.i

cond.end326.i:                                    ; preds = %if.end304.i
  %69 = ptrtoint ptr %arrayidx307.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx307.i, align 8
  %sub.i = sub i32 %67, %70
  %add.i = add i32 %sub.i, 1
  %db_size.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 29
  %71 = ptrtoint ptr %db_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add.i, ptr %db_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool329.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool329.not.i, label %cond.end326.i.if.then330.i_crit_edge, label %if.end363.i

cond.end326.i.if.then330.i_crit_edge:             ; preds = %cond.end326.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then330.i

if.then330.i:                                     ; preds = %cond.end326.i.if.then330.i_crit_edge, %cond.end326.thread.i
  %72 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool332.not.i = icmp eq i8 %73, 0
  br i1 %tobool332.not.i, label %do.body334.i, label %if.then330.i.do.body18_crit_edge

if.then330.i.do.body18_crit_edge:                 ; preds = %if.then330.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body18

do.body334.i:                                     ; preds = %if.then330.i
  %dp_level335.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %dp_level335.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dp_level335.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %75)
  %cmp337.i = icmp ult i8 %75, 3
  br i1 %cmp337.i, label %do.end348.i, label %do.body334.i.do.end_crit_edge, !prof !452

do.body334.i.do.end_crit_edge:                    ; preds = %do.body334.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

do.end348.i:                                      ; preds = %do.body334.i
  call void @__sanitizer_cov_trace_pc() #23
  %name350.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call359.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.59, i32 noundef 355, ptr noundef nonnull %name350.i) #24
  br label %do.end

if.end363.i:                                      ; preds = %cond.end326.i
  %call367.i = call ptr @ioremap_wc(i32 noundef %64, i32 noundef %add.i) #21
  %doorbells.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 27
  %76 = ptrtoint ptr %doorbells.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call367.i, ptr %doorbells.i, align 8
  %tobool369.not.i = icmp eq ptr %call367.i, null
  br i1 %tobool369.not.i, label %do.body371.i, label %if.end400.i

do.body371.i:                                     ; preds = %if.end363.i
  %dp_level372.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %dp_level372.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dp_level372.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp374.i = icmp ult i8 %78, 3
  br i1 %cmp374.i, label %do.end385.i, label %do.body371.i.do.end_crit_edge, !prof !452

do.body371.i.do.end_crit_edge:                    ; preds = %do.body371.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

do.end385.i:                                      ; preds = %do.body371.i
  call void @__sanitizer_cov_trace_pc() #23
  %name387.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call396.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.59, i32 noundef 365, ptr noundef nonnull %name387.i) #24
  br label %do.end

if.end400.i:                                      ; preds = %if.end363.i
  %call401.i = call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call401.i)
  %tobool402.not.i = icmp eq i32 %call401.i, 0
  br i1 %tobool402.not.i, label %if.end400.i.do.body18_crit_edge, label %do.body404.i

if.end400.i.do.body18_crit_edge:                  ; preds = %if.end400.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body18

do.body404.i:                                     ; preds = %if.end400.i
  %dp_level405.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %dp_level405.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %dp_level405.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp407.i = icmp eq i8 %80, 0
  br i1 %cmp407.i, label %land.rhs.i, label %do.body404.i.do.body18_crit_edge

do.body404.i.do.body18_crit_edge:                 ; preds = %do.body404.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body18

land.rhs.i:                                       ; preds = %do.body404.i
  %81 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call1.i.i.i.i, align 4096
  %and409.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409.i)
  %tobool410.not.i = icmp eq i32 %and409.i, 0
  br i1 %tobool410.not.i, label %land.rhs.i.do.body18_crit_edge, label %do.end420.i, !prof !453

land.rhs.i.do.body18_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body18

do.end420.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  %name422.i = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call431.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.59, i32 noundef 373, ptr noundef nonnull %name422.i, i32 noundef %call401.i) #24
  br label %do.body18

err2.i:                                           ; preds = %do.end289.i, %do.body275.i.err2.i_crit_edge, %do.end247.i, %do.body233.i.err2.i_crit_edge, %do.end174.i, %do.body160.i.err2.i_crit_edge, %do.end141.i, %do.body127.i.err2.i_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #21
  br label %err1.i

err1.i:                                           ; preds = %err2.i, %do.end104.i, %do.body90.i.err1.i_crit_edge, %do.end67.i, %do.body53.i.err1.i_crit_edge, %do.end30.i, %do.body16.i.err1.i_crit_edge
  call void @pci_disable_device(ptr noundef %pdev) #21
  br label %do.end

do.end:                                           ; preds = %err1.i, %do.end385.i, %do.body371.i.do.end_crit_edge, %do.end348.i, %do.body334.i.do.end_crit_edge, %do.end.i, %do.body.i.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rev_id.i) #21
  %name = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 516, ptr noundef nonnull %name) #24
  br label %err1

do.body18:                                        ; preds = %do.end420.i, %land.rhs.i.do.body18_crit_edge, %do.body404.i.do.body18_crit_edge, %if.end400.i.do.body18_crit_edge, %if.then330.i.do.body18_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rev_id.i) #21
  %dp_level19 = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %dp_level19 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dp_level19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %84)
  %cmp = icmp ult i8 %84, 2
  br i1 %cmp, label %do.end27, label %do.body18.do.end41_crit_edge, !prof !452

do.body18.do.end41_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end41

do.end27:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #23
  %name29 = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 519, ptr noundef nonnull %name29) #24
  br label %do.end41

do.end41:                                         ; preds = %do.end27, %do.body18.do.end41_crit_edge
  %call42 = call i32 @qed_hw_prepare(ptr noundef nonnull %call1.i.i.i.i, i32 noundef 7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body63, label %do.end48

do.end48:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #23
  %name50 = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48, i32 noundef 523, ptr noundef nonnull %name50) #24
  call fastcc void @qed_free_pci(ptr noundef nonnull %call1.i.i.i.i)
  br label %err1

do.body63:                                        ; preds = %do.end41
  %85 = ptrtoint ptr %dp_level19 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dp_level19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp66 = icmp ult i8 %86, 2
  br i1 %cmp66, label %do.end77, label %do.body63.cleanup_crit_edge, !prof !452

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end77:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #23
  %name79 = getelementptr inbounds %struct.qed_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.48, i32 noundef 527, ptr noundef nonnull %name79, ptr noundef nonnull @.str.48) #24
  br label %cleanup

err1:                                             ; preds = %do.end48, %do.end
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %err1, %do.end77, %do.body63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i.i.i.i, %do.end77 ], [ %call1.i.i.i.i, %do.body63.cleanup_crit_edge ], [ null, %err1 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_remove(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.body.i:                                        ; preds = %entry
  tail call void @qed_hw_remove(ptr noundef nonnull %cdev) #21
  tail call fastcc void @qed_free_pci(ptr noundef nonnull %cdev)
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %land.rhs.i, label %do.body.i.qed_set_power_state.exit_crit_edge

do.body.i.qed_set_power_state.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_set_power_state.exit

land.rhs.i:                                       ; preds = %do.body.i
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdev, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.rhs.i.qed_set_power_state.exit_crit_edge, label %do.end.i, !prof !453

land.rhs.i.qed_set_power_state.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_set_power_state.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef 489, ptr noundef nonnull %name.i) #24
  br label %qed_set_power_state.exit

qed_set_power_state.exit:                         ; preds = %do.end.i, %land.rhs.i.qed_set_power_state.exit_crit_edge, %do.body.i.qed_set_power_state.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %cdev) #21
  br label %return

return:                                           ; preds = %qed_set_power_state.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_set_power_state(ptr noundef %cdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %do.body.return_crit_edge

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

land.rhs:                                         ; preds = %do.body
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdev, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.return_crit_edge, label %do.end, !prof !453

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.5, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef 489, ptr noundef nonnull %spec.select) #24
  br label %return

return:                                           ; preds = %do.end, %land.rhs.return_crit_edge, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %do.body.return_crit_edge ], [ 0, %land.rhs.return_crit_edge ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_set_name(ptr nocapture noundef %cdev, ptr noundef %name) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %name1, ptr %name, i32 16)
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %1 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp12.not = icmp eq i8 %2, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %name3 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.013, i32 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name3, i32 noundef 16, ptr noundef nonnull @.str.96, ptr noundef %name, i32 noundef %i.013)
  %inc = add nuw nsw i32 %i.013, 1
  %3 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %4 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_update_pf_params(ptr nocapture noundef %cdev, ptr nocapture noundef %params) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %num_arfs_filters = getelementptr inbounds %struct.qed_eth_pf_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %num_arfs_filters to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_arfs_filters, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %5 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_info, align 8
  %.off = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then19, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %params, align 2
  %9 = tail call i16 @llvm.umin.i16(i16 %8, i16 384)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %params, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then19, %if.end.if.end29_crit_edge
  %11 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp3250.not = icmp eq i8 %12, 0
  br i1 %cmp3250.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %pf_params = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.051, i32 36
  %13 = call ptr @memcpy(ptr %pf_params, ptr %params, i32 200)
  %inc = add nuw nsw i32 %i.051, 1
  %14 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_hwfns, align 4
  %conv31 = zext i8 %15 to i32
  %cmp32 = icmp ult i32 %inc, %conv31
  br i1 %cmp32, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end29.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_slowpath_start(ptr noundef %cdev, ptr noundef %params) #2 align 64 {
entry:
  %vectors.i = alloca i8, align 1
  %name.i = alloca [16 x i8], align 1
  %drv_load_params = alloca %struct.qed_drv_load_params, align 8
  %hw_init_params = alloca %struct.qed_hw_init_params, align 4
  %drv_version = alloca %struct.qed_mcp_drv_version, align 4
  %tunn_info = alloca %struct.qed_tunnel_info, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %drv_load_params) #21
  %0 = ptrtoint ptr %drv_load_params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %drv_load_params, align 8, !annotation !461
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hw_init_params) #21
  %1 = call ptr @memset(ptr %hw_init_params, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drv_version) #21
  %2 = getelementptr inbounds %struct.qed_mcp_drv_version, ptr %drv_version, i32 0, i32 1
  %3 = call ptr @memset(ptr %drv_version, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tunn_info) #21
  %4 = call ptr @memset(ptr %tunn_info, i32 255, i32 52)
  %call = tail call i32 @qed_iov_wq_start(ptr noundef %cdev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #21
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %5 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %6 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end4.thread

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #21
  br label %if.end63

for.cond.preheader.i:                             ; preds = %if.end
  %num_hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %8 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_hwfns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp68.not.i = icmp eq i8 %9, 0
  br i1 %cmp68.not.i, label %for.cond.preheader.i.if.end4_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end4_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  br label %for.body.i

for.body.i:                                       ; preds = %do.body28.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.069.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.body28.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %number.i, align 4
  %conv2.i = zext i8 %15 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %17, 3
  %and.i = and i32 %shr.i, 31
  %abs_pf_id.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.069.i, i32 3
  %18 = ptrtoint ptr %abs_pf_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %abs_pf_id.i, align 2
  %conv4.i = zext i8 %19 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 16, ptr noundef nonnull @.str.109, i32 noundef %conv2.i, i32 noundef %and.i, i32 noundef %conv4.i) #21
  %call6.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %name.i, i32 noundef 0, i32 noundef 0) #21
  %slowpath_wq.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.069.i, i32 72
  %20 = ptrtoint ptr %slowpath_wq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6.i, ptr %slowpath_wq.i, align 8
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %do.body.i, label %do.body28.i

do.body.i:                                        ; preds = %for.body.i
  %dp_level.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.069.i, i32 7
  %21 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp11.i = icmp ult i8 %22, 3
  br i1 %cmp11.i, label %do.end.i, label %do.body.i.qed_slowpath_wq_start.exit_crit_edge, !prof !452

do.body.i.qed_slowpath_wq_start.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_slowpath_wq_start.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %name17.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.069.i, i32 8
  %tobool19.not.i = icmp eq ptr %name17.i, null
  %spec.select.i = select i1 %tobool19.not.i, ptr @.str.5, ptr %name17.i
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 1234, ptr noundef nonnull %spec.select.i) #24
  br label %qed_slowpath_wq_start.exit

do.body28.i:                                      ; preds = %for.body.i
  %slowpath_task.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.069.i, i32 73
  call void @__init_work(ptr noundef %slowpath_task.i, i32 noundef 0) #21
  %23 = ptrtoint ptr %slowpath_task.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %slowpath_task.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %slowpath_task.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @qed_slowpath_wq_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #21
  %entry35.i = getelementptr inbounds %struct.work_struct, ptr %slowpath_task.i, i32 0, i32 1
  %24 = ptrtoint ptr %entry35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry35.i, ptr %entry35.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %slowpath_task.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry35.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %slowpath_task.i, i32 0, i32 2
  %26 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @qed_slowpath_task, ptr %func.i, align 4
  %timer.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.069.i, i32 73, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.114, ptr noundef nonnull @qed_slowpath_wq_start.__key.113) #21
  %slowpath_wq_active.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.069.i, i32 71
  %27 = ptrtoint ptr %slowpath_wq_active.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %slowpath_wq_active.i, align 4
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %28 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_hwfns.i, align 4
  %conv.i = zext i8 %29 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %do.body28.i.for.body.i_crit_edge, label %do.body28.i.if.end4_crit_edge

do.body28.i.if.end4_crit_edge:                    ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

do.body28.i.for.body.i_crit_edge:                 ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

qed_slowpath_wq_start.exit:                       ; preds = %do.end.i, %do.body.i.qed_slowpath_wq_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #21
  br label %err

if.end4:                                          ; preds = %do.body28.i.if.end4_crit_edge, %for.cond.preheader.i.if.end4_crit_edge
  %30 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %b_is_vf.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool5.not = icmp eq i8 %.pr, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end63_crit_edge

if.end4.if.end63_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end63

if.then6:                                         ; preds = %if.end4
  %firmware = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 65
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call7 = call i32 @request_firmware(ptr noundef %firmware, ptr noundef nonnull @.str.97, ptr noundef %dev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end22, label %do.body

do.body:                                          ; preds = %if.then6
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %33 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp = icmp ult i8 %34, 3
  br i1 %cmp, label %do.end, label %do.body.err_crit_edge, !prof !452

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool15.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool15.not, ptr @.str.5, ptr %name
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 1269, ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.97) #24
  br label %err

if.end22:                                         ; preds = %if.then6
  %35 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_hwfns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp24 = icmp eq i8 %36, 1
  br i1 %cmp24, label %if.then26, label %if.end22.if.end63_crit_edge

if.end22.if.end63_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end63

if.then26:                                        ; preds = %if.end22
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call27 = call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.body32, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  %p_arfs_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 65
  %37 = ptrtoint ptr %p_arfs_ptt to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call27, ptr %p_arfs_ptt, align 8
  br label %if.end63

do.body32:                                        ; preds = %if.then26
  %dp_level33 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %38 = ptrtoint ptr %dp_level33 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dp_level33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp35 = icmp ult i8 %39, 3
  br i1 %cmp35, label %do.end46, label %do.body32.err_crit_edge, !prof !452

do.body32.err_crit_edge:                          ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

do.end46:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #23
  %name48 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool50.not = icmp eq ptr %name48, null
  %spec.select305 = select i1 %tobool50.not, ptr @.str.5, ptr %name48
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, i32 noundef 1279, ptr noundef nonnull %spec.select305) #24
  br label %err

if.end63:                                         ; preds = %if.then29, %if.end22.if.end63_crit_edge, %if.end4.if.end63_crit_edge, %if.end4.thread
  %rx_coalesce_usecs = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 24
  %40 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 12, ptr %rx_coalesce_usecs, align 8
  %hw_info.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %41 = ptrtoint ptr %hw_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i = icmp eq i32 %42, 0
  br i1 %cmp.not.i, label %if.end63.if.end.i_crit_edge, label %for.cond.preheader.i309

if.end63.if.end.i_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

for.cond.preheader.i309:                          ; preds = %if.end63
  %num_hwfns.i308 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %43 = ptrtoint ptr %num_hwfns.i308 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_hwfns.i308, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp134.not.i = icmp eq i8 %44, 0
  br i1 %cmp134.not.i, label %for.cond.preheader.i309.if.end.i_crit_edge, label %for.cond.preheader.i309.for.body.i312_crit_edge

for.cond.preheader.i309.for.body.i312_crit_edge:  ; preds = %for.cond.preheader.i309
  br label %for.body.i312

for.cond.preheader.i309.if.end.i_crit_edge:       ; preds = %for.cond.preheader.i309
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

for.body.i312:                                    ; preds = %for.body.i312.for.body.i312_crit_edge, %for.cond.preheader.i309.for.body.i312_crit_edge
  %i.035.i = phi i32 [ %inc.i310, %for.body.i312.for.body.i312_crit_edge ], [ 0, %for.cond.preheader.i309.for.body.i312_crit_edge ]
  %using_ll2.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.035.i, i32 29
  %45 = ptrtoint ptr %using_ll2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %using_ll2.i, align 4
  %inc.i310 = add nuw nsw i32 %i.035.i, 1
  %46 = ptrtoint ptr %num_hwfns.i308 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_hwfns.i308, align 4
  %conv.i311 = zext i8 %47 to i32
  %cmp1.i = icmp ult i32 %inc.i310, %conv.i311
  br i1 %cmp1.i, label %for.body.i312.for.body.i312_crit_edge, label %for.body.i312.if.end.i_crit_edge

for.body.i312.if.end.i_crit_edge:                 ; preds = %for.body.i312
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

for.body.i312.for.body.i312_crit_edge:            ; preds = %for.body.i312
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i312

if.end.i:                                         ; preds = %for.body.i312.if.end.i_crit_edge, %for.cond.preheader.i309.if.end.i_crit_edge, %if.end63.if.end.i_crit_edge
  %call.i313 = call i32 @qed_resc_alloc(ptr noundef %cdev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313)
  %tobool.not.i314 = icmp eq i32 %call.i313, 0
  br i1 %tobool.not.i314, label %do.body.i316, label %if.end.i.err_crit_edge

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

do.body.i316:                                     ; preds = %if.end.i
  %dp_level.i315 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %48 = ptrtoint ptr %dp_level.i315 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dp_level.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %cmp8.i = icmp ult i8 %49, 2
  br i1 %cmp8.i, label %do.end.i318, label %do.body.i316.if.end67_crit_edge, !prof !452

do.body.i316.if.end67_crit_edge:                  ; preds = %do.body.i316
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end67

do.end.i318:                                      ; preds = %do.body.i316
  call void @__sanitizer_cov_trace_pc() #23
  %name.i317 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 877, ptr noundef nonnull %name.i317) #24
  br label %if.end67

if.end67:                                         ; preds = %do.end.i318, %do.body.i316.if.end67_crit_edge
  call void @qed_resc_setup(ptr noundef %cdev) #21
  %50 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool69.not = icmp eq i8 %51, 0
  br i1 %tobool69.not, label %if.end74, label %if.else72

if.else72:                                        ; preds = %if.end67
  %int_params.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54
  %52 = call ptr @memset(ptr %int_params.i, i32 0, i32 28)
  %53 = ptrtoint ptr %int_params.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %int_params.i, align 8
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %num_vectors.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 0, i32 1
  call void @qed_vf_get_num_rxqs(ptr noundef %hwfns.i, ptr noundef %num_vectors.i) #21
  %num_hwfns.i319 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %54 = ptrtoint ptr %num_hwfns.i319 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_hwfns.i319, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp.i320 = icmp ugt i8 %55, 1
  br i1 %cmp.i320, label %if.then.i, label %if.else72.if.end.i323_crit_edge

if.else72.if.end.i323_crit_edge:                  ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i323

if.then.i:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vectors.i) #21
  %56 = ptrtoint ptr %vectors.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %vectors.i, align 1
  %arrayidx6.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 1
  call void @qed_vf_get_num_rxqs(ptr noundef %arrayidx6.i, ptr noundef nonnull %vectors.i) #21
  %57 = ptrtoint ptr %vectors.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vectors.i, align 1
  %59 = ptrtoint ptr %num_vectors.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_vectors.i, align 4
  %add.i = add i8 %60, %58
  store i8 %add.i, ptr %num_vectors.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vectors.i) #21
  br label %if.end.i323

if.end.i323:                                      ; preds = %if.then.i, %if.else72.if.end.i323_crit_edge
  %61 = ptrtoint ptr %num_hwfns.i319 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_hwfns.i319, align 4
  %min_msix_cnt.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 0, i32 2
  %63 = ptrtoint ptr %min_msix_cnt.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %min_msix_cnt.i, align 1
  %call.i321 = call fastcc i32 @qed_set_int_mode(ptr noundef %cdev, i1 noundef zeroext true) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool.not.i322 = icmp eq i32 %call.i321, 0
  br i1 %tobool.not.i322, label %if.end74.thread, label %if.end.i323.err1_crit_edge

if.end.i323.err1_crit_edge:                       ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #23
  br label %err1

if.end74.thread:                                  ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #23
  %fp_msix_base.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 4
  %64 = ptrtoint ptr %fp_msix_base.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %fp_msix_base.i, align 1
  %num_vectors20.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1, i32 1
  %65 = ptrtoint ptr %num_vectors20.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_vectors20.i, align 4
  %fp_msix_cnt.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 5
  %67 = ptrtoint ptr %fp_msix_cnt.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %fp_msix_cnt.i, align 2
  br label %if.end77

if.end74:                                         ; preds = %if.end67
  %68 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %params, align 4
  %call71 = call fastcc i32 @qed_slowpath_setup_int(ptr noundef %cdev, i32 noundef %69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool75.not = icmp eq i32 %call71, 0
  br i1 %tobool75.not, label %if.end74.if.end77_crit_edge, label %if.end74.err1_crit_edge

if.end74.err1_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #23
  br label %err1

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77

if.end77:                                         ; preds = %if.end74.if.end77_crit_edge, %if.end74.thread
  %70 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool79.not = icmp eq i8 %71, 0
  br i1 %tobool79.not, label %if.then80, label %if.end77.if.end87_crit_edge

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end87

if.then80:                                        ; preds = %if.end77
  %call81 = call fastcc i32 @qed_alloc_stream_mem(ptr noundef %cdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then80.err2_crit_edge

if.then80.err2_crit_edge:                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #23
  br label %err2

if.end84:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #23
  %firmware85 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 65
  %72 = ptrtoint ptr %firmware85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %firmware85, align 8
  %data86 = getelementptr inbounds %struct.firmware, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %data86 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data86, align 4
  %add.ptr = getelementptr i8, ptr %75, i32 4
  call void @qed_dbg_pf_init(ptr noundef %cdev) #21
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %if.end77.if.end87_crit_edge
  %data.0 = phi ptr [ null, %if.end77.if.end87_crit_edge ], [ %add.ptr, %if.end84 ]
  %76 = getelementptr inbounds i8, ptr %hw_init_params, i32 4
  %77 = call ptr @memset(ptr %76, i32 0, i32 12)
  %78 = call ptr @memset(ptr %tunn_info, i32 0, i32 52)
  %b_mode_enabled = getelementptr inbounds %struct.qed_tunn_update_type, ptr %tunn_info, i32 0, i32 1
  %79 = ptrtoint ptr %b_mode_enabled to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %b_mode_enabled, align 1
  %b_mode_enabled88 = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %b_mode_enabled88 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %b_mode_enabled88, align 1
  %b_mode_enabled89 = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %b_mode_enabled89 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %b_mode_enabled89, align 1
  %b_mode_enabled90 = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %b_mode_enabled90 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %b_mode_enabled90, align 1
  %b_mode_enabled91 = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %b_mode_enabled91 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %b_mode_enabled91, align 1
  %tun_cls94 = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 3, i32 2
  %84 = ptrtoint ptr %tun_cls94 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %tun_cls94, align 4
  %tun_cls98 = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 1, i32 2
  %85 = ptrtoint ptr %tun_cls98 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %tun_cls98, align 4
  %86 = ptrtoint ptr %hw_init_params to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %tunn_info, ptr %hw_init_params, align 4
  %b_hw_start = getelementptr inbounds %struct.qed_hw_init_params, ptr %hw_init_params, i32 0, i32 1
  %87 = ptrtoint ptr %b_hw_start to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %b_hw_start, align 4
  %out = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %88 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %out, align 8
  %int_mode102 = getelementptr inbounds %struct.qed_hw_init_params, ptr %hw_init_params, i32 0, i32 2
  %90 = ptrtoint ptr %int_mode102 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %int_mode102, align 4
  %allow_npar_tx_switch = getelementptr inbounds %struct.qed_hw_init_params, ptr %hw_init_params, i32 0, i32 3
  %91 = ptrtoint ptr %allow_npar_tx_switch to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %allow_npar_tx_switch, align 4
  %bin_fw_data = getelementptr inbounds %struct.qed_hw_init_params, ptr %hw_init_params, i32 0, i32 4
  %92 = ptrtoint ptr %bin_fw_data to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %data.0, ptr %bin_fw_data, align 4
  %93 = ptrtoint ptr %drv_load_params to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %drv_load_params, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %94 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %94)
  %cmp.i324 = icmp ne i64 %94, -1
  %frombool = zext i1 %cmp.i324 to i8
  %95 = ptrtoint ptr %drv_load_params to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %frombool, ptr %drv_load_params, align 8
  %p_drv_load_params = getelementptr inbounds %struct.qed_hw_init_params, ptr %hw_init_params, i32 0, i32 5
  %96 = ptrtoint ptr %p_drv_load_params to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %drv_load_params, ptr %p_drv_load_params, align 4
  %call104 = call i32 @qed_hw_init(ptr noundef %cdev, ptr noundef nonnull %hw_init_params) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.body108, label %if.end87.err2_crit_edge

if.end87.err2_crit_edge:                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #23
  br label %err2

do.body108:                                       ; preds = %if.end87
  %97 = ptrtoint ptr %dp_level.i315 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dp_level.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %98)
  %cmp111 = icmp ult i8 %98, 2
  br i1 %cmp111, label %do.end122, label %do.body108.do.end136_crit_edge, !prof !452

do.body108.do.end136_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end136

do.end122:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #23
  %name124 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool126.not = icmp eq ptr %name124, null
  %spec.select306 = select i1 %tobool126.not, ptr @.str.5, ptr %name124
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.99, i32 noundef 1341, ptr noundef nonnull %spec.select306) #24
  br label %do.end136

do.end136:                                        ; preds = %do.end122, %do.body108.do.end136_crit_edge
  %99 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool138.not = icmp eq i8 %100, 0
  br i1 %tobool138.not, label %if.then139, label %do.end136.if.end140_crit_edge

do.end136.if.end140_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end140

if.then139:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #23
  %tunn_feature_mask = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 70
  %101 = ptrtoint ptr %tunn_feature_mask to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 31, ptr %tunn_feature_mask, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %do.end136.if.end140_crit_edge
  %hwfns141 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %using_ll2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 29
  %102 = ptrtoint ptr %using_ll2 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %using_ll2, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool143.not = icmp eq i8 %103, 0
  br i1 %tobool143.not, label %if.end140.if.end149_crit_edge, label %if.then144

if.end140.if.end149_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end149

if.then144:                                       ; preds = %if.end140
  %call145 = call i32 @qed_ll2_alloc_if(ptr noundef %cdev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then144.if.end149_crit_edge, label %if.then144.err3_crit_edge

if.then144.err3_crit_edge:                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #23
  br label %err3

if.then144.if.end149_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end149

if.end149:                                        ; preds = %if.then144.if.end149_crit_edge, %if.end140.if.end149_crit_edge
  %104 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool151.not = icmp eq i8 %105, 0
  br i1 %tobool151.not, label %if.then152, label %if.end149.if.end201_crit_edge

if.end149.if.end201_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end201

if.then152:                                       ; preds = %if.end149
  %drv_major = getelementptr inbounds %struct.qed_slowpath_params, ptr %params, i32 0, i32 1
  %106 = ptrtoint ptr %drv_major to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %drv_major, align 4
  %conv155 = zext i8 %107 to i32
  %shl = shl nuw i32 %conv155, 24
  %drv_minor = getelementptr inbounds %struct.qed_slowpath_params, ptr %params, i32 0, i32 2
  %108 = ptrtoint ptr %drv_minor to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %drv_minor, align 1
  %conv156 = zext i8 %109 to i32
  %shl157 = shl nuw nsw i32 %conv156, 16
  %or = or i32 %shl157, %shl
  %drv_rev = getelementptr inbounds %struct.qed_slowpath_params, ptr %params, i32 0, i32 3
  %110 = ptrtoint ptr %drv_rev to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %drv_rev, align 2
  %conv158 = zext i8 %111 to i32
  %shl159 = shl nuw nsw i32 %conv158, 8
  %or160 = or i32 %or, %shl159
  %drv_eng = getelementptr inbounds %struct.qed_slowpath_params, ptr %params, i32 0, i32 4
  %112 = ptrtoint ptr %drv_eng to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %drv_eng, align 1
  %conv161 = zext i8 %113 to i32
  %or162 = or i32 %or160, %conv161
  %114 = ptrtoint ptr %drv_version to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or162, ptr %drv_version, align 4
  %name165 = getelementptr inbounds %struct.qed_slowpath_params, ptr %params, i32 0, i32 5
  %call167 = call i32 @strscpy(ptr noundef %2, ptr noundef %name165, i32 noundef 12) #21
  %p_main_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 24
  %115 = ptrtoint ptr %p_main_ptt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %p_main_ptt, align 8
  %call168 = call i32 @qed_mcp_send_drv_version(ptr noundef %hwfns141, ptr noundef %116, ptr noundef nonnull %drv_version) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then152.if.end201_crit_edge, label %do.body171

if.then152.if.end201_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end201

do.body171:                                       ; preds = %if.then152
  %117 = ptrtoint ptr %dp_level.i315 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %dp_level.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %118)
  %cmp174 = icmp ult i8 %118, 3
  br i1 %cmp174, label %do.end185, label %do.body171.err4_crit_edge, !prof !452

do.body171.err4_crit_edge:                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #23
  br label %err4

do.end185:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #23
  %name187 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool189.not = icmp eq ptr %name187, null
  %spec.select307 = select i1 %tobool189.not, ptr @.str.5, ptr %name187
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.99, i32 noundef 1368, ptr noundef nonnull %spec.select307) #24
  br label %err4

if.end201:                                        ; preds = %if.then152.if.end201_crit_edge, %if.end149.if.end201_crit_edge
  call void @qed_reset_vport_stats(ptr noundef %cdev) #21
  br label %cleanup

err4:                                             ; preds = %do.end185, %do.body171.err4_crit_edge
  call void @qed_ll2_dealloc_if(ptr noundef %cdev) #21
  br label %err3

err3:                                             ; preds = %err4, %if.then144.err3_crit_edge
  %rc.1 = phi i32 [ %call145, %if.then144.err3_crit_edge ], [ %call168, %err4 ]
  %call202 = call i32 @qed_hw_stop(ptr noundef %cdev) #21
  br label %err2

err2:                                             ; preds = %err3, %if.end87.err2_crit_edge, %if.then80.err2_crit_edge
  %rc.2 = phi i32 [ %call104, %if.end87.err2_crit_edge ], [ %rc.1, %err3 ], [ %call81, %if.then80.err2_crit_edge ]
  call void @qed_hw_timers_stop_all(ptr noundef %cdev) #21
  %119 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool204.not = icmp eq i8 %120, 0
  br i1 %tobool204.not, label %if.then205, label %err2.if.end206_crit_edge

err2.if.end206_crit_edge:                         ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end206

if.then205:                                       ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #23
  call fastcc void @qed_slowpath_irq_free(ptr noundef %cdev)
  br label %if.end206

if.end206:                                        ; preds = %if.then205, %err2.if.end206_crit_edge
  call fastcc void @qed_free_stream_mem(ptr noundef %cdev)
  call fastcc void @qed_disable_msix(ptr noundef %cdev)
  br label %err1

err1:                                             ; preds = %if.end206, %if.end74.err1_crit_edge, %if.end.i323.err1_crit_edge
  %rc.3 = phi i32 [ %call71, %if.end74.err1_crit_edge ], [ %rc.2, %if.end206 ], [ %call.i321, %if.end.i323.err1_crit_edge ]
  call void @qed_resc_free(ptr noundef %cdev) #21
  br label %err

err:                                              ; preds = %err1, %if.end.i.err_crit_edge, %do.end46, %do.body32.err_crit_edge, %do.end, %do.body.err_crit_edge, %qed_slowpath_wq_start.exit, %entry.err_crit_edge
  %rc.4 = phi i32 [ -22, %entry.err_crit_edge ], [ -22, %qed_slowpath_wq_start.exit ], [ %rc.3, %err1 ], [ %call7, %do.end ], [ %call7, %do.body.err_crit_edge ], [ -22, %do.end46 ], [ -22, %do.body32.err_crit_edge ], [ %call.i313, %if.end.i.err_crit_edge ]
  %b_is_vf207 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %121 = ptrtoint ptr %b_is_vf207 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %b_is_vf207, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool208.not = icmp eq i8 %122, 0
  br i1 %tobool208.not, label %if.end211, label %err.if.end229_crit_edge

err.if.end229_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end229

if.end211:                                        ; preds = %err
  %firmware210 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 65
  %123 = ptrtoint ptr %firmware210 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %firmware210, align 8
  call void @release_firmware(ptr noundef %124) #21
  %125 = ptrtoint ptr %b_is_vf207 to i32
  call void @__asan_load1_noabort(i32 %125)
  %.pr345 = load i8, ptr %b_is_vf207, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr345)
  %tobool213.not = icmp eq i8 %.pr345, 0
  br i1 %tobool213.not, label %land.lhs.true, label %if.end211.if.end229_crit_edge

if.end211.if.end229_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end229

land.lhs.true:                                    ; preds = %if.end211
  %num_hwfns214 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %126 = ptrtoint ptr %num_hwfns214 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %num_hwfns214, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %127)
  %cmp216 = icmp eq i8 %127, 1
  br i1 %cmp216, label %land.lhs.true218, label %land.lhs.true.if.end229_crit_edge

land.lhs.true.if.end229_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end229

land.lhs.true218:                                 ; preds = %land.lhs.true
  %p_arfs_ptt221 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 65
  %128 = ptrtoint ptr %p_arfs_ptt221 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %p_arfs_ptt221, align 8
  %tobool222.not = icmp eq ptr %129, null
  br i1 %tobool222.not, label %land.lhs.true218.if.end229_crit_edge, label %if.then223

land.lhs.true218.if.end229_crit_edge:             ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end229

if.then223:                                       ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #23
  %hwfns219 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @qed_ptt_release(ptr noundef %hwfns219, ptr noundef nonnull %129) #21
  br label %if.end229

if.end229:                                        ; preds = %if.then223, %land.lhs.true218.if.end229_crit_edge, %land.lhs.true.if.end229_crit_edge, %if.end211.if.end229_crit_edge, %err.if.end229_crit_edge
  call void @qed_iov_wq_stop(ptr noundef %cdev, i1 noundef zeroext false) #21
  %130 = ptrtoint ptr %b_is_vf207 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %b_is_vf207, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i326 = icmp eq i8 %131, 0
  br i1 %tobool.not.i326, label %for.cond.preheader.i328, label %if.end229.cleanup_crit_edge

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.cond.preheader.i328:                          ; preds = %if.end229
  %num_hwfns.i327 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %132 = ptrtoint ptr %num_hwfns.i327 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num_hwfns.i327, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp23.not.i = icmp eq i8 %133, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i328.cleanup_crit_edge, label %for.cond.preheader.i328.for.body.i330_crit_edge

for.cond.preheader.i328.for.body.i330_crit_edge:  ; preds = %for.cond.preheader.i328
  br label %for.body.i330

for.cond.preheader.i328.cleanup_crit_edge:        ; preds = %for.cond.preheader.i328
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body.i330:                                    ; preds = %for.inc.i.for.body.i330_crit_edge, %for.cond.preheader.i328.for.body.i330_crit_edge
  %i.024.i = phi i32 [ %inc.i334, %for.inc.i.for.body.i330_crit_edge ], [ 0, %for.cond.preheader.i328.for.body.i330_crit_edge ]
  %slowpath_wq.i329 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.024.i, i32 72
  %134 = ptrtoint ptr %slowpath_wq.i329 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %slowpath_wq.i329, align 8
  %tobool2.not.i = icmp eq ptr %135, null
  br i1 %tobool2.not.i, label %for.body.i330.for.inc.i_crit_edge, label %if.end4.i

for.body.i330.for.inc.i_crit_edge:                ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #23
  %slowpath_wq_active.i331 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.024.i, i32 71
  %136 = ptrtoint ptr %slowpath_wq_active.i331 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %slowpath_wq_active.i331, align 4
  %slowpath_task.i332 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.024.i, i32 73
  %call.i333 = call zeroext i1 @cancel_delayed_work(ptr noundef %slowpath_task.i332) #21
  %137 = ptrtoint ptr %slowpath_wq.i329 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %slowpath_wq.i329, align 8
  call void @destroy_workqueue(ptr noundef %138) #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i330.for.inc.i_crit_edge
  %inc.i334 = add nuw nsw i32 %i.024.i, 1
  %139 = ptrtoint ptr %num_hwfns.i327 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %num_hwfns.i327, align 4
  %conv.i335 = zext i8 %140 to i32
  %cmp.i336 = icmp ult i32 %inc.i334, %conv.i335
  br i1 %cmp.i336, label %for.inc.i.for.body.i330_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.inc.i.for.body.i330_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i330

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i328.cleanup_crit_edge, %if.end229.cleanup_crit_edge, %if.end201
  %retval.0 = phi i32 [ 0, %if.end201 ], [ %rc.4, %if.end229.cleanup_crit_edge ], [ %rc.4, %for.cond.preheader.i328.cleanup_crit_edge ], [ %rc.4, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tunn_info) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drv_version) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hw_init_params) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %drv_load_params) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_slowpath_stop(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.qed_slowpath_wq_stop.exit_crit_edge

if.end.qed_slowpath_wq_stop.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_slowpath_wq_stop.exit

for.cond.preheader.i:                             ; preds = %if.end
  %num_hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %2 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp23.not.i = icmp eq i8 %3, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i.qed_slowpath_wq_stop.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.qed_slowpath_wq_stop.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_slowpath_wq_stop.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %slowpath_wq.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.024.i, i32 72
  %4 = ptrtoint ptr %slowpath_wq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slowpath_wq.i, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %slowpath_wq_active.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.024.i, i32 71
  %6 = ptrtoint ptr %slowpath_wq_active.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %slowpath_wq_active.i, align 4
  %slowpath_task.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.024.i, i32 73
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %slowpath_task.i) #21
  %7 = ptrtoint ptr %slowpath_wq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slowpath_wq.i, align 8
  tail call void @destroy_workqueue(ptr noundef %8) #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %9 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_hwfns.i, align 4
  %conv.i = zext i8 %10 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.qed_slowpath_wq_stop.exit_crit_edge

for.inc.i.qed_slowpath_wq_stop.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_slowpath_wq_stop.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

qed_slowpath_wq_stop.exit:                        ; preds = %for.inc.i.qed_slowpath_wq_stop.exit_crit_edge, %for.cond.preheader.i.qed_slowpath_wq_stop.exit_crit_edge, %if.end.qed_slowpath_wq_stop.exit_crit_edge
  tail call void @qed_ll2_dealloc_if(ptr noundef nonnull %cdev) #21
  %11 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not = icmp eq i8 %12, 0
  br i1 %tobool1.not, label %if.then2, label %qed_slowpath_wq_stop.exit.if.end13_crit_edge

qed_slowpath_wq_stop.exit.if.end13_crit_edge:     ; preds = %qed_slowpath_wq_stop.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

if.then2:                                         ; preds = %qed_slowpath_wq_stop.exit
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %13 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %if.then4, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #23
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %p_arfs_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 65
  %15 = ptrtoint ptr %p_arfs_ptt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_arfs_ptt, align 8
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef %16) #21
  %17 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %num_hwfns, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then2.if.end7_crit_edge
  %18 = phi i8 [ %.pr, %if.then4 ], [ %14, %if.then2.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp13.not.i = icmp eq i8 %18, 0
  br i1 %cmp13.not.i, label %if.end7.qed_free_stream_mem.exit_crit_edge, label %if.end7.for.body.i42_crit_edge

if.end7.for.body.i42_crit_edge:                   ; preds = %if.end7
  br label %for.body.i42

if.end7.qed_free_stream_mem.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_free_stream_mem.exit

for.body.i42:                                     ; preds = %if.end.i.for.body.i42_crit_edge, %if.end7.for.body.i42_crit_edge
  %i.014.i = phi i32 [ %inc.i43, %if.end.i.for.body.i42_crit_edge ], [ 0, %if.end7.for.body.i42_crit_edge ]
  %stream.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.014.i, i32 70
  %19 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stream.i, align 8
  %tobool.not.i41 = icmp eq ptr %20, null
  br i1 %tobool.not.i41, label %for.body.i42.qed_free_stream_mem.exit_crit_edge, label %if.end.i

for.body.i42.qed_free_stream_mem.exit_crit_edge:  ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_free_stream_mem.exit

if.end.i:                                         ; preds = %for.body.i42
  %workspace.i = getelementptr inbounds %struct.z_stream_s, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %workspace.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workspace.i, align 4
  tail call void @vfree(ptr noundef %22) #21
  %23 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stream.i, align 8
  tail call void @kfree(ptr noundef %24) #21
  %inc.i43 = add nuw nsw i32 %i.014.i, 1
  %25 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_hwfns, align 4
  %conv.i44 = zext i8 %26 to i32
  %cmp.i45 = icmp ult i32 %inc.i43, %conv.i44
  br i1 %cmp.i45, label %if.end.i.for.body.i42_crit_edge, label %if.end.i.qed_free_stream_mem.exit_crit_edge

if.end.i.qed_free_stream_mem.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_free_stream_mem.exit

if.end.i.for.body.i42_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i42

qed_free_stream_mem.exit:                         ; preds = %if.end.i.qed_free_stream_mem.exit_crit_edge, %for.body.i42.qed_free_stream_mem.exit_crit_edge, %if.end7.qed_free_stream_mem.exit_crit_edge
  %protocol = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 55
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp9 = icmp eq i8 %28, 0
  br i1 %cmp9, label %if.then11, label %qed_free_stream_mem.exit.if.end13_crit_edge

qed_free_stream_mem.exit.if.end13_crit_edge:      ; preds = %qed_free_stream_mem.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

if.then11:                                        ; preds = %qed_free_stream_mem.exit
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 @qed_sriov_disable(ptr noundef nonnull %cdev, i1 noundef zeroext true) #21
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %qed_free_stream_mem.exit.if.end13_crit_edge, %qed_slowpath_wq_stop.exit.if.end13_crit_edge
  %call.i46 = tail call i32 @qed_hw_stop(ptr noundef %cdev) #21
  %num_hwfns.i47 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %29 = ptrtoint ptr %num_hwfns.i47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_hwfns.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp2.not.i = icmp eq i8 %30, 0
  br i1 %cmp2.not.i, label %if.end13.qed_nic_stop.exit_crit_edge, label %for.body.lr.ph.i

if.end13.qed_nic_stop.exit_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_nic_stop.exit

for.body.lr.ph.i:                                 ; preds = %if.end13
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  br label %for.body.i49

for.body.i49:                                     ; preds = %if.end18.i.for.body.i49_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i50, %if.end18.i.for.body.i49_crit_edge ]
  %b_sp_dpc_enabled.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.03.i, i32 23
  %31 = ptrtoint ptr %b_sp_dpc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %b_sp_dpc_enabled.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i48 = icmp eq i8 %32, 0
  br i1 %tobool.not.i48, label %for.body.i49.if.end18.i_crit_edge, label %if.then.i

for.body.i49.if.end18.i_crit_edge:                ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end18.i

if.then.i:                                        ; preds = %for.body.i49
  %sp_dpc.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.03.i, i32 22
  %count.i.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.03.i, i32 22, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #21
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #21, !srcloc !454
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !455
  tail call void @tasklet_unlock_wait(ptr noundef %sp_dpc.i) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !456
  %34 = ptrtoint ptr %b_sp_dpc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %b_sp_dpc_enabled.i, align 4
  %35 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp4.i = icmp eq i8 %36, 0
  br i1 %cmp4.i, label %land.rhs.i, label %if.then.i.if.end18.i_crit_edge

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end18.i

land.rhs.i:                                       ; preds = %if.then.i
  %37 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cdev, align 8
  %and.i = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %land.rhs.i.if.end18.i_crit_edge, label %do.end.i, !prof !453

land.rhs.i.if.end18.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end18.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i32 noundef 851, ptr noundef nonnull %name.i, i32 noundef %i.03.i, ptr noundef %sp_dpc.i) #24
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end18.i_crit_edge, %if.then.i.if.end18.i_crit_edge, %for.body.i49.if.end18.i_crit_edge
  %inc.i50 = add nuw nsw i32 %i.03.i, 1
  %39 = ptrtoint ptr %num_hwfns.i47 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_hwfns.i47, align 4
  %conv.i51 = zext i8 %40 to i32
  %cmp.i52 = icmp ult i32 %inc.i50, %conv.i51
  br i1 %cmp.i52, label %if.end18.i.for.body.i49_crit_edge, label %if.end18.i.qed_nic_stop.exit_crit_edge

if.end18.i.qed_nic_stop.exit_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_nic_stop.exit

if.end18.i.for.body.i49_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i49

qed_nic_stop.exit:                                ; preds = %if.end18.i.qed_nic_stop.exit_crit_edge, %if.end13.qed_nic_stop.exit_crit_edge
  tail call void @qed_dbg_pf_exit(ptr noundef %cdev) #21
  %41 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool16.not = icmp eq i8 %42, 0
  br i1 %tobool16.not, label %if.then17, label %qed_nic_stop.exit.if.end18_crit_edge

qed_nic_stop.exit.if.end18_crit_edge:             ; preds = %qed_nic_stop.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end18

if.then17:                                        ; preds = %qed_nic_stop.exit
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @qed_slowpath_irq_free(ptr noundef nonnull %cdev)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %qed_nic_stop.exit.if.end18_crit_edge
  %out.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %43 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %out.i, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %44, label %if.end18.qed_disable_msix.exit_crit_edge [
    i32 1, label %if.then.i53
    i32 2, label %if.then6.i
  ]

if.end18.qed_disable_msix.exit_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_disable_msix.exit

if.then.i53:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %47) #21
  %msix_table.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 2
  %48 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msix_table.i, align 8
  tail call void @kfree(ptr noundef %49) #21
  br label %qed_disable_msix.exit

if.then6.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  %pdev7.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %50 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev7.i, align 8
  tail call void @pci_disable_msi(ptr noundef %51) #21
  br label %qed_disable_msix.exit

qed_disable_msix.exit:                            ; preds = %if.then6.i, %if.then.i53, %if.end18.qed_disable_msix.exit_crit_edge
  %52 = ptrtoint ptr %out.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %out.i, align 8
  tail call void @qed_resc_free(ptr noundef nonnull %cdev) #21
  tail call void @qed_iov_wq_stop(ptr noundef nonnull %cdev, i1 noundef zeroext true) #21
  %53 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool20.not = icmp eq i8 %54, 0
  br i1 %tobool20.not, label %if.then21, label %qed_disable_msix.exit.return_crit_edge

qed_disable_msix.exit.return_crit_edge:           ; preds = %qed_disable_msix.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.then21:                                        ; preds = %qed_disable_msix.exit
  call void @__sanitizer_cov_trace_pc() #23
  %firmware = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 65
  %55 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %firmware, align 8
  tail call void @release_firmware(ptr noundef %56) #21
  br label %return

return:                                           ; preds = %if.then21, %qed_disable_msix.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %if.then21 ], [ 0, %qed_disable_msix.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qed_set_int_fp(ptr nocapture noundef %cdev, i16 noundef zeroext %cnt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cnt)
  %tobool = icmp ne i16 %cnt, 0
  %fp_initialized = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 3
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %fp_initialized to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %fp_initialized, align 4
  %out = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %1 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %3 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_hwfns, align 4
  %conv4 = zext i8 %4 to i32
  %mul = mul nuw nsw i32 %conv4, 63
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %fp_msix_cnt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 5
  %5 = ptrtoint ptr %fp_msix_cnt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fp_msix_cnt, align 2
  %conv10 = zext i8 %6 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then
  %limit.0 = phi i32 [ %mul, %if.then ], [ %conv10, %if.else ]
  %conv = zext i16 %cnt to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0)
  %tobool12.not = icmp eq i32 %limit.0, 0
  %7 = tail call i32 @llvm.umin.i32(i32 %limit.0, i32 %conv)
  %retval.0 = select i1 %tobool12.not, i32 -12, i32 %7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_get_int_fp(ptr noundef %cdev, ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %info, align 4
  %fp_initialized = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 3
  %1 = ptrtoint ptr %fp_initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fp_initialized, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ult i8 %4, 2
  br i1 %cmp, label %do.end, label %do.body.return_crit_edge, !prof !452

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.5, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147, i32 noundef 908, ptr noundef nonnull %spec.select) #24
  br label %return

if.end10:                                         ; preds = %entry
  %out = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp12 = icmp eq i32 %6, 1
  br i1 %cmp12, label %if.then14, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  %fp_msix_base = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 4
  %7 = ptrtoint ptr %fp_msix_base to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fp_msix_base, align 1
  %conv16 = zext i8 %8 to i32
  %fp_msix_cnt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 5
  %9 = ptrtoint ptr %fp_msix_cnt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fp_msix_cnt, align 2
  %msix_cnt = getelementptr inbounds %struct.qed_int_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %msix_cnt, align 4
  %msix_table = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 2
  %12 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msix_table, align 8
  %arrayidx = getelementptr %struct.msix_entry, ptr %13, i32 %conv16
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %info, align 4
  br label %return

return:                                           ; preds = %if.then14, %if.end10.return_crit_edge, %do.end, %do.body.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.return_crit_edge ], [ -22, %do.end ], [ 0, %if.then14 ], [ 0, %if.end10.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_sb_init(ptr noundef %cdev, ptr noundef %sb_info, ptr noundef %sb_virt_addr, i32 noundef %sb_phy_addr, i16 noundef zeroext %sb_id, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %rem.rhs.trunc = zext i8 %1 to i16
  %rem.rhs.trunc.frozen = freeze i16 %rem.rhs.trunc
  %div86 = udiv i16 %sb_id, %rem.rhs.trunc.frozen
  %2 = mul i16 %div86, %rem.rhs.trunc.frozen
  %rem85.decomposed = sub i16 %sb_id, %2
  %rem.zext = zext i16 %rem85.decomposed to i32
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %3 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_info, align 8
  %.off = add i32 %4, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %5 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %rem.pn = phi i32 [ %rem.zext, %if.then ], [ %idxprom.pn, %if.else ]
  %rel_sb_id.0 = phi i16 [ %div86, %if.then ], [ %sb_id, %if.else ]
  %p_hwfn.0 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.pn
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp22 = icmp eq i8 %7, 0
  br i1 %cmp22, label %land.rhs, label %do.body.do.end43_crit_edge

do.body.do.end43_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end43

land.rhs:                                         ; preds = %do.body
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cdev, align 8
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end43_crit_edge, label %do.end, !prof !453

land.rhs.do.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end43

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool28.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool28.not, ptr @.str.5, ptr %name
  %my_id = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.pn, i32 1
  %10 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool35.not = icmp ne i8 %11, 0
  %cond38 = zext i1 %tobool35.not to i32
  %conv39 = zext i16 %rel_sb_id.0 to i32
  %conv40 = zext i16 %sb_id to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149, i32 noundef 1471, ptr noundef nonnull %spec.select, i32 noundef %cond38, i32 noundef %conv39, i32 noundef %conv40) #24
  br label %do.end43

do.end43:                                         ; preds = %do.end, %land.rhs.do.end43_crit_edge, %do.body.do.end43_crit_edge
  %12 = ptrtoint ptr %p_hwfn.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_hwfn.0, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %13, i32 0, i32 39
  %14 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool45.not = icmp eq i8 %15, 0
  br i1 %tobool45.not, label %if.then46, label %if.else52

if.then46:                                        ; preds = %do.end43
  %call47 = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn.0) #21
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.then46.cleanup_crit_edge, label %if.end50

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end50:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #23
  %call51 = tail call i32 @qed_int_sb_init(ptr noundef %p_hwfn.0, ptr noundef nonnull %call47, ptr noundef %sb_info, ptr noundef %sb_virt_addr, i32 noundef %sb_phy_addr, i16 noundef zeroext %rel_sb_id.0) #21
  tail call void @qed_ptt_release(ptr noundef %p_hwfn.0, ptr noundef nonnull %call47) #21
  br label %cleanup

if.else52:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #23
  %call53 = tail call i32 @qed_int_sb_init(ptr noundef %p_hwfn.0, ptr noundef null, ptr noundef %sb_info, ptr noundef %sb_virt_addr, i32 noundef %sb_phy_addr, i16 noundef zeroext %rel_sb_id.0) #21
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.end50, %if.then46.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then46.cleanup_crit_edge ], [ %call53, %if.else52 ], [ %call51, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_sb_release(ptr noundef %cdev, ptr noundef %sb_info, i16 noundef zeroext %sb_id, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %rem.rhs.trunc = zext i8 %1 to i16
  %rem.rhs.trunc.frozen = freeze i16 %rem.rhs.trunc
  %div63 = udiv i16 %sb_id, %rem.rhs.trunc.frozen
  %2 = mul i16 %div63, %rem.rhs.trunc.frozen
  %rem62.decomposed = sub i16 %sb_id, %2
  %rem.zext = zext i16 %rem62.decomposed to i32
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %3 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_info, align 8
  %.off = add i32 %4, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %5 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %rel_sb_id.0 = phi i16 [ %div63, %if.then ], [ %sb_id, %if.else ]
  %rem.pn = phi i32 [ %rem.zext, %if.then ], [ %idxprom.pn, %if.else ]
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp22 = icmp eq i8 %7, 0
  br i1 %cmp22, label %land.rhs, label %do.body.do.end43_crit_edge

do.body.do.end43_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end43

land.rhs:                                         ; preds = %do.body
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cdev, align 8
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end43_crit_edge, label %do.end, !prof !453

land.rhs.do.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end43

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool28.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool28.not, ptr @.str.5, ptr %name
  %my_id = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.pn, i32 1
  %10 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool35.not = icmp ne i8 %11, 0
  %cond38 = zext i1 %tobool35.not to i32
  %conv39 = zext i16 %rel_sb_id.0 to i32
  %conv40 = zext i16 %sb_id to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.150, i32 noundef 1509, ptr noundef nonnull %spec.select, i32 noundef %cond38, i32 noundef %conv39, i32 noundef %conv40) #24
  br label %do.end43

do.end43:                                         ; preds = %do.end, %land.rhs.do.end43_crit_edge, %do.body.do.end43_crit_edge
  %p_hwfn.0 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.pn
  %call44 = tail call i32 @qed_int_sb_release(ptr noundef %p_hwfn.0, ptr noundef %sb_info, i16 noundef zeroext %rel_sb_id.0) #21
  ret i32 %call44
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qed_simd_handler_config(ptr nocapture noundef %cdev, ptr noundef %token, i32 noundef %index, ptr noundef %handler) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %1 to i32
  %conv.frozen = freeze i32 %conv
  %div = sdiv i32 %index, %conv.frozen
  %2 = mul i32 %div, %conv.frozen
  %rem.decomposed = sub i32 %index, %2
  %arrayidx3 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.decomposed, i32 66, i32 %div
  %func = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.decomposed, i32 66, i32 %div, i32 1
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %handler, ptr %func, align 4
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %token, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qed_simd_handler_clean(ptr nocapture noundef %cdev, i32 noundef %index) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %1 to i32
  %conv.frozen = freeze i32 %conv
  %div = sdiv i32 %index, %conv.frozen
  %2 = mul i32 %div, %conv.frozen
  %rem.decomposed = sub i32 %index, %2
  %arrayidx3 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.decomposed, i32 66, i32 %div
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dbg_grc(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dbg_grc_size(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dbg_all_data(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dbg_all_data_size(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_report_fatal_error(ptr noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qed_can_link_change(ptr nocapture noundef readnone %cdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_set_link(ptr noundef %cdev, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @qed_schedule_iov(ptr noundef %hwfns, i32 noundef 6) #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call7 = tail call ptr @qed_mcp_get_link_params(ptr noundef %hwfns) #21
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %override_flags = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %override_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  %autoneg = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 4, !range !451
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call7, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %7 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %override_flags, align 4
  %and19 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end28_crit_edge, label %if.then21

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

if.then21:                                        ; preds = %if.end17
  %advertised_speeds = getelementptr inbounds %struct.qed_mcp_link_speed_params, ptr %call7, i32 0, i32 1
  %9 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %advertised_speeds, align 4
  %adv_speeds = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 3
  %call.i.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds, ptr noundef getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 0, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool24.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool24.not, label %if.then21.for.inc_crit_edge, label %if.then25

if.then21.for.inc_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #23
  %10 = load i32, ptr @qed_mfw_legacy_maps, align 4
  %11 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %advertised_speeds, align 4
  %or = or i32 %12, %10
  store i32 %or, ptr %advertised_speeds, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %if.then21.for.inc_crit_edge
  %call.i.i.1 = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds, ptr noundef getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 1, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool24.not.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool24.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then25.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.1

if.then25.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  %13 = load i32, ptr getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 1), align 4
  %14 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %advertised_speeds, align 4
  %or.1 = or i32 %15, %13
  store i32 %or.1, ptr %advertised_speeds, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then25.1, %for.inc.for.inc.1_crit_edge
  %call.i.i.2 = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds, ptr noundef getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 2, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool24.not.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool24.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then25.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.2

if.then25.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #23
  %16 = load i32, ptr getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 2), align 4
  %17 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %advertised_speeds, align 4
  %or.2 = or i32 %18, %16
  store i32 %or.2, ptr %advertised_speeds, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then25.2, %for.inc.1.for.inc.2_crit_edge
  %call.i.i.3 = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds, ptr noundef getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 3, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool24.not.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool24.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then25.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.3

if.then25.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #23
  %19 = load i32, ptr getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 3), align 4
  %20 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %advertised_speeds, align 4
  %or.3 = or i32 %21, %19
  store i32 %or.3, ptr %advertised_speeds, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then25.3, %for.inc.2.for.inc.3_crit_edge
  %call.i.i.4 = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds, ptr noundef getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 4, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %tobool24.not.4 = icmp eq i32 %call.i.i.4, 0
  br i1 %tobool24.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then25.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.4

if.then25.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #23
  %22 = load i32, ptr getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 4), align 4
  %23 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %advertised_speeds, align 4
  %or.4 = or i32 %24, %22
  store i32 %or.4, ptr %advertised_speeds, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then25.4, %for.inc.3.for.inc.4_crit_edge
  %call.i.i.5 = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds, ptr noundef getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 5, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.5)
  %tobool24.not.5 = icmp eq i32 %call.i.i.5, 0
  br i1 %tobool24.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then25.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.5

if.then25.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #23
  %25 = load i32, ptr getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 5), align 4
  %26 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %advertised_speeds, align 4
  %or.5 = or i32 %27, %25
  store i32 %or.5, ptr %advertised_speeds, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then25.5, %for.inc.4.for.inc.5_crit_edge
  %call.i.i.6 = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds, ptr noundef getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 6, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.6)
  %tobool24.not.6 = icmp eq i32 %call.i.i.6, 0
  br i1 %tobool24.not.6, label %for.inc.5.if.end28_crit_edge, label %if.then25.6

for.inc.5.if.end28_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

if.then25.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #23
  %28 = load i32, ptr getelementptr inbounds ([7 x %struct.qed_mfw_speed_map], ptr @qed_mfw_legacy_maps, i32 0, i32 6), align 4
  %29 = ptrtoint ptr %advertised_speeds to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %advertised_speeds, align 4
  %or.6 = or i32 %30, %28
  store i32 %or.6, ptr %advertised_speeds, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25.6, %for.inc.5.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %31 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %override_flags, align 4
  %and30 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end34_crit_edge, label %if.then32

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #23
  %forced_speed = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 4
  %33 = ptrtoint ptr %forced_speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %forced_speed, align 4
  %forced_speed33 = getelementptr inbounds %struct.qed_mcp_link_speed_params, ptr %call7, i32 0, i32 2
  %35 = ptrtoint ptr %forced_speed33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %forced_speed33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %mcp_info.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 45
  %36 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mcp_info.i, align 8
  %capabilities.i = getelementptr inbounds %struct.qed_mcp_info, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end34.if.end37_crit_edge, label %if.then36

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  %40 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %override_flags, align 4
  %and.i163 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.not.i = icmp eq i32 %and.i163, 0
  br i1 %tobool.not.i, label %if.then36.if.end.i_crit_edge, label %if.then.i

if.then36.if.end.i_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #23
  %ext_speed1.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 5
  %autoneg.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 2
  %42 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %autoneg.i, align 4, !range !451
  %44 = ptrtoint ptr %ext_speed1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %ext_speed1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then36.if.end.i_crit_edge
  %45 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %override_flags, align 4
  %and6.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then8.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  %advertised_speeds.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %advertised_speeds.i, align 4
  %adv_speeds.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 3
  %call.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 0, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.for.inc.i_crit_edge, label %if.then11.i

if.then8.i.for.inc.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #23
  %48 = load i32, ptr @qed_mfw_ext_maps, align 4
  %49 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %advertised_speeds.i, align 4
  %or.i = or i32 %50, %48
  store i32 %or.i, ptr %advertised_speeds.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %if.then8.i.for.inc.i_crit_edge
  %call.i.i.1.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 1, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %tobool10.not.1.i = icmp eq i32 %call.i.i.1.i, 0
  br i1 %tobool10.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then11.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.1.i

if.then11.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  %51 = load i32, ptr getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 1), align 4
  %52 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %advertised_speeds.i, align 4
  %or.1.i = or i32 %53, %51
  store i32 %or.1.i, ptr %advertised_speeds.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then11.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %call.i.i.2.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 2, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2.i)
  %tobool10.not.2.i = icmp eq i32 %call.i.i.2.i, 0
  br i1 %tobool10.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then11.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.2.i

if.then11.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #23
  %54 = load i32, ptr getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 2), align 4
  %55 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %advertised_speeds.i, align 4
  %or.2.i = or i32 %56, %54
  store i32 %or.2.i, ptr %advertised_speeds.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then11.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %call.i.i.3.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 3, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3.i)
  %tobool10.not.3.i = icmp eq i32 %call.i.i.3.i, 0
  br i1 %tobool10.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then11.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.3.i

if.then11.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #23
  %57 = load i32, ptr getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 3), align 4
  %58 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %advertised_speeds.i, align 4
  %or.3.i = or i32 %59, %57
  store i32 %or.3.i, ptr %advertised_speeds.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then11.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %call.i.i.4.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 4, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4.i)
  %tobool10.not.4.i = icmp eq i32 %call.i.i.4.i, 0
  br i1 %tobool10.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then11.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.4.i

if.then11.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #23
  %60 = load i32, ptr getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 4), align 4
  %61 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %advertised_speeds.i, align 4
  %or.4.i = or i32 %62, %60
  store i32 %or.4.i, ptr %advertised_speeds.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then11.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %call.i.i.5.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 5, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.5.i)
  %tobool10.not.5.i = icmp eq i32 %call.i.i.5.i, 0
  br i1 %tobool10.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then11.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.5.i

if.then11.5.i:                                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #23
  %63 = load i32, ptr getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 5), align 4
  %64 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %advertised_speeds.i, align 4
  %or.5.i = or i32 %65, %63
  store i32 %or.5.i, ptr %advertised_speeds.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then11.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %call.i.i.6.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 6, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.6.i)
  %tobool10.not.6.i = icmp eq i32 %call.i.i.6.i, 0
  br i1 %tobool10.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then11.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.6.i

if.then11.6.i:                                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #23
  %66 = load i32, ptr getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 6), align 4
  %67 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %advertised_speeds.i, align 4
  %or.6.i = or i32 %68, %66
  store i32 %or.6.i, ptr %advertised_speeds.i, align 4
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then11.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %call.i.i.7.i = tail call i32 @__bitmap_intersects(ptr noundef %adv_speeds.i, ptr noundef getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 7, i32 1), i32 noundef 92) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.7.i)
  %tobool10.not.7.i = icmp eq i32 %call.i.i.7.i, 0
  br i1 %tobool10.not.7.i, label %for.inc.6.i.if.end14.i_crit_edge, label %if.then11.7.i

for.inc.6.i.if.end14.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14.i

if.then11.7.i:                                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #23
  %69 = load i32, ptr getelementptr inbounds ([8 x %struct.qed_mfw_speed_map], ptr @qed_mfw_ext_maps, i32 0, i32 7), align 4
  %70 = ptrtoint ptr %advertised_speeds.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %advertised_speeds.i, align 4
  %or.7.i = or i32 %71, %69
  store i32 %or.7.i, ptr %advertised_speeds.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.7.i, %for.inc.6.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %72 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %override_flags, align 4
  %and16.i = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end32.i_crit_edge, label %if.then18.i

if.end14.i.if.end32.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.i

if.then18.i:                                      ; preds = %if.end14.i
  %forced_speed.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 4
  %74 = ptrtoint ptr %forced_speed.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %forced_speed.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %75, label %if.then18.i.if.end32.i_crit_edge [
    i32 1000, label %if.then18.i.if.end32.sink.split.i_crit_edge
    i32 10000, label %sw.bb20.i
    i32 20000, label %sw.bb22.i
    i32 25000, label %sw.bb24.i
    i32 40000, label %sw.bb26.i
    i32 50000, label %sw.bb28.i
    i32 100000, label %sw.bb30.i
  ]

if.then18.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.sink.split.i

if.then18.i.if.end32.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.i

sw.bb20.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.sink.split.i

sw.bb22.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.sink.split.i

sw.bb24.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.sink.split.i

sw.bb26.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.sink.split.i

sw.bb28.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.sink.split.i

sw.bb30.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %sw.bb30.i, %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %if.then18.i.if.end32.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb20.i ], [ 4, %sw.bb22.i ], [ 8, %sw.bb24.i ], [ 16, %sw.bb26.i ], [ 96, %sw.bb28.i ], [ 896, %sw.bb30.i ], [ 1, %if.then18.i.if.end32.sink.split.i_crit_edge ]
  %forced_speed19.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 5, i32 2
  %77 = ptrtoint ptr %forced_speed19.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink.i, ptr %forced_speed19.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end32.sink.split.i, %if.then18.i.if.end32.i_crit_edge, %if.end14.i.if.end32.i_crit_edge
  %78 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %override_flags, align 4
  %and34.i = and i32 %79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end37_crit_edge, label %if.end37.i

if.end32.i.if.end37_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

if.end37.i:                                       ; preds = %if.end32.i
  %forced_speed38.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 4
  %80 = ptrtoint ptr %forced_speed38.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %forced_speed38.i, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %81, label %if.end37.i.if.end37_crit_edge [
    i32 25000, label %sw.bb39.i
    i32 40000, label %sw.bb49.i
    i32 50000, label %sw.bb59.i
    i32 100000, label %sw.bb71.i
  ]

if.end37.i.if.end37_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

sw.bb39.i:                                        ; preds = %if.end37.i
  %fec.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 8
  %83 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %84)
  %85 = icmp ult i32 %84, 8
  br i1 %85, label %switch.hole_check, label %sw.bb39.i.if.end37_crit_edge

sw.bb39.i.if.end37_crit_edge:                     ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

sw.bb49.i:                                        ; preds = %if.end37.i
  %fec50.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 8
  %86 = ptrtoint ptr %fec50.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fec50.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %87, label %sw.bb49.i.if.end37_crit_edge [
    i32 0, label %sw.bb49.i.cleanup.sink.split.i_crit_edge
    i32 1, label %sw.bb53.i
    i32 7, label %sw.bb55.i
  ]

sw.bb49.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb49.i.if.end37_crit_edge:                     ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

sw.bb53.i:                                        ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb55.i:                                        ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split.i

sw.bb59.i:                                        ; preds = %if.end37.i
  %fec60.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 8
  %89 = ptrtoint ptr %fec60.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fec60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %90)
  %91 = icmp ult i32 %90, 8
  br i1 %91, label %switch.hole_check169, label %sw.bb59.i.if.end37_crit_edge

sw.bb59.i.if.end37_crit_edge:                     ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

sw.bb71.i:                                        ; preds = %if.end37.i
  %fec72.i = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 8
  %92 = ptrtoint ptr %fec72.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fec72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %93)
  %94 = icmp ult i32 %93, 8
  br i1 %94, label %switch.hole_check177, label %sw.bb71.i.if.end37_crit_edge

sw.bb71.i.if.end37_crit_edge:                     ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

switch.hole_check:                                ; preds = %sw.bb39.i
  %switch.maskindex = trunc i32 %84 to i8
  %switch.shifted = lshr i8 -121, %switch.maskindex
  %95 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %switch.lobit.not = icmp eq i8 %95, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end37_crit_edge, label %switch.lookup

switch.hole_check.if.end37_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #23
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.qed_set_link, i32 0, i32 %84
  %96 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %96)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split.i

switch.hole_check169:                             ; preds = %sw.bb59.i
  %switch.maskindex171 = trunc i32 %90 to i8
  %switch.shifted172 = lshr i8 -121, %switch.maskindex171
  %97 = and i8 %switch.shifted172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %switch.lobit173.not = icmp eq i8 %97, 0
  br i1 %switch.lobit173.not, label %switch.hole_check169.if.end37_crit_edge, label %switch.lookup170

switch.hole_check169.if.end37_crit_edge:          ; preds = %switch.hole_check169
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

switch.lookup170:                                 ; preds = %switch.hole_check169
  call void @__sanitizer_cov_trace_pc() #23
  %switch.gep174 = getelementptr inbounds [8 x i32], ptr @switch.table.qed_set_link.225, i32 0, i32 %90
  %98 = ptrtoint ptr %switch.gep174 to i32
  call void @__asan_load4_noabort(i32 %98)
  %switch.load175 = load i32, ptr %switch.gep174, align 4
  br label %cleanup.sink.split.i

switch.hole_check177:                             ; preds = %sw.bb71.i
  %switch.maskindex179 = trunc i32 %93 to i8
  %switch.shifted180 = lshr i8 -121, %switch.maskindex179
  %99 = and i8 %switch.shifted180, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %switch.lobit181.not = icmp eq i8 %99, 0
  br i1 %switch.lobit181.not, label %switch.hole_check177.if.end37_crit_edge, label %switch.lookup178

switch.hole_check177.if.end37_crit_edge:          ; preds = %switch.hole_check177
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end37

switch.lookup178:                                 ; preds = %switch.hole_check177
  call void @__sanitizer_cov_trace_pc() #23
  %switch.gep182 = getelementptr inbounds [8 x i32], ptr @switch.table.qed_set_link.226, i32 0, i32 %93
  %100 = ptrtoint ptr %switch.gep182 to i32
  call void @__asan_load4_noabort(i32 %100)
  %switch.load183 = load i32, ptr %switch.gep182, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup178, %switch.lookup170, %switch.lookup, %sw.bb55.i, %sw.bb53.i, %sw.bb49.i.cleanup.sink.split.i_crit_edge
  %.sink127.i = phi i32 [ 24576, %sw.bb55.i ], [ 16384, %sw.bb53.i ], [ 8192, %sw.bb49.i.cleanup.sink.split.i_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load175, %switch.lookup170 ], [ %switch.load183, %switch.lookup178 ]
  %ext_fec_mode46.i = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 6
  %101 = ptrtoint ptr %ext_fec_mode46.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink127.i, ptr %ext_fec_mode46.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %cleanup.sink.split.i, %switch.hole_check177.if.end37_crit_edge, %switch.hole_check169.if.end37_crit_edge, %switch.hole_check.if.end37_crit_edge, %sw.bb71.i.if.end37_crit_edge, %sw.bb59.i.if.end37_crit_edge, %sw.bb49.i.if.end37_crit_edge, %sw.bb39.i.if.end37_crit_edge, %if.end37.i.if.end37_crit_edge, %if.end32.i.if.end37_crit_edge, %if.end34.if.end37_crit_edge
  %102 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %override_flags, align 4
  %and39 = and i32 %103, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end67_crit_edge, label %if.then41

if.end37.if.end67_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end67

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #23
  %pause_config = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 5
  %104 = ptrtoint ptr %pause_config to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pause_config, align 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %107, ptr %108, align 4
  %110 = load i32, ptr %pause_config, align 4
  %111 = trunc i32 %110 to i8
  %112 = lshr i8 %111, 1
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %113, ptr %114, align 1
  %116 = load i32, ptr %pause_config, align 4
  %117 = trunc i32 %116 to i8
  %118 = lshr i8 %117, 2
  %119 = and i8 %118, 1
  %forced_tx = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 1, i32 2
  %120 = ptrtoint ptr %forced_tx to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %forced_tx, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.then41, %if.end37.if.end67_crit_edge
  %121 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %override_flags, align 4
  %and69 = and i32 %122, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end90_crit_edge, label %if.then71

if.end67.if.end90_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90

if.then71:                                        ; preds = %if.end67
  %loopback_mode = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 6
  %123 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %loopback_mode, align 4
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %124, label %sw.default [
    i32 2, label %if.then71.if.end90.sink.split_crit_edge
    i32 4, label %sw.bb73
    i32 8, label %sw.bb75
    i32 16, label %sw.bb77
    i32 32, label %sw.bb79
    i32 64, label %sw.bb81
    i32 128, label %sw.bb83
    i32 256, label %sw.bb85
    i32 512, label %sw.bb87
  ]

if.then71.if.end90.sink.split_crit_edge:          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb73:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb75:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb77:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb79:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb81:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb83:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb85:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.bb87:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

sw.default:                                       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %sw.default, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %if.then71.if.end90.sink.split_crit_edge
  %.sink167 = phi i32 [ 2, %sw.bb73 ], [ 3, %sw.bb75 ], [ 4, %sw.bb77 ], [ 5, %sw.bb79 ], [ 6, %sw.bb81 ], [ 7, %sw.bb83 ], [ 8, %sw.bb85 ], [ 9, %sw.bb87 ], [ 0, %sw.default ], [ 1, %if.then71.if.end90.sink.split_crit_edge ]
  %loopback_mode72 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 2
  %126 = ptrtoint ptr %loopback_mode72 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %.sink167, ptr %loopback_mode72, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.end67.if.end90_crit_edge
  %127 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %override_flags, align 4
  %and92 = and i32 %128, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end96_crit_edge, label %if.then94

if.end90.if.end96_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end96

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  %eee = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 3
  %eee95 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 7
  %129 = ptrtoint ptr %eee95 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 8)
  %130 = load i64, ptr %eee95, align 4
  %131 = ptrtoint ptr %eee to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %130, ptr %eee, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end90.if.end96_crit_edge
  %132 = ptrtoint ptr %override_flags to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %override_flags, align 4
  %and98 = and i32 %133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end96.if.end102_crit_edge, label %if.then100

if.end96.if.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end102

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #23
  %fec = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 8
  %134 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fec, align 4
  %fec101 = getelementptr inbounds %struct.qed_mcp_link_params, ptr %call7, i32 0, i32 4
  %136 = ptrtoint ptr %fec101 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %fec101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end96.if.end102_crit_edge
  %137 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %params, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool103 = icmp ne i8 %138, 0
  %call104 = tail call i32 @qed_mcp_set_link(ptr noundef %hwfns, ptr noundef nonnull %call, i1 noundef zeroext %tobool103) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call104, %if.end102 ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ], [ -61, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_get_current_link(ptr noundef %cdev, ptr noundef %if_link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @qed_fill_link(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef %if_link)
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %if.end16

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.if.end16_crit_edge, !prof !452

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.5, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef 2205, ptr noundef nonnull %spec.select) #24
  br label %if.end16

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @qed_fill_link(ptr noundef %hwfns, ptr noundef null, ptr noundef %if_link)
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %do.end, %do.body.if.end16_crit_edge, %if.then2
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %4 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1837.not = icmp eq i8 %5, 0
  br i1 %cmp1837.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %arrayidx21 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.038
  tail call void @qed_inform_vf_link_state(ptr noundef %arrayidx21) #21
  %inc = add nuw nsw i32 %i.038, 1
  %6 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_hwfns, align 4
  %conv17 = zext i8 %7 to i32
  %cmp18 = icmp ult i32 %inc, %conv17
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_drain(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp40.not = icmp eq i8 %3, 0
  br i1 %cmp40.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.041
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %arrayidx) #21
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body, label %if.end18

do.body:                                          ; preds = %for.body
  %dp_level = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.041, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp5 = icmp ult i8 %5, 3
  br i1 %cmp5, label %do.end, label %do.body.cleanup_crit_edge, !prof !452

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.041, i32 8
  %tobool11.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool11.not, ptr @.str.5, ptr %name
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef 2250, ptr noundef nonnull %spec.select) #24
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %call19 = tail call i32 @qed_mcp_drain(ptr noundef %arrayidx, ptr noundef nonnull %call) #21
  tail call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef nonnull %call) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.inc, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.inc:                                          ; preds = %if.end18
  %inc = add nuw nsw i32 %i.041, 1
  %6 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_init_dp(ptr noundef, i32 noundef, i8 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_chain_alloc(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_chain_free(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_nvm_flash(ptr noundef %cdev, ptr noundef %name) #2 align 64 {
entry:
  %buf.i192 = alloca [32 x i8], align 1
  %crc.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  %buf.i = alloca [4 x i8], align 4
  %file_size.i = alloca i32, align 4
  %image = alloca ptr, align 4
  %mcp_response = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %image) #21
  %0 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %image, align 4, !annotation !461
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %image, ptr noundef %name, ptr noundef %dev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %name2 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool3.not = icmp eq ptr %name2, null
  %spec.select = select i1 %tobool3.not, ptr @.str.5, ptr %name2
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, i32 noundef 2660, ptr noundef nonnull %spec.select, ptr noundef %name) #24
  br label %cleanup133

do.body9:                                         ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.rhs, label %do.body9.do.end32_crit_edge

do.body9.do.end32_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end32

land.rhs:                                         ; preds = %do.body9
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cdev, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.rhs.do.end32_crit_edge, label %do.end17, !prof !453

land.rhs.do.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end32

do.end17:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name19 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool21.not = icmp eq ptr %name19, null
  %spec.select168 = select i1 %tobool21.not, ptr @.str.5, ptr %name19
  %7 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %image, align 4
  %data28 = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data28, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.156, i32 noundef 2666, ptr noundef nonnull %spec.select168, ptr noundef %name, ptr noundef %10, i32 noundef %12) #24
  br label %do.end32

do.end32:                                         ; preds = %do.end17, %land.rhs.do.end32_crit_edge, %do.body9.do.end32_crit_edge
  %13 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %image, align 4
  %data33 = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data33, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %18)
  %cmp.i = icmp ult i32 %18, 12
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #23
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.173, i32 noundef 2489, ptr noundef nonnull %name.i, i32 noundef %18) #24
  br label %exit

if.end.i:                                         ; preds = %do.end32
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 306402951, i32 %20)
  %cmp7.not.i = icmp eq i32 %20, 306402951
  br i1 %cmp7.not.i, label %if.end26.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %name14.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.173, i32 noundef 2496, ptr noundef nonnull %name14.i, i32 noundef %20) #24
  br label %exit

if.end26.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %18)
  %cmp28.not.i = icmp eq i32 %22, %18
  br i1 %cmp28.not.i, label %if.end48.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #23
  %name35.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.173, i32 noundef 2505, ptr noundef nonnull %name35.i, i32 noundef %22, i32 noundef %18) #24
  br label %exit

if.end48.i:                                       ; preds = %if.end26.i
  %add.ptr49.i = getelementptr i8, ptr %16, i32 8
  %23 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr49.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %24)
  %cmp50.i = icmp ugt i16 %24, 5
  br i1 %cmp50.i, label %do.end56.i, label %qed_nvm_flash_image_validate.exit

do.end56.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #23
  %name58.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %conv67.i = zext i16 %24 to i32
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.173, i32 noundef 2513, ptr noundef nonnull %name58.i, i32 noundef %conv67.i) #24
  br label %exit

qed_nvm_flash_image_validate.exit:                ; preds = %if.end48.i
  %add.ptr72.i = getelementptr i8, ptr %16, i32 12
  %cmp39285 = icmp ult ptr %add.ptr72.i, %add.ptr
  br i1 %cmp39285, label %while.body.lr.ph, label %qed_nvm_flash_image_validate.exit.exit_crit_edge

qed_nvm_flash_image_validate.exit.exit_crit_edge: ; preds = %qed_nvm_flash_image_validate.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

while.body.lr.ph:                                 ; preds = %qed_nvm_flash_image_validate.exit
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %name.i201 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %nvm_info.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 63
  %image_att.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 63, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup130.while.body_crit_edge, %while.body.lr.ph
  %data.1286 = phi ptr [ %add.ptr72.i, %while.body.lr.ph ], [ %data.9, %cleanup130.while.body_crit_edge ]
  %25 = ptrtoint ptr %data.1286 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.1286, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %26, label %do.end51 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb42
    i32 4, label %sw.bb44
    i32 5, label %sw.bb46
  ]

sw.bb:                                            ; preds = %while.body
  %add.ptr.i173 = getelementptr i8, ptr %data.1286, i32 4
  %28 = ptrtoint ptr %add.ptr.i173 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i173, align 4
  %add.ptr1.i = getelementptr i8, ptr %data.1286, i32 8
  %30 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr1.i, align 1
  %32 = and i8 %31, 1
  %add.ptr3.i = getelementptr i8, ptr %data.1286, i32 12
  %33 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %data.1286, i32 16
  %35 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i174 = icmp eq i8 %36, 0
  br i1 %cmp.i174, label %land.rhs.i, label %sw.bb.qed_nvm_flash_image_file_data.exit_crit_edge

sw.bb.qed_nvm_flash_image_file_data.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_nvm_flash_image_file_data.exit

land.rhs.i:                                       ; preds = %sw.bb
  %37 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cdev, align 8
  %and7.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.rhs.i.qed_nvm_flash_image_file_data.exit_crit_edge, label %do.end.i177, !prof !453

land.rhs.i.qed_nvm_flash_image_file_data.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_nvm_flash_image_file_data.exit

do.end.i177:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, i32 noundef 2465, ptr noundef nonnull %name.i201, i32 noundef %29, i32 noundef %34) #24
  br label %qed_nvm_flash_image_file_data.exit

qed_nvm_flash_image_file_data.exit:               ; preds = %do.end.i177, %land.rhs.i.qed_nvm_flash_image_file_data.exit_crit_edge, %sw.bb.qed_nvm_flash_image_file_data.exit_crit_edge
  %call18.i = call i32 @qed_mcp_nvm_write(ptr noundef %cdev, i32 noundef 131072, i32 noundef %34, ptr noundef %add.ptr4.i, i32 noundef %29) #21
  %add.ptr19.i = getelementptr i8, ptr %add.ptr4.i, i32 %29
  br label %sw.epilog

sw.bb42:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %file_size.i) #21
  %39 = ptrtoint ptr %file_size.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %file_size.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %data.1286, i32 4
  %40 = ptrtoint ptr %add.ptr.i178 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i178, align 1
  %42 = and i8 %41, 1
  %add.ptr2.i = getelementptr i8, ptr %data.1286, i32 8
  %43 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr2.i, align 1
  %conv3.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i180 = icmp eq i8 %46, 0
  br i1 %cmp.i180, label %land.rhs.i181, label %sw.bb42.do.end16.i_crit_edge

sw.bb42.do.end16.i_crit_edge:                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end16.i

land.rhs.i181:                                    ; preds = %sw.bb42
  %47 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cdev, align 8
  %and6.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.rhs.i181.do.end16.i_crit_edge, label %do.end.i184, !prof !453

land.rhs.i181.do.end16.i_crit_edge:               ; preds = %land.rhs.i181
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end16.i

do.end.i184:                                      ; preds = %land.rhs.i181
  call void @__sanitizer_cov_trace_pc() #23
  %call.i183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, i32 noundef 2425, ptr noundef nonnull %name.i201, i32 noundef %conv3.i) #24
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i184, %land.rhs.i181.do.end16.i_crit_edge, %sw.bb42.do.end16.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp17.i = icmp eq i8 %44, 3
  br i1 %cmp17.i, label %if.then19.i, label %do.end16.i.qed_nvm_flash_image_file_start.exit_crit_edge

do.end16.i.qed_nvm_flash_image_file_start.exit_crit_edge: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_nvm_flash_image_file_start.exit

if.then19.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr20.i = getelementptr i8, ptr %data.1286, i32 12
  %49 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr20.i, align 4
  %51 = ptrtoint ptr %file_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %file_size.i, align 4
  br label %qed_nvm_flash_image_file_start.exit

qed_nvm_flash_image_file_start.exit:              ; preds = %if.then19.i, %do.end16.i.qed_nvm_flash_image_file_start.exit_crit_edge
  %52 = phi i32 [ 12, %if.then19.i ], [ 8, %do.end16.i.qed_nvm_flash_image_file_start.exit_crit_edge ]
  %53 = getelementptr i8, ptr %data.1286, i32 4
  %call22.i = call i32 @qed_mcp_nvm_write(ptr noundef %cdev, i32 noundef 65536, i32 noundef %conv3.i, ptr noundef nonnull %file_size.i, i32 noundef 4) #21
  %add.ptr23.i = getelementptr i8, ptr %53, i32 %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %file_size.i) #21
  br label %sw.epilog

sw.bb44:                                          ; preds = %while.body
  %add.ptr.i185 = getelementptr i8, ptr %data.1286, i32 4
  %54 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i185, align 1
  %conv.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %nvm_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nvm_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp31.not.i = icmp eq i32 %57, 0
  br i1 %cmp31.not.i, label %sw.bb44.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb44.for.end.i_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb44
  %58 = ptrtoint ptr %image_att.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %image_att.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %image_type4.i = getelementptr %struct.bist_nvm_image_att, ptr %59, i32 %i.032.i, i32 1
  %60 = ptrtoint ptr %image_type4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %image_type4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv.i)
  %cmp5.i = icmp eq i32 %61, %conv.i
  br i1 %cmp5.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %57
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i188_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.inc.i.do.end.i188_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i188

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb44.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.bb44.for.end.i_crit_edge ], [ %i.032.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %57)
  %cmp9.i = icmp eq i32 %i.0.lcssa.i, %57
  br i1 %cmp9.i, label %for.end.i.do.end.i188_crit_edge, label %if.end17.i

for.end.i.do.end.i188_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end.i188

do.end.i188:                                      ; preds = %for.end.i.do.end.i188_crit_edge, %for.inc.i.do.end.i188_crit_edge
  %conv.i.le = zext i8 %55 to i32
  %call.i187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.188, i32 noundef 2329, ptr noundef nonnull %name.i201, i32 noundef %conv.i.le) #24
  br label %do.end70

if.end17.i:                                       ; preds = %for.end.i
  %62 = ptrtoint ptr %image_att.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %image_att.i, align 4
  %nvm_start_addr.i = getelementptr %struct.bist_nvm_image_att, ptr %63, i32 %i.0.lcssa.i, i32 2
  %64 = ptrtoint ptr %nvm_start_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nvm_start_addr.i, align 4
  %len24.i = getelementptr %struct.bist_nvm_image_att, ptr %63, i32 %i.0.lcssa.i, i32 3
  %66 = ptrtoint ptr %len24.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len24.i, align 4
  %68 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp27.i = icmp eq i8 %69, 0
  br i1 %cmp27.i, label %land.rhs.i190, label %if.end17.i.do.end53.i_crit_edge

if.end17.i.do.end53.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end53.i

land.rhs.i190:                                    ; preds = %if.end17.i
  %70 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cdev, align 8
  %and.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %land.rhs.i190.do.end53.i_crit_edge, label %do.end35.i, !prof !453

land.rhs.i190.do.end53.i_crit_edge:               ; preds = %land.rhs.i190
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end53.i

do.end35.i:                                       ; preds = %land.rhs.i190
  call void @__sanitizer_cov_trace_pc() #23
  %add.i = add i32 %67, %65
  %sub.i = add i32 %add.i, -1
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.188, i32 noundef 2339, ptr noundef nonnull %name.i201, i32 noundef %conv.i, i32 noundef %conv.i, i32 noundef %65, i32 noundef %sub.i) #24
  br label %do.end53.i

do.end53.i:                                       ; preds = %do.end35.i, %land.rhs.i190.do.end53.i_crit_edge, %if.end17.i.do.end53.i_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %data.1286, i32 5
  %72 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.i, align 1
  %74 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool56.not.i = icmp eq i8 %74, 0
  %add.ptr62.i = getelementptr i8, ptr %data.1286, i32 8
  br i1 %tobool56.not.i, label %while.cond.preheader.i, label %if.then64.i

while.cond.preheader.i:                           ; preds = %do.end53.i
  %incdec.ptr61.i = getelementptr i8, ptr %data.1286, i32 6
  %75 = ptrtoint ptr %incdec.ptr61.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %incdec.ptr61.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool116.not36.i = icmp eq i16 %76, 0
  br i1 %tobool116.not36.i, label %while.cond.preheader.i.cleanup130_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup130_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup130

if.then64.i:                                      ; preds = %do.end53.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc.i) #21
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #26
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then64.i.do.end71.i_crit_edge, label %if.end.i.i

if.then64.i.do.end71.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end71.i

if.end.i.i:                                       ; preds = %if.then64.i
  %call2.i.i = call i32 @qed_mcp_nvm_read(ptr noundef %cdev, i32 noundef %65, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %67) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end85.i, label %qed_nvm_flash_image_access_crc.exit.i

qed_nvm_flash_image_access_crc.exit.i:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208, i32 noundef 2278, ptr noundef nonnull %name.i201) #24
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #21
  br label %do.end71.i

do.end71.i:                                       ; preds = %qed_nvm_flash_image_access_crc.exit.i, %if.then64.i.do.end71.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call2.i.i, %qed_nvm_flash_image_access_crc.exit.i ], [ -12, %if.then64.i.do.end71.i_crit_edge ]
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.188, i32 noundef 2350, ptr noundef nonnull %name.i201, i32 noundef %retval.0.i22.i) #24
  br label %cleanup.i

if.end85.i:                                       ; preds = %if.end.i.i
  %sub16.i.i = add i32 %67, -4
  %call17.i.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %sub16.i.i) #27
  %neg.i.i = xor i32 %call17.i.i, -1
  %77 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %neg.i.i, ptr %crc.i, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #21
  %add88.i = add i32 %67, %65
  %sub89.i = add i32 %add88.i, -4
  %call90.i = call i32 @qed_mcp_nvm_write(ptr noundef %cdev, i32 noundef 393216, i32 noundef %sub89.i, ptr noundef nonnull %crc.i, i32 noundef 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end85.i.cleanup.i_crit_edge, label %do.end96.i

if.end85.i.cleanup.i_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.i

do.end96.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #23
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.188, i32 noundef 2359, ptr noundef nonnull %name.i201, i32 noundef %sub89.i, i32 noundef %call90.i) #24
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end96.i, %if.end85.i.cleanup.i_crit_edge, %do.end71.i
  %rc.0.i = phi i32 [ %retval.0.i22.i, %do.end71.i ], [ %call90.i, %do.end96.i ], [ 0, %if.end85.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc.i) #21
  br label %sw.epilog

while.body.i:                                     ; preds = %cleanup214.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %data.3 = phi ptr [ %add.ptr119.i, %cleanup214.i.while.body.i_crit_edge ], [ %add.ptr62.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %len.037.i = phi i16 [ %dec.i, %cleanup214.i.while.body.i_crit_edge ], [ %76, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #21
  %78 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %value.i, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #21
  %79 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %buf.i, align 4
  %80 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data.3, align 4
  %82 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %value.i, align 4
  %add.ptr117.i = getelementptr i8, ptr %data.3, i32 4
  %83 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr117.i, align 4
  %add.ptr118.i = getelementptr i8, ptr %data.3, i32 8
  %85 = ptrtoint ptr %add.ptr118.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr118.i, align 4
  %add.ptr119.i = getelementptr i8, ptr %data.3, i32 12
  %add121.i = add i32 %86, %65
  %call123.i = call i32 @qed_mcp_nvm_read(ptr noundef %cdev, i32 noundef %add121.i, ptr noundef nonnull %buf.i, i32 noundef 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end145.i, label %do.end129.i

do.end129.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #23
  %call142.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.188, i32 noundef 2379, ptr noundef nonnull %name.i201, i32 noundef %add121.i) #24
  br label %cleanup214.thread.i

if.end145.i:                                      ; preds = %while.body.i
  %87 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf.i, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88) #21
  %90 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp150.i = icmp eq i8 %91, 0
  br i1 %cmp150.i, label %land.rhs152.i, label %if.end145.i.do.end184.i_crit_edge

if.end145.i.do.end184.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end184.i

land.rhs152.i:                                    ; preds = %if.end145.i
  %92 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cdev, align 8
  %and154.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i)
  %tobool155.not.i = icmp eq i32 %and154.i, 0
  br i1 %tobool155.not.i, label %land.rhs152.i.do.end184.i_crit_edge, label %do.end166.i, !prof !453

land.rhs152.i.do.end184.i_crit_edge:              ; preds = %land.rhs152.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end184.i

do.end166.i:                                      ; preds = %land.rhs152.i
  call void @__sanitizer_cov_trace_pc() #23
  %neg.i = xor i32 %84, -1
  %and179.i = and i32 %89, %neg.i
  %94 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %value.i, align 4
  %and180.i = and i32 %95, %84
  %or.i = or i32 %and180.i, %and179.i
  %call181.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.188, i32 noundef 2387, ptr noundef nonnull %name.i201, i32 noundef %add121.i, i32 noundef %89, i32 noundef %or.i, i32 noundef %95, i32 noundef %84) #24
  br label %do.end184.i

do.end184.i:                                      ; preds = %do.end166.i, %land.rhs152.i.do.end184.i_crit_edge, %if.end145.i.do.end184.i_crit_edge
  %96 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %value.i, align 4
  %and185.i = and i32 %97, %84
  %neg186.i = xor i32 %84, -1
  %and187.i = and i32 %89, %neg186.i
  %or188.i = or i32 %and185.i, %and187.i
  store i32 %or188.i, ptr %value.i, align 4
  %call191.i = call i32 @qed_mcp_nvm_write(ptr noundef %cdev, i32 noundef 393216, i32 noundef %add121.i, ptr noundef nonnull %value.i, i32 noundef 4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i)
  %tobool192.not.i = icmp eq i32 %call191.i, 0
  br i1 %tobool192.not.i, label %cleanup214.i, label %do.end197.i

do.end197.i:                                      ; preds = %do.end184.i
  call void @__sanitizer_cov_trace_pc() #23
  %call210.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.188, i32 noundef 2394, ptr noundef nonnull %name.i201, i32 noundef %add121.i) #24
  br label %cleanup214.thread.i

cleanup214.thread.i:                              ; preds = %do.end197.i, %do.end129.i
  %rc.2.ph.i = phi i32 [ %call191.i, %do.end197.i ], [ %call123.i, %do.end129.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #21
  br label %do.end70

cleanup214.i:                                     ; preds = %do.end184.i
  %dec.i = add i16 %len.037.i, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #21
  %tobool116.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool116.not.i, label %cleanup214.i.cleanup130_crit_edge, label %cleanup214.i.while.body.i_crit_edge

cleanup214.i.while.body.i_crit_edge:              ; preds = %cleanup214.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body.i

cleanup214.i.cleanup130_crit_edge:                ; preds = %cleanup214.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup130

sw.bb46:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i192) #21
  %98 = call ptr @memset(ptr %buf.i192, i32 255, i32 32)
  %call.i193 = call ptr @qed_ptt_acquire(ptr noundef %hwfns.i) #21
  %tobool.not.i = icmp eq ptr %call.i193, null
  br i1 %tobool.not.i, label %sw.bb46.qed_nvm_flash_cfg_write.exit_crit_edge, label %if.end.i198

sw.bb46.qed_nvm_flash_cfg_write.exit_crit_edge:   ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_nvm_flash_cfg_write.exit

if.end.i198:                                      ; preds = %sw.bb46
  %add.ptr.i194 = getelementptr i8, ptr %data.1286, i32 4
  %99 = ptrtoint ptr %add.ptr.i194 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr.i194, align 2
  %add.ptr1.i195 = getelementptr i8, ptr %data.1286, i32 8
  %101 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp.i197 = icmp eq i8 %102, 0
  br i1 %cmp.i197, label %land.rhs.i200, label %if.end.i198.do.end15.i_crit_edge

if.end.i198.do.end15.i_crit_edge:                 ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end15.i

land.rhs.i200:                                    ; preds = %if.end.i198
  %103 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cdev, align 8
  %and.i199 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199)
  %tobool3.not.i = icmp eq i32 %and.i199, 0
  br i1 %tobool3.not.i, label %land.rhs.i200.do.end15.i_crit_edge, label %do.end.i202, !prof !453

land.rhs.i200.do.end15.i_crit_edge:               ; preds = %land.rhs.i200
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end15.i

do.end.i202:                                      ; preds = %land.rhs.i200
  call void @__sanitizer_cov_trace_pc() #23
  %conv11.i = zext i16 %100 to i32
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 2556, ptr noundef nonnull %name.i201, i32 noundef %conv11.i) #24
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i202, %land.rhs.i200.do.end15.i_crit_edge, %if.end.i198.do.end15.i_crit_edge
  %conv16.i = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp17.not161.i = icmp eq i16 %100, 0
  br i1 %cmp17.not161.i, label %do.end15.i.for.end.i208_crit_edge, label %do.end15.i.for.body.i207_crit_edge

do.end15.i.for.body.i207_crit_edge:               ; preds = %do.end15.i
  br label %for.body.i207

do.end15.i.for.end.i208_crit_edge:                ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i208

for.cond.i:                                       ; preds = %do.end75.i
  %inc.i204 = add nuw nsw i32 %i.0163.i, 1
  br i1 %cmp30.i, label %for.cond.i.for.end.i208_crit_edge, label %for.cond.i.for.body.i207_crit_edge

for.cond.i.for.body.i207_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i207

for.cond.i.for.end.i208_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i208

for.body.i207:                                    ; preds = %for.cond.i.for.body.i207_crit_edge, %do.end15.i.for.body.i207_crit_edge
  %data.5 = phi ptr [ %add.ptr24.i, %for.cond.i.for.body.i207_crit_edge ], [ %add.ptr1.i195, %do.end15.i.for.body.i207_crit_edge ]
  %i.0163.i = phi i32 [ %inc.i204, %for.cond.i.for.body.i207_crit_edge ], [ 1, %do.end15.i.for.body.i207_crit_edge ]
  %need_nvm_init.0.off0162.i = phi i1 [ %or.cond.i, %for.cond.i.for.body.i207_crit_edge ], [ true, %do.end15.i.for.body.i207_crit_edge ]
  %105 = ptrtoint ptr %data.5 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %data.5, align 2
  %add.ptr19.i205 = getelementptr i8, ptr %data.5, i32 2
  %107 = ptrtoint ptr %add.ptr19.i205 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %add.ptr19.i205, align 1
  %incdec.ptr.i206 = getelementptr i8, ptr %data.5, i32 3
  %109 = ptrtoint ptr %incdec.ptr.i206 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %incdec.ptr.i206, align 1
  %incdec.ptr20.i = getelementptr i8, ptr %data.5, i32 4
  %conv22.i = zext i8 %110 to i32
  %111 = call ptr @memcpy(ptr %buf.i192, ptr %incdec.ptr20.i, i32 %conv22.i)
  %add.ptr24.i = getelementptr i8, ptr %incdec.ptr20.i, i32 %conv22.i
  %spec.select155.i = select i1 %need_nvm_init.0.off0162.i, i32 2, i32 0
  %rem.urem.i = urem i32 %i.0163.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.urem.i)
  %tobool28.not.i = icmp eq i32 %rem.urem.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0163.i, i32 %conv16.i)
  %cmp30.i = icmp eq i32 %i.0163.i, %conv16.i
  %or.cond.i = select i1 %tobool28.not.i, i1 true, i1 %cmp30.i
  %or33.i = or i32 %spec.select155.i, 12
  %spec.select160.i = select i1 %or.cond.i, i32 %or33.i, i32 %spec.select155.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool35.not.i = icmp eq i8 %108, 0
  %or37.i = or i32 %spec.select160.i, 16
  %spec.select156.i = select i1 %tobool35.not.i, i32 %spec.select160.i, i32 %or37.i
  %112 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp42.i = icmp eq i8 %113, 0
  br i1 %cmp42.i, label %land.rhs44.i, label %for.body.i207.do.end75.i_crit_edge

for.body.i207.do.end75.i_crit_edge:               ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end75.i

land.rhs44.i:                                     ; preds = %for.body.i207
  %114 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cdev, align 8
  %and46.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %land.rhs44.i.do.end75.i_crit_edge, label %do.end58.i, !prof !453

land.rhs44.i.do.end75.i_crit_edge:                ; preds = %land.rhs44.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end75.i

do.end58.i:                                       ; preds = %land.rhs44.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv69.i = zext i16 %106 to i32
  %conv70.i = zext i8 %108 to i32
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.210, i32 noundef 2588, ptr noundef nonnull %name.i201, i32 noundef %conv69.i, i32 noundef %conv70.i, i32 noundef %conv22.i) #24
  br label %do.end75.i

do.end75.i:                                       ; preds = %do.end58.i, %land.rhs44.i.do.end75.i_crit_edge, %for.body.i207.do.end75.i_crit_edge
  %conv76.i = trunc i32 %spec.select156.i to i16
  %call79.i = call i32 @qed_mcp_nvm_set_cfg(ptr noundef %hwfns.i, ptr noundef nonnull %call.i193, i16 noundef zeroext %106, i8 noundef zeroext %108, i16 noundef zeroext %conv76.i, ptr noundef nonnull %buf.i192, i32 noundef %conv22.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %for.cond.i, label %do.end85.i

do.end85.i:                                       ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv96.i = zext i16 %106 to i32
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.210, i32 noundef 2592, ptr noundef nonnull %name.i201, i32 noundef %call79.i, i32 noundef %conv96.i) #24
  br label %for.end.i208

for.end.i208:                                     ; preds = %do.end85.i, %for.cond.i.for.end.i208_crit_edge, %do.end15.i.for.end.i208_crit_edge
  %data.6 = phi ptr [ %add.ptr1.i195, %do.end15.i.for.end.i208_crit_edge ], [ %add.ptr24.i, %do.end85.i ], [ %add.ptr24.i, %for.cond.i.for.end.i208_crit_edge ]
  %rc.1.i = phi i32 [ 0, %do.end15.i.for.end.i208_crit_edge ], [ %call79.i, %do.end85.i ], [ 0, %for.cond.i.for.end.i208_crit_edge ]
  call void @qed_ptt_release(ptr noundef %hwfns.i, ptr noundef nonnull %call.i193) #21
  br label %qed_nvm_flash_cfg_write.exit

qed_nvm_flash_cfg_write.exit:                     ; preds = %for.end.i208, %sw.bb46.qed_nvm_flash_cfg_write.exit_crit_edge
  %data.7 = phi ptr [ %data.1286, %sw.bb46.qed_nvm_flash_cfg_write.exit_crit_edge ], [ %data.6, %for.end.i208 ]
  %retval.0.i209 = phi i32 [ -11, %sw.bb46.qed_nvm_flash_cfg_write.exit_crit_edge ], [ %rc.1.i, %for.end.i208 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i192) #21
  br label %sw.epilog

do.end51:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  %tobool55.not = icmp eq ptr %name.i201, null
  %spec.select169 = select i1 %tobool55.not, ptr @.str.5, ptr %name.i201
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.156, i32 noundef 2696, ptr noundef nonnull %spec.select169, i32 noundef %26) #24
  br label %exit

sw.epilog:                                        ; preds = %qed_nvm_flash_cfg_write.exit, %cleanup.i, %qed_nvm_flash_image_file_start.exit, %qed_nvm_flash_image_file_data.exit
  %data.8 = phi ptr [ %data.7, %qed_nvm_flash_cfg_write.exit ], [ %add.ptr23.i, %qed_nvm_flash_image_file_start.exit ], [ %add.ptr19.i, %qed_nvm_flash_image_file_data.exit ], [ %add.ptr62.i, %cleanup.i ]
  %check_resp.0 = phi i8 [ 0, %qed_nvm_flash_cfg_write.exit ], [ %42, %qed_nvm_flash_image_file_start.exit ], [ %32, %qed_nvm_flash_image_file_data.exit ], [ 0, %cleanup.i ]
  %rc.1 = phi i32 [ %retval.0.i209, %qed_nvm_flash_cfg_write.exit ], [ %call22.i, %qed_nvm_flash_image_file_start.exit ], [ %call18.i, %qed_nvm_flash_image_file_data.exit ], [ %rc.0.i, %cleanup.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool65.not = icmp eq i32 %rc.1, 0
  br i1 %tobool65.not, label %if.end84, label %sw.epilog.do.end70_crit_edge

sw.epilog.do.end70_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end70

do.end70:                                         ; preds = %sw.epilog.do.end70_crit_edge, %cleanup214.thread.i, %do.end.i188
  %116 = phi i32 [ 4, %cleanup214.thread.i ], [ 4, %do.end.i188 ], [ %26, %sw.epilog.do.end70_crit_edge ]
  %rc.1243 = phi i32 [ %rc.2.ph.i, %cleanup214.thread.i ], [ -2, %do.end.i188 ], [ %rc.1, %sw.epilog.do.end70_crit_edge ]
  %tobool74.not = icmp eq ptr %name.i201, null
  %spec.select170 = select i1 %tobool74.not, ptr @.str.5, ptr %name.i201
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.156, i32 noundef 2702, ptr noundef nonnull %spec.select170, i32 noundef %116) #24
  br label %exit

if.end84:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %check_resp.0)
  %tobool85.not = icmp eq i8 %check_resp.0, 0
  br i1 %tobool85.not, label %if.end84.cleanup130_crit_edge, label %if.then86

if.end84.cleanup130_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup130

if.then86:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcp_response) #21
  %117 = ptrtoint ptr %mcp_response to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %mcp_response, align 4
  %call87 = call i32 @qed_mcp_nvm_resp(ptr noundef %cdev, ptr noundef nonnull %mcp_response) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end107, label %do.end93

do.end93:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #23
  %tobool97.not = icmp eq ptr %name.i201, null
  %spec.select171 = select i1 %tobool97.not, ptr @.str.5, ptr %name.i201
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.156, i32 noundef 2711, ptr noundef nonnull %spec.select171) #24
  br label %cleanup.thread

if.end107:                                        ; preds = %if.then86
  %118 = ptrtoint ptr %mcp_response to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mcp_response, align 4
  %and108 = and i32 %119, -65536
  %120 = zext i32 %and108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %and108, label %do.end114 [
    i32 1441792, label %if.end107.cleanup_crit_edge
    i32 65536, label %if.end107.cleanup_crit_edge428
    i32 4194304, label %if.end107.cleanup_crit_edge429
    i32 1114112, label %if.end107.cleanup_crit_edge430
  ]

if.end107.cleanup_crit_edge430:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end107.cleanup_crit_edge429:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end107.cleanup_crit_edge428:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #23
  %tobool118.not = icmp eq ptr %name.i201, null
  %spec.select172 = select i1 %tobool118.not, ptr @.str.5, ptr %name.i201
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.156, i32 noundef 2724, ptr noundef nonnull %spec.select172, i32 noundef %119) #24
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end114, %do.end93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcp_response) #21
  br label %exit

cleanup:                                          ; preds = %if.end107.cleanup_crit_edge, %if.end107.cleanup_crit_edge428, %if.end107.cleanup_crit_edge429, %if.end107.cleanup_crit_edge430
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcp_response) #21
  br label %cleanup130

cleanup130:                                       ; preds = %cleanup, %if.end84.cleanup130_crit_edge, %cleanup214.i.cleanup130_crit_edge, %while.cond.preheader.i.cleanup130_crit_edge
  %data.9 = phi ptr [ %data.8, %cleanup ], [ %data.8, %if.end84.cleanup130_crit_edge ], [ %add.ptr62.i, %while.cond.preheader.i.cleanup130_crit_edge ], [ %add.ptr119.i, %cleanup214.i.cleanup130_crit_edge ]
  %cmp39 = icmp ult ptr %data.9, %add.ptr
  br i1 %cmp39, label %cleanup130.while.body_crit_edge, label %cleanup130.exit_crit_edge

cleanup130.exit_crit_edge:                        ; preds = %cleanup130
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

cleanup130.while.body_crit_edge:                  ; preds = %cleanup130
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

exit:                                             ; preds = %cleanup130.exit_crit_edge, %cleanup.thread, %do.end70, %do.end51, %qed_nvm_flash_image_validate.exit.exit_crit_edge, %do.end56.i, %do.end33.i, %do.end12.i, %do.end.i
  %rc.5 = phi i32 [ -22, %do.end.i ], [ -22, %do.end12.i ], [ -22, %do.end33.i ], [ -22, %do.end56.i ], [ -22, %cleanup.thread ], [ %rc.1243, %do.end70 ], [ -22, %do.end51 ], [ 0, %qed_nvm_flash_image_validate.exit.exit_crit_edge ], [ 0, %cleanup130.exit_crit_edge ]
  %121 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %image, align 4
  call void @release_firmware(ptr noundef %122) #21
  br label %cleanup133

cleanup133:                                       ; preds = %exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %rc.5, %exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %image) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_nvm_get_image(ptr noundef %cdev, i32 noundef %type, ptr noundef %buf, i16 noundef zeroext %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %conv = zext i16 %len to i32
  %call = tail call i32 @qed_mcp_get_nvm_image(ptr noundef %hwfns, i32 noundef %type, ptr noundef %buf, i32 noundef %conv) #21
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_set_coalesce(ptr nocapture noundef readnone %cdev, i16 noundef zeroext %rx_coal, i16 noundef zeroext %tx_coal, ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qed_set_queue_coalesce(i16 noundef zeroext %rx_coal, i16 noundef zeroext %tx_coal, ptr noundef %handle) #21
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_set_led(ptr noundef %cdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call1 = tail call i32 @qed_mcp_set_led(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef %mode) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_db_recovery_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_db_recovery_del(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_recovery_prolog(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_update_drv_state(ptr noundef %cdev, i1 noundef zeroext %active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %cond = select i1 %active, i32 2, i32 1
  %call5 = tail call i32 @qed_mcp_ov_update_driver_state(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef %cond) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_update_mac(ptr noundef %cdev, ptr noundef %mac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @qed_mcp_ov_update_mac(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef %mac) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  %call8 = tail call i32 @qed_mcp_ov_update_current_config(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 0) #21
  br label %out

out:                                              ; preds = %if.end7, %if.end3.out_crit_edge
  %status.0 = phi i32 [ %call4, %if.end3.out_crit_edge ], [ %call8, %if.end7 ]
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_update_mtu(ptr noundef %cdev, i16 noundef zeroext %mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @qed_mcp_ov_update_mtu(ptr noundef %hwfns, ptr noundef nonnull %call, i16 noundef zeroext %mtu) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  %call8 = tail call i32 @qed_mcp_ov_update_current_config(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 0) #21
  br label %out

out:                                              ; preds = %if.end7, %if.end3.out_crit_edge
  %status.0 = phi i32 [ %call4, %if.end3.out_crit_edge ], [ %call8, %if.end7 ]
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_update_wol(ptr noundef %cdev, i1 noundef zeroext %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cond = select i1 %enabled, i32 2, i32 1
  %call5 = tail call i32 @qed_mcp_ov_update_wol(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef %cond) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  %call9 = tail call i32 @qed_mcp_ov_update_current_config(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef 0) #21
  br label %out

out:                                              ; preds = %if.end8, %if.end3.out_crit_edge
  %rc.0 = phi i32 [ %call5, %if.end3.out_crit_edge ], [ %call9, %if.end8 ]
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_read_module_eeprom(ptr noundef %cdev, ptr noundef %buf, i8 noundef zeroext %dev_addr, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %abs_pf_id = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 3
  %2 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %abs_pf_id, align 2
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwfns, align 8
  %call5 = tail call i32 @qed_device_num_ports(ptr noundef %5) #21
  %rem = srem i32 %conv, %call5
  %conv6 = zext i8 %dev_addr to i32
  %call7 = tail call i32 @qed_mcp_phy_sfp_read(ptr noundef %hwfns, ptr noundef nonnull %call, i32 noundef %rem, i32 noundef %conv6, i32 noundef %offset, i32 noundef %len, ptr noundef %buf) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @qed_get_affin_hwfn_idx(ptr nocapture noundef readonly %cdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %iwarp_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 36
  %fir_affin = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 35
  %idxprom.pn.in.in = select i1 %switch, ptr %iwarp_affin, ptr %fir_affin
  %2 = ptrtoint ptr %idxprom.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %idxprom.pn.in = load i8, ptr %idxprom.pn.in.in, align 1
  %idxprom.pn = zext i8 %idxprom.pn.in to i32
  %my_id = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %idxprom.pn, i32 1
  %3 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  %conv = zext i1 %tobool.not to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_nvm_flash_cfg_read(ptr noundef %cdev, ptr nocapture noundef readonly %data, i32 noundef %cmd, i32 noundef %entity_id) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #21
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !461
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.rhs, label %do.body.do.end13_crit_edge

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end13

land.rhs:                                         ; preds = %do.body
  %3 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cdev, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.do.end13_crit_edge, label %do.end, !prof !453

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end13

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.5, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef 2640, ptr noundef nonnull %spec.select, i32 noundef %cmd, i32 noundef %entity_id) #24
  br label %do.end13

do.end13:                                         ; preds = %do.end, %land.rhs.do.end13_crit_edge, %do.body.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entity_id)
  %tobool14.not = icmp eq i32 %entity_id, 0
  %conv16 = trunc i32 %cmd to i16
  %conv17 = trunc i32 %entity_id to i8
  %conv18 = select i1 %tobool14.not, i16 10, i16 26
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call19 = call i32 @qed_mcp_nvm_get_cfg(ptr noundef %hwfns, ptr noundef nonnull %call, i16 noundef zeroext %conv16, i8 noundef zeroext %conv17, i16 noundef zeroext %conv18, ptr noundef %6, ptr noundef nonnull %len) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end13.if.end39_crit_edge, label %do.end25

do.end13.if.end39_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end39

do.end25:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #23
  %name27 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool29.not = icmp eq ptr %name27, null
  %spec.select60 = select i1 %tobool29.not, ptr @.str.5, ptr %name27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.218, i32 noundef 2644, ptr noundef nonnull %spec.select60, i32 noundef %call19, i32 noundef %cmd) #24
  br label %if.end39

if.end39:                                         ; preds = %do.end25, %do.end13.if.end39_crit_edge
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end39 ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_nvm_flash_cfg_len(ptr noundef %cdev, i32 noundef %cmd) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #21
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #21
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !461
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %cmd to i16
  %call1 = call i32 @qed_mcp_nvm_get_cfg(ptr noundef %hwfns, ptr noundef nonnull %call, i16 noundef zeroext %conv, i8 noundef zeroext 0, i16 noundef zeroext 10, ptr noundef nonnull %buf, ptr noundef nonnull %len) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.5, ptr %name
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.222, i32 noundef 2618, ptr noundef nonnull %spec.select, i32 noundef %call1, i32 noundef %cmd) #24
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %len, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %lor.lhs.false.if.end13_crit_edge
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end13 ], [ 32, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_set_grc_config(ptr noundef %cdev, i32 noundef %cfg_id, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call4 = tail call i32 @qed_dbg_grc_config(ptr noundef %hwfns, i32 noundef %cfg_id, i32 noundef %val) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_devlink_register(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_devlink_unregister(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_mfw_report(ptr noundef %cdev, ptr nocapture noundef readonly %fmt, ...) #2 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %vl = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #21
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vl) #21
  %1 = ptrtoint ptr %vl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %vl, align 4, !annotation !461
  call void @llvm.va_start(ptr nonnull %vl)
  %2 = ptrtoint ptr %vl to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %vl, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %vl)
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %3 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8

if.then:                                          ; preds = %entry
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call1 = call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end8_crit_edge, label %if.then3

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = call i32 @strlen(ptr noundef nonnull %buf) #28
  %call7 = call i32 @qed_mcp_send_raw_debug_data(ptr noundef %hwfns, ptr noundef nonnull %call1, ptr noundef nonnull %buf, i32 noundef %call6) #21
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call1) #21
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vl) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_get_sb_info(ptr noundef %cdev, ptr noundef %sb, i16 noundef zeroext %qid, ptr noundef %sb_dbg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %rem.rhs.trunc = zext i8 %1 to i16
  %rem31 = urem i16 %qid, %rem.rhs.trunc
  %rem.zext = zext i16 %rem31 to i32
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %arrayidx) #21
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !452

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.5, ptr %name
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef 2934, ptr noundef nonnull %spec.select) #24
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %6 = call ptr @memset(ptr %sb_dbg, i32 0, i32 32)
  %call18 = tail call i32 @qed_int_get_sb_dbg(ptr noundef %arrayidx, ptr noundef nonnull %call, ptr noundef %sb, ptr noundef %sb_dbg) #21
  tail call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -11, %do.end ], [ -11, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_get_esl_status(ptr noundef %cdev, ptr noundef %esl_active) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %0 = ptrtoint ptr %esl_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %esl_active, align 1
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %1 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %b_is_vf, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call4 = tail call i32 @qed_mcp_get_esl_status(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef %esl_active) #21
  tail call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_get_protocol_stats(ptr noundef %cdev, i32 noundef %type, ptr noundef %stats) local_unnamed_addr #2 align 64 {
entry:
  %eth_stats = alloca %struct.qed_eth_stats, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %eth_stats) #21
  %0 = call ptr @memset(ptr %eth_stats, i32 255, i32 576)
  %1 = call ptr @memset(ptr %stats, i32 0, i32 32)
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %type, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  call void @qed_get_vport_stats(ptr noundef %cdev, ptr noundef nonnull %eth_stats) #21
  %rx_ucast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %eth_stats, i32 0, i32 6
  %3 = ptrtoint ptr %rx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_ucast_pkts, align 8
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %stats, align 8
  %tx_ucast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %eth_stats, i32 0, i32 15
  %6 = ptrtoint ptr %tx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_ucast_pkts, align 8
  %ucast_tx_pkts = getelementptr inbounds %struct.qed_mcp_lan_stats, ptr %stats, i32 0, i32 1
  %8 = ptrtoint ptr %ucast_tx_pkts to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %ucast_tx_pkts, align 8
  %fcs_err = getelementptr inbounds %struct.qed_mcp_lan_stats, ptr %stats, i32 0, i32 2
  %9 = ptrtoint ptr %fcs_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %fcs_err, align 8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @qed_get_protocol_stats_fcoe(ptr noundef %cdev, ptr noundef %stats) #21
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @qed_get_protocol_stats_iscsi(ptr noundef %cdev, ptr noundef %stats) #21
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %12 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cdev, align 8
  %and = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !453

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.5, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 3120, ptr noundef nonnull %spec.select, i32 noundef %type) #24
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %sw.bb3, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %eth_stats) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_get_vport_stats(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_get_protocol_stats_fcoe(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_get_protocol_stats_iscsi(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mfw_tlv_req(ptr noundef %hwfn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwfn, align 8
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end14

land.rhs:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end14_crit_edge, label %do.end, !prof !453

land.rhs.do.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end14

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.5, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 3129, ptr noundef nonnull %spec.select, i32 noundef 0) #24
  br label %do.end14

do.end14:                                         ; preds = %do.end, %land.rhs.do.end14_crit_edge, %entry.do.end14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !462
  %slowpath_task_flags = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 74
  tail call void @_set_bit(i32 noundef 0, ptr noundef %slowpath_task_flags) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !463
  %slowpath_wq = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 72
  %6 = ptrtoint ptr %slowpath_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slowpath_wq, align 8
  %slowpath_task = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 73
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %slowpath_task, i32 noundef 0) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_mfw_fill_tlv_data(ptr noundef %hwfn, i32 noundef %type, ptr noundef %tlv_buf) local_unnamed_addr #2 align 64 {
entry:
  %gen_tlvs.i = alloca %struct.qed_generic_tlvs, align 2
  %stats.i = alloca %struct.qed_eth_stats, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwfn, align 8
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %protocol_ops, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %get_protocol_tlv_data = getelementptr inbounds %struct.qed_common_cb_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_protocol_tlv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_protocol_tlv_data, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %get_generic_tlv_data = getelementptr inbounds %struct.qed_common_cb_ops, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %get_generic_tlv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_generic_tlv_data, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false3.do.body_crit_edge, label %if.end15

lor.lhs.false3.do.body_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false3.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp ult i8 %9, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !452

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %hwfn, i32 0, i32 8
  %tobool10.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool10.not, ptr @.str.5, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 3189, ptr noundef nonnull %spec.select) #24
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false3
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %type, label %if.end15.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
    i32 4, label %sw.bb19
    i32 8, label %sw.bb22
  ]

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %gen_tlvs.i) #21
  %11 = getelementptr inbounds %struct.qed_generic_tlvs, ptr %gen_tlvs.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.qed_generic_tlvs, ptr %gen_tlvs.i, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.qed_generic_tlvs, ptr %gen_tlvs.i, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %stats.i) #21
  %14 = call ptr @memset(ptr %stats.i, i32 255, i32 576)
  %15 = call ptr @memset(ptr %gen_tlvs.i, i32 0, i32 20)
  %16 = ptrtoint ptr %get_generic_tlv_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_generic_tlv_data, align 4
  %ops_cookie.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %18 = ptrtoint ptr %ops_cookie.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops_cookie.i, align 4
  call void %17(ptr noundef %19, ptr noundef nonnull %gen_tlvs.i) #21
  %20 = ptrtoint ptr %gen_tlvs.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gen_tlvs.i, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %23 = ptrtoint ptr %tlv_buf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %tlv_buf, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %24 = and i16 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool4.not.i = icmp eq i16 %24, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %lso_supported.i = getelementptr inbounds %struct.anon.135, ptr %tlv_buf, i32 0, i32 1
  %25 = ptrtoint ptr %lso_supported.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %lso_supported.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %b_set.i = getelementptr inbounds %struct.anon.135, ptr %tlv_buf, i32 0, i32 2
  %26 = ptrtoint ptr %b_set.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %b_set.i, align 2
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %11, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end7.i
  %add.ptr.i.i.i = getelementptr inbounds %struct.qed_generic_tlvs, ptr %gen_tlvs.i, i32 0, i32 1, i32 0, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %31 to i32
  %or.i.i.i = or i32 %28, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.for.inc.i_crit_edge, label %if.then10.i

is_valid_ether_addr.exit.i.for.inc.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

if.then10.i:                                      ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx12.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 1, i32 0
  %32 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %arrayidx12.i, align 4
  %add.ptr1.i.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %31, ptr %add.ptr1.i.i, align 2
  %arrayidx17.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 2, i32 0
  %34 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx17.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %is_valid_ether_addr.exit.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %12, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i.1.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i.1.i, label %is_valid_ether_addr.exit.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.1.i

is_valid_ether_addr.exit.1.i:                     ; preds = %for.inc.i
  %add.ptr.i.i.1.i = getelementptr inbounds %struct.qed_generic_tlvs, ptr %gen_tlvs.i, i32 0, i32 1, i32 1, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i.1.i, align 2
  %conv.i.i.1.i = zext i16 %39 to i32
  %or.i.i.1.i = or i32 %36, %conv.i.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.1.i)
  %cmp.i.i.not.1.i = icmp eq i32 %or.i.i.1.i, 0
  br i1 %cmp.i.i.not.1.i, label %is_valid_ether_addr.exit.1.i.for.inc.1.i_crit_edge, label %if.then10.1.i

is_valid_ether_addr.exit.1.i.for.inc.1.i_crit_edge: ; preds = %is_valid_ether_addr.exit.1.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.1.i

if.then10.1.i:                                    ; preds = %is_valid_ether_addr.exit.1.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx12.1.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %arrayidx12.1.i, align 4
  %add.ptr1.i.1.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 1, i32 1, i32 4
  %41 = ptrtoint ptr %add.ptr1.i.1.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %39, ptr %add.ptr1.i.1.i, align 2
  %arrayidx17.1.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx17.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then10.1.i, %is_valid_ether_addr.exit.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %13, align 4
  %45 = and i32 %44, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i.2.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i.2.i, label %is_valid_ether_addr.exit.2.i, label %for.inc.1.i.qed_fill_generic_tlv_data.exit_crit_edge

for.inc.1.i.qed_fill_generic_tlv_data.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_fill_generic_tlv_data.exit

is_valid_ether_addr.exit.2.i:                     ; preds = %for.inc.1.i
  %add.ptr.i.i.2.i = getelementptr inbounds %struct.qed_generic_tlvs, ptr %gen_tlvs.i, i32 0, i32 1, i32 2, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i.2.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i.2.i, align 2
  %conv.i.i.2.i = zext i16 %47 to i32
  %or.i.i.2.i = or i32 %44, %conv.i.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.2.i)
  %cmp.i.i.not.2.i = icmp eq i32 %or.i.i.2.i, 0
  br i1 %cmp.i.i.not.2.i, label %is_valid_ether_addr.exit.2.i.qed_fill_generic_tlv_data.exit_crit_edge, label %if.then10.2.i

is_valid_ether_addr.exit.2.i.qed_fill_generic_tlv_data.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.2.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_fill_generic_tlv_data.exit

if.then10.2.i:                                    ; preds = %is_valid_ether_addr.exit.2.i
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx12.2.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %arrayidx12.2.i, align 4
  %add.ptr1.i.2.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 1, i32 2, i32 4
  %49 = ptrtoint ptr %add.ptr1.i.2.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %47, ptr %add.ptr1.i.2.i, align 2
  %arrayidx17.2.i = getelementptr %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %arrayidx17.2.i, align 1
  br label %qed_fill_generic_tlv_data.exit

qed_fill_generic_tlv_data.exit:                   ; preds = %if.then10.2.i, %is_valid_ether_addr.exit.2.i.qed_fill_generic_tlv_data.exit_crit_edge, %for.inc.1.i.qed_fill_generic_tlv_data.exit_crit_edge
  call void @qed_get_vport_stats(ptr noundef %1, ptr noundef nonnull %stats.i) #21
  %rx_ucast_pkts.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 6
  %51 = ptrtoint ptr %rx_ucast_pkts.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_ucast_pkts.i, align 8
  %rx_mcast_pkts.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 7
  %53 = ptrtoint ptr %rx_mcast_pkts.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_mcast_pkts.i, align 8
  %add.i = add i64 %54, %52
  %rx_bcast_pkts.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 8
  %55 = ptrtoint ptr %rx_bcast_pkts.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rx_bcast_pkts.i, align 8
  %add19.i = add i64 %add.i, %56
  %rx_frames.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 3
  %57 = ptrtoint ptr %rx_frames.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %add19.i, ptr %rx_frames.i, align 8
  %rx_frames_set.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 4
  %58 = ptrtoint ptr %rx_frames_set.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %rx_frames_set.i, align 8
  %rx_ucast_bytes.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 3
  %59 = ptrtoint ptr %rx_ucast_bytes.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %rx_ucast_bytes.i, align 8
  %rx_mcast_bytes.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 4
  %61 = ptrtoint ptr %rx_mcast_bytes.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rx_mcast_bytes.i, align 8
  %add20.i = add i64 %62, %60
  %rx_bcast_bytes.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 5
  %63 = ptrtoint ptr %rx_bcast_bytes.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %rx_bcast_bytes.i, align 8
  %add21.i = add i64 %add20.i, %64
  %rx_bytes.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 5
  %65 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add21.i, ptr %rx_bytes.i, align 8
  %rx_bytes_set.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 6
  %tx_ucast_pkts.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 15
  %66 = ptrtoint ptr %tx_ucast_pkts.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tx_ucast_pkts.i, align 8
  %tx_mcast_pkts.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 16
  %68 = ptrtoint ptr %tx_mcast_pkts.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tx_mcast_pkts.i, align 8
  %add22.i = add i64 %69, %67
  %tx_bcast_pkts.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 17
  %70 = ptrtoint ptr %tx_bcast_pkts.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %tx_bcast_pkts.i, align 8
  %add23.i = add i64 %add22.i, %71
  %tx_frames.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 7
  %72 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %add23.i, ptr %tx_frames.i, align 8
  %tx_frames_set.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 8
  %73 = ptrtoint ptr %tx_frames_set.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %tx_frames_set.i, align 8
  %tx_ucast_bytes.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 12
  %74 = ptrtoint ptr %tx_ucast_bytes.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %tx_ucast_bytes.i, align 8
  %tx_mcast_bytes.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 13
  %76 = ptrtoint ptr %tx_mcast_bytes.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %tx_mcast_bytes.i, align 8
  %add24.i = add i64 %77, %75
  %tx_bcast_bytes.i = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats.i, i32 0, i32 14
  %78 = ptrtoint ptr %tx_bcast_bytes.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %tx_bcast_bytes.i, align 8
  %add25.i = add i64 %add24.i, %79
  %tx_bytes.i = getelementptr inbounds %struct.qed_mfw_tlv_generic, ptr %tlv_buf, i32 0, i32 9
  %80 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %add25.i, ptr %tx_bytes.i, align 8
  %81 = ptrtoint ptr %rx_bytes_set.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %rx_bytes_set.i, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %stats.i) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %gen_tlvs.i) #21
  br label %cleanup

sw.bb17:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %82 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops_cookie, align 4
  tail call void %5(ptr noundef %83, ptr noundef %tlv_buf) #21
  br label %cleanup

sw.bb19:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  %ops_cookie21 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %84 = ptrtoint ptr %ops_cookie21 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops_cookie21, align 4
  tail call void %5(ptr noundef %85, ptr noundef %tlv_buf) #21
  br label %cleanup

sw.bb22:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  %ops_cookie24 = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %86 = ptrtoint ptr %ops_cookie24 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops_cookie24, align 4
  tail call void %5(ptr noundef %87, ptr noundef %tlv_buf) #21
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %sw.bb19, %sw.bb17, %qed_fill_generic_tlv_data.exit, %if.end15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %sw.bb22 ], [ 0, %sw.bb19 ], [ 0, %sw.bb17 ], [ 0, %qed_fill_generic_tlv_data.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_get_epoch_time() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_real_seconds() #21
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_mfw_speed_maps_init() unnamed_addr #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.qed_mfw_speed_map, ptr @qed_mfw_ext_maps, i32 %i.013
  tail call fastcc void @qed_mfw_speed_map_populate(ptr noundef %add.ptr) #25
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.for.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %i.114 = phi i32 [ %inc6, %for.body3.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %add.ptr4 = getelementptr %struct.qed_mfw_speed_map, ptr @qed_mfw_legacy_maps, i32 %i.114
  tail call fastcc void @qed_mfw_speed_map_populate(ptr noundef %add.ptr4) #25
  %inc6 = add nuw nsw i32 %i.114, 1
  %exitcond15.not = icmp eq i32 %inc6, 7
  br i1 %exitcond15.not, label %for.end7, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body3

for.end7:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #23
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_mfw_speed_map_populate(ptr nocapture noundef %map) unnamed_addr #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_arr = getelementptr inbounds %struct.qed_mfw_speed_map, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %cap_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap_arr, align 4
  %arr_size = getelementptr inbounds %struct.qed_mfw_speed_map, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %arr_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arr_size, align 4
  %caps = getelementptr inbounds %struct.qed_mfw_speed_map, ptr %map, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.i = icmp sgt i32 %3, 0
  br i1 %cmp3.i, label %entry.for.body.i_crit_edge, label %entry.linkmode_set_bit_array.exit_crit_edge

entry.linkmode_set_bit_array.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %linkmode_set_bit_array.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %1, i32 %i.04.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %rem.i.i.i = and i32 %5, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %5, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %caps, i32 %div2.i.i.i
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %7
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body.i.linkmode_set_bit_array.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.body.i.linkmode_set_bit_array.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %linkmode_set_bit_array.exit

linkmode_set_bit_array.exit:                      ; preds = %for.body.i.linkmode_set_bit_array.exit_crit_edge, %entry.linkmode_set_bit_array.exit_crit_edge
  %8 = ptrtoint ptr %cap_arr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cap_arr, align 4
  %9 = ptrtoint ptr %arr_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arr_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %t) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @__tasklet_schedule(ptr noundef %t) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @qed_int_igu_read_sisr_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_fill_link_capability(ptr noundef %hwfn, ptr noundef %ptt, i32 noundef %capability, ptr noundef %if_caps) unnamed_addr #2 align 64 {
entry:
  %media_type = alloca i32, align 4
  %tcvr_state = alloca i32, align 4
  %tcvr_type = alloca i32, align 4
  %speed_mask = alloca i32, align 4
  %board_cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %media_type) #21
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %media_type, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcvr_state) #21
  %1 = ptrtoint ptr %tcvr_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tcvr_state, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcvr_type) #21
  %2 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tcvr_type, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed_mask) #21
  %3 = ptrtoint ptr %speed_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %speed_mask, align 4, !annotation !461
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %board_cfg) #21
  %4 = ptrtoint ptr %board_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %board_cfg, align 4, !annotation !461
  %call = call i32 @qed_mcp_get_media_type(ptr noundef %hwfn, ptr noundef %ptt, ptr noundef nonnull %media_type) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %5 = ptrtoint ptr %media_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %media_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = call i32 @qed_mcp_get_transceiver_data(ptr noundef %hwfn, ptr noundef %ptt, ptr noundef nonnull %tcvr_state, ptr noundef nonnull %tcvr_type) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %6 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tcvr_type, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = call i32 @qed_mcp_trans_speed_mask(ptr noundef %hwfn, ptr noundef %ptt, ptr noundef nonnull %speed_mask) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  %7 = ptrtoint ptr %speed_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %speed_mask, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %call9 = call i32 @qed_mcp_get_board_config(ptr noundef %hwfn, ptr noundef %ptt, ptr noundef nonnull %board_cfg) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.do.body_crit_edge, label %if.then11

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  %8 = ptrtoint ptr %board_cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %board_cfg, align 4
  br label %do.body

do.body:                                          ; preds = %if.then11, %if.end8.do.body_crit_edge
  %9 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwfn, align 8
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %land.rhs, label %do.body.do.end28_crit_edge

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end28

land.rhs:                                         ; preds = %do.body
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.rhs.do.end28_crit_edge, label %do.end, !prof !453

land.rhs.do.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end28

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %10, i32 0, i32 2
  %tobool21.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool21.not, ptr @.str.5, ptr %name
  %15 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %media_type, align 4
  %17 = ptrtoint ptr %tcvr_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tcvr_state, align 4
  %19 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tcvr_type, align 4
  %21 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed_mask, align 4
  %23 = ptrtoint ptr %board_cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %board_cfg, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 1868, ptr noundef nonnull %spec.select, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #24
  br label %do.end28

do.end28:                                         ; preds = %do.end, %land.rhs.do.end28_crit_edge, %do.body.do.end28_crit_edge
  %25 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %media_type, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %26, label %do.body163 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb61
    i32 5, label %do.end28.sw.bb82_crit_edge
    i32 1, label %do.end28.sw.bb82_crit_edge327
    i32 2, label %do.end28.sw.bb82_crit_edge328
    i32 6, label %do.end28.sw.bb82_crit_edge329
    i32 240, label %sw.bb132
  ]

do.end28.sw.bb82_crit_edge329:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb82

do.end28.sw.bb82_crit_edge328:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb82

do.end28.sw.bb82_crit_edge327:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb82

do.end28.sw.bb82_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb82

sw.bb:                                            ; preds = %do.end28
  %28 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %if_caps, align 4
  %and29 = and i32 %capability, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %spec.select322.v = select i1 %tobool30.not, i32 1024, i32 4195328
  %spec.select322 = or i32 %29, %spec.select322.v
  %30 = ptrtoint ptr %if_caps to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select322, ptr %if_caps, align 4
  %31 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed_mask, align 4
  %or = or i32 %32, %capability
  %and33 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %sw.bb.if.end36_crit_edge, label %if.then35

sw.bb.if.end36_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end36

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %33 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %if_caps, align 4
  %or.i276 = or i32 %34, 131072
  store i32 %or.i276, ptr %if_caps, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %sw.bb.if.end36_crit_edge
  %and37 = and i32 %or, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i = getelementptr i32, ptr %if_caps, i32 1
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 4
  %or.i277 = or i32 %36, 1024
  store i32 %or.i277, ptr %add.ptr.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %and41 = and i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  %37 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tcvr_type, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %38, label %if.then43.if.end45_crit_edge [
    i32 14, label %if.then43.sw.bb44_crit_edge
    i32 49, label %if.then43.sw.bb44_crit_edge330
    i32 52, label %if.then43.sw.bb44_crit_edge331
  ]

if.then43.sw.bb44_crit_edge331:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb44

if.then43.sw.bb44_crit_edge330:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb44

if.then43.sw.bb44_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb44

if.then43.if.end45_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end45

sw.bb44:                                          ; preds = %if.then43.sw.bb44_crit_edge, %if.then43.sw.bb44_crit_edge330, %if.then43.sw.bb44_crit_edge331
  %40 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %if_caps, align 4
  %or.i278 = or i32 %41, 16777216
  store i32 %or.i278, ptr %if_caps, align 4
  br label %if.end45

if.end45:                                         ; preds = %sw.bb44, %if.then43.if.end45_crit_edge, %if.end40.if.end45_crit_edge
  %and46 = and i32 %or, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #23
  %42 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %if_caps, align 4
  %or.i279 = or i32 %43, -2147483648
  store i32 %or.i279, ptr %if_caps, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %and50 = and i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end53_crit_edge, label %if.then52

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i280 = getelementptr i32, ptr %if_caps, i32 1
  %44 = ptrtoint ptr %add.ptr.i280 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i280, align 4
  %or.i281 = or i32 %45, 4
  store i32 %or.i281, ptr %add.ptr.i280, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49.if.end53_crit_edge
  %and54 = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.sw.epilog201_crit_edge, label %if.then56

if.end53.sw.epilog201_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

if.then56:                                        ; preds = %if.end53
  %46 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tcvr_type, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %47, label %if.then56.sw.epilog201_crit_edge [
    i32 20, label %if.then56.sw.bb57_crit_edge
    i32 52, label %if.then56.sw.bb57_crit_edge332
  ]

if.then56.sw.bb57_crit_edge332:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb57

if.then56.sw.bb57_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb57

if.then56.sw.epilog201_crit_edge:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

sw.bb57:                                          ; preds = %if.then56.sw.bb57_crit_edge, %if.then56.sw.bb57_crit_edge332
  %add.ptr.i282 = getelementptr i32, ptr %if_caps, i32 1
  %49 = ptrtoint ptr %add.ptr.i282 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i282, align 4
  %or.i283 = or i32 %50, 64
  store i32 %or.i283, ptr %add.ptr.i282, align 4
  br label %sw.epilog201

sw.bb61:                                          ; preds = %do.end28
  %51 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %if_caps, align 4
  %or.i284 = or i32 %52, 128
  store i32 %or.i284, ptr %if_caps, align 4
  %53 = ptrtoint ptr %board_cfg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %board_cfg, align 4
  %and62 = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %sw.bb61.if.end73_crit_edge, label %if.then64

sw.bb61.if.end73_crit_edge:                       ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end73

if.then64:                                        ; preds = %sw.bb61
  %and65 = and i32 %capability, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then64.if.end68_crit_edge, label %if.then67

if.then64.if.end68_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #23
  %or.i285 = or i32 %52, 160
  %55 = ptrtoint ptr %if_caps to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i285, ptr %if_caps, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then64.if.end68_crit_edge
  %and69 = and i32 %capability, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end73_crit_edge, label %if.then71

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end73

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #23
  %56 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %if_caps, align 4
  %or.i286 = or i32 %57, 4096
  store i32 %or.i286, ptr %if_caps, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68.if.end73_crit_edge, %sw.bb61.if.end73_crit_edge
  %and74 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.sw.epilog201_crit_edge, label %if.then76

if.end73.sw.epilog201_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

if.then76:                                        ; preds = %if.end73
  %58 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %if_caps, align 4
  %or.i287 = or i32 %59, 1024
  store i32 %or.i287, ptr %if_caps, align 4
  %60 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tcvr_type, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %61, label %if.then76.sw.epilog201_crit_edge [
    i32 33, label %sw.bb77
    i32 34, label %sw.bb78
  ]

if.then76.sw.epilog201_crit_edge:                 ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

sw.bb77:                                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #23
  %or.i288 = or i32 %59, 1056
  %63 = ptrtoint ptr %if_caps to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i288, ptr %if_caps, align 4
  br label %sw.epilog201

sw.bb78:                                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #23
  %or.i289 = or i32 %59, 5120
  %64 = ptrtoint ptr %if_caps to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i289, ptr %if_caps, align 4
  br label %sw.epilog201

sw.bb82:                                          ; preds = %do.end28.sw.bb82_crit_edge, %do.end28.sw.bb82_crit_edge327, %do.end28.sw.bb82_crit_edge328, %do.end28.sw.bb82_crit_edge329
  %65 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %if_caps, align 4
  %or.i290 = or i32 %66, 1024
  store i32 %or.i290, ptr %if_caps, align 4
  %67 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %speed_mask, align 4
  %or83 = or i32 %68, %capability
  %and84 = and i32 %or83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %sw.bb82.if.end90_crit_edge, label %if.then86

sw.bb82.if.end90_crit_edge:                       ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90

if.then86:                                        ; preds = %sw.bb82
  %69 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tcvr_type, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %70, label %if.then86.if.end90_crit_edge [
    i32 3, label %if.then86.sw.bb87_crit_edge
    i32 4, label %if.then86.sw.bb87_crit_edge333
    i32 57, label %if.then86.sw.bb87_crit_edge334
    i32 58, label %if.then86.sw.bb87_crit_edge335
  ]

if.then86.sw.bb87_crit_edge335:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb87

if.then86.sw.bb87_crit_edge334:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb87

if.then86.sw.bb87_crit_edge333:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb87

if.then86.sw.bb87_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb87

if.then86.if.end90_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end90

sw.bb87:                                          ; preds = %if.then86.sw.bb87_crit_edge, %if.then86.sw.bb87_crit_edge333, %if.then86.sw.bb87_crit_edge334, %if.then86.sw.bb87_crit_edge335
  %or.i291 = or i32 %66, 132096
  %72 = ptrtoint ptr %if_caps to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i291, ptr %if_caps, align 4
  br label %if.end90

if.end90:                                         ; preds = %sw.bb87, %if.then86.if.end90_crit_edge, %sw.bb82.if.end90_crit_edge
  %and91 = and i32 %or83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end100_crit_edge, label %if.then93

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end100

if.then93:                                        ; preds = %if.end90
  %73 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tcvr_type, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %74, label %if.then93.if.end100_crit_edge [
    i32 5, label %if.then93.sw.bb94_crit_edge
    i32 48, label %if.then93.sw.bb94_crit_edge336
    i32 55, label %if.then93.sw.bb94_crit_edge337
    i32 57, label %if.then93.sw.bb94_crit_edge338
    i32 6, label %if.then93.sw.bb95_crit_edge
    i32 50, label %if.then93.sw.bb95_crit_edge339
    i32 56, label %if.then93.sw.bb95_crit_edge340
    i32 58, label %if.then93.sw.bb95_crit_edge341
    i32 7, label %sw.bb96
    i32 8, label %if.then93.if.end100.sink.split_crit_edge
  ]

if.then93.if.end100.sink.split_crit_edge:         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end100.sink.split

if.then93.sw.bb95_crit_edge341:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb95

if.then93.sw.bb95_crit_edge340:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb95

if.then93.sw.bb95_crit_edge339:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb95

if.then93.sw.bb95_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb95

if.then93.sw.bb94_crit_edge338:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb94

if.then93.sw.bb94_crit_edge337:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb94

if.then93.sw.bb94_crit_edge336:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb94

if.then93.sw.bb94_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb94

if.then93.if.end100_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end100

sw.bb94:                                          ; preds = %if.then93.sw.bb94_crit_edge, %if.then93.sw.bb94_crit_edge336, %if.then93.sw.bb94_crit_edge337, %if.then93.sw.bb94_crit_edge338
  %add.ptr.i292 = getelementptr i32, ptr %if_caps, i32 1
  br label %if.end100.sink.split

sw.bb95:                                          ; preds = %if.then93.sw.bb95_crit_edge, %if.then93.sw.bb95_crit_edge339, %if.then93.sw.bb95_crit_edge340, %if.then93.sw.bb95_crit_edge341
  %add.ptr.i294 = getelementptr i32, ptr %if_caps, i32 1
  br label %if.end100.sink.split

sw.bb96:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i296 = getelementptr i32, ptr %if_caps, i32 1
  br label %if.end100.sink.split

if.end100.sink.split:                             ; preds = %sw.bb96, %sw.bb95, %sw.bb94, %if.then93.if.end100.sink.split_crit_edge
  %add.ptr.i292.sink325 = phi ptr [ %add.ptr.i292, %sw.bb94 ], [ %add.ptr.i294, %sw.bb95 ], [ %add.ptr.i296, %sw.bb96 ], [ %if_caps, %if.then93.if.end100.sink.split_crit_edge ]
  %.sink324 = phi i32 [ 2048, %sw.bb94 ], [ 4096, %sw.bb95 ], [ 8192, %sw.bb96 ], [ 1048576, %if.then93.if.end100.sink.split_crit_edge ]
  %76 = ptrtoint ptr %add.ptr.i292.sink325 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i292.sink325, align 4
  %or.i293 = or i32 %77, %.sink324
  store i32 %or.i293, ptr %add.ptr.i292.sink325, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end100.sink.split, %if.then93.if.end100_crit_edge, %if.end90.if.end100_crit_edge
  %and101 = and i32 %or83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end104_crit_edge, label %if.then103

if.end100.if.end104_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end104

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #23
  %78 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %if_caps, align 4
  %or.i299 = or i32 %79, 4194304
  store i32 %or.i299, ptr %if_caps, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end100.if.end104_crit_edge
  %and105 = and i32 %or83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end111_crit_edge, label %if.then107

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end111

if.then107:                                       ; preds = %if.end104
  %80 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tcvr_type, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %81, label %if.then107.if.end111_crit_edge [
    i32 28, label %if.then107.sw.bb108_crit_edge
    i32 55, label %if.then107.sw.bb108_crit_edge342
  ]

if.then107.sw.bb108_crit_edge342:                 ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb108

if.then107.sw.bb108_crit_edge:                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb108

if.then107.if.end111_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end111

sw.bb108:                                         ; preds = %if.then107.sw.bb108_crit_edge, %if.then107.sw.bb108_crit_edge342
  %add.ptr.i300 = getelementptr i32, ptr %if_caps, i32 1
  %83 = ptrtoint ptr %add.ptr.i300 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i300, align 4
  %or.i301 = or i32 %84, 2
  store i32 %or.i301, ptr %add.ptr.i300, align 4
  br label %if.end111

if.end111:                                        ; preds = %sw.bb108, %if.then107.if.end111_crit_edge, %if.end104.if.end111_crit_edge
  %and112 = and i32 %or83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end119_crit_edge, label %if.then114

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119

if.then114:                                       ; preds = %if.end111
  %85 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tcvr_type, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %86, label %if.then114.if.end119_crit_edge [
    i32 12, label %if.then114.if.end119.sink.split_crit_edge
    i32 50, label %if.then114.if.end119.sink.split_crit_edge343
    i32 53, label %if.then114.if.end119.sink.split_crit_edge344
    i32 13, label %if.then114.sw.bb116_crit_edge
    i32 51, label %if.then114.sw.bb116_crit_edge345
    i32 48, label %if.then114.sw.bb116_crit_edge346
  ]

if.then114.sw.bb116_crit_edge346:                 ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb116

if.then114.sw.bb116_crit_edge345:                 ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb116

if.then114.sw.bb116_crit_edge:                    ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb116

if.then114.if.end119.sink.split_crit_edge344:     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119.sink.split

if.then114.if.end119.sink.split_crit_edge343:     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119.sink.split

if.then114.if.end119.sink.split_crit_edge:        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119.sink.split

if.then114.if.end119_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end119

sw.bb116:                                         ; preds = %if.then114.sw.bb116_crit_edge, %if.then114.sw.bb116_crit_edge345, %if.then114.sw.bb116_crit_edge346
  br label %if.end119.sink.split

if.end119.sink.split:                             ; preds = %sw.bb116, %if.then114.if.end119.sink.split_crit_edge, %if.then114.if.end119.sink.split_crit_edge343, %if.then114.if.end119.sink.split_crit_edge344
  %.sink326 = phi i32 [ 33554432, %sw.bb116 ], [ 67108864, %if.then114.if.end119.sink.split_crit_edge ], [ 67108864, %if.then114.if.end119.sink.split_crit_edge343 ], [ 67108864, %if.then114.if.end119.sink.split_crit_edge344 ]
  %88 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %if_caps, align 4
  %or.i302 = or i32 %89, %.sink326
  store i32 %or.i302, ptr %if_caps, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.end119.sink.split, %if.then114.if.end119_crit_edge, %if.end111.if.end119_crit_edge
  %and120 = and i32 %or83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end119.if.end123_crit_edge, label %if.then122

if.end119.if.end123_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end123

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i304 = getelementptr i32, ptr %if_caps, i32 1
  %90 = ptrtoint ptr %add.ptr.i304 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i304, align 4
  %or.i305 = or i32 %91, 8
  store i32 %or.i305, ptr %add.ptr.i304, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end119.if.end123_crit_edge
  %and124 = and i32 %or83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end123.sw.epilog201_crit_edge, label %if.then126

if.end123.sw.epilog201_crit_edge:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

if.then126:                                       ; preds = %if.end123
  %92 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tcvr_type, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %93, label %if.then126.sw.epilog201_crit_edge [
    i32 16, label %if.then126.sw.bb127_crit_edge
    i32 51, label %if.then126.sw.bb127_crit_edge347
    i32 53, label %sw.bb128
  ]

if.then126.sw.bb127_crit_edge347:                 ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb127

if.then126.sw.bb127_crit_edge:                    ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb127

if.then126.sw.epilog201_crit_edge:                ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

sw.bb127:                                         ; preds = %if.then126.sw.bb127_crit_edge, %if.then126.sw.bb127_crit_edge347
  %add.ptr.i306 = getelementptr i32, ptr %if_caps, i32 1
  %95 = ptrtoint ptr %add.ptr.i306 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i306, align 4
  %or.i307 = or i32 %96, 32
  store i32 %or.i307, ptr %add.ptr.i306, align 4
  br label %sw.epilog201

sw.bb128:                                         ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i308 = getelementptr i32, ptr %if_caps, i32 1
  %97 = ptrtoint ptr %add.ptr.i308 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i308, align 4
  %or.i309 = or i32 %98, 128
  store i32 %or.i309, ptr %add.ptr.i308, align 4
  br label %sw.epilog201

sw.bb132:                                         ; preds = %do.end28
  %99 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %if_caps, align 4
  %and133 = and i32 %capability, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %spec.select323.v = select i1 %tobool134.not, i32 65536, i32 4259840
  %spec.select323 = or i32 %100, %spec.select323.v
  %101 = ptrtoint ptr %if_caps to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %spec.select323, ptr %if_caps, align 4
  %and137 = and i32 %capability, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %sw.bb132.if.end140_crit_edge, label %if.then139

sw.bb132.if.end140_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end140

if.then139:                                       ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #23
  %102 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %if_caps, align 4
  %or.i312 = or i32 %103, 131072
  store i32 %or.i312, ptr %if_caps, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %sw.bb132.if.end140_crit_edge
  %and141 = and i32 %capability, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end140.if.end144_crit_edge, label %if.then143

if.end140.if.end144_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end144

if.then143:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #23
  %104 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %if_caps, align 4
  %or.i313 = or i32 %105, 524288
  store i32 %or.i313, ptr %if_caps, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.end140.if.end144_crit_edge
  %and145 = and i32 %capability, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end144.if.end148_crit_edge, label %if.then147

if.end144.if.end148_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end148

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i314 = getelementptr i32, ptr %if_caps, i32 1
  %106 = ptrtoint ptr %add.ptr.i314 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i314, align 4
  %or.i315 = or i32 %107, 1
  store i32 %or.i315, ptr %add.ptr.i314, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end144.if.end148_crit_edge
  %and149 = and i32 %capability, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end152_crit_edge, label %if.then151

if.end148.if.end152_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end152

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #23
  %108 = ptrtoint ptr %if_caps to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %if_caps, align 4
  %or.i316 = or i32 %109, 8388608
  store i32 %or.i316, ptr %if_caps, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end148.if.end152_crit_edge
  %and153 = and i32 %capability, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end152.if.end156_crit_edge, label %if.then155

if.end152.if.end156_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end156

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i317 = getelementptr i32, ptr %if_caps, i32 1
  %110 = ptrtoint ptr %add.ptr.i317 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr.i317, align 4
  %or.i318 = or i32 %111, 8
  store i32 %or.i318, ptr %add.ptr.i317, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.end152.if.end156_crit_edge
  %and157 = and i32 %capability, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.sw.epilog201_crit_edge, label %if.then159

if.end156.sw.epilog201_crit_edge:                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i319 = getelementptr i32, ptr %if_caps, i32 1
  %112 = ptrtoint ptr %add.ptr.i319 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i319, align 4
  %or.i320 = or i32 %113, 16
  store i32 %or.i320, ptr %add.ptr.i319, align 4
  br label %sw.epilog201

do.body163:                                       ; preds = %do.end28
  %114 = ptrtoint ptr %hwfn to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hwfn, align 8
  %dp_level165 = getelementptr inbounds %struct.qed_dev, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %dp_level165 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %dp_level165, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp167 = icmp eq i8 %117, 0
  br i1 %cmp167, label %land.rhs169, label %do.body163.sw.epilog201_crit_edge

do.body163.sw.epilog201_crit_edge:                ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

land.rhs169:                                      ; preds = %do.body163
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %115, align 8
  %and172 = and i32 %119, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %land.rhs169.sw.epilog201_crit_edge, label %do.end184, !prof !453

land.rhs169.sw.epilog201_crit_edge:               ; preds = %land.rhs169
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog201

do.end184:                                        ; preds = %land.rhs169
  call void @__sanitizer_cov_trace_pc() #23
  %name187 = getelementptr inbounds %struct.qed_dev, ptr %115, i32 0, i32 2
  %tobool189.not = icmp eq ptr %name187, null
  %spec.select274 = select i1 %tobool189.not, ptr @.str.5, ptr %name187
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 2055, ptr noundef nonnull %spec.select274) #24
  br label %sw.epilog201

sw.epilog201:                                     ; preds = %do.end184, %land.rhs169.sw.epilog201_crit_edge, %do.body163.sw.epilog201_crit_edge, %if.then159, %if.end156.sw.epilog201_crit_edge, %sw.bb128, %sw.bb127, %if.then126.sw.epilog201_crit_edge, %if.end123.sw.epilog201_crit_edge, %sw.bb78, %sw.bb77, %if.then76.sw.epilog201_crit_edge, %if.end73.sw.epilog201_crit_edge, %sw.bb57, %if.then56.sw.epilog201_crit_edge, %if.end53.sw.epilog201_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %board_cfg) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed_mask) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcvr_type) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcvr_state) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %media_type) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_media_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_link_params(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_link_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_link_caps(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_mcp_get_link_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_mcp_get_link_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_mcp_get_link_capabilities(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_transceiver_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_trans_speed_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_board_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_selftest_interrupt(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_selftest_memory(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_selftest_register(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_selftest_clock(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_selftest_nvram(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_hw_prepare(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_free_pci(ptr nocapture noundef readonly %cdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %call = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %1) #21
  %doorbells = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 27
  %2 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %doorbells, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %db_size = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 29
  %4 = ptrtoint ptr %db_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @iounmap(ptr noundef nonnull %3) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %regview = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 26
  %6 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regview, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @iounmap(ptr noundef nonnull %7) #21
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %enable_cnt = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 51
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt, i32 noundef 4) #21
  %8 = ptrtoint ptr %enable_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %enable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @pci_release_regions(ptr noundef %1) #21
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  tail call void @pci_disable_device(ptr noundef %1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_init_struct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_hw_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_iov_wq_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_slowpath_setup_int(ptr noundef %cdev, i32 noundef %int_mode) unnamed_addr #2 align 64 {
entry:
  %sb_cnt_info = alloca %struct.qed_sb_cnt_info, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sb_cnt_info) #21
  %0 = getelementptr inbounds %struct.qed_sb_cnt_info, ptr %sb_cnt_info, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %int_mode)
  %cmp = icmp eq i32 %int_mode, 2
  %1 = call ptr @memset(ptr %sb_cnt_info, i32 255, i32 24)
  br i1 %cmp, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp1 = icmp ugt i8 %3, 1
  br i1 %cmp1, label %do.body, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

do.body:                                          ; preds = %land.lhs.true
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp4 = icmp ult i8 %5, 3
  br i1 %cmp4, label %do.end, label %do.body.cleanup_crit_edge, !prof !452

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.5, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef 934, ptr noundef nonnull %spec.select) #24
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %int_params = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54
  %6 = call ptr @memset(ptr %int_params, i32 0, i32 28)
  %7 = ptrtoint ptr %int_params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %int_mode, ptr %int_params, align 8
  %num_hwfns17 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %8 = ptrtoint ptr %num_hwfns17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_hwfns17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp19141.not = icmp eq i8 %9, 0
  br i1 %cmp19141.not, label %if.end14.for.end_crit_edge, label %for.body.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %num_vectors = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.body.for.body_crit_edge ]
  %10 = call ptr @memset(ptr %sb_cnt_info, i32 0, i32 24)
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0142
  call void @qed_int_get_num_sbs(ptr noundef %arrayidx, ptr noundef nonnull %sb_cnt_info) #21
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_vectors, align 4
  %15 = trunc i32 %12 to i8
  %conv24 = add i8 %15, 1
  %inc = add i8 %conv24, %14
  store i8 %inc, ptr %num_vectors, align 4
  %inc28 = add nuw nsw i32 %i.0142, 1
  %16 = ptrtoint ptr %num_hwfns17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_hwfns17, align 4
  %conv18 = zext i8 %17 to i32
  %cmp19 = icmp ult i32 %inc28, %conv18
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  %phi.bo = shl i8 %17, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end14.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %if.end14.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %min_msix_cnt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 0, i32 2
  %18 = ptrtoint ptr %min_msix_cnt to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.lcssa, ptr %min_msix_cnt, align 1
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %19 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp.i.not = icmp eq i64 %19, -1
  br i1 %cmp.i.not, label %for.end.if.end75_crit_edge, label %do.body36

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end75

do.body36:                                        ; preds = %for.end
  %dp_level37 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %20 = ptrtoint ptr %dp_level37 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp39 = icmp ult i8 %21, 2
  br i1 %cmp39, label %do.end50, label %do.body36.do.end68_crit_edge, !prof !452

do.body36.do.end68_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end68

do.end50:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #23
  %name52 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool54.not = icmp eq ptr %name52, null
  %spec.select138 = select i1 %tobool54.not, ptr @.str.5, ptr %name52
  %conv64 = zext i8 %.lcssa to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef 953, ptr noundef nonnull %spec.select138, i32 noundef %conv64) #24
  br label %do.end68

do.end68:                                         ; preds = %do.end50, %do.body36.do.end68_crit_edge
  %22 = ptrtoint ptr %min_msix_cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %min_msix_cnt, align 1
  %num_vectors74 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 0, i32 1
  %24 = ptrtoint ptr %num_vectors74 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %num_vectors74, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.end68, %for.end.if.end75_crit_edge
  %call76 = call fastcc i32 @qed_set_int_mode(ptr noundef %cdev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end96, label %do.end82

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #23
  %name84 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool86.not = icmp eq ptr %name84, null
  %spec.select139 = select i1 %tobool86.not, ptr @.str.5, ptr %name84
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef 960, ptr noundef nonnull %spec.select139, ptr noundef nonnull @.str.118) #24
  br label %cleanup

if.end96:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #23
  %25 = ptrtoint ptr %num_hwfns17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_hwfns17, align 4
  %fp_msix_base = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 4
  %27 = ptrtoint ptr %fp_msix_base to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %fp_msix_base, align 1
  %num_vectors100 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1, i32 1
  %28 = ptrtoint ptr %num_vectors100 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_vectors100, align 4
  %sub = sub i8 %29, %26
  %fp_msix_cnt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 5
  %30 = ptrtoint ptr %fp_msix_cnt to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %sub, ptr %fp_msix_cnt, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end82, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call76, %do.end82 ], [ 0, %if.end96 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sb_cnt_info) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_alloc_stream_mem(ptr nocapture noundef %cdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp19.not = icmp eq i8 %1, 0
  br i1 %cmp19.not, label %entry.cleanup10_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup10

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #29
  %stream = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.020, i32 70
  %3 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %stream, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup10_crit_edge, label %if.end

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup10

if.end:                                           ; preds = %for.body
  %call3 = tail call i32 @zlib_inflate_workspacesize() #21
  %call4 = tail call noalias ptr @vzalloc(i32 noundef %call3) #26
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup10_crit_edge, label %if.end7

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup10

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 8
  %workspace9 = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %workspace9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %workspace9, align 4
  %inc = add nuw nsw i32 %i.020, 1
  %7 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.cleanup10_crit_edge

if.end7.cleanup10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup10

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

cleanup10:                                        ; preds = %if.end7.cleanup10_crit_edge, %if.end.cleanup10_crit_edge, %for.body.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ 0, %if.end7.cleanup10_crit_edge ], [ -12, %for.body.cleanup10_crit_edge ], [ -12, %if.end.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_dbg_pf_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_hw_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_ll2_alloc_if(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_send_drv_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_reset_vport_stats(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ll2_dealloc_if(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_hw_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_hw_timers_stop_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_slowpath_irq_free(ptr noundef %cdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %out = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp135.not = icmp eq i8 %3, 0
  br i1 %cmp135.not, label %for.cond.preheader.if.end19_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end19_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %msix_table = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %b_int_requested = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.036, i32 41
  %4 = ptrtoint ptr %b_int_requested to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b_int_requested, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.if.end19_crit_edge, label %if.end

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msix_table, align 8
  %arrayidx5 = getelementptr %struct.msix_entry, ptr %7, i32 %i.036
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  tail call void @synchronize_irq(i32 noundef %9) #21
  %10 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msix_table, align 8
  %arrayidx8 = getelementptr %struct.msix_entry, ptr %11, i32 %i.036
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %sp_dpc = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.036, i32 22
  %call = tail call ptr @free_irq(i32 noundef %13, ptr noundef %sp_dpc) #21
  %inc = add nuw nsw i32 %i.036, 1
  %14 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %15 to i32
  %cmp1 = icmp ult i32 %inc, %conv
  br i1 %cmp1, label %if.end.for.body_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

if.else:                                          ; preds = %entry
  %b_int_requested14 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 41
  %16 = ptrtoint ptr %b_int_requested14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %b_int_requested14, align 1, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %if.else.if.end19_crit_edge, label %if.then16

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call17 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %cdev) #21
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.else.if.end19_crit_edge, %if.end.if.end19_crit_edge, %for.body.if.end19_crit_edge, %for.cond.preheader.if.end19_crit_edge
  tail call void @qed_int_disable_post_isr_release(ptr noundef %cdev) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_free_stream_mem(ptr nocapture noundef readonly %cdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13.not = icmp eq i8 %1, 0
  br i1 %cmp13.not, label %entry.cleanup4_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup4

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %stream = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.014, i32 70
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.cleanup4_crit_edge, label %if.end

for.body.cleanup4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup4

if.end:                                           ; preds = %for.body
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workspace, align 4
  tail call void @vfree(ptr noundef %5) #21
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream, align 8
  tail call void @kfree(ptr noundef %7) #21
  %inc = add nuw nsw i32 %i.014, 1
  %8 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup4_crit_edge

if.end.cleanup4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup4

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

cleanup4:                                         ; preds = %if.end.cleanup4_crit_edge, %for.body.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_disable_msix(ptr nocapture noundef %cdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %out = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %1, label %entry.if.end8_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then6
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_msix(ptr noundef %4) #21
  %msix_table = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 2
  %5 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msix_table, align 8
  tail call void @kfree(ptr noundef %6) #21
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %pdev7 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %7 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev7, align 8
  tail call void @pci_disable_msi(ptr noundef %8) #21
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then, %entry.if.end8_crit_edge
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %out, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_resc_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_iov_wq_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_slowpath_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3324
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %add.ptr) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %slowpath_wq_active = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %slowpath_wq_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %slowpath_wq_active, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %slowpath_wq = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %slowpath_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slowpath_wq, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 0) #21
  br label %cleanup

if.end4:                                          ; preds = %entry
  %slowpath_task_flags = getelementptr i8, ptr %work, i32 100
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %slowpath_task_flags) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  %call8 = tail call i32 @qed_mfw_process_tlv_req(ptr noundef %add.ptr, ptr noundef nonnull %call) #21
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %slowpath_task_flags) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.out_crit_edge, label %if.then13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.then13:                                        ; preds = %if.end9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %recov_in_prog = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recov_in_prog, align 8, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false:                                    ; preds = %if.then13
  %slowpath_wq_active15 = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %slowpath_wq_active15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slowpath_wq_active15, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %lor.lhs.false.out_crit_edge, label %if.end18

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = tail call i32 @qed_db_rec_handler(ptr noundef %add.ptr, ptr noundef nonnull %call) #21
  %periodic_db_rec_count = getelementptr i8, ptr %work, i32 104
  %10 = ptrtoint ptr %periodic_db_rec_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %periodic_db_rec_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %periodic_db_rec_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %if.end18.out_crit_edge, label %if.then21

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.then21:                                        ; preds = %if.end18
  %12 = ptrtoint ptr %slowpath_wq_active15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slowpath_wq_active15, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then21.out_crit_edge, label %do.end.i

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !459
  tail call void @_set_bit(i32 noundef 1, ptr noundef %slowpath_task_flags) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !460
  %slowpath_wq.i = getelementptr i8, ptr %work, i32 -4
  %14 = ptrtoint ptr %slowpath_wq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slowpath_wq.i, align 8
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work, i32 noundef 10) #21
  br label %out

out:                                              ; preds = %do.end.i, %if.then21.out_crit_edge, %if.end18.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then13.out_crit_edge, %if.end9.out_crit_edge
  tail call void @qed_ptt_release(ptr noundef %add.ptr, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then2, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mfw_process_tlv_req(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_db_rec_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_resc_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_resc_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_int_get_num_sbs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_set_int_mode(ptr noundef %cdev, i1 noundef zeroext %force_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %int_params1 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54
  %0 = ptrtoint ptr %int_params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_params1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %1, label %do.body71 [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb25_crit_edge
    i32 0, label %entry.sw.bb68_crit_edge
  ]

entry.sw.bb68_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb68

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb25

sw.bb:                                            ; preds = %entry
  %num_vectors = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 0, i32 1
  %3 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_vectors, align 4
  %conv = zext i8 %4 to i32
  %5 = shl nuw nsw i32 %conv, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #26
  %msix_table = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 2
  %6 = ptrtoint ptr %msix_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %msix_table, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %sw.bb.if.end147_crit_edge, label %if.end

sw.bb.if.end147_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end147

if.end:                                           ; preds = %sw.bb
  %7 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_vectors, align 4
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp132.not.i = icmp eq i8 %8, 0
  br i1 %cmp132.not.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %msix_table.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0133.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv2.i = trunc i32 %i.0133.i to i16
  %9 = ptrtoint ptr %msix_table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msix_table.i, align 4
  %entry3.i = getelementptr %struct.msix_entry, ptr %10, i32 %i.0133.i, i32 1
  %11 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2.i, ptr %entry3.i, align 4
  %inc.i = add nuw nsw i32 %i.0133.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 8
  %msix_table4.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 2
  %14 = ptrtoint ptr %msix_table4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msix_table4.i, align 4
  %min_msix_cnt.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 0, i32 2
  %16 = ptrtoint ptr %min_msix_cnt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %min_msix_cnt.i, align 1
  %conv6.i = zext i8 %17 to i32
  %call.i = tail call i32 @pci_enable_msix_range(ptr noundef %13, ptr noundef %15, i32 noundef %conv6.i, i32 noundef %conv.i) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv.i)
  %cmp7.i = icmp slt i32 %call.i, %conv.i
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.end.i.if.end43.i_crit_edge

for.end.i.if.end43.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %18 = ptrtoint ptr %min_msix_cnt.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %min_msix_cnt.i, align 1
  %conv11.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv11.i)
  %cmp12.not.i = icmp slt i32 %call.i, %conv11.i
  br i1 %cmp12.not.i, label %land.lhs.true.i.if.end43.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.if.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end43.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %num_hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %20 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_hwfns.i, align 4
  %conv15.i = zext i8 %21 to i32
  %rem.i = srem i32 %call.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %land.lhs.true14.i.if.end43.i_crit_edge, label %if.then.i

land.lhs.true14.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end43.i

if.then.i:                                        ; preds = %land.lhs.true14.i
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %23) #21
  %24 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_hwfns.i, align 4
  %conv18.i = zext i8 %25 to i32
  %26 = srem i32 %call.i, %conv18.i
  %mul.i = sub i32 %call.i, %26
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %27 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp22.i = icmp ult i8 %28, 3
  br i1 %cmp22.i, label %do.end.i, label %if.then.i.do.end36.i_crit_edge, !prof !452

if.then.i.do.end36.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end36.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %29 = ptrtoint ptr %num_vectors to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_vectors, align 4
  %conv33.i = zext i8 %30 to i32
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef 588, ptr noundef nonnull %name.i, i32 noundef %mul.i, i32 noundef %conv33.i) #24
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end.i, %if.then.i.do.end36.i_crit_edge
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 8
  %33 = ptrtoint ptr %msix_table4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %msix_table4.i, align 4
  %call.i.i = tail call i32 @pci_enable_msix_range(ptr noundef %32, ptr noundef %34, i32 noundef %mul.i, i32 noundef %mul.i) #21
  %35 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool40.not131.i = icmp slt i32 %call.i.i, 0
  %spec.select128.i = select i1 %tobool40.not131.i, i32 %35, i32 %mul.i
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end36.i, %land.lhs.true14.i.if.end43.i_crit_edge, %land.lhs.true.i.if.end43.i_crit_edge, %for.end.i.if.end43.i_crit_edge
  %cnt.0.i = phi i32 [ %conv.i, %land.lhs.true14.i.if.end43.i_crit_edge ], [ %conv.i, %land.lhs.true.i.if.end43.i_crit_edge ], [ %conv.i, %for.end.i.if.end43.i_crit_edge ], [ %mul.i, %do.end36.i ]
  %rc.0.i = phi i32 [ %call.i, %land.lhs.true14.i.if.end43.i_crit_edge ], [ %call.i, %land.lhs.true.i.if.end43.i_crit_edge ], [ %call.i, %for.end.i.if.end43.i_crit_edge ], [ %spec.select128.i, %do.end36.i ]
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %36 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b_is_vf.i, align 4, !range !451
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool44.not.i = icmp eq i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp46.i = icmp sgt i32 %rc.0.i, 0
  %or.cond.i = select i1 %tobool44.not.i, i1 %cmp46.i, i1 false
  br i1 %or.cond.i, label %if.end43.i.qed_enable_msix.exit.thread_crit_edge, label %lor.lhs.false.i

if.end43.i.qed_enable_msix.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_enable_msix.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool49.not.i = icmp ne i8 %37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %rc.0.i, i32 %cnt.0.i)
  %cmp52.i = icmp eq i32 %rc.0.i, %cnt.0.i
  %or.cond129.i = select i1 %tobool49.not.i, i1 %cmp52.i, i1 false
  br i1 %or.cond129.i, label %lor.lhs.false.i.qed_enable_msix.exit.thread_crit_edge, label %do.body58.i

lor.lhs.false.i.qed_enable_msix.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_enable_msix.exit.thread

qed_enable_msix.exit.thread:                      ; preds = %lor.lhs.false.i.qed_enable_msix.exit.thread_crit_edge, %if.end43.i.qed_enable_msix.exit.thread_crit_edge
  %out.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %38 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %out.i, align 4
  %conv55.i = trunc i32 %rc.0.i to i8
  %num_vectors57.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1, i32 1
  %39 = ptrtoint ptr %num_vectors57.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv55.i, ptr %num_vectors57.i, align 4
  br label %do.body105

do.body58.i:                                      ; preds = %lor.lhs.false.i
  %dp_level59.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %40 = ptrtoint ptr %dp_level59.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dp_level59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp61.i = icmp ult i8 %41, 3
  br i1 %cmp61.i, label %do.end72.i, label %do.body58.i.qed_enable_msix.exit_crit_edge, !prof !452

do.body58.i.qed_enable_msix.exit_crit_edge:       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %qed_enable_msix.exit

do.end72.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #23
  %name74.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.140, i32 noundef 608, ptr noundef nonnull %name74.i, i32 noundef %cnt.0.i, i32 noundef %rc.0.i) #24
  br label %qed_enable_msix.exit

qed_enable_msix.exit:                             ; preds = %do.end72.i, %do.body58.i.qed_enable_msix.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool5.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool5.not, label %qed_enable_msix.exit.do.body105_crit_edge, label %do.body

qed_enable_msix.exit.do.body105_crit_edge:        ; preds = %qed_enable_msix.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body105

do.body:                                          ; preds = %qed_enable_msix.exit
  %42 = ptrtoint ptr %dp_level59.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dp_level59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp = icmp ult i8 %43, 3
  br i1 %cmp, label %do.end, label %do.body.do.end20_crit_edge, !prof !452

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool14.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool14.not, ptr @.str.5, ptr %name
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, i32 noundef 636, ptr noundef nonnull %spec.select) #24
  br label %do.end20

do.end20:                                         ; preds = %do.end, %do.body.do.end20_crit_edge
  %44 = ptrtoint ptr %msix_table to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %msix_table, align 4
  tail call void @kfree(ptr noundef %45) #21
  br i1 %force_mode, label %do.end20.if.end147_crit_edge, label %do.end20.sw.bb25_crit_edge

do.end20.sw.bb25_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb25

do.end20.if.end147_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end147

sw.bb25:                                          ; preds = %do.end20.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %46 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp27 = icmp eq i8 %47, 1
  br i1 %cmp27, label %if.then29, label %sw.bb25.sw.bb68_crit_edge

sw.bb25.sw.bb68_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb68

if.then29:                                        ; preds = %sw.bb25
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %call30 = tail call i32 @pci_enable_msi(ptr noundef %49) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %do.body35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #23
  %out = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %50 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %out, align 4
  br label %do.body105

do.body35:                                        ; preds = %if.then29
  %dp_level36 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %51 = ptrtoint ptr %dp_level36 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dp_level36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp38 = icmp ult i8 %52, 3
  br i1 %cmp38, label %do.end49, label %do.body35.do.end63_crit_edge, !prof !452

do.body35.do.end63_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end63

do.end49:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #23
  %name51 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool53.not = icmp eq ptr %name51, null
  %spec.select178 = select i1 %tobool53.not, ptr @.str.5, ptr %name51
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.126, i32 noundef 650, ptr noundef nonnull %spec.select178) #24
  br label %do.end63

do.end63:                                         ; preds = %do.end49, %do.body35.do.end63_crit_edge
  br i1 %force_mode, label %do.end63.if.end147_crit_edge, label %do.end63.sw.bb68_crit_edge

do.end63.sw.bb68_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb68

do.end63.if.end147_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end147

sw.bb68:                                          ; preds = %do.end63.sw.bb68_crit_edge, %sw.bb25.sw.bb68_crit_edge, %entry.sw.bb68_crit_edge
  %out69 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %53 = ptrtoint ptr %out69 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %out69, align 4
  br label %do.body105

do.body71:                                        ; preds = %entry
  %dp_level72 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %54 = ptrtoint ptr %dp_level72 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dp_level72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp74 = icmp ult i8 %55, 3
  br i1 %cmp74, label %do.end85, label %do.body71.if.end147_crit_edge, !prof !452

do.body71.if.end147_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end147

do.end85:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #23
  %name87 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool89.not = icmp eq ptr %name87, null
  %spec.select179 = select i1 %tobool89.not, ptr @.str.5, ptr %name87
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.126, i32 noundef 662, ptr noundef nonnull %spec.select179, i32 noundef %1) #24
  br label %if.end147

do.body105:                                       ; preds = %sw.bb68, %if.then32, %qed_enable_msix.exit.do.body105_crit_edge, %qed_enable_msix.exit.thread
  %dp_level106 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %56 = ptrtoint ptr %dp_level106 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dp_level106, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp108 = icmp ult i8 %57, 2
  br i1 %cmp108, label %do.end119, label %do.body105.if.end147_crit_edge, !prof !452

do.body105.if.end147_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end147

do.end119:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #23
  %name121 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool123.not = icmp eq ptr %name121, null
  %spec.select180 = select i1 %tobool123.not, ptr @.str.5, ptr %name121
  %out130 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %58 = ptrtoint ptr %out130 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp132 = icmp eq i32 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp138 = icmp eq i32 %59, 2
  %cond140 = select i1 %cmp138, ptr @.str.137, ptr @.str.138
  %cond142 = select i1 %cmp132, ptr @.str.136, ptr %cond140
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.126, i32 noundef 671, ptr noundef nonnull %spec.select180, ptr noundef nonnull %cond142) #24
  br label %if.end147

if.end147:                                        ; preds = %do.end119, %do.body105.if.end147_crit_edge, %do.end85, %do.body71.if.end147_crit_edge, %do.end63.if.end147_crit_edge, %do.end20.if.end147_crit_edge, %sw.bb.if.end147_crit_edge
  %rc.0193 = phi i32 [ 0, %do.body105.if.end147_crit_edge ], [ 0, %do.end119 ], [ -22, %do.body71.if.end147_crit_edge ], [ -22, %do.end85 ], [ -12, %sw.bb.if.end147_crit_edge ], [ %rc.0.i, %do.end20.if.end147_crit_edge ], [ %call30, %do.end63.if.end147_crit_edge ]
  %int_coalescing_mode = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 23
  %60 = ptrtoint ptr %int_coalescing_mode to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %int_coalescing_mode, align 4
  ret i32 %rc.0193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_num_rxqs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_int_disable_post_isr_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sriov_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_dbg_pf_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_int_sb_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_int_sb_release(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_schedule_iov(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_set_link(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_drain(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_nvm_resp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_nvm_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_nvm_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_nvm_set_cfg(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_nvm_image(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_set_queue_coalesce(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_set_led(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_ov_update_driver_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_ov_update_mac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_ov_update_current_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_ov_update_mtu(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_ov_update_wol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_phy_sfp_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_device_num_ports(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_nvm_get_cfg(ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dbg_grc_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_send_raw_debug_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_int_get_sb_dbg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_get_esl_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

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
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { cold nounwind }
attributes #25 = { cold }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { nobuiltin }
attributes #29 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !372, !374, !375, !376, !377, !379, !380, !381, !382, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !411, !413, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !429, !431, !432, !433, !435, !436, !437, !439, !440, !441}
!llvm.module.flags = !{!442, !443, !444, !445, !446, !447, !448, !449}
!llvm.ident = !{!450}

!0 = !{ptr @__UNIQUE_ID_description357, !1, !"__UNIQUE_ID_description357", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_file358, !3, !"__UNIQUE_ID_file358", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 55, i32 1}
!4 = !{ptr @__UNIQUE_ID_license359, !3, !"__UNIQUE_ID_license359", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_firmware360, !6, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 66, i32 1}
!7 = !{ptr @__initcall__kmod_qed__361_250_qed_init6, !8, !"__initcall__kmod_qed__361_250_qed_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 250, i32 1}
!9 = !{ptr @__exitcall_qed_exit, !10, !"__exitcall_qed_exit", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 256, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 762, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 770, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 782, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qed_slowpath_irq_req._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @qed_slowpath_irq_req._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 784, i32 3}
!24 = !{ptr @qed_slowpath_irq_req._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qed_slowpath_irq_req._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1039, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qed_unzip_data._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @qed_unzip_data._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1048, i32 3}
!35 = !{ptr @qed_unzip_data._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qed_unzip_data._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2775, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @qed_hw_error_occurred._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @qed_hw_error_occurred._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @qed_common_ops_pass, !43, !"qed_common_ops_pass", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 3043, i32 29}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 3119, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qed_get_protocol_stats._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @qed_get_protocol_stats._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 3127, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @qed_mfw_tlv_req._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @qed_mfw_tlv_req._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 3189, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @qed_mfw_fill_tlv_data._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @qed_mfw_fill_tlv_data._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 244, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @qed_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @qed_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @version, !65, !"version", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 51, i32 13}
!66 = !{ptr @qed_mfw_ext_maps, !67, !"qed_mfw_ext_maps", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 144, i32 33}
!68 = !{ptr @qed_mfw_ext_1g, !69, !"qed_mfw_ext_1g", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 85, i32 18}
!70 = !{ptr @qed_mfw_ext_10g, !71, !"qed_mfw_ext_10g", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 91, i32 18}
!72 = !{ptr @qed_mfw_ext_25g, !73, !"qed_mfw_ext_25g", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 102, i32 18}
!74 = !{ptr @qed_mfw_ext_40g, !75, !"qed_mfw_ext_40g", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 108, i32 18}
!76 = !{ptr @qed_mfw_ext_50g_base_r, !77, !"qed_mfw_ext_50g_base_r", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 115, i32 18}
!78 = !{ptr @qed_mfw_ext_50g_base_r2, !79, !"qed_mfw_ext_50g_base_r2", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 123, i32 18}
!80 = !{ptr @qed_mfw_ext_100g_base_r2, !81, !"qed_mfw_ext_100g_base_r2", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 129, i32 18}
!82 = !{ptr @qed_mfw_ext_100g_base_r4, !83, !"qed_mfw_ext_100g_base_r4", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 137, i32 18}
!84 = !{ptr @qed_mfw_legacy_maps, !85, !"qed_mfw_legacy_maps", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 206, i32 33}
!86 = !{ptr @qed_mfw_legacy_1g, !87, !"qed_mfw_legacy_1g", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 159, i32 18}
!88 = !{ptr @qed_mfw_legacy_10g, !89, !"qed_mfw_legacy_10g", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 165, i32 18}
!90 = !{ptr @qed_mfw_legacy_20g, !91, !"qed_mfw_legacy_20g", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 176, i32 18}
!92 = !{ptr @qed_mfw_legacy_25g, !93, !"qed_mfw_legacy_25g", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 180, i32 18}
!94 = !{ptr @qed_mfw_legacy_40g, !95, !"qed_mfw_legacy_40g", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 186, i32 18}
!96 = !{ptr @qed_mfw_legacy_50g, !97, !"qed_mfw_legacy_50g", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 193, i32 18}
!98 = !{ptr @qed_mfw_legacy_bb_100g, !99, !"qed_mfw_legacy_bb_100g", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 199, i32 18}
!100 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 734, i32 6}
!102 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @qed_single_int._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @qed_single_int._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 744, i32 4}
!107 = !{ptr @qed_single_int._entry.28, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @qed_single_int._entry_ptr.30, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2094, i32 3}
!111 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qed_fill_link._entry, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @qed_fill_link._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1866, i32 2}
!118 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @qed_fill_link_capability._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @qed_fill_link_capability._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2054, i32 3}
!123 = !{ptr @qed_fill_link_capability._entry.37, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @qed_fill_link_capability._entry_ptr.39, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2755, i32 27}
!127 = !{ptr @.str.41, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2756, i32 31}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2757, i32 26}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2758, i32 28}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2759, i32 29}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2760, i32 28}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2761, i32 23}
!139 = !{ptr @qed_hw_err_type_descr, !140, !"qed_hw_err_type_descr", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2754, i32 27}
!141 = !{ptr @qed_selftest_ops_pass, !142, !"qed_selftest_ops_pass", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 3035, i32 32}
!143 = !{ptr @.str.47, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 516, i32 3}
!145 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @qed_probe._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @qed_probe._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 519, i32 2}
!150 = !{ptr @qed_probe._entry.49, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @qed_probe._entry_ptr.51, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 523, i32 3}
!154 = !{ptr @qed_probe._entry.52, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @qed_probe._entry_ptr.54, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 527, i32 2}
!158 = !{ptr @qed_probe._entry.55, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @qed_probe._entry_ptr.57, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 288, i32 3}
!162 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @qed_init_pci._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @qed_init_pci._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 293, i32 3}
!167 = !{ptr @qed_init_pci._entry.60, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qed_init_pci._entry_ptr.62, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 299, i32 3}
!171 = !{ptr @qed_init_pci._entry.63, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qed_init_pci._entry_ptr.65, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 305, i32 34}
!175 = !{ptr @.str.68, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 307, i32 4}
!177 = !{ptr @qed_init_pci._entry.67, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @qed_init_pci._entry_ptr.69, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 317, i32 3}
!181 = !{ptr @qed_init_pci._entry.70, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @qed_init_pci._entry_ptr.72, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 324, i32 3}
!185 = !{ptr @qed_init_pci._entry.73, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @qed_init_pci._entry_ptr.75, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 331, i32 3}
!189 = !{ptr @qed_init_pci._entry.76, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @qed_init_pci._entry_ptr.78, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 335, i32 3}
!193 = !{ptr @qed_init_pci._entry.79, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @qed_init_pci._entry_ptr.81, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 346, i32 3}
!197 = !{ptr @qed_init_pci._entry.82, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @qed_init_pci._entry_ptr.84, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 355, i32 4}
!201 = !{ptr @qed_init_pci._entry.85, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @qed_init_pci._entry_ptr.87, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 365, i32 3}
!205 = !{ptr @qed_init_pci._entry.88, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @qed_init_pci._entry_ptr.90, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 372, i32 3}
!209 = !{ptr @qed_init_pci._entry.91, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @qed_init_pci._entry_ptr.93, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 489, i32 2}
!213 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @qed_set_power_state._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @qed_set_power_state._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1446, i32 44}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1264, i32 42}
!220 = !{ptr @.str.98, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1267, i32 4}
!222 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @qed_slowpath_start._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @qed_slowpath_start._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1278, i32 5}
!227 = !{ptr @qed_slowpath_start._entry.100, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @qed_slowpath_start._entry_ptr.102, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1340, i32 2}
!231 = !{ptr @qed_slowpath_start._entry.103, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @qed_slowpath_start._entry_ptr.105, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1368, i32 4}
!235 = !{ptr @qed_slowpath_start._entry.106, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @qed_slowpath_start._entry_ptr.108, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.109, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1228, i32 29}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1234, i32 4}
!241 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @qed_slowpath_wq_start._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @qed_slowpath_wq_start._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @qed_slowpath_wq_start.__key, !245, !"__key", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1238, i32 3}
!246 = !{ptr @.str.112, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @qed_slowpath_wq_start.__key.113, !245, !"__key", i1 false, i1 false}
!248 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 877, i32 2}
!251 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @qed_nic_setup._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @qed_nic_setup._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.117, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 934, i32 3}
!256 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @qed_slowpath_setup_int._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @qed_slowpath_setup_int._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.120, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 951, i32 3}
!261 = !{ptr @qed_slowpath_setup_int._entry.119, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @qed_slowpath_setup_int._entry_ptr.121, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 960, i32 3}
!265 = !{ptr @qed_slowpath_setup_int._entry.122, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @qed_slowpath_setup_int._entry_ptr.124, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.125, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 636, i32 3}
!269 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @qed_set_int_mode._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @qed_set_int_mode._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.128, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 650, i32 4}
!274 = !{ptr @qed_set_int_mode._entry.127, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @qed_set_int_mode._entry_ptr.129, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 661, i32 3}
!278 = !{ptr @qed_set_int_mode._entry.130, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @qed_set_int_mode._entry_ptr.132, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 668, i32 3}
!282 = !{ptr @qed_set_int_mode._entry.133, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @qed_set_int_mode._entry_ptr.135, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.138, !281, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.139, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 586, i32 3}
!289 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @qed_enable_msix._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @qed_enable_msix._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.142, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 606, i32 3}
!294 = !{ptr @qed_enable_msix._entry.141, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @qed_enable_msix._entry_ptr.143, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.144, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 849, i32 4}
!298 = !{ptr @.str.145, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @qed_nic_stop._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @qed_nic_stop._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.146, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 907, i32 3}
!303 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @qed_get_int_fp._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @qed_get_int_fp._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.148, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1469, i32 2}
!308 = !{ptr @.str.149, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @qed_sb_init._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @qed_sb_init._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.150, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 1507, i32 2}
!313 = !{ptr @qed_sb_release._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @qed_sb_release._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.151, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2205, i32 4}
!317 = !{ptr @.str.152, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @qed_get_current_link._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @qed_get_current_link._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.153, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2250, i32 4}
!322 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @qed_drain._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @qed_drain._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.155, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2660, i32 3}
!327 = !{ptr @.str.156, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @qed_nvm_flash._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @qed_nvm_flash._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2664, i32 2}
!332 = !{ptr @qed_nvm_flash._entry.157, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @qed_nvm_flash._entry_ptr.159, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.161, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2696, i32 4}
!336 = !{ptr @qed_nvm_flash._entry.160, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @qed_nvm_flash._entry_ptr.162, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.164, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2702, i32 4}
!340 = !{ptr @qed_nvm_flash._entry.163, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @qed_nvm_flash._entry_ptr.165, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.167, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2711, i32 5}
!344 = !{ptr @qed_nvm_flash._entry.166, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @qed_nvm_flash._entry_ptr.168, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.170, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2723, i32 5}
!348 = !{ptr @qed_nvm_flash._entry.169, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @qed_nvm_flash._entry_ptr.171, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.172, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2489, i32 3}
!352 = !{ptr @.str.173, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @qed_nvm_flash_image_validate._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @qed_nvm_flash_image_validate._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.175, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2496, i32 3}
!357 = !{ptr @qed_nvm_flash_image_validate._entry.174, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @qed_nvm_flash_image_validate._entry_ptr.176, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.178, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2504, i32 3}
!361 = !{ptr @qed_nvm_flash_image_validate._entry.177, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @qed_nvm_flash_image_validate._entry_ptr.179, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.181, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2512, i32 3}
!365 = !{ptr @qed_nvm_flash_image_validate._entry.180, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @qed_nvm_flash_image_validate._entry_ptr.182, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.183, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2463, i32 2}
!369 = !{ptr @.str.184, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @qed_nvm_flash_image_file_data._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @qed_nvm_flash_image_file_data._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.185, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2424, i32 2}
!374 = !{ptr @.str.186, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @qed_nvm_flash_image_file_start._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @qed_nvm_flash_image_file_start._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.187, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2328, i32 3}
!379 = !{ptr @.str.188, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @qed_nvm_flash_image_access._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @qed_nvm_flash_image_access._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.190, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2336, i32 2}
!384 = !{ptr @qed_nvm_flash_image_access._entry.189, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @qed_nvm_flash_image_access._entry_ptr.191, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.193, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2350, i32 4}
!388 = !{ptr @qed_nvm_flash_image_access._entry.192, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @qed_nvm_flash_image_access._entry_ptr.194, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.196, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2358, i32 4}
!392 = !{ptr @qed_nvm_flash_image_access._entry.195, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @qed_nvm_flash_image_access._entry_ptr.197, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.199, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2378, i32 4}
!396 = !{ptr @qed_nvm_flash_image_access._entry.198, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @qed_nvm_flash_image_access._entry_ptr.200, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.202, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2384, i32 3}
!400 = !{ptr @qed_nvm_flash_image_access._entry.201, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @qed_nvm_flash_image_access._entry_ptr.203, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.205, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2393, i32 4}
!404 = !{ptr @qed_nvm_flash_image_access._entry.204, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @qed_nvm_flash_image_access._entry_ptr.206, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.207, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2278, i32 3}
!408 = !{ptr @.str.208, !407, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @qed_nvm_flash_image_access_crc._entry, !407, !"_entry", i1 false, i1 false}
!410 = !{ptr @qed_nvm_flash_image_access_crc._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.209, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2555, i32 2}
!413 = !{ptr @.str.210, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @qed_nvm_flash_cfg_write._entry, !412, !"_entry", i1 false, i1 false}
!415 = !{ptr @qed_nvm_flash_cfg_write._entry_ptr, !412, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.212, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2586, i32 3}
!418 = !{ptr @qed_nvm_flash_cfg_write._entry.211, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @qed_nvm_flash_cfg_write._entry_ptr.213, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.215, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2592, i32 4}
!422 = !{ptr @qed_nvm_flash_cfg_write._entry.214, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @qed_nvm_flash_cfg_write._entry_ptr.216, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.217, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2639, i32 2}
!426 = !{ptr @.str.218, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @qed_nvm_flash_cfg_read._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @qed_nvm_flash_cfg_read._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.220, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2644, i32 3}
!431 = !{ptr @qed_nvm_flash_cfg_read._entry.219, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @qed_nvm_flash_cfg_read._entry_ptr.221, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.222, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2618, i32 3}
!435 = !{ptr @qed_nvm_flash_cfg_len._entry, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @qed_nvm_flash_cfg_len._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.223, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/ethernet/qlogic/qed/qed_main.c", i32 2934, i32 3}
!439 = !{ptr @.str.224, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @qed_get_sb_info._entry, !438, !"_entry", i1 false, i1 false}
!441 = !{ptr @qed_get_sb_info._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!442 = !{i32 1, !"wchar_size", i32 2}
!443 = !{i32 1, !"min_enum_size", i32 4}
!444 = !{i32 8, !"branch-target-enforcement", i32 0}
!445 = !{i32 8, !"sign-return-address", i32 0}
!446 = !{i32 8, !"sign-return-address-all", i32 0}
!447 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!448 = !{i32 7, !"uwtable", i32 1}
!449 = !{i32 7, !"frame-pointer", i32 2}
!450 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!451 = !{i8 0, i8 2}
!452 = !{!"branch_weights", i32 1, i32 2000}
!453 = !{!"branch_weights", i32 2000, i32 1}
!454 = !{i64 2148743767, i64 2148743793, i64 2148743822, i64 2148743856, i64 2148743887, i64 2148743910}
!455 = !{i64 2153154541}
!456 = !{i64 2153155183}
!457 = !{i64 2153155530}
!458 = !{i64 2148746232, i64 2148746258, i64 2148746287, i64 2148746321, i64 2148746352, i64 2148746375}
!459 = !{i64 2158259352}
!460 = !{i64 2158259657}
!461 = !{!"auto-init"}
!462 = !{i64 2158393326}
!463 = !{i64 2158393665}
