; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hnae3_ae_algo = type { ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hnae3_ae_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclgevf_dev = type { ptr, ptr, %struct.hclgevf_hw, %struct.hclgevf_misc_vector, %struct.hclge_comm_rss_cfg, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hclgevf_rst_stats, i32, %struct.semaphore, i32, i16, i16, i16, i16, i16, i32, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, [128 x i32], %struct.hclgevf_mac_table_cfg, %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_arq_ring, %struct.delayed_work, ptr, %struct.hnae3_handle, %struct.hnae3_handle, ptr, ptr, i32, i32, i32, ptr }
%struct.hclgevf_hw = type { %struct.hclge_comm_hw, i32, %struct.hclgevf_mac }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hclgevf_mac = type { i8, i8, [6 x i8], i32, i8, i32, i64, i64 }
%struct.hclgevf_misc_vector = type { ptr, i32, [32 x i8] }
%struct.hclge_comm_rss_cfg = type { [40 x i8], ptr, i32, %struct.hclge_comm_rss_tuple_cfg, i32 }
%struct.hclge_comm_rss_tuple_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hclgevf_rst_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.hclgevf_mac_table_cfg = type { %struct.spinlock, %struct.list_head, %struct.list_head }
%struct.hclgevf_mbx_resp_status = type { %struct.mutex, i32, i8, i32, i16, [8 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hclgevf_mbx_arq_ring = type { ptr, i32, i32, %struct.atomic_t, [1024 x [8 x i16]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.133, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.133 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.hnae3_client = type { [16 x i8], i32, i32, ptr, %struct.list_head }
%struct.hnae3_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hclge_vf_to_pf_msg = type { i8, %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i8, [14 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
%struct.hclgevf_query_res_cmd = type { i16, i16, i16, i16, i16, [7 x i16] }
%struct.hclgevf_dev_specs_0_cmd = type { i32, i32, i32, i16, i16, i16, i8, [5 x i8] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.126, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.126 = type { i32 }
%struct.hnae3_vector_info = type { ptr, i32 }
%struct.hclgevf_cfg_com_tqp_queue_cmd = type { i16, i16, i8, [19 x i8] }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclge_comm_tqp = type { ptr, %struct.hnae3_queue, %struct.hclge_comm_tqp_stats, i16, i8 }
%struct.hnae3_queue = type { ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.hclge_comm_tqp_stats = type { i64, i64 }
%struct.hclgevf_mac_addr_node = type { %struct.list_head, i32, [6 x i8] }
%struct.hnae3_ring_chain_node = type { ptr, i32, i32, i32 }
%struct.hclge_ring_chain_param = type { i8, i8, i8 }

@hclgevf_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hclgevf_update_port_base_vlan_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"is resetting when updating port based vlan info\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hclgevf_update_port_base_vlan_info\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclgevf_update_port_base_vlan_info._entry_ptr = internal global ptr @hclgevf_update_port_base_vlan_info._entry, section ".printk_index", align 4
@__initcall__kmod_hclgevf__385_3446_hclgevf_init6 = internal global ptr @hclgevf_init, section ".initcall6.init", align 4
@__exitcall_hclgevf_exit = internal global ptr @hclgevf_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file386 = internal constant [57 x i8] c"hclgevf.file=drivers/net/ethernet/hisilicon/hns3/hclgevf\00", section ".modinfo", align 1
@__UNIQUE_ID_license387 = internal constant [20 x i8] c"hclgevf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author388 = internal constant [38 x i8] c"hclgevf.author=Huawei Tech. Co., Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description389 = internal constant [35 x i8] c"hclgevf.description=HCLGEVF Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version390 = internal constant [20 x i8] c"hclgevf.version=1.0\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hclgevf\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.7 }, section "__modver", align 4
@hclgevf_notify_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1377, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"notify nic client failed %d(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclgevf_notify_client\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hclgevf_notify_client._entry_ptr = internal global ptr @hclgevf_notify_client._entry, section ".printk_index", align 4
@hclgevf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 3428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s is initializing\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclgevf_init\00", [19 x i8] zeroinitializer }, align 32
@hclgevf_init._entry_ptr = internal global ptr @hclgevf_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@hclgevf_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 3432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: failed to create workqueue\0A\00", [62 x i8] zeroinitializer }, align 32
@hclgevf_init._entry_ptr.16 = internal global ptr @hclgevf_init._entry.14, section ".printk_index", align 4
@ae_algovf = internal global { %struct.hnae3_ae_algo, [16 x i8] } { %struct.hnae3_ae_algo { ptr @hclgevf_ops, %struct.list_head zeroinitializer, ptr @ae_algovf_pci_tbl }, [16 x i8] zeroinitializer }, align 32
@hclgevf_ops = internal constant { %struct.hnae3_ae_ops, [108 x i8] } { %struct.hnae3_ae_ops { ptr @hclgevf_init_ae_dev, ptr @hclgevf_uninit_ae_dev, ptr @hclgevf_reset_prepare_general, ptr @hclgevf_reset_done, ptr @hclgevf_init_client_instance, ptr @hclgevf_uninit_client_instance, ptr @hclgevf_ae_start, ptr @hclgevf_ae_stop, ptr @hclgevf_client_start, ptr @hclgevf_client_stop, ptr @hclgevf_get_status, ptr @hclgevf_get_ksettings_an_result, ptr null, ptr @hclgevf_get_media_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hclgevf_set_promisc_mode, ptr @hclgevf_request_update_promisc_mode, ptr @hclgevf_set_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hclgevf_get_mac_addr, ptr @hclgevf_set_mac_addr, ptr null, ptr @hclgevf_add_uc_addr, ptr @hclgevf_rm_uc_addr, ptr null, ptr @hclgevf_add_mc_addr, ptr @hclgevf_rm_mc_addr, ptr null, ptr @hclgevf_update_stats, ptr @hclgevf_get_stats, ptr null, ptr @hclgevf_get_strings, ptr @hclgevf_get_sset_count, ptr @hclgevf_get_regs, ptr @hclgevf_get_regs_len, ptr @hclge_comm_get_rss_key_size, ptr @hclgevf_get_rss, ptr @hclgevf_set_rss, ptr @hclgevf_set_rss_tuple, ptr @hclgevf_get_rss_tuple, ptr @hclgevf_get_tc_size, ptr @hclgevf_get_vector, ptr @hclgevf_put_vector, ptr @hclgevf_map_ring_to_vector, ptr @hclgevf_unmap_ring_from_vector, ptr @hclgevf_reset_tqp, ptr @hclgevf_get_fw_version, ptr null, ptr @hclgevf_enable_vlan_filter, ptr @hclgevf_set_vlan_filter, ptr null, ptr @hclgevf_en_hw_strip_rxvtag, ptr @hclgevf_reset_event, ptr null, ptr @hclgevf_set_def_reset_request, ptr @hclgevf_get_channels, ptr @hclgevf_get_tqps_and_rss_info, ptr @hclgevf_set_channels, ptr null, ptr null, ptr @hclgevf_get_link_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hclgevf_get_hw_reset_stat, ptr @hclgevf_ae_dev_resetting, ptr @hclgevf_ae_dev_reset_cnt, ptr @hclgevf_gro_en, ptr @hclgevf_get_qid_global, ptr @hclgevf_set_timer_task, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hclgevf_get_cmdq_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [108 x i8] zeroinitializer }, align 32
@ae_algovf_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6629, i32 41518, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6629, i32 41519, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hclgevf_init_ae_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 3025, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hclge device allocation failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclgevf_init_ae_dev\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_init_ae_dev._entry_ptr = internal global ptr @hclgevf_init_ae_dev._entry, section ".printk_index", align 4
@hclgevf_init_ae_dev._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 3031, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hclge device initialization failed\0A\00", [60 x i8] zeroinitializer }, align 32
@hclgevf_init_ae_dev._entry_ptr.21 = internal global ptr @hclgevf_init_ae_dev._entry.19, section ".printk_index", align 4
@hclgevf_init_hdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 2899, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to query dev specifications, ret = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclgevf_init_hdev\00", [46 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr = internal global ptr @hclgevf_init_hdev._entry, section ".printk_index", align 4
@hclgevf_init_hdev._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 2905, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed(%d) to init MSI/MSI-X\0A\00", [34 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.26 = internal global ptr @hclgevf_init_hdev._entry.24, section ".printk_index", align 4
@hclgevf_init_hdev._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 2921, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed(%d) to fetch configuration\0A\00", [61 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.29 = internal global ptr @hclgevf_init_hdev._entry.27, section ".printk_index", align 4
@hclgevf_init_hdev._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 2927, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed(%d) to allocate TQPs\0A\00", [35 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.32 = internal global ptr @hclgevf_init_hdev._entry.30, section ".printk_index", align 4
@hclgevf_init_hdev._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 2943, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init rss cfg, ret = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.35 = internal global ptr @hclgevf_init_hdev._entry.33, section ".printk_index", align 4
@hclgevf_init_hdev._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 2950, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed(%d) to initialize RSS\0A\00", [34 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.38 = internal global ptr @hclgevf_init_hdev._entry.36, section ".printk_index", align 4
@hclgevf_init_hdev._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.2, i32 2959, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to clear tbl list configuration, ret = %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.41 = internal global ptr @hclgevf_init_hdev._entry.39, section ".printk_index", align 4
@hclgevf_init_hdev._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.2, i32 2966, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed(%d) to initialize VLAN config\0A\00", [58 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.44 = internal global ptr @hclgevf_init_hdev._entry.42, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hclgevf_init_hdev._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.23, ptr @.str.2, i32 2976, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"finished initializing %s driver\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hclgevf_init_hdev._entry_ptr.48 = internal global ptr @hclgevf_init_hdev._entry.45, section ".printk_index", align 4
@hclgevf_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 2578, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hclgevf_pci_init\00", [47 x i8] zeroinitializer }, align 32
@hclgevf_pci_init._entry_ptr = internal global ptr @hclgevf_pci_init._entry, section ".printk_index", align 4
@hclgevf_pci_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 2584, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't set consistent PCI DMA, exiting\00", [58 x i8] zeroinitializer }, align 32
@hclgevf_pci_init._entry_ptr.53 = internal global ptr @hclgevf_pci_init._entry.51, section ".printk_index", align 4
@hclgevf_pci_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 2590, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCI request regions failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@hclgevf_pci_init._entry_ptr.56 = internal global ptr @hclgevf_pci_init._entry.54, section ".printk_index", align 4
@hclgevf_pci_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.2, i32 2598, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't map configuration register space\0A\00", [56 x i8] zeroinitializer }, align 32
@hclgevf_pci_init._entry_ptr.59 = internal global ptr @hclgevf_pci_init._entry.57, section ".printk_index", align 4
@hclgevf_dev_mem_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 2563, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to map device memory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclgevf_dev_mem_map\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_dev_mem_map._entry_ptr = internal global ptr @hclgevf_dev_mem_map._entry, section ".printk_index", align 4
@hclgevf_query_vf_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 2643, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"query vf resource failed, ret = %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclgevf_query_vf_resource\00", [38 x i8] zeroinitializer }, align 32
@hclgevf_query_vf_resource._entry_ptr = internal global ptr @hclgevf_query_vf_resource._entry, section ".printk_index", align 4
@hclgevf_query_vf_resource._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 2677, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Just %u msi resources, not enough for vf(min:2).\0A\00", [46 x i8] zeroinitializer }, align 32
@hclgevf_query_vf_resource._entry_ptr.66 = internal global ptr @hclgevf_query_vf_resource._entry.64, section ".printk_index", align 4
@hclgevf_init_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 2327, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed(%d) to allocate MSI/MSI-X vectors\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hclgevf_init_msi\00", [47 x i8] zeroinitializer }, align 32
@hclgevf_init_msi._entry_ptr = internal global ptr @hclgevf_init_msi._entry, section ".printk_index", align 4
@hclgevf_init_msi._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 2333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"requested %u MSI/MSI-X, but allocated %d MSI/MSI-X\0A\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_init_msi._entry_ptr.71 = internal global ptr @hclgevf_init_msi._entry.69, section ".printk_index", align 4
@hclgevf_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&hdev->service_task)->work)\00", [48 x i8] zeroinitializer }, align 32
@hclgevf_state_init.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&hdev->service_task)->timer\00", [34 x i8] zeroinitializer }, align 32
@hclgevf_state_init.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&hdev->mbx_resp.mbx_mutex\00", [38 x i8] zeroinitializer }, align 32
@hclgevf_state_init.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&hdev->mac_table.mac_list_lock\00", [33 x i8] zeroinitializer }, align 32
@hclgevf_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1629, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to fetch H/W reset completion status\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclgevf_reset\00", [18 x i8] zeroinitializer }, align 32
@hclgevf_reset._entry_ptr = internal global ptr @hclgevf_reset._entry, section ".printk_index", align 4
@hclgevf_notify_roce_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1398, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"notify roce client failed %d(%d)\00", [63 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclgevf_notify_roce_client\00", [37 x i8] zeroinitializer }, align 32
@hclgevf_notify_roce_client._entry_ptr = internal global ptr @hclgevf_notify_roce_client._entry, section ".printk_index", align 4
@hclgevf_reset_prepare_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1496, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to assert VF reset, ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclgevf_reset_prepare_wait\00", [37 x i8] zeroinitializer }, align 32
@hclgevf_reset_prepare_wait._entry_ptr = internal global ptr @hclgevf_reset_prepare_wait._entry, section ".printk_index", align 4
@hclgevf_reset_prepare_wait._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 1507, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"prepare reset(%d) wait done\0A\00", [35 x i8] zeroinitializer }, align 32
@hclgevf_reset_prepare_wait._entry_ptr.87 = internal global ptr @hclgevf_reset_prepare_wait._entry.85, section ".printk_index", align 4
@hclgevf_reset_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1428, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"couldn't get reset done status from h/w, timeout!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclgevf_reset_wait\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_reset_wait._entry_ptr = internal global ptr @hclgevf_reset_wait._entry, section ".printk_index", align 4
@hclgevf_reset_rebuild._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1594, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset VF stack\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclgevf_reset_rebuild\00", [42 x i8] zeroinitializer }, align 32
@hclgevf_reset_rebuild._entry_ptr = internal global ptr @hclgevf_reset_rebuild._entry, section ".printk_index", align 4
@hclgevf_reset_stack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 1468, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hclge device re-init failed, VF is disabled!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclgevf_reset_stack\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_reset_stack._entry_ptr = internal global ptr @hclgevf_reset_stack._entry, section ".printk_index", align 4
@hclgevf_reset_hdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 2827, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci reset failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclgevf_reset_hdev\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_reset_hdev._entry_ptr = internal global ptr @hclgevf_reset_hdev._entry, section ".printk_index", align 4
@hclgevf_reset_hdev._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 2836, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd failed %d\0A\00", [17 x i8] zeroinitializer }, align 32
@hclgevf_reset_hdev._entry_ptr.98 = internal global ptr @hclgevf_reset_hdev._entry.96, section ".printk_index", align 4
@hclgevf_reset_hdev._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.95, ptr @.str.2, i32 2843, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hclgevf_reset_hdev._entry_ptr.100 = internal global ptr @hclgevf_reset_hdev._entry.99, section ".printk_index", align 4
@hclgevf_reset_hdev._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.95, ptr @.str.2, i32 2854, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hclgevf_reset_hdev._entry_ptr.102 = internal global ptr @hclgevf_reset_hdev._entry.101, section ".printk_index", align 4
@hclgevf_reset_hdev._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.95, ptr @.str.2, i32 2862, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Reset done\0A\00", [20 x i8] zeroinitializer }, align 32
@hclgevf_reset_hdev._entry_ptr.105 = internal global ptr @hclgevf_reset_hdev._entry.103, section ".printk_index", align 4
@hclgevf_pci_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.106, ptr @.str.2, i32 2781, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclgevf_pci_reset\00", [46 x i8] zeroinitializer }, align 32
@hclgevf_pci_reset._entry_ptr = internal global ptr @hclgevf_pci_reset._entry, section ".printk_index", align 4
@hclgevf_pci_reset._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 2789, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed(%d) to init Misc IRQ(vector0)\0A\00", [58 x i8] zeroinitializer }, align 32
@hclgevf_pci_reset._entry_ptr.109 = internal global ptr @hclgevf_pci_reset._entry.107, section ".printk_index", align 4
@hclgevf_reset_err_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 1545, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset VF(%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclgevf_reset_err_handle\00", [39 x i8] zeroinitializer }, align 32
@hclgevf_reset_err_handle._entry_ptr = internal global ptr @hclgevf_reset_err_handle._entry, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1515, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VF function reset count: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclgevf_dump_rst_info\00", [42 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr = internal global ptr @hclgevf_dump_rst_info._entry, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 1517, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FLR reset count: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.116 = internal global ptr @hclgevf_dump_rst_info._entry.114, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.2, i32 1519, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VF reset count: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.119 = internal global ptr @hclgevf_dump_rst_info._entry.117, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.113, ptr @.str.2, i32 1521, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset done count: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.122 = internal global ptr @hclgevf_dump_rst_info._entry.120, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.113, ptr @.str.2, i32 1523, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HW reset done count: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.125 = internal global ptr @hclgevf_dump_rst_info._entry.123, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.113, ptr @.str.2, i32 1525, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset count: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.128 = internal global ptr @hclgevf_dump_rst_info._entry.126, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.113, ptr @.str.2, i32 1527, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset fail count: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.131 = internal global ptr @hclgevf_dump_rst_info._entry.129, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.113, ptr @.str.2, i32 1529, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vector0 interrupt enable status: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.134 = internal global ptr @hclgevf_dump_rst_info._entry.132, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.113, ptr @.str.2, i32 1531, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vector0 interrupt status: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.137 = internal global ptr @hclgevf_dump_rst_info._entry.135, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.113, ptr @.str.2, i32 1533, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"handshake status: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.140 = internal global ptr @hclgevf_dump_rst_info._entry.138, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.113, ptr @.str.2, i32 1535, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"function reset status: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.143 = internal global ptr @hclgevf_dump_rst_info._entry.141, section ".printk_index", align 4
@hclgevf_dump_rst_info._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.113, ptr @.str.2, i32 1536, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdev state: 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_dump_rst_info._entry_ptr.146 = internal global ptr @hclgevf_dump_rst_info._entry.144, section ".printk_index", align 4
@hclgevf_keep_alive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 1898, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VF sends keep alive cmd failed(=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclgevf_keep_alive\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_keep_alive._entry_ptr = internal global ptr @hclgevf_keep_alive._entry, section ".printk_index", align 4
@hclgevf_request_link_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 415, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VF failed to fetch link status(%d) from PF\00", [53 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclgevf_request_link_info\00", [38 x i8] zeroinitializer }, align 32
@hclgevf_request_link_info._entry_ptr = internal global ptr @hclgevf_request_link_info._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hclgevf_config_mac_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 1076, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to configure mac %s, state = %d, ret = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclgevf_config_mac_list\00", [40 x i8] zeroinitializer }, align 32
@hclgevf_config_mac_list._entry_ptr = internal global ptr @hclgevf_config_mac_list._entry, section ".printk_index", align 4
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%02x:**:**:**:%02x:%02x\00", [40 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-misc-%s\00", [21 x i8] zeroinitializer }, align 32
@hclgevf_misc_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 2380, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VF failed to request misc irq(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclgevf_misc_irq_init\00", [42 x i8] zeroinitializer }, align 32
@hclgevf_misc_irq_init._entry_ptr = internal global ptr @hclgevf_misc_irq_init._entry, section ".printk_index", align 4
@hclgevf_check_evt_cause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 1983, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"receive reset interrupt 0x%x!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclgevf_check_evt_cause\00", [40 x i8] zeroinitializer }, align 32
@hclgevf_check_evt_cause._entry_ptr = internal global ptr @hclgevf_check_evt_cause._entry, section ".printk_index", align 4
@hclgevf_check_evt_cause._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 2019, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"vector 0 interrupt from unknown source, cmdq_src = %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@hclgevf_check_evt_cause._entry_ptr.163 = internal global ptr @hclgevf_check_evt_cause._entry.161, section ".printk_index", align 4
@hclgevf_get_basic_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 185, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get basic info from pf, ret = %d\00", [53 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclgevf_get_basic_info\00", [41 x i8] zeroinitializer }, align 32
@hclgevf_get_basic_info._entry_ptr = internal global ptr @hclgevf_get_basic_info._entry, section ".printk_index", align 4
@hclgevf_get_port_base_vlan_filter_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 214, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"VF request to get port based vlan state failed %d\00", [46 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hclgevf_get_port_base_vlan_filter_state\00", [56 x i8] zeroinitializer }, align 32
@hclgevf_get_port_base_vlan_filter_state._entry_ptr = internal global ptr @hclgevf_get_port_base_vlan_filter_state._entry, section ".printk_index", align 4
@hclgevf_get_queue_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 240, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VF request to get tqp info from PF failed %d\00", [51 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclgevf_get_queue_info\00", [41 x i8] zeroinitializer }, align 32
@hclgevf_get_queue_info._entry_ptr = internal global ptr @hclgevf_get_queue_info._entry, section ".printk_index", align 4
@hclgevf_get_queue_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 270, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VF request to get tqp depth info from PF failed %d\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclgevf_get_queue_depth\00", [40 x i8] zeroinitializer }, align 32
@hclgevf_get_queue_depth._entry_ptr = internal global ptr @hclgevf_get_queue_depth._entry, section ".printk_index", align 4
@hclgevf_get_pf_media_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 312, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VF request to get the pf port media type failed %d\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclgevf_get_pf_media_type\00", [38 x i8] zeroinitializer }, align 32
@hclgevf_get_pf_media_type._entry_ptr = internal global ptr @hclgevf_get_pf_media_type._entry, section ".printk_index", align 4
@hclgevf_set_handle_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 471, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VF knic setup failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hclgevf_set_handle_info\00", [40 x i8] zeroinitializer }, align 32
@hclgevf_set_handle_info._entry_ptr = internal global ptr @hclgevf_set_handle_info._entry, section ".printk_index", align 4
@hclgevf_config_gro._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 2137, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"VF GRO hardware config cmd failed, ret = %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclgevf_config_gro\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_config_gro._entry_ptr = internal global ptr @hclgevf_config_gro._entry, section ".printk_index", align 4
@hclgevf_init_vlan_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 2183, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to enable rx vlan offload, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclgevf_init_vlan_config\00", [39 x i8] zeroinitializer }, align 32
@hclgevf_init_vlan_config._entry_ptr = internal global ptr @hclgevf_init_vlan_config._entry, section ".printk_index", align 4
@hclgevf_free_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vector(vector_id %d) has been freed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclgevf_free_vector\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_free_vector._entry_ptr = internal global ptr @hclgevf_free_vector._entry, section ".printk_index", align 4
@hclgevf_reset_prepare_general._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 1727, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"failed to prepare to reset, ret=%d, reset_pending:0x%lx, retry_cnt:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hclgevf_reset_prepare_general\00", [34 x i8] zeroinitializer }, align 32
@hclgevf_reset_prepare_general._entry_ptr = internal global ptr @hclgevf_reset_prepare_general._entry, section ".printk_index", align 4
@hclgevf_reset_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 1750, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fail to rebuild, ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclgevf_reset_done\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_reset_done._entry_ptr = internal global ptr @hclgevf_reset_done._entry, section ".printk_index", align 4
@hclgevf_info_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 2405, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VF info begin:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclgevf_info_show\00", [46 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr = internal global ptr @hclgevf_info_show._entry, section ".printk_index", align 4
@hclgevf_info_show._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 2407, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Task queue pairs numbers: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr.190 = internal global ptr @hclgevf_info_show._entry.188, section ".printk_index", align 4
@hclgevf_info_show._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.187, ptr @.str.2, i32 2408, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Desc num per TX queue: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr.193 = internal global ptr @hclgevf_info_show._entry.191, section ".printk_index", align 4
@hclgevf_info_show._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.187, ptr @.str.2, i32 2409, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Desc num per RX queue: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr.196 = internal global ptr @hclgevf_info_show._entry.194, section ".printk_index", align 4
@hclgevf_info_show._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.187, ptr @.str.2, i32 2410, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Numbers of vports: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr.199 = internal global ptr @hclgevf_info_show._entry.197, section ".printk_index", align 4
@hclgevf_info_show._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.187, ptr @.str.2, i32 2411, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW tc map: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr.202 = internal global ptr @hclgevf_info_show._entry.200, section ".printk_index", align 4
@hclgevf_info_show._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.187, ptr @.str.2, i32 2413, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PF media type of this VF: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr.205 = internal global ptr @hclgevf_info_show._entry.203, section ".printk_index", align 4
@hclgevf_info_show._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.187, ptr @.str.2, i32 2415, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VF info end.\0A\00", [18 x i8] zeroinitializer }, align 32
@hclgevf_info_show._entry_ptr.208 = internal global ptr @hclgevf_info_show._entry.206, section ".printk_index", align 4
@hclgevf_client_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 2275, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s failed %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclgevf_client_stop\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_client_stop._entry_ptr = internal global ptr @hclgevf_client_stop._entry, section ".printk_index", align 4
@hclgevf_cmd_set_promisc_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.2, i32 794, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Set promisc mode fail, status is %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hclgevf_cmd_set_promisc_mode\00", [35 x i8] zeroinitializer }, align 32
@hclgevf_cmd_set_promisc_mode._entry_ptr = internal global ptr @hclgevf_cmd_set_promisc_mode._entry, section ".printk_index", align 4
@hclgevf_get_host_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.2, i32 876, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fail to get VF MAC from host %d\00", [32 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclgevf_get_host_mac_addr\00", [38 x i8] zeroinitializer }, align 32
@hclgevf_get_host_mac_addr._entry_ptr = internal global ptr @hclgevf_get_host_mac_addr._entry, section ".printk_index", align 4
@hclgevf_update_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.2, i32 134, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"VF update of TQPS stats fail, status = %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclgevf_update_stats\00", [43 x i8] zeroinitializer }, align 32
@hclgevf_update_stats._entry_ptr = internal global ptr @hclgevf_update_stats._entry, section ".printk_index", align 4
@cmdq_reg_addr_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 159744, i32 159748, i32 159752, i32 159760, i32 159764, i32 159768, i32 159772, i32 159776, i32 159780, i32 159784, i32 160000, i32 160004, i32 160008, i32 160012], [40 x i8] zeroinitializer }, align 32
@ring_reg_addr_list = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 524288, i32 524292, i32 524296, i32 524300, i32 524308, i32 524312, i32 524316, i32 524320, i32 524324, i32 524328, i32 524336, i32 524340, i32 524352, i32 524356, i32 524360, i32 524364, i32 524368, i32 524372, i32 524376, i32 524380, i32 524384, i32 524388, i32 524392, i32 524400, i32 524404, i32 524432], [56 x i8] zeroinitializer }, align 32
@hclgevf_get_rss_hash_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 554, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VF get rss hash key from PF failed, ret=%d\00", [53 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclgevf_get_rss_hash_key\00", [39 x i8] zeroinitializer }, align 32
@hclgevf_get_rss_hash_key._entry_ptr = internal global ptr @hclgevf_get_rss_hash_key._entry, section ".printk_index", align 4
@hclgevf_set_rss_tuple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.2, i32 634, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set rss tuple, ret = %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclgevf_set_rss_tuple\00", [42 x i8] zeroinitializer }, align 32
@hclgevf_set_rss_tuple._entry_ptr = internal global ptr @hclgevf_set_rss_tuple._entry, section ".printk_index", align 4
@hclgevf_put_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.2, i32 766, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"hclgevf_put_vector get vector index fail. ret =%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclgevf_put_vector\00", [45 x i8] zeroinitializer }, align 32
@hclgevf_put_vector._entry_ptr = internal global ptr @hclgevf_put_vector._entry, section ".printk_index", align 4
@hclgevf_map_ring_to_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.2, i32 722, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Get vector index fail. ret =%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclgevf_map_ring_to_vector\00", [37 x i8] zeroinitializer }, align 32
@hclgevf_map_ring_to_vector._entry_ptr = internal global ptr @hclgevf_map_ring_to_vector._entry, section ".printk_index", align 4
@hclgevf_bind_ring_to_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.2, i32 703, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Map TQP fail, status is %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclgevf_bind_ring_to_vector\00", [36 x i8] zeroinitializer }, align 32
@hclgevf_bind_ring_to_vector._entry_ptr = internal global ptr @hclgevf_bind_ring_to_vector._entry, section ".printk_index", align 4
@hclgevf_unmap_ring_from_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.227, ptr @.str.2, i32 743, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hclgevf_unmap_ring_from_vector\00", [33 x i8] zeroinitializer }, align 32
@hclgevf_unmap_ring_from_vector._entry_ptr = internal global ptr @hclgevf_unmap_ring_from_vector._entry, section ".printk_index", align 4
@hclgevf_unmap_ring_from_vector._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.227, ptr @.str.2, i32 752, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unmap ring from vector fail. vector=%d, ret =%d\0A\00", [47 x i8] zeroinitializer }, align 32
@hclgevf_unmap_ring_from_vector._entry_ptr.230 = internal global ptr @hclgevf_unmap_ring_from_vector._entry.228, section ".printk_index", align 4
@hclgevf_reset_tqp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.2, i32 1328, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable tqp, ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclgevf_reset_tqp\00", [46 x i8] zeroinitializer }, align 32
@hclgevf_reset_tqp._entry_ptr = internal global ptr @hclgevf_reset_tqp._entry, section ".printk_index", align 4
@hclgevf_reset_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 1678, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"received reset request from VF enet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclgevf_reset_event\00", [44 x i8] zeroinitializer }, align 32
@hclgevf_reset_event._entry_ptr = internal global ptr @hclgevf_reset_event._entry, section ".printk_index", align 4
@hclgevf_set_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 3151, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set rss indir table fail, ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclgevf_set_channels\00", [43 x i8] zeroinitializer }, align 32
@hclgevf_set_channels._entry_ptr = internal global ptr @hclgevf_set_channels._entry, section ".printk_index", align 4
@hclgevf_set_channels._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.236, ptr @.str.2, i32 3160, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Channels changed, rss_size from %u to %u, tqps from %u to %u\00", [35 x i8] zeroinitializer }, align 32
@hclgevf_set_channels._entry_ptr.239 = internal global ptr @hclgevf_set_channels._entry.237, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.242 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"hclgevf_wq\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 24, i32 33 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3334, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3452, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1376, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3428, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3430, i32 31 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3432, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [10 x i8] c"ae_algovf\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3421, i32 29 }
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"hclgevf_ops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3362, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"ae_algovf_pci_tbl\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 26, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3025, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3031, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2898, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2905, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2921, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2927, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2943, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2949, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2957, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2965, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2975, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2578, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2584, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2590, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2598, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2563, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2642, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2675, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2325, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2331, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2284, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2286, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2289, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1628, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1397, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1495, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1506, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1427, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1594, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1467, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2827, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2836, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2842, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2853, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2862, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2780, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2788, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1544, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1514, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1516, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1518, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1520, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1522, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1524, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1526, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1528, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1530, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1532, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1534, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1536, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1897, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 414, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1074, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant [47 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hnae3.h\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.689, i32 872, i32 55 }
@___asan_gen_.691 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 33, i32 31 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 34, i32 28 }
@___asan_gen_.698 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 35, i32 39 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2374, i32 55 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2379, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1982, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2017, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 184, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 212, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 238, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 268, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 310, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 470, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2136, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2182, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 478, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1725, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1749, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2405, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2407, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2408, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2409, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2410, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2411, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2412, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2415, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2274, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 793, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 875, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 132, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant [19 x i8] c"cmdq_reg_addr_list\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 36, i32 18 }
@___asan_gen_.916 = private unnamed_addr constant [19 x i8] c"ring_reg_addr_list\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 55, i32 18 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 552, i32 4 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 633, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 764, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 721, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 701, i32 5 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 742, i32 3 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 749, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1327, i32 3 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1678, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3150, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1007 = private constant [61 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 3157, i32 3 }
@llvm.compiler.used = appending global [354 x ptr] [ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_description389, ptr @__UNIQUE_ID_file386, ptr @__UNIQUE_ID_license387, ptr @__UNIQUE_ID_version390, ptr @__exitcall_hclgevf_exit, ptr @__initcall__kmod_hclgevf__385_3446_hclgevf_init6, ptr @__modver_attr, ptr @hclgevf_bind_ring_to_vector._entry, ptr @hclgevf_bind_ring_to_vector._entry_ptr, ptr @hclgevf_check_evt_cause._entry, ptr @hclgevf_check_evt_cause._entry.161, ptr @hclgevf_check_evt_cause._entry_ptr, ptr @hclgevf_check_evt_cause._entry_ptr.163, ptr @hclgevf_client_stop._entry, ptr @hclgevf_client_stop._entry_ptr, ptr @hclgevf_cmd_set_promisc_mode._entry, ptr @hclgevf_cmd_set_promisc_mode._entry_ptr, ptr @hclgevf_config_gro._entry, ptr @hclgevf_config_gro._entry_ptr, ptr @hclgevf_config_mac_list._entry, ptr @hclgevf_config_mac_list._entry_ptr, ptr @hclgevf_dev_mem_map._entry, ptr @hclgevf_dev_mem_map._entry_ptr, ptr @hclgevf_dump_rst_info._entry, ptr @hclgevf_dump_rst_info._entry.114, ptr @hclgevf_dump_rst_info._entry.117, ptr @hclgevf_dump_rst_info._entry.120, ptr @hclgevf_dump_rst_info._entry.123, ptr @hclgevf_dump_rst_info._entry.126, ptr @hclgevf_dump_rst_info._entry.129, ptr @hclgevf_dump_rst_info._entry.132, ptr @hclgevf_dump_rst_info._entry.135, ptr @hclgevf_dump_rst_info._entry.138, ptr @hclgevf_dump_rst_info._entry.141, ptr @hclgevf_dump_rst_info._entry.144, ptr @hclgevf_dump_rst_info._entry_ptr, ptr @hclgevf_dump_rst_info._entry_ptr.116, ptr @hclgevf_dump_rst_info._entry_ptr.119, ptr @hclgevf_dump_rst_info._entry_ptr.122, ptr @hclgevf_dump_rst_info._entry_ptr.125, ptr @hclgevf_dump_rst_info._entry_ptr.128, ptr @hclgevf_dump_rst_info._entry_ptr.131, ptr @hclgevf_dump_rst_info._entry_ptr.134, ptr @hclgevf_dump_rst_info._entry_ptr.137, ptr @hclgevf_dump_rst_info._entry_ptr.140, ptr @hclgevf_dump_rst_info._entry_ptr.143, ptr @hclgevf_dump_rst_info._entry_ptr.146, ptr @hclgevf_free_vector._entry, ptr @hclgevf_free_vector._entry_ptr, ptr @hclgevf_get_basic_info._entry, ptr @hclgevf_get_basic_info._entry_ptr, ptr @hclgevf_get_host_mac_addr._entry, ptr @hclgevf_get_host_mac_addr._entry_ptr, ptr @hclgevf_get_pf_media_type._entry, ptr @hclgevf_get_pf_media_type._entry_ptr, ptr @hclgevf_get_port_base_vlan_filter_state._entry, ptr @hclgevf_get_port_base_vlan_filter_state._entry_ptr, ptr @hclgevf_get_queue_depth._entry, ptr @hclgevf_get_queue_depth._entry_ptr, ptr @hclgevf_get_queue_info._entry, ptr @hclgevf_get_queue_info._entry_ptr, ptr @hclgevf_get_rss_hash_key._entry, ptr @hclgevf_get_rss_hash_key._entry_ptr, ptr @hclgevf_info_show._entry, ptr @hclgevf_info_show._entry.188, ptr @hclgevf_info_show._entry.191, ptr @hclgevf_info_show._entry.194, ptr @hclgevf_info_show._entry.197, ptr @hclgevf_info_show._entry.200, ptr @hclgevf_info_show._entry.203, ptr @hclgevf_info_show._entry.206, ptr @hclgevf_info_show._entry_ptr, ptr @hclgevf_info_show._entry_ptr.190, ptr @hclgevf_info_show._entry_ptr.193, ptr @hclgevf_info_show._entry_ptr.196, ptr @hclgevf_info_show._entry_ptr.199, ptr @hclgevf_info_show._entry_ptr.202, ptr @hclgevf_info_show._entry_ptr.205, ptr @hclgevf_info_show._entry_ptr.208, ptr @hclgevf_init._entry, ptr @hclgevf_init._entry.14, ptr @hclgevf_init._entry_ptr, ptr @hclgevf_init._entry_ptr.16, ptr @hclgevf_init_ae_dev._entry, ptr @hclgevf_init_ae_dev._entry.19, ptr @hclgevf_init_ae_dev._entry_ptr, ptr @hclgevf_init_ae_dev._entry_ptr.21, ptr @hclgevf_init_hdev._entry, ptr @hclgevf_init_hdev._entry.24, ptr @hclgevf_init_hdev._entry.27, ptr @hclgevf_init_hdev._entry.30, ptr @hclgevf_init_hdev._entry.33, ptr @hclgevf_init_hdev._entry.36, ptr @hclgevf_init_hdev._entry.39, ptr @hclgevf_init_hdev._entry.42, ptr @hclgevf_init_hdev._entry.45, ptr @hclgevf_init_hdev._entry_ptr, ptr @hclgevf_init_hdev._entry_ptr.26, ptr @hclgevf_init_hdev._entry_ptr.29, ptr @hclgevf_init_hdev._entry_ptr.32, ptr @hclgevf_init_hdev._entry_ptr.35, ptr @hclgevf_init_hdev._entry_ptr.38, ptr @hclgevf_init_hdev._entry_ptr.41, ptr @hclgevf_init_hdev._entry_ptr.44, ptr @hclgevf_init_hdev._entry_ptr.48, ptr @hclgevf_init_msi._entry, ptr @hclgevf_init_msi._entry.69, ptr @hclgevf_init_msi._entry_ptr, ptr @hclgevf_init_msi._entry_ptr.71, ptr @hclgevf_init_vlan_config._entry, ptr @hclgevf_init_vlan_config._entry_ptr, ptr @hclgevf_keep_alive._entry, ptr @hclgevf_keep_alive._entry_ptr, ptr @hclgevf_map_ring_to_vector._entry, ptr @hclgevf_map_ring_to_vector._entry_ptr, ptr @hclgevf_misc_irq_init._entry, ptr @hclgevf_misc_irq_init._entry_ptr, ptr @hclgevf_notify_client._entry, ptr @hclgevf_notify_client._entry_ptr, ptr @hclgevf_notify_roce_client._entry, ptr @hclgevf_notify_roce_client._entry_ptr, ptr @hclgevf_pci_init._entry, ptr @hclgevf_pci_init._entry.51, ptr @hclgevf_pci_init._entry.54, ptr @hclgevf_pci_init._entry.57, ptr @hclgevf_pci_init._entry_ptr, ptr @hclgevf_pci_init._entry_ptr.53, ptr @hclgevf_pci_init._entry_ptr.56, ptr @hclgevf_pci_init._entry_ptr.59, ptr @hclgevf_pci_reset._entry, ptr @hclgevf_pci_reset._entry.107, ptr @hclgevf_pci_reset._entry_ptr, ptr @hclgevf_pci_reset._entry_ptr.109, ptr @hclgevf_put_vector._entry, ptr @hclgevf_put_vector._entry_ptr, ptr @hclgevf_query_vf_resource._entry, ptr @hclgevf_query_vf_resource._entry.64, ptr @hclgevf_query_vf_resource._entry_ptr, ptr @hclgevf_query_vf_resource._entry_ptr.66, ptr @hclgevf_request_link_info._entry, ptr @hclgevf_request_link_info._entry_ptr, ptr @hclgevf_reset._entry, ptr @hclgevf_reset._entry_ptr, ptr @hclgevf_reset_done._entry, ptr @hclgevf_reset_done._entry_ptr, ptr @hclgevf_reset_err_handle._entry, ptr @hclgevf_reset_err_handle._entry_ptr, ptr @hclgevf_reset_event._entry, ptr @hclgevf_reset_event._entry_ptr, ptr @hclgevf_reset_hdev._entry, ptr @hclgevf_reset_hdev._entry.101, ptr @hclgevf_reset_hdev._entry.103, ptr @hclgevf_reset_hdev._entry.96, ptr @hclgevf_reset_hdev._entry.99, ptr @hclgevf_reset_hdev._entry_ptr, ptr @hclgevf_reset_hdev._entry_ptr.100, ptr @hclgevf_reset_hdev._entry_ptr.102, ptr @hclgevf_reset_hdev._entry_ptr.105, ptr @hclgevf_reset_hdev._entry_ptr.98, ptr @hclgevf_reset_prepare_general._entry, ptr @hclgevf_reset_prepare_general._entry_ptr, ptr @hclgevf_reset_prepare_wait._entry, ptr @hclgevf_reset_prepare_wait._entry.85, ptr @hclgevf_reset_prepare_wait._entry_ptr, ptr @hclgevf_reset_prepare_wait._entry_ptr.87, ptr @hclgevf_reset_rebuild._entry, ptr @hclgevf_reset_rebuild._entry_ptr, ptr @hclgevf_reset_stack._entry, ptr @hclgevf_reset_stack._entry_ptr, ptr @hclgevf_reset_tqp._entry, ptr @hclgevf_reset_tqp._entry_ptr, ptr @hclgevf_reset_wait._entry, ptr @hclgevf_reset_wait._entry_ptr, ptr @hclgevf_set_channels._entry, ptr @hclgevf_set_channels._entry.237, ptr @hclgevf_set_channels._entry_ptr, ptr @hclgevf_set_channels._entry_ptr.239, ptr @hclgevf_set_handle_info._entry, ptr @hclgevf_set_handle_info._entry_ptr, ptr @hclgevf_set_rss_tuple._entry, ptr @hclgevf_set_rss_tuple._entry_ptr, ptr @hclgevf_unmap_ring_from_vector._entry, ptr @hclgevf_unmap_ring_from_vector._entry.228, ptr @hclgevf_unmap_ring_from_vector._entry_ptr, ptr @hclgevf_unmap_ring_from_vector._entry_ptr.230, ptr @hclgevf_update_port_base_vlan_info._entry, ptr @hclgevf_update_port_base_vlan_info._entry_ptr, ptr @hclgevf_update_stats._entry, ptr @hclgevf_update_stats._entry_ptr, ptr @hclgevf_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @ae_algovf, ptr @hclgevf_ops, ptr @ae_algovf_pci_tbl, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @hclgevf_state_init.__key, ptr @.str.72, ptr @hclgevf_state_init.__key.73, ptr @.str.74, ptr @hclgevf_state_init.__key.75, ptr @.str.76, ptr @hclgevf_state_init.__key.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @sema_init.__key, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @cmdq_reg_addr_list, ptr @ring_reg_addr_list, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.238], section "llvm.metadata"
@0 = internal global [255 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_update_port_base_vlan_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_notify_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ae_algovf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_ops to i32), i32 436, i32 544, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ae_algovf_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_ae_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_ae_dev._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_hdev._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_pci_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_pci_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_pci_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dev_mem_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_query_vf_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_query_vf_resource._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_msi._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_state_init.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_state_init.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_state_init.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_notify_roce_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_prepare_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_prepare_wait._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_rebuild._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_stack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_hdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_hdev._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_hdev._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_hdev._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_hdev._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_pci_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_pci_reset._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_err_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_dump_rst_info._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_keep_alive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_request_link_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_config_mac_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_misc_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_check_evt_cause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_check_evt_cause._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_basic_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_port_base_vlan_filter_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_queue_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_queue_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_pf_media_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_set_handle_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_config_gro._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_init_vlan_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_free_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_prepare_general._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_info_show._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_client_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_cmd_set_promisc_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_host_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_update_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_reg_addr_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_reg_addr_list to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_get_rss_hash_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_set_rss_tuple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_put_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_map_ring_to_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_bind_ring_to_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_unmap_ring_from_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_unmap_ring_from_vector._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_tqp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_reset_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_set_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclgevf_set_channels._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclgevf_cmd_send(ptr noundef %hw, ptr noundef %desc, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef %desc, i32 noundef %num) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclgevf_arq_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %arq = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40
  %0 = ptrtoint ptr %arq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %arq, align 8
  %head = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tail, align 8
  %count = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #13
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclgevf_update_link_status(ptr noundef %hdev, i32 noundef %link_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %roce = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 44
  %nic = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %call = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic, align 8
  %roce_client = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 46
  %2 = ptrtoint ptr %roce_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_client, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool4.not, i32 %link_state, i32 0
  %link = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 2, i32 3
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %7)
  %cmp.not = icmp eq i32 %spec.select, %7
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %if.then5

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %link, align 8
  %ops = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %link_status_change = getelementptr inbounds %struct.hnae3_client_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %link_status_change to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link_status_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool9 = icmp ne i32 %spec.select, 0
  tail call void %12(ptr noundef %nic, i1 noundef zeroext %tobool9) #13
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.then5.if.end22_crit_edge, label %land.lhs.true

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then5
  %ops12 = getelementptr inbounds %struct.hnae3_client, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops12, align 4
  %link_status_change13 = getelementptr inbounds %struct.hnae3_client_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %link_status_change13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_status_change13, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %land.lhs.true.if.end22_crit_edge, label %if.then15

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %16(ptr noundef %roce, i1 noundef zeroext %tobool9) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %land.lhs.true.if.end22_crit_edge, %if.then5.if.end22_crit_edge, %if.end.if.end22_crit_edge
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %state) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclgevf_reset_task_schedule(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  %6 = load ptr, ptr @hclgevf_wq, align 4
  %service_task = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %service_task, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclgevf_mbx_task_schedule(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %3 = load ptr, ptr @hclgevf_wq, align 4
  %service_task = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %service_task, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hclgevf_update_speed_duplex(ptr nocapture noundef writeonly %hdev, i32 noundef %speed, i8 noundef zeroext %duplex) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %speed1 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 2, i32 5
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %speed, ptr %speed1, align 8
  %duplex4 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 2, i32 4
  %1 = ptrtoint ptr %duplex4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %duplex, ptr %duplex4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclgevf_update_port_base_vlan_info(ptr noundef %hdev, i16 noundef zeroext %state, ptr nocapture noundef readonly %port_base_vlan_info, i8 noundef zeroext %data_size) local_unnamed_addr #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %0 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %send_msg, i32 2
  %3 = call ptr @memset(ptr %2, i32 255, i32 14)
  tail call void @rtnl_lock() #13
  %state2 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state2, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state2, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #16
  tail call void @rtnl_unlock() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %nic_client.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 45
  %12 = ptrtoint ptr %nic_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nic_client.i, align 8
  %nic.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43
  %14 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state2, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %tobool1.not.i = icmp eq ptr %13, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.hnae3_client, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %reset_notify.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %reset_notify.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset_notify.i, align 4
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %if.end.i.if.then8_crit_edge, label %if.end4.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.end4.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 %20(ptr noundef %nic.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end4.i.if.end9_crit_edge, label %do.end.i

if.end4.i.if.end9_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %call7.i) #16
  br label %if.then8

if.then8:                                         ; preds = %do.end.i, %if.end.i.if.then8_crit_edge
  tail call void @rtnl_unlock() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %23 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %send_msg, align 1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %0, align 1
  %conv = zext i8 %data_size to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %data_size)
  %25 = icmp ugt i8 %data_size, 13
  %26 = sub nsw i32 14, %conv
  %27 = select i1 %25, i32 0, i32 %26
  %28 = getelementptr i8, ptr %1, i32 %conv
  %29 = call ptr @memset(ptr %28, i32 0, i32 %27)
  %30 = call ptr @memcpy(ptr %1, ptr %port_base_vlan_info, i32 %conv)
  %call10 = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %state)
  %cmp = icmp ne i16 %state, 0
  %port_base_vlan_state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 7
  %. = zext i1 %cmp to i32
  %31 = ptrtoint ptr %port_base_vlan_state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %., ptr %port_base_vlan_state, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %if.end9.if.end19_crit_edge
  %32 = ptrtoint ptr %nic_client.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nic_client.i, align 8
  %34 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state2, align 4
  %36 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i38 = icmp eq i32 %36, 0
  %tobool1.not.i39 = icmp eq ptr %33, null
  %or.cond.i40 = select i1 %tobool.not.i38, i1 true, i1 %tobool1.not.i39
  br i1 %or.cond.i40, label %if.end19.hclgevf_notify_client.exit51_crit_edge, label %if.end.i44

if.end19.hclgevf_notify_client.exit51_crit_edge:  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_notify_client.exit51

if.end.i44:                                       ; preds = %if.end19
  %ops.i41 = getelementptr inbounds %struct.hnae3_client, ptr %33, i32 0, i32 3
  %37 = ptrtoint ptr %ops.i41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i41, align 4
  %reset_notify.i42 = getelementptr inbounds %struct.hnae3_client_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %reset_notify.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reset_notify.i42, align 4
  %tobool2.not.i43 = icmp eq ptr %40, null
  br i1 %tobool2.not.i43, label %if.end.i44.hclgevf_notify_client.exit51_crit_edge, label %if.end4.i47

if.end.i44.hclgevf_notify_client.exit51_crit_edge: ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_notify_client.exit51

if.end4.i47:                                      ; preds = %if.end.i44
  %call7.i45 = call i32 %40(ptr noundef %nic.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i45)
  %tobool8.not.i46 = icmp eq i32 %call7.i45, 0
  br i1 %tobool8.not.i46, label %if.end4.i47.hclgevf_notify_client.exit51_crit_edge, label %do.end.i49

if.end4.i47.hclgevf_notify_client.exit51_crit_edge: ; preds = %if.end4.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_notify_client.exit51

do.end.i49:                                       ; preds = %if.end4.i47
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev, align 8
  %dev.i48 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i48, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %call7.i45) #16
  br label %hclgevf_notify_client.exit51

hclgevf_notify_client.exit51:                     ; preds = %do.end.i49, %if.end4.i47.hclgevf_notify_client.exit51_crit_edge, %if.end.i44.hclgevf_notify_client.exit51_crit_edge, %if.end19.hclgevf_notify_client.exit51_crit_edge
  call void @rtnl_unlock() #13
  br label %cleanup

cleanup:                                          ; preds = %hclgevf_notify_client.exit51, %if.then8, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclgevf_send_mbx_msg(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6) #16
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.6) #13
  store ptr %call1, ptr @hclgevf_wq, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hnae3_register_ae_algo(ptr noundef nonnull @ae_algovf) #13
  br label %return

return:                                           ; preds = %if.end, %do.end3
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hnae3_unregister_ae_algo(ptr noundef nonnull @ae_algovf) #13
  %0 = load ptr, ptr @hclgevf_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hnae3_register_ae_algo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_init_ae_dev(ptr noundef %ae_dev) #0 align 64 {
entry:
  %desc.i28 = alloca %struct.hclge_desc, align 4
  %desc.i = alloca [4 x %struct.hclge_desc], align 4
  %send_msg.i.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_dev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 18184, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call.i.i, align 8
  %ae_dev3.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %ae_dev3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ae_dev, ptr %ae_dev3.i, align 4
  %priv.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %priv.i, align 4
  %call.i.i17 = tail call i32 @pci_enable_device(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i.i = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49) #16
  br label %do.end7

if.end.i.i:                                       ; preds = %if.end
  %call.i.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end10.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.52) #16
  br label %err_disable_device.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef -1) #13
  %call11.i.i = tail call i32 @pci_request_regions(ptr noundef %1, ptr noundef nonnull @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end18.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef %call11.i.i) #16
  br label %err_disable_device.i.i

if.end18.i.i:                                     ; preds = %if.end10.i.i
  tail call void @pci_set_master(ptr noundef %1) #13
  %hw19.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 2
  %call20.i.i = tail call ptr @pci_iomap(ptr noundef %1, i32 noundef 2, i32 noundef 0) #13
  %5 = ptrtoint ptr %hw19.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20.i.i, ptr %hw19.i.i, align 8
  %tobool24.not.i.i = icmp eq ptr %call20.i.i, null
  br i1 %tobool24.not.i.i, label %do.end28.i.i, label %if.end30.i.i

do.end28.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.58) #16
  br label %err_clr_master.i.i

if.end30.i.i:                                     ; preds = %if.end18.i.i
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i.i, align 8
  %call.i62.i.i = tail call i32 @pci_select_bars(ptr noundef %7, i32 noundef 512) #13
  %and.i.i.i = and i32 %call.i62.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end30.i.i.if.end.i18_crit_edge, label %if.end.i.i.i

if.end30.i.i.if.end.i18_crit_edge:                ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i18

if.end.i.i.i:                                     ; preds = %if.end30.i.i
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %arrayidx.i.i.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 4
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 8
  %end.i.i.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 4, i32 1
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i63.i.i = icmp eq i32 %11, 0
  %sub.i.i.i = sub i32 1, %9
  %add.i.i.i = add i32 %sub.i.i.i, %11
  %cond.i.i.i = select i1 %cmp.i63.i.i, i32 0, i32 %add.i.i.i
  %call11.i.i.i = tail call ptr @devm_ioremap_wc(ptr noundef %dev.i.i.i, i32 noundef %9, i32 noundef %cond.i.i.i) #13
  %mem_base.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %mem_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11.i.i.i, ptr %mem_base.i.i.i, align 4
  %tobool15.not.i.i.i = icmp eq ptr %call11.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %err_unmap_io_base.i.i, label %if.end.i.i.i.if.end.i18_crit_edge

if.end.i.i.i.if.end.i18_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i18

err_unmap_io_base.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.60) #16
  %13 = ptrtoint ptr %hw19.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw19.i.i, align 8
  tail call void @pci_iounmap(ptr noundef %1, ptr noundef %14) #13
  br label %err_clr_master.i.i

err_clr_master.i.i:                               ; preds = %err_unmap_io_base.i.i, %do.end28.i.i
  %ret.0.i.i = phi i32 [ -14, %err_unmap_io_base.i.i ], [ -12, %do.end28.i.i ]
  tail call void @pci_clear_master(ptr noundef %1) #13
  tail call void @pci_release_regions(ptr noundef %1) #13
  br label %err_disable_device.i.i

err_disable_device.i.i:                           ; preds = %err_clr_master.i.i, %do.end16.i.i, %do.end8.i.i
  %ret.1.i.i = phi i32 [ %call.i.i.i, %do.end8.i.i ], [ %call11.i.i, %do.end16.i.i ], [ %ret.0.i.i, %err_clr_master.i.i ]
  tail call void @pci_disable_device(ptr noundef %1) #13
  br label %do.end7

if.end.i18:                                       ; preds = %if.end.i.i.i.if.end.i18_crit_edge, %if.end30.i.i.if.end.i18_crit_edge
  %call2.i = tail call i32 @hclgevf_devlink_init(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i18.err_devlink_init.i_crit_edge

if.end.i18.err_devlink_init.i_crit_edge:          ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_devlink_init.i

if.end5.i:                                        ; preds = %if.end.i18
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i.i, align 8
  %call8.i = tail call i32 @hclge_comm_cmd_queue_init(ptr noundef %16, ptr noundef %hw19.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end5.i.err_cmd_queue_init.i_crit_edge

if.end5.i.err_cmd_queue_init.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_cmd_queue_init.i

if.end11.i:                                       ; preds = %if.end5.i
  %lock.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 2, i32 0, i32 2, i32 1, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  %arq.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 40
  %17 = ptrtoint ptr %arq.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %arq.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 40, i32 1
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 40, i32 2
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tail.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 40, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %count.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  %21 = ptrtoint ptr %ae_dev3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ae_dev3.i, align 4
  %fw_version.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 16
  %reset_pending.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %reset_pending.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reset_pending.i, align 8
  %call14.i = tail call i32 @hclge_comm_cmd_init(ptr noundef %22, ptr noundef %hw19.i.i, ptr noundef %fw_version.i, i1 noundef zeroext false, i32 noundef %24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end11.i.err_cmd_init.i_crit_edge

if.end11.i.err_cmd_init.i_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_cmd_init.i

if.end17.i:                                       ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i28) #13
  %25 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i28, i32 0, i32 4
  %26 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i28, i32 0, i32 4, i32 2
  %27 = call ptr @memset(ptr %desc.i28, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i28, i32 noundef 36, i1 noundef zeroext true) #13
  %call.i.i30 = call i32 @hclge_comm_cmd_send(ptr noundef %hw19.i.i, ptr noundef nonnull %desc.i28, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool.not.i31 = icmp eq i32 %call.i.i30, 0
  br i1 %tobool.not.i31, label %if.end.i36, label %do.end.i33

do.end.i33:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i.i, align 8
  %dev.i32 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32, ptr noundef nonnull @.str.62, i32 noundef %call.i.i30) #16
  br label %hclgevf_query_vf_resource.exit.thread

if.end.i36:                                       ; preds = %if.end17.i
  %30 = ptrtoint ptr %ae_dev3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ae_dev3.i, align 4
  %flag.i35 = getelementptr inbounds %struct.hnae3_ae_dev, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flag.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flag.i35, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool1.not.i = icmp eq i32 %34, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #15
  %msixcap_localid_ba_rocee.i = getelementptr inbounds %struct.hclgevf_query_res_cmd, ptr %25, i32 0, i32 3
  %35 = ptrtoint ptr %msixcap_localid_ba_rocee.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %msixcap_localid_ba_rocee.i, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36) #13
  %roce_base_msix_offset.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 33
  %38 = ptrtoint ptr %roce_base_msix_offset.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %roce_base_msix_offset.i, align 2
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %26, align 4
  %41 = lshr i16 %40, 8
  %num_roce_msix.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 32
  %42 = ptrtoint ptr %num_roce_msix.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %num_roce_msix.i, align 8
  %add.i = add i16 %41, %37
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %26, align 4
  %45 = lshr i16 %44, 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then2.i
  %add.sink.i = phi i16 [ %45, %if.else.i ], [ %add.i, %if.then2.i ]
  %.sink.i = phi i16 [ %45, %if.else.i ], [ %41, %if.then2.i ]
  %46 = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 28
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %add.sink.i, ptr %46, align 8
  %48 = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 31
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %.sink.i, ptr %48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.sink.i)
  %cmp.i37 = icmp ult i16 %.sink.i, 2
  br i1 %cmp.i37, label %do.end31.i38, label %if.end21.i

do.end31.i38:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv26.i = zext i16 %.sink.i to i32
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i.i, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.65, i32 noundef %conv26.i) #16
  br label %hclgevf_query_vf_resource.exit.thread

hclgevf_query_vf_resource.exit.thread:            ; preds = %do.end31.i38, %do.end.i33
  %retval.0.i39.ph = phi i32 [ -22, %do.end31.i38 ], [ %call.i.i30, %do.end.i33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i28) #13
  br label %err_cmd_init.i

if.end21.i:                                       ; preds = %if.end24.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i28) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %desc.i) #13
  %52 = call ptr @memset(ptr %desc.i, i32 255, i32 128)
  %53 = ptrtoint ptr %ae_dev3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ae_dev3.i, align 4
  %dev_version.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %dev_version.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dev_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %56)
  %cmp.i = icmp ult i32 %56, 48
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end21.i
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 80, i1 noundef zeroext true) #13
  %flag.i = getelementptr inbounds [4 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flag.i, align 2
  %59 = or i16 %58, 1024
  store i16 %59, ptr %flag.i, align 2
  %arrayidx.1.i = getelementptr inbounds [4 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx.1.i, i32 noundef 80, i1 noundef zeroext true) #13
  %flag.1.i = getelementptr inbounds [4 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %flag.1.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flag.1.i, align 2
  %62 = or i16 %61, 1024
  store i16 %62, ptr %flag.1.i, align 2
  %arrayidx.2.i = getelementptr inbounds [4 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 2
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx.2.i, i32 noundef 80, i1 noundef zeroext true) #13
  %flag.2.i = getelementptr inbounds [4 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %flag.2.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %flag.2.i, align 2
  %65 = or i16 %64, 1024
  store i16 %65, ptr %flag.2.i, align 2
  %arrayidx4.i = getelementptr inbounds [4 x %struct.hclge_desc], ptr %desc.i, i32 0, i32 3
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef %arrayidx4.i, i32 noundef 80, i1 noundef zeroext true) #13
  %call.i.i21 = call i32 @hclge_comm_cmd_send(ptr noundef %hw19.i.i, ptr noundef nonnull %desc.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %tobool.not.i22 = icmp eq i32 %call.i.i21, 0
  br i1 %tobool.not.i22, label %if.end6.i, label %do.end.i

if.then.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i.i, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %max_non_tso_bd_num.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %69, i32 0, i32 5, i32 7
  %70 = ptrtoint ptr %max_non_tso_bd_num.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 8, ptr %max_non_tso_bd_num.i.i, align 4
  %rss_ind_tbl_size.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %69, i32 0, i32 5, i32 3
  %71 = ptrtoint ptr %rss_ind_tbl_size.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 512, ptr %rss_ind_tbl_size.i.i, align 4
  %rss_key_size.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %69, i32 0, i32 5, i32 4
  %72 = ptrtoint ptr %rss_key_size.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 40, ptr %rss_key_size.i.i, align 2
  %max_int_gl.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %69, i32 0, i32 5, i32 6
  %73 = ptrtoint ptr %max_int_gl.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 8160, ptr %max_int_gl.i.i, align 2
  %max_frm_size.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %69, i32 0, i32 5, i32 8
  br label %cleanup.sink.split.i

if.end6.i:                                        ; preds = %for.body.preheader.i
  %74 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i.i, align 8
  %driver_data.i.i.i19.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44, i32 8
  %76 = ptrtoint ptr %driver_data.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i.i.i19.i, align 4
  %data.i.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %data2.i.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 1, i32 4
  %max_non_tso_bd_num.i20.i = getelementptr inbounds %struct.hclgevf_dev_specs_0_cmd, ptr %data.i.i, i32 0, i32 6
  %78 = ptrtoint ptr %max_non_tso_bd_num.i20.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %max_non_tso_bd_num.i20.i, align 2
  %max_non_tso_bd_num4.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %77, i32 0, i32 5, i32 7
  %80 = ptrtoint ptr %max_non_tso_bd_num4.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %max_non_tso_bd_num4.i.i, align 4
  %rss_ind_tbl_size.i21.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 3
  %81 = ptrtoint ptr %rss_ind_tbl_size.i21.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %rss_ind_tbl_size.i21.i, align 4
  %83 = call i16 @llvm.bswap.i16(i16 %82) #13
  %rss_ind_tbl_size6.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %77, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %rss_ind_tbl_size6.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %rss_ind_tbl_size6.i.i, align 4
  %int_ql_max.i.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4, i32 4
  %85 = ptrtoint ptr %int_ql_max.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %int_ql_max.i.i, align 4
  %87 = call i16 @llvm.bswap.i16(i16 %86) #13
  %int_ql_max8.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %77, i32 0, i32 5, i32 5
  %88 = ptrtoint ptr %int_ql_max8.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %int_ql_max8.i.i, align 4
  %rss_key_size.i22.i = getelementptr inbounds %struct.hclgevf_dev_specs_0_cmd, ptr %data.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %rss_key_size.i22.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %rss_key_size.i22.i, align 2
  %91 = call i16 @llvm.bswap.i16(i16 %90) #13
  %rss_key_size10.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %77, i32 0, i32 5, i32 4
  %92 = ptrtoint ptr %rss_key_size10.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %rss_key_size10.i.i, align 2
  %max_int_gl.i23.i = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 1, i32 4, i32 1
  %93 = ptrtoint ptr %max_int_gl.i23.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %max_int_gl.i23.i, align 4
  %95 = call i16 @llvm.bswap.i16(i16 %94) #13
  %max_int_gl12.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %77, i32 0, i32 5, i32 6
  %96 = ptrtoint ptr %max_int_gl12.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %max_int_gl12.i.i, align 2
  %97 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %data2.i.i, align 4
  %99 = call i16 @llvm.bswap.i16(i16 %98) #13
  %max_frm_size14.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %77, i32 0, i32 5, i32 8
  %100 = ptrtoint ptr %max_frm_size14.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %max_frm_size14.i.i, align 2
  %101 = ptrtoint ptr %ae_dev3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ae_dev3.i, align 4
  %max_non_tso_bd_num.i24.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %102, i32 0, i32 5, i32 7
  %103 = ptrtoint ptr %max_non_tso_bd_num.i24.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %max_non_tso_bd_num.i24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i.i23 = icmp eq i8 %104, 0
  br i1 %tobool.not.i.i23, label %if.then.i.i24, label %if.end6.i.if.end.i.i25_crit_edge

if.end6.i.if.end.i.i25_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i25

if.then.i.i24:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %max_non_tso_bd_num.i24.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 8, ptr %max_non_tso_bd_num.i24.i, align 4
  br label %if.end.i.i25

if.end.i.i25:                                     ; preds = %if.then.i.i24, %if.end6.i.if.end.i.i25_crit_edge
  %rss_ind_tbl_size.i25.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %102, i32 0, i32 5, i32 3
  %106 = ptrtoint ptr %rss_ind_tbl_size.i25.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %rss_ind_tbl_size.i25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool3.not.i.i = icmp eq i16 %107, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i25.if.end6.i.i_crit_edge

if.end.i.i25.if.end6.i.i_crit_edge:               ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %rss_ind_tbl_size.i25.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 512, ptr %rss_ind_tbl_size.i25.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i25.if.end6.i.i_crit_edge
  %rss_key_size.i26.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %102, i32 0, i32 5, i32 4
  %109 = ptrtoint ptr %rss_key_size.i26.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %rss_key_size.i26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool7.not.i.i = icmp eq i16 %110, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.end6.i.i.if.end10.i.i26_crit_edge

if.end6.i.i.if.end10.i.i26_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i26

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %rss_key_size.i26.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 40, ptr %rss_key_size.i26.i, align 2
  br label %if.end10.i.i26

if.end10.i.i26:                                   ; preds = %if.then8.i.i, %if.end6.i.i.if.end10.i.i26_crit_edge
  %max_int_gl.i27.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %102, i32 0, i32 5, i32 6
  %112 = ptrtoint ptr %max_int_gl.i27.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %max_int_gl.i27.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool11.not.i.i = icmp eq i16 %113, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end10.i.i26.if.end14.i.i_crit_edge

if.end10.i.i26.if.end14.i.i_crit_edge:            ; preds = %if.end10.i.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end10.i.i26
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %max_int_gl.i27.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 8160, ptr %max_int_gl.i27.i, align 2
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.end10.i.i26.if.end14.i.i_crit_edge
  %max_frm_size.i28.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %102, i32 0, i32 5, i32 8
  %115 = ptrtoint ptr %max_frm_size.i28.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %max_frm_size.i28.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool15.not.i.i = icmp eq i16 %116, 0
  br i1 %tobool15.not.i.i, label %if.end14.i.i.cleanup.sink.split.i_crit_edge, label %if.end14.i.i.if.end25.i_crit_edge

if.end14.i.i.if.end25.i_crit_edge:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.end14.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end14.i.i.cleanup.sink.split.i_crit_edge, %if.then.i
  %max_frm_size.i28.sink.i = phi ptr [ %max_frm_size.i.i, %if.then.i ], [ %max_frm_size.i28.i, %if.end14.i.i.cleanup.sink.split.i_crit_edge ]
  %117 = ptrtoint ptr %max_frm_size.i28.sink.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 9728, ptr %max_frm_size.i28.sink.i, align 2
  br label %if.end25.i

do.end.i:                                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %desc.i) #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %call.i.i21) #16
  br label %err_cmd_init.i

if.end25.i:                                       ; preds = %cleanup.sink.split.i, %if.end14.i.i.if.end25.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %desc.i) #13
  %call26.i = call fastcc i32 @hclgevf_init_msi(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end33.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %call26.i) #16
  br label %err_cmd_init.i

if.end33.i:                                       ; preds = %if.end25.i
  call fastcc void @hclgevf_state_init(ptr noundef nonnull %call.i.i) #13
  %reset_level.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 9
  %118 = ptrtoint ptr %reset_level.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %reset_level.i, align 4
  %reset_type.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 11
  %119 = ptrtoint ptr %reset_type.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 8, ptr %reset_type.i, align 4
  %call34.i = call fastcc i32 @hclgevf_misc_irq_init(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.err_misc_irq_init.i_crit_edge

if.end33.i.err_misc_irq_init.i_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_misc_irq_init.i

if.end37.i:                                       ; preds = %if.end33.i
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #13
  %call38.i = call fastcc i32 @hclgevf_configure(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end45.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i32 noundef %call38.i) #16
  br label %err_config.i

if.end45.i:                                       ; preds = %if.end37.i
  %call46.i = call fastcc i32 @hclgevf_alloc_tqps(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %do.end51.i

do.end51.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %call46.i) #16
  br label %err_config.i

if.end53.i:                                       ; preds = %if.end45.i
  %call54.i = call fastcc i32 @hclgevf_set_handle_info(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end53.i.err_config.i_crit_edge

if.end53.i.err_config.i_crit_edge:                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_config.i

if.end57.i:                                       ; preds = %if.end53.i
  %call58.i = call fastcc i32 @hclgevf_config_gro(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end57.i.err_config.i_crit_edge

if.end57.i.err_config.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_config.i

if.end61.i:                                       ; preds = %if.end57.i
  %nic.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 43
  %120 = ptrtoint ptr %ae_dev3.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ae_dev3.i, align 4
  %rss_cfg.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 4
  %call63.i = call i32 @hclge_comm_rss_init_cfg(ptr noundef %nic.i, ptr noundef %121, ptr noundef %rss_cfg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end70.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %call63.i) #16
  br label %err_config.i

if.end70.i:                                       ; preds = %if.end61.i
  %call71.i = call fastcc i32 @hclgevf_rss_init_hw(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end79.i, label %do.end76.i

do.end76.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i.i, align 8
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78.i, ptr noundef nonnull @.str.37, i32 noundef %call71.i) #16
  br label %err_config.i

if.end79.i:                                       ; preds = %if.end70.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i.i) #13
  %124 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i, i32 0, i32 1
  %125 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i, i32 0, i32 1, i32 0, i32 1
  %126 = call ptr @memset(ptr %125, i32 0, i32 14)
  %127 = ptrtoint ptr %send_msg.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 38, ptr %send_msg.i.i, align 1
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %124, align 1
  %call.i181.i = call i32 @hclgevf_send_mbx_msg(ptr noundef nonnull %call.i.i, ptr noundef nonnull %send_msg.i.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %tobool81.not.i = icmp eq i32 %call.i181.i, 0
  br i1 %tobool81.not.i, label %if.end87.i, label %do.end85.i

do.end85.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %call.i181.i) #16
  br label %err_config.i

if.end87.i:                                       ; preds = %if.end79.i
  %call88.i = call fastcc i32 @hclgevf_init_vlan_config(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %hclgevf_init_hdev.exit, label %do.end93.i

do.end93.i:                                       ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i.i, align 8
  %dev95.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95.i, ptr noundef nonnull @.str.43, i32 noundef %call88.i) #16
  br label %err_config.i

err_config.i:                                     ; preds = %do.end93.i, %do.end85.i, %do.end76.i, %do.end68.i, %if.end57.i.err_config.i_crit_edge, %if.end53.i.err_config.i_crit_edge, %do.end51.i, %do.end43.i
  %ret.0.i = phi i32 [ %call38.i, %do.end43.i ], [ %call46.i, %do.end51.i ], [ %call54.i, %if.end53.i.err_config.i_crit_edge ], [ %call58.i, %if.end57.i.err_config.i_crit_edge ], [ %call63.i, %do.end68.i ], [ %call71.i, %do.end76.i ], [ %call.i181.i, %do.end85.i ], [ %call88.i, %do.end93.i ]
  call fastcc void @hclgevf_misc_irq_uninit(ptr noundef nonnull %call.i.i) #13
  br label %err_misc_irq_init.i

err_misc_irq_init.i:                              ; preds = %err_config.i, %if.end33.i.err_misc_irq_init.i_crit_edge
  %ret.1.i = phi i32 [ %call34.i, %if.end33.i.err_misc_irq_init.i_crit_edge ], [ %ret.0.i, %err_config.i ]
  call fastcc void @hclgevf_state_uninit(ptr noundef nonnull %call.i.i) #13
  call fastcc void @hclgevf_uninit_msi(ptr noundef nonnull %call.i.i) #13
  br label %err_cmd_init.i

err_cmd_init.i:                                   ; preds = %err_misc_irq_init.i, %do.end31.i, %do.end.i, %hclgevf_query_vf_resource.exit.thread, %if.end11.i.err_cmd_init.i_crit_edge
  %ret.2.i = phi i32 [ %call14.i, %if.end11.i.err_cmd_init.i_crit_edge ], [ %call.i.i21, %do.end.i ], [ %call26.i, %do.end31.i ], [ %ret.1.i, %err_misc_irq_init.i ], [ %retval.0.i39.ph, %hclgevf_query_vf_resource.exit.thread ]
  %131 = ptrtoint ptr %ae_dev3.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ae_dev3.i, align 4
  call void @hclge_comm_cmd_uninit(ptr noundef %132, ptr noundef %hw19.i.i) #13
  br label %err_cmd_queue_init.i

err_cmd_queue_init.i:                             ; preds = %err_cmd_init.i, %if.end5.i.err_cmd_queue_init.i_crit_edge
  %ret.3.i = phi i32 [ %call8.i, %if.end5.i.err_cmd_queue_init.i_crit_edge ], [ %ret.2.i, %err_cmd_init.i ]
  call void @hclgevf_devlink_uninit(ptr noundef nonnull %call.i.i) #13
  br label %err_devlink_init.i

err_devlink_init.i:                               ; preds = %err_cmd_queue_init.i, %if.end.i18.err_devlink_init.i_crit_edge
  %ret.4.i = phi i32 [ %call2.i, %if.end.i18.err_devlink_init.i_crit_edge ], [ %ret.3.i, %err_cmd_queue_init.i ]
  %133 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call.i.i, align 8
  %mem_base.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 2, i32 0, i32 1
  %135 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mem_base.i.i, align 4
  %tobool.not.i182.i = icmp eq ptr %136, null
  br i1 %tobool.not.i182.i, label %err_devlink_init.i.hclgevf_pci_uninit.exit.i_crit_edge, label %if.then.i.i

err_devlink_init.i.hclgevf_pci_uninit.exit.i_crit_edge: ; preds = %err_devlink_init.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_pci_uninit.exit.i

if.then.i.i:                                      ; preds = %err_devlink_init.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  call void @devm_iounmap(ptr noundef %dev.i.i, ptr noundef nonnull %136) #13
  br label %hclgevf_pci_uninit.exit.i

hclgevf_pci_uninit.exit.i:                        ; preds = %if.then.i.i, %err_devlink_init.i.hclgevf_pci_uninit.exit.i_crit_edge
  %137 = ptrtoint ptr %hw19.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw19.i.i, align 8
  call void @pci_iounmap(ptr noundef %134, ptr noundef %138) #13
  call void @pci_clear_master(ptr noundef %134) #13
  call void @pci_release_regions(ptr noundef %134) #13
  call void @pci_disable_device(ptr noundef %134) #13
  %state107.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %state107.i) #13
  br label %do.end7

hclgevf_init_hdev.exit:                           ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @hclgevf_init_rxd_adv_layout(ptr noundef nonnull %call.i.i) #13
  call void @_set_bit(i32 noundef 6, ptr noundef %state.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %139 = load volatile i32, ptr @jiffies, align 128
  %last_reset_time.i = getelementptr inbounds %struct.hclgevf_dev, ptr %call.i.i, i32 0, i32 8
  %140 = ptrtoint ptr %last_reset_time.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %last_reset_time.i, align 8
  %141 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call.i.i, align 8
  %dev102.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev102.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.6) #16
  %call103.i = call i32 @round_jiffies_relative(i32 noundef 100) #13
  call fastcc void @hclgevf_task_schedule(ptr noundef nonnull %call.i.i, i32 noundef %call103.i) #13
  br label %cleanup

do.end7:                                          ; preds = %hclgevf_pci_uninit.exit.i, %err_disable_device.i.i, %do.end.i.i
  %retval.0.i19.ph = phi i32 [ %ret.1.i.i, %err_disable_device.i.i ], [ %call.i.i17, %do.end.i.i ], [ %ret.4.i, %hclgevf_pci_uninit.exit.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %hclgevf_init_hdev.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %retval.0.i19.ph, %do.end7 ], [ 0, %hclgevf_init_hdev.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_uninit_ae_dev(ptr nocapture noundef %ae_dev) #0 align 64 {
entry:
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %2 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %state.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state.i.i) #13
  %func.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 41, i32 0, i32 2
  %4 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.hclgevf_state_uninit.exit.i_crit_edge, label %if.then.i.i

entry.hclgevf_state_uninit.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_state_uninit.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %service_task.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %service_task.i.i) #13
  br label %hclgevf_state_uninit.exit.i

hclgevf_state_uninit.exit.i:                      ; preds = %if.then.i.i, %entry.hclgevf_state_uninit.exit.i_crit_edge
  %mbx_resp.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 39
  tail call void @mutex_destroy(ptr noundef %mbx_resp.i.i) #13
  %ae_dev.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ae_dev.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %caps.i.i, align 4
  %10 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i13.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i13.i, label %hclgevf_state_uninit.exit.i.hclgevf_uninit_rxd_adv_layout.exit.i_crit_edge, label %if.then.i14.i

hclgevf_state_uninit.exit.i.hclgevf_uninit_rxd_adv_layout.exit.i_crit_edge: ; preds = %hclgevf_state_uninit.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_uninit_rxd_adv_layout.exit.i

if.then.i14.i:                                    ; preds = %hclgevf_state_uninit.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 163848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #13, !srcloc !480
  br label %hclgevf_uninit_rxd_adv_layout.exit.i

hclgevf_uninit_rxd_adv_layout.exit.i:             ; preds = %if.then.i14.i, %hclgevf_state_uninit.exit.i.hclgevf_uninit_rxd_adv_layout.exit.i_crit_edge
  %13 = call ptr @memset(ptr %3, i32 0, i32 14)
  %14 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 37, ptr %send_msg.i, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %2, align 1
  %call.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %1, ptr noundef nonnull %send_msg.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %hclgevf_uninit_rxd_adv_layout.exit.i.if.end.i_crit_edge, label %if.then.i

hclgevf_uninit_rxd_adv_layout.exit.i.if.end.i_crit_edge: ; preds = %hclgevf_uninit_rxd_adv_layout.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %hclgevf_uninit_rxd_adv_layout.exit.i
  %misc_vector.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %misc_vector.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %misc_vector.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #13, !srcloc !480
  %vector_irq.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %vector_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vector_irq.i.i, align 4
  call void @synchronize_irq(i32 noundef %22) #13
  %23 = ptrtoint ptr %vector_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vector_irq.i.i, align 4
  %call.i16.i = call ptr @free_irq(i32 noundef %24, ptr noundef %1) #13
  %vector_status.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 34
  %25 = ptrtoint ptr %vector_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vector_status.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp.i.i.i = icmp eq i16 %28, -1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.180, i32 noundef 0) #16
  br label %hclgevf_misc_irq_uninit.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %26, align 2
  %num_msi_left.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 29
  %32 = ptrtoint ptr %num_msi_left.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_msi_left.i.i.i, align 2
  %add.i.i.i = add i16 %33, 1
  store i16 %add.i.i.i, ptr %num_msi_left.i.i.i, align 2
  %num_msi_used.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 30
  %34 = ptrtoint ptr %num_msi_used.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_msi_used.i.i.i, align 4
  %sub.i.i.i = add i16 %35, -1
  store i16 %sub.i.i.i, ptr %num_msi_used.i.i.i, align 4
  br label %hclgevf_misc_irq_uninit.exit.i

hclgevf_misc_irq_uninit.exit.i:                   ; preds = %if.end.i.i.i, %do.end.i.i.i
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %vector_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vector_status.i.i.i, align 4
  call void @devm_kfree(ptr noundef %dev.i.i, ptr noundef %39) #13
  %vector_irq.i17.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 35
  %40 = ptrtoint ptr %vector_irq.i17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vector_irq.i17.i, align 8
  call void @devm_kfree(ptr noundef %dev.i.i, ptr noundef %41) #13
  call void @pci_free_irq_vectors(ptr noundef %37) #13
  br label %if.end.i

if.end.i:                                         ; preds = %hclgevf_misc_irq_uninit.exit.i, %hclgevf_uninit_rxd_adv_layout.exit.i.if.end.i_crit_edge
  %42 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ae_dev.i.i, align 4
  %hw.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 2
  call void @hclge_comm_cmd_uninit(ptr noundef %43, ptr noundef %hw.i) #13
  call void @hclgevf_devlink_uninit(ptr noundef %1) #13
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %mem_base.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mem_base.i.i, align 4
  %tobool.not.i18.i = icmp eq ptr %47, null
  br i1 %tobool.not.i18.i, label %if.end.i.hclgevf_pci_uninit.exit.i_crit_edge, label %if.then.i20.i

if.end.i.hclgevf_pci_uninit.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_pci_uninit.exit.i

if.then.i20.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i19.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void @devm_iounmap(ptr noundef %dev.i19.i, ptr noundef nonnull %47) #13
  br label %hclgevf_pci_uninit.exit.i

hclgevf_pci_uninit.exit.i:                        ; preds = %if.then.i20.i, %if.end.i.hclgevf_pci_uninit.exit.i_crit_edge
  %48 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw.i, align 8
  call void @pci_iounmap(ptr noundef %45, ptr noundef %49) #13
  call void @pci_clear_master(ptr noundef %45) #13
  call void @pci_release_regions(ptr noundef %45) #13
  call void @pci_disable_device(ptr noundef %45) #13
  %mac_table.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 38
  call void @_raw_spin_lock_bh(ptr noundef %mac_table.i.i) #13
  %uc_mac_list.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 38, i32 1
  %50 = ptrtoint ptr %uc_mac_list.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %uc_mac_list.i.i, align 4
  %cmp.not18.i.i.i = icmp eq ptr %51, %uc_mac_list.i.i
  br i1 %cmp.not18.i.i.i, label %hclgevf_pci_uninit.exit.i.hclgevf_clear_list.exit.i.i_crit_edge, label %hclgevf_pci_uninit.exit.i.for.body.i.i.i_crit_edge

hclgevf_pci_uninit.exit.i.for.body.i.i.i_crit_edge: ; preds = %hclgevf_pci_uninit.exit.i
  br label %for.body.i.i.i

hclgevf_pci_uninit.exit.i.hclgevf_clear_list.exit.i.i_crit_edge: ; preds = %hclgevf_pci_uninit.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_clear_list.exit.i.i

for.body.i.i.i:                                   ; preds = %list_del.exit.i.i.i.for.body.i.i.i_crit_edge, %hclgevf_pci_uninit.exit.i.for.body.i.i.i_crit_edge
  %mac_node.019.i.i.i = phi ptr [ %tmp.0.i.i.i, %list_del.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %51, %hclgevf_pci_uninit.exit.i.for.body.i.i.i_crit_edge ]
  %52 = ptrtoint ptr %mac_node.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp.0.i.i.i = load ptr, ptr %mac_node.019.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.019.i.i.i) #13
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del.exit.i.i.i_crit_edge

for.body.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.019.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %mac_node.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac_node.019.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del.exit.i.i.i_crit_edge
  %59 = ptrtoint ptr %mac_node.019.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.019.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.019.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @kfree(ptr noundef %mac_node.019.i.i.i) #13
  %cmp.not.i.i.i = icmp eq ptr %tmp.0.i.i.i, %uc_mac_list.i.i
  br i1 %cmp.not.i.i.i, label %list_del.exit.i.i.i.hclgevf_clear_list.exit.i.i_crit_edge, label %list_del.exit.i.i.i.for.body.i.i.i_crit_edge

list_del.exit.i.i.i.for.body.i.i.i_crit_edge:     ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

list_del.exit.i.i.i.hclgevf_clear_list.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_clear_list.exit.i.i

hclgevf_clear_list.exit.i.i:                      ; preds = %list_del.exit.i.i.i.hclgevf_clear_list.exit.i.i_crit_edge, %hclgevf_pci_uninit.exit.i.hclgevf_clear_list.exit.i.i_crit_edge
  %mc_mac_list.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 38, i32 2
  %61 = ptrtoint ptr %mc_mac_list.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mc_mac_list.i.i, align 4
  %cmp.not18.i8.i.i = icmp eq ptr %62, %mc_mac_list.i.i
  br i1 %cmp.not18.i8.i.i, label %hclgevf_clear_list.exit.i.i.hclgevf_uninit_hdev.exit_crit_edge, label %hclgevf_clear_list.exit.i.i.for.body.i12.i.i_crit_edge

hclgevf_clear_list.exit.i.i.for.body.i12.i.i_crit_edge: ; preds = %hclgevf_clear_list.exit.i.i
  br label %for.body.i12.i.i

hclgevf_clear_list.exit.i.i.hclgevf_uninit_hdev.exit_crit_edge: ; preds = %hclgevf_clear_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_uninit_hdev.exit

for.body.i12.i.i:                                 ; preds = %list_del.exit.i18.i.i.for.body.i12.i.i_crit_edge, %hclgevf_clear_list.exit.i.i.for.body.i12.i.i_crit_edge
  %mac_node.019.i9.i.i = phi ptr [ %tmp.0.i10.i.i, %list_del.exit.i18.i.i.for.body.i12.i.i_crit_edge ], [ %62, %hclgevf_clear_list.exit.i.i.for.body.i12.i.i_crit_edge ]
  %63 = ptrtoint ptr %mac_node.019.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %tmp.0.i10.i.i = load ptr, ptr %mac_node.019.i9.i.i, align 4
  %call.i.i.i11.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.019.i9.i.i) #13
  br i1 %call.i.i.i11.i.i, label %if.end.i.i.i15.i.i, label %for.body.i12.i.i.list_del.exit.i18.i.i_crit_edge

for.body.i12.i.i.list_del.exit.i18.i.i_crit_edge: ; preds = %for.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i18.i.i

if.end.i.i.i15.i.i:                               ; preds = %for.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i13.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.019.i9.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i13.i.i, align 4
  %66 = ptrtoint ptr %mac_node.019.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mac_node.019.i9.i.i, align 4
  %prev1.i.i.i.i14.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i14.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i18.i.i

list_del.exit.i18.i.i:                            ; preds = %if.end.i.i.i15.i.i, %for.body.i12.i.i.list_del.exit.i18.i.i_crit_edge
  %70 = ptrtoint ptr %mac_node.019.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.019.i9.i.i, align 4
  %prev.i.i16.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.019.i9.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i16.i.i, align 4
  call void @kfree(ptr noundef %mac_node.019.i9.i.i) #13
  %cmp.not.i17.i.i = icmp eq ptr %tmp.0.i10.i.i, %mc_mac_list.i.i
  br i1 %cmp.not.i17.i.i, label %list_del.exit.i18.i.i.hclgevf_uninit_hdev.exit_crit_edge, label %list_del.exit.i18.i.i.for.body.i12.i.i_crit_edge

list_del.exit.i18.i.i.for.body.i12.i.i_crit_edge: ; preds = %list_del.exit.i18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i12.i.i

list_del.exit.i18.i.i.hclgevf_uninit_hdev.exit_crit_edge: ; preds = %list_del.exit.i18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_uninit_hdev.exit

hclgevf_uninit_hdev.exit:                         ; preds = %list_del.exit.i18.i.i.hclgevf_uninit_hdev.exit_crit_edge, %hclgevf_clear_list.exit.i.i.hclgevf_uninit_hdev.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mac_table.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_reset_prepare_general(ptr nocapture noundef readonly %ae_dev, i32 noundef %rst_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %reset_pending = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 10
  %reset_sem = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 15
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 5
  %reset_type = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 11
  tail call void @down(ptr noundef %reset_sem) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #13
  %2 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rst_type, ptr %reset_type, align 4
  %call = tail call fastcc i32 @hclgevf_reset_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_pending, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.182, i32 noundef %call, i32 noundef %8, i32 noundef 1) #16
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #13
  tail call void @up(ptr noundef %reset_sem) #13
  tail call void @msleep(i32 noundef 500) #13
  tail call void @down(ptr noundef %reset_sem) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #13
  %9 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rst_type, ptr %reset_type, align 4
  %call.1 = tail call fastcc i32 @hclgevf_reset_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %land.lhs.true.1, label %do.end.do.end.1_crit_edge

do.end.do.end.1_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.1

land.lhs.true.1:                                  ; preds = %do.end
  %10 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.1 = icmp eq i32 %11, 0
  br i1 %tobool1.not.1, label %land.lhs.true.1.while.end_crit_edge, label %land.lhs.true.1.do.end.1_crit_edge

land.lhs.true.1.do.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.1

land.lhs.true.1.while.end_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end.1:                                         ; preds = %land.lhs.true.1.do.end.1_crit_edge, %do.end.do.end.1_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reset_pending, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.1, ptr noundef nonnull @.str.182, i32 noundef %call.1, i32 noundef %15, i32 noundef 2) #16
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #13
  tail call void @up(ptr noundef %reset_sem) #13
  tail call void @msleep(i32 noundef 500) #13
  tail call void @down(ptr noundef %reset_sem) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #13
  %16 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rst_type, ptr %reset_type, align 4
  %call.2 = tail call fastcc i32 @hclgevf_reset_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %land.lhs.true.2, label %do.end.1.do.end.2_crit_edge

do.end.1.do.end.2_crit_edge:                      ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.2

land.lhs.true.2:                                  ; preds = %do.end.1
  %17 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not.2 = icmp eq i32 %18, 0
  br i1 %tobool1.not.2, label %land.lhs.true.2.while.end_crit_edge, label %land.lhs.true.2.do.end.2_crit_edge

land.lhs.true.2.do.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.2

land.lhs.true.2.while.end_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end.2:                                         ; preds = %land.lhs.true.2.do.end.2_crit_edge, %do.end.1.do.end.2_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reset_pending, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.2, ptr noundef nonnull @.str.182, i32 noundef %call.2, i32 noundef %22, i32 noundef 3) #16
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #13
  tail call void @up(ptr noundef %reset_sem) #13
  tail call void @msleep(i32 noundef 500) #13
  tail call void @down(ptr noundef %reset_sem) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #13
  %23 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rst_type, ptr %reset_type, align 4
  %call.3 = tail call fastcc i32 @hclgevf_reset_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %land.lhs.true.3, label %do.end.2.do.end.3_crit_edge

do.end.2.do.end.3_crit_edge:                      ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.3

land.lhs.true.3:                                  ; preds = %do.end.2
  %24 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.3 = icmp eq i32 %25, 0
  br i1 %tobool1.not.3, label %land.lhs.true.3.while.end_crit_edge, label %land.lhs.true.3.do.end.3_crit_edge

land.lhs.true.3.do.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.3

land.lhs.true.3.while.end_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end.3:                                         ; preds = %land.lhs.true.3.do.end.3_crit_edge, %do.end.2.do.end.3_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %dev.3 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reset_pending, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.3, ptr noundef nonnull @.str.182, i32 noundef %call.3, i32 noundef %29, i32 noundef 4) #16
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #13
  tail call void @up(ptr noundef %reset_sem) #13
  tail call void @msleep(i32 noundef 500) #13
  tail call void @down(ptr noundef %reset_sem) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #13
  %30 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rst_type, ptr %reset_type, align 4
  %call.4 = tail call fastcc i32 @hclgevf_reset_prepare(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %land.lhs.true.4, label %do.end.3.do.end.4_crit_edge

do.end.3.do.end.4_crit_edge:                      ; preds = %do.end.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.4

land.lhs.true.4:                                  ; preds = %do.end.3
  %31 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool1.not.4 = icmp eq i32 %32, 0
  br i1 %tobool1.not.4, label %land.lhs.true.4.while.end_crit_edge, label %land.lhs.true.4.do.end.4_crit_edge

land.lhs.true.4.do.end.4_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.4

land.lhs.true.4.while.end_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end.4:                                         ; preds = %land.lhs.true.4.do.end.4_crit_edge, %do.end.3.do.end.4_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %dev.4 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reset_pending, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.4, ptr noundef nonnull @.str.182, i32 noundef %call.4, i32 noundef %36, i32 noundef 5) #16
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #13
  tail call void @up(ptr noundef %reset_sem) #13
  tail call void @msleep(i32 noundef 500) #13
  br label %while.end

while.end:                                        ; preds = %do.end.4, %land.lhs.true.4.while.end_crit_edge, %land.lhs.true.3.while.end_crit_edge, %land.lhs.true.2.while.end_crit_edge, %land.lhs.true.1.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %misc_vector = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %misc_vector to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %misc_vector, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #13, !srcloc !480
  %39 = ptrtoint ptr %reset_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reset_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp6 = icmp eq i32 %40, 4
  br i1 %cmp6, label %if.then7, label %while.end.if.end9_crit_edge

while.end.if.end9_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %flr_rst_cnt = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 13, i32 2
  %41 = ptrtoint ptr %flr_rst_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flr_rst_cnt, align 4
  %inc8 = add i32 %42, 1
  store i32 %inc8, ptr %flr_rst_cnt, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %while.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_reset_done(ptr nocapture noundef readonly %ae_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %misc_vector = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %misc_vector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %misc_vector, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #13, !srcloc !480
  %call = tail call fastcc i32 @hclgevf_reset_rebuild(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.184, i32 noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reset_type = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %reset_type, align 4
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #13
  %reset_sem = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 15
  tail call void @up(ptr noundef %reset_sem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_init_client_instance(ptr noundef %client, ptr noundef %ae_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %type = getelementptr inbounds %struct.hnae3_client, ptr %client, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %nic_client = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 45
  %5 = ptrtoint ptr %nic_client to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %nic_client, align 8
  %nic = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 43
  %6 = ptrtoint ptr %nic to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %nic, align 8
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %rst_stats.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %rst_stats.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rst_stats.i, align 4
  %ops.i = getelementptr inbounds %struct.hnae3_client, ptr %client, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %nic.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 43
  %call.i = tail call i32 %14(ptr noundef %nic.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.clear_nic_crit_edge

sw.bb.clear_nic_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_nic

if.end.i:                                         ; preds = %sw.bb
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state.i) #13
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp eq i32 %17, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end.i.if.then7.i_crit_edge

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %18 = ptrtoint ptr %rst_stats.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rst_stats.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %19)
  %cmp.not.i = icmp eq i32 %10, %19
  br i1 %cmp.not.i, label %if.end11.i, label %lor.lhs.false.i.if.then7.i_crit_edge

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state.i) #13
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %uninit_instance.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %uninit_instance.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uninit_instance.i, align 4
  tail call void %23(ptr noundef %nic.i, i1 noundef zeroext false) #13
  br label %clear_nic

if.end11.i:                                       ; preds = %lor.lhs.false.i
  tail call void @hnae3_set_client_init_flag(ptr noundef %client, ptr noundef %ae_dev, i32 noundef 1) #13
  %msg_enable.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 43, i32 11
  %24 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end_crit_edge, label %if.then14.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %8, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.186) #16
  %num_tqps.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 18
  %28 = ptrtoint ptr %num_tqps.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_tqps.i.i, align 2
  %conv.i.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.189, i32 noundef %conv.i.i) #16
  %num_tx_desc.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 24
  %30 = ptrtoint ptr %num_tx_desc.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_tx_desc.i.i, align 2
  %conv8.i.i = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.192, i32 noundef %conv8.i.i) #16
  %num_rx_desc.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 25
  %32 = ptrtoint ptr %num_rx_desc.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_rx_desc.i.i, align 4
  %conv12.i.i = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.195, i32 noundef %conv12.i.i) #16
  %num_alloc_vport.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 21
  %34 = ptrtoint ptr %num_alloc_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_alloc_vport.i.i, align 8
  %conv16.i.i = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.198, i32 noundef %conv16.i.i) #16
  %hw_tc_map.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 26
  %36 = ptrtoint ptr %hw_tc_map.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hw_tc_map.i.i, align 2
  %conv20.i.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.201, i32 noundef %conv20.i.i) #16
  %mac.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %8, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mac.i.i, align 8
  %conv24.i.i = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.204, i32 noundef %conv24.i.i) #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.207) #16
  br label %if.end

if.end:                                           ; preds = %if.then14.i, %if.end11.i.if.end_crit_edge
  %roce_client = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 46
  %40 = ptrtoint ptr %roce_client to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %roce_client, align 4
  %call2 = tail call fastcc i32 @hclgevf_init_roce_client_instance(ptr noundef %ae_dev, ptr noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.clear_roce_crit_edge

if.end.clear_roce_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_roce

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %ae_dev7 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %ae_dev7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ae_dev7, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flag, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool8.not = icmp eq i32 %46, 0
  br i1 %tobool8.not, label %sw.bb6.if.end12_crit_edge, label %if.then9

sw.bb6.if.end12_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %roce_client10 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 46
  %47 = ptrtoint ptr %roce_client10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %client, ptr %roce_client10, align 4
  %roce = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44
  %48 = ptrtoint ptr %roce to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %client, ptr %roce, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %sw.bb6.if.end12_crit_edge
  %call13 = tail call fastcc i32 @hclgevf_init_roce_client_instance(ptr noundef %ae_dev, ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end12.clear_roce_crit_edge

if.end12.clear_roce_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_roce

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

clear_nic:                                        ; preds = %if.then7.i, %sw.bb.clear_nic_crit_edge
  %retval.0.i = phi i32 [ -16, %if.then7.i ], [ %call.i, %sw.bb.clear_nic_crit_edge ]
  %49 = ptrtoint ptr %nic_client to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %nic_client, align 8
  br label %cleanup.sink.split

clear_roce:                                       ; preds = %if.end12.clear_roce_crit_edge, %if.end.clear_roce_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end12.clear_roce_crit_edge ], [ %call2, %if.end.clear_roce_crit_edge ]
  %roce_client20 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 46
  %50 = ptrtoint ptr %roce_client20 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %roce_client20, align 4
  %roce21 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %clear_roce, %clear_nic
  %roce21.sink = phi ptr [ %roce21, %clear_roce ], [ %nic, %clear_nic ]
  %retval.0.ph = phi i32 [ %ret.0, %clear_roce ], [ %retval.0.i, %clear_nic ]
  %51 = ptrtoint ptr %roce21.sink to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %roce21.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_uninit_client_instance(ptr nocapture noundef readonly %client, ptr nocapture noundef readonly %ae_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %roce_client = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %roce_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_client, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not42 = icmp eq i32 %6, 0
  br i1 %tobool1.not42, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @msleep(i32 noundef 100) #13
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 256
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %state) #13
  %10 = ptrtoint ptr %roce_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %roce_client, align 4
  %ops = getelementptr inbounds %struct.hnae3_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %uninit_instance = getelementptr inbounds %struct.hnae3_client_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %uninit_instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uninit_instance, align 4
  %roce = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44
  tail call void %15(ptr noundef %roce, i1 noundef zeroext false) #13
  %16 = ptrtoint ptr %roce_client to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %roce_client, align 4
  %17 = ptrtoint ptr %roce to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %roce, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  %ops7 = getelementptr inbounds %struct.hnae3_client, ptr %client, i32 0, i32 3
  %18 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops7, align 4
  %uninit_instance8 = getelementptr inbounds %struct.hnae3_client_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %uninit_instance8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uninit_instance8, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %nic_client = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 45
  %22 = ptrtoint ptr %nic_client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nic_client, align 8
  %tobool10.not = icmp eq ptr %23, null
  br i1 %tobool10.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true11

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true11:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.hnae3_client, ptr %client, i32 0, i32 2
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not = icmp eq i32 %25, 1
  br i1 %cmp.not, label %land.lhs.true11.if.end25_crit_edge, label %while.cond13.preheader

land.lhs.true11.if.end25_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

while.cond13.preheader:                           ; preds = %land.lhs.true11
  %state14 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state14, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not43 = icmp eq i32 %28, 0
  br i1 %tobool16.not43, label %while.cond13.preheader.while.end18_crit_edge, label %while.cond13.preheader.while.body17_crit_edge

while.cond13.preheader.while.body17_crit_edge:    ; preds = %while.cond13.preheader
  br label %while.body17

while.cond13.preheader.while.end18_crit_edge:     ; preds = %while.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end18

while.body17:                                     ; preds = %while.body17.while.body17_crit_edge, %while.cond13.preheader.while.body17_crit_edge
  tail call void @msleep(i32 noundef 100) #13
  %29 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state14, align 4
  %31 = and i32 %30, 256
  %tobool16.not = icmp eq i32 %31, 0
  br i1 %tobool16.not, label %while.body17.while.end18_crit_edge, label %while.body17.while.body17_crit_edge

while.body17.while.body17_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body17

while.body17.while.end18_crit_edge:               ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end18

while.end18:                                      ; preds = %while.body17.while.end18_crit_edge, %while.cond13.preheader.while.end18_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state14) #13
  %32 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops7, align 4
  %uninit_instance21 = getelementptr inbounds %struct.hnae3_client_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %uninit_instance21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uninit_instance21, align 4
  %nic = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 43
  tail call void %35(ptr noundef %nic, i1 noundef zeroext false) #13
  %36 = ptrtoint ptr %nic_client to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %nic_client, align 8
  %37 = ptrtoint ptr %nic to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %nic, align 8
  br label %if.end25

if.end25:                                         ; preds = %while.end18, %land.lhs.true11.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_ae_start(ptr noundef %handle) #0 align 64 {
entry:
  %send_msg.i7 = alloca %struct.hclge_vf_to_pf_msg, align 1
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #13
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %state) #13
  tail call void @hclge_comm_reset_tqp_stats(ptr noundef %handle) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 14)
  %7 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 26, ptr %send_msg.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %call.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i6 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i6, label %hclgevf_ae_get_hdev.exit.hclgevf_request_link_info.exit_crit_edge, label %do.end.i

hclgevf_ae_get_hdev.exit.hclgevf_request_link_info.exit_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_request_link_info.exit

do.end.i:                                         ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.149, i32 noundef %call.i) #16
  br label %hclgevf_request_link_info.exit

hclgevf_request_link_info.exit:                   ; preds = %do.end.i, %hclgevf_ae_get_hdev.exit.hclgevf_request_link_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i7) #13
  %11 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i7, i32 0, i32 1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i7, i32 0, i32 1, i32 0, i32 1, i32 1
  %14 = call ptr @memset(ptr %13, i32 0, i32 13)
  %15 = ptrtoint ptr %send_msg.i7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 33, ptr %send_msg.i7, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %11, align 1
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %12, align 1
  %call.i8 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i7, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %12, align 1
  %call3.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i7, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i7) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_ae_stop(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #13
  %reset_type = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 11
  %4 = ptrtoint ptr %reset_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %hclgevf_ae_get_hdev.exit.if.end_crit_edge, label %if.then

hclgevf_ae_get_hdev.exit.if.end_crit_edge:        ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @hclgevf_reset_tqp(ptr noundef %handle)
  br label %if.end

if.end:                                           ; preds = %if.then, %hclgevf_ae_get_hdev.exit.if.end_crit_edge
  tail call void @hclge_comm_reset_tqp_stats(ptr noundef %handle) #13
  %roce.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 44
  %nic.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 43
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i6 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i6, label %if.end.i, label %if.end.hclgevf_update_link_status.exit_crit_edge

if.end.hclgevf_update_link_status.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_update_link_status.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %nic.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic.i, align 8
  %roce_client.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 46
  %8 = ptrtoint ptr %roce_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %roce_client.i, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %link.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 3
  %12 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.then5.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then5.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %link.i, align 8
  %ops.i = getelementptr inbounds %struct.hnae3_client, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %link_status_change.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %link_status_change.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link_status_change.i, align 4
  tail call void %18(ptr noundef %nic.i, i1 noundef zeroext false) #13
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %if.then5.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.then5.i.if.end22.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.then5.i
  %ops12.i = getelementptr inbounds %struct.hnae3_client, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %ops12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops12.i, align 4
  %link_status_change13.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %link_status_change13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link_status_change13.i, align 4
  %tobool14.not.i = icmp eq ptr %22, null
  br i1 %tobool14.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %if.then15.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %22(ptr noundef %roce.i, i1 noundef zeroext false) #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %land.lhs.true.i.if.end22.i_crit_edge, %if.then5.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %state) #13
  br label %hclgevf_update_link_status.exit

hclgevf_update_link_status.exit:                  ; preds = %if.end22.i, %if.end.hclgevf_update_link_status.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_client_start(ptr noundef %handle) #0 align 64 {
entry:
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.hclgevf_set_alive.exit_crit_edge, label %if.else.i.i

entry.hclgevf_set_alive.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_alive.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 1
  %..i.i = select i1 %cmp.i.i, i32 -17928, i32 -17696
  br label %hclgevf_set_alive.exit

hclgevf_set_alive.exit:                           ; preds = %if.else.i.i, %entry.hclgevf_set_alive.exit_crit_edge
  %.sink.i.i = phi i32 [ -17696, %entry.hclgevf_set_alive.exit_crit_edge ], [ %..i.i, %if.else.i.i ]
  %add.ptr9.i.i = getelementptr i8, ptr %handle, i32 %.sink.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 13)
  %8 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 29, ptr %send_msg.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %5, align 1
  %call1.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_client_stop(ptr noundef %handle) #0 align 64 {
entry:
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_set_alive.exit_crit_edge, label %if.else.i.i

entry.hclgevf_set_alive.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_alive.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_set_alive.exit

hclgevf_set_alive.exit:                           ; preds = %if.else.i.i, %entry.hclgevf_set_alive.exit_crit_edge
  %.sink = phi i32 [ %..i, %if.else.i.i ], [ -17696, %entry.hclgevf_set_alive.exit_crit_edge ]
  %add.ptr9.i.i = getelementptr i8, ptr %handle, i32 %.sink
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 13)
  %8 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 29, ptr %send_msg.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %5, align 1
  %call1.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %hclgevf_set_alive.exit.if.end_crit_edge, label %do.end

hclgevf_set_alive.exit.if.end_crit_edge:          ; preds = %hclgevf_set_alive.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %hclgevf_set_alive.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr9.i5 = getelementptr i8, ptr %handle, i32 %.sink
  %11 = ptrtoint ptr %add.ptr9.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr9.i5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef %call1.i) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %hclgevf_set_alive.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hclgevf_get_status(ptr nocapture noundef readonly %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %link = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 3
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link, align 8
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hclgevf_get_ksettings_an_result(ptr nocapture noundef readonly %handle, ptr noundef writeonly %auto_neg, ptr noundef writeonly %speed, ptr noundef writeonly %duplex) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %tobool.not = icmp eq ptr %speed, null
  br i1 %tobool.not, label %hclgevf_ae_get_hdev.exit.if.end_crit_edge, label %if.then

hclgevf_ae_get_hdev.exit.if.end_crit_edge:        ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %speed1 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 5
  %4 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed1, align 8
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %hclgevf_ae_get_hdev.exit.if.end_crit_edge
  %tobool2.not = icmp eq ptr %duplex, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %duplex6 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 4
  %7 = ptrtoint ptr %duplex6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %duplex6, align 4
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %duplex, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %auto_neg, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %auto_neg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %auto_neg, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hclgevf_get_media_type(ptr nocapture noundef readonly %handle, ptr noundef writeonly %media_type, ptr noundef writeonly %module_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %tobool.not = icmp eq ptr %media_type, null
  br i1 %tobool.not, label %hclgevf_ae_get_hdev.exit.if.end_crit_edge, label %if.then

hclgevf_ae_get_hdev.exit.if.end_crit_edge:        ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %mac = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac, align 8
  %6 = ptrtoint ptr %media_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %media_type, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %hclgevf_ae_get_hdev.exit.if.end_crit_edge
  %tobool2.not = icmp eq ptr %module_type, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %module_type6 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 1
  %7 = ptrtoint ptr %module_type6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %module_type6, align 1
  %9 = ptrtoint ptr %module_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %module_type, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_set_promisc_mode(ptr noundef %handle, i1 noundef zeroext %en_uc_pmc, i1 noundef zeroext %en_mc_pmc) #0 align 64 {
entry:
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %4 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp = icmp ugt i32 %7, 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %8 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %11 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 2
  %12 = getelementptr inbounds i8, ptr %send_msg.i, i32 5
  %13 = call ptr @memset(ptr %12, i32 0, i32 11)
  %14 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %send_msg.i, align 1
  %conv.i = zext i1 %cmp to i8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %8, align 1
  %conv6.i = zext i1 %en_uc_pmc to i8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i, ptr %9, align 1
  %conv10.i = zext i1 %en_mc_pmc to i8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i, ptr %10, align 1
  %priv_flags.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 43, i32 13
  %18 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %priv_flags.i, align 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %11, align 1
  %call14.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %hclgevf_ae_get_hdev.exit.hclgevf_cmd_set_promisc_mode.exit_crit_edge, label %do.end.i

hclgevf_ae_get_hdev.exit.hclgevf_cmd_set_promisc_mode.exit_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_cmd_set_promisc_mode.exit

do.end.i:                                         ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.211, i32 noundef %call14.i) #16
  br label %hclgevf_cmd_set_promisc_mode.exit

hclgevf_cmd_set_promisc_mode.exit:                ; preds = %do.end.i, %hclgevf_ae_get_hdev.exit.hclgevf_cmd_set_promisc_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  ret i32 %call14.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_request_update_promisc_mode(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %state) #13
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i2 = icmp eq i32 %6, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i, label %hclgevf_ae_get_hdev.exit.hclgevf_task_schedule.exit_crit_edge

hclgevf_ae_get_hdev.exit.hclgevf_task_schedule.exit_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_task_schedule.exit

land.lhs.true.i:                                  ; preds = %hclgevf_ae_get_hdev.exit
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true.i.hclgevf_task_schedule.exit_crit_edge

land.lhs.true.i.hclgevf_task_schedule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_task_schedule.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = load ptr, ptr @hclgevf_wq, align 4
  %service_task.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %service_task.i, i32 noundef 0) #13
  br label %hclgevf_task_schedule.exit

hclgevf_task_schedule.exit:                       ; preds = %if.then.i, %land.lhs.true.i.hclgevf_task_schedule.exit_crit_edge, %hclgevf_ae_get_hdev.exit.hclgevf_task_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_set_mtu(ptr noundef %handle, i32 noundef %new_mtu) #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 10)
  %8 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 30, ptr %send_msg, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %new_mtu, ptr %5, align 1
  %call1 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_get_mac_addr(ptr noundef %handle, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  %host_mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %host_mac.i) #13
  %6 = call ptr @memset(ptr %host_mac.i, i32 255, i32 6)
  %7 = call ptr @memset(ptr %5, i32 0, i32 14)
  %8 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %send_msg.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %4, align 1
  %call.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef nonnull %host_mac.i, i16 noundef zeroext 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i15 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i15, label %if.end, label %hclgevf_get_host_mac_addr.exit

hclgevf_get_host_mac_addr.exit:                   ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.213, i32 noundef %call.i) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %host_mac.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  br label %cleanup

if.end:                                           ; preds = %hclgevf_ae_get_hdev.exit
  %12 = getelementptr inbounds [6 x i8], ptr %host_mac.i, i32 0, i32 4
  %13 = ptrtoint ptr %host_mac.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_mac.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %host_mac.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  %conv.i = zext i16 %16 to i32
  %or.i = or i32 %14, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i16 = icmp eq i32 %or.i, 0
  %lnot = xor i1 %cmp.i16, true
  %conv = zext i1 %lnot to i8
  %has_pf_mac = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 27
  %17 = ptrtoint ptr %has_pf_mac to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %has_pf_mac, align 1
  br i1 %cmp.i16, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %p, align 4
  %add.ptr1.i = getelementptr i8, ptr %p, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %16, ptr %add.ptr1.i, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mac_addr = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 2
  %20 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_addr, align 4
  %22 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %p, align 4
  %add.ptr.i18 = getelementptr i8, ptr %mac_addr, i32 4
  %23 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i18, align 2
  %add.ptr1.i19 = getelementptr i8, ptr %p, i32 4
  %25 = ptrtoint ptr %add.ptr1.i19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i19, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %hclgevf_get_host_mac_addr.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_set_mac_addr(ptr noundef %handle, ptr nocapture noundef readonly %p, i1 noundef zeroext %is_first) #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %mac_addr = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 4
  %7 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 6
  %8 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 10
  %9 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %9, align 1
  %11 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %send_msg, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %p, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %6, align 2
  br i1 %is_first, label %land.lhs.true, label %hclgevf_ae_get_hdev.exit.if.else_crit_edge

hclgevf_ae_get_hdev.exit.if.else_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %hclgevf_ae_get_hdev.exit
  %has_pf_mac = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 27
  %19 = ptrtoint ptr %has_pf_mac to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_pf_mac, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.not = icmp eq i8 %20, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %21 = call ptr @memset(ptr %7, i32 0, i32 6)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %hclgevf_ae_get_hdev.exit.if.else_crit_edge
  %22 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac_addr, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %7, align 4
  %add.ptr.i19 = getelementptr i8, ptr %mac_addr, i32 4
  %25 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i19, align 2
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %8, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p, align 4
  %30 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mac_addr, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i22 = getelementptr i8, ptr %mac_addr, i32 4
  %33 = ptrtoint ptr %add.ptr1.i22 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %add.ptr1.i22, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_add_uc_addr(ptr noundef %handle, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hclgevf_update_mac_list(ptr noundef %handle, i32 noundef 0, i32 noundef 0, ptr noundef %addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_rm_uc_addr(ptr noundef %handle, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hclgevf_update_mac_list(ptr noundef %handle, i32 noundef 1, i32 noundef 0, ptr noundef %addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_add_mc_addr(ptr noundef %handle, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hclgevf_update_mac_list(ptr noundef %handle, i32 noundef 0, i32 noundef 1, ptr noundef %addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_rm_mc_addr(ptr noundef %handle, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hclgevf_update_mac_list(ptr noundef %handle, i32 noundef 1, i32 noundef 1, ptr noundef %addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_update_stats(ptr noundef %handle, ptr nocapture noundef readnone %net_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %call2 = tail call i32 @hclge_comm_tqps_update_stats(ptr noundef %handle, ptr noundef %hw) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %hclgevf_ae_get_hdev.exit.if.end_crit_edge, label %do.end

hclgevf_ae_get_hdev.exit.if.end_crit_edge:        ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr9.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.215, i32 noundef %call2) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %hclgevf_ae_get_hdev.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_get_stats(ptr noundef %handle, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_comm_tqps_get_stats(ptr noundef %handle, ptr noundef %data) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_get_strings(ptr noundef %handle, i32 noundef %strset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %strset)
  %cmp = icmp eq i32 %strset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @hclge_comm_tqps_get_strings(ptr noundef %handle, ptr noundef %data) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_get_sset_count(ptr noundef %handle, i32 noundef %strset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %strset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %strset, label %if.end3 [
    i32 0, label %entry.return_crit_edge
    i32 1, label %if.then2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @hclge_comm_tqps_get_sset_count(ptr noundef %handle) #13
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end3 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_get_regs(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %version, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %base.addr.i148 = alloca ptr, align 4
  %base.addr.i145 = alloca ptr, align 4
  %base.addr.i142 = alloca ptr, align 4
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %fw_version = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 16
  %4 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_version, align 4
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %version, align 4
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %hclgevf_ae_get_hdev.exit
  %reg.0152 = phi ptr [ %data, %hclgevf_ae_get_hdev.exit ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.0151 = phi i32 [ 0, %hclgevf_ae_get_hdev.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %arrayidx = getelementptr [14 x i32], ptr @cmdq_reg_addr_list, i32 0, i32 %i.0151
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %11 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !482
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %incdec.ptr = getelementptr i32, ptr %reg.0152, i32 1
  %14 = ptrtoint ptr %reg.0152 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %reg.0152, align 4
  %inc = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.body5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body5.preheader:                              ; preds = %for.body
  %incdec.ptr6 = getelementptr i32, ptr %reg.0152, i32 2
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -33752070, ptr %incdec.ptr, align 4
  %incdec.ptr6.1 = getelementptr i32, ptr %reg.0152, i32 3
  %16 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -33752070, ptr %incdec.ptr6, align 4
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i142)
  %19 = ptrtoint ptr %base.addr.i142 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %base.addr.i142, align 4
  %base.addr.i142.0.base.addr.i142.0.base.addr.0.base.addr.0.base.addr.0..i143 = load volatile ptr, ptr %base.addr.i142, align 4
  %add.ptr.i144 = getelementptr i8, ptr %base.addr.i142.0.base.addr.i142.0.base.addr.0.base.addr.0.base.addr.0..i143, i32 132096
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #13, !srcloc !482
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i142)
  %incdec.ptr20 = getelementptr i32, ptr %reg.0152, i32 4
  %22 = ptrtoint ptr %incdec.ptr6.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %incdec.ptr6.1, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i142)
  %25 = ptrtoint ptr %base.addr.i142 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %base.addr.i142, align 4
  %base.addr.i142.0.base.addr.i142.0.base.addr.0.base.addr.0.base.addr.0..i143.1 = load volatile ptr, ptr %base.addr.i142, align 4
  %add.ptr.i144.1 = getelementptr i8, ptr %base.addr.i142.0.base.addr.i142.0.base.addr.0.base.addr.0.base.addr.0..i143.1, i32 134144
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.1) #13, !srcloc !482
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i142)
  %incdec.ptr20.1 = getelementptr i32, ptr %reg.0152, i32 5
  %28 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr20, align 4
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i142)
  %31 = ptrtoint ptr %base.addr.i142 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %base.addr.i142, align 4
  %base.addr.i142.0.base.addr.i142.0.base.addr.0.base.addr.0.base.addr.0..i143.2 = load volatile ptr, ptr %base.addr.i142, align 4
  %add.ptr.i144.2 = getelementptr i8, ptr %base.addr.i142.0.base.addr.i142.0.base.addr.0.base.addr.0.base.addr.0..i143.2, i32 163840
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.2) #13, !srcloc !482
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i142)
  %incdec.ptr20.2 = getelementptr i32, ptr %reg.0152, i32 6
  %34 = ptrtoint ptr %incdec.ptr20.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %incdec.ptr20.1, align 4
  %incdec.ptr27 = getelementptr i32, ptr %reg.0152, i32 7
  %35 = ptrtoint ptr %incdec.ptr20.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -33752070, ptr %incdec.ptr20.2, align 4
  %num_tqps = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 18
  %36 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_tqps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp34163.not = icmp eq i16 %37, 0
  br i1 %cmp34163.not, label %for.body5.preheader.for.cond63.preheader_crit_edge, label %for.body5.preheader.for.cond37.preheader_crit_edge

for.body5.preheader.for.cond37.preheader_crit_edge: ; preds = %for.body5.preheader
  br label %for.cond37.preheader

for.body5.preheader.for.cond63.preheader_crit_edge: ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond63.preheader

for.cond37.preheader:                             ; preds = %for.body53.preheader.for.cond37.preheader_crit_edge, %for.body5.preheader.for.cond37.preheader_crit_edge
  %reg.4165 = phi ptr [ %incdec.ptr54.1, %for.body53.preheader.for.cond37.preheader_crit_edge ], [ %incdec.ptr27, %for.body5.preheader.for.cond37.preheader_crit_edge ]
  %j.0164 = phi i32 [ %inc59, %for.body53.preheader.for.cond37.preheader_crit_edge ], [ 0, %for.body5.preheader.for.cond37.preheader_crit_edge ]
  %mul = shl i32 %j.0164, 9
  br label %for.body40

for.cond63.preheader:                             ; preds = %for.body53.preheader.for.cond63.preheader_crit_edge, %for.body5.preheader.for.cond63.preheader_crit_edge
  %reg.4.lcssa = phi ptr [ %incdec.ptr27, %for.body5.preheader.for.cond63.preheader_crit_edge ], [ %incdec.ptr54.1, %for.body53.preheader.for.cond63.preheader_crit_edge ]
  %num_msi_used = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 30
  %38 = ptrtoint ptr %num_msi_used to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_msi_used, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp66172 = icmp ugt i16 %39, 1
  br i1 %cmp66172, label %for.cond63.preheader.for.cond69.preheader_crit_edge, label %for.cond63.preheader.for.end94_crit_edge

for.cond63.preheader.for.end94_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end94

for.cond63.preheader.for.cond69.preheader_crit_edge: ; preds = %for.cond63.preheader
  br label %for.cond69.preheader

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.cond37.preheader
  %reg.5159 = phi ptr [ %reg.4165, %for.cond37.preheader ], [ %incdec.ptr46, %for.body40.for.body40_crit_edge ]
  %i.4158 = phi i32 [ 0, %for.cond37.preheader ], [ %inc48, %for.body40.for.body40_crit_edge ]
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %arrayidx44 = getelementptr [26 x i32], ptr @ring_reg_addr_list, i32 0, i32 %i.4158
  %42 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx44, align 4
  %add = add i32 %43, %mul
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i145)
  %44 = ptrtoint ptr %base.addr.i145 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %base.addr.i145, align 4
  %base.addr.i145.0.base.addr.i145.0.base.addr.0.base.addr.0.base.addr.0..i146 = load volatile ptr, ptr %base.addr.i145, align 4
  %add.ptr.i147 = getelementptr i8, ptr %base.addr.i145.0.base.addr.i145.0.base.addr.0.base.addr.0.base.addr.0..i146, i32 %add
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #13, !srcloc !482
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i145)
  %incdec.ptr46 = getelementptr i32, ptr %reg.5159, i32 1
  %47 = ptrtoint ptr %reg.5159 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %reg.5159, align 4
  %inc48 = add nuw nsw i32 %i.4158, 1
  %exitcond176.not = icmp eq i32 %inc48, 26
  br i1 %exitcond176.not, label %for.body53.preheader, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body40

for.body53.preheader:                             ; preds = %for.body40
  %incdec.ptr54 = getelementptr i32, ptr %reg.5159, i32 2
  %48 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -33752070, ptr %incdec.ptr46, align 4
  %incdec.ptr54.1 = getelementptr i32, ptr %reg.5159, i32 3
  %49 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -33752070, ptr %incdec.ptr54, align 4
  %inc59 = add nuw nsw i32 %j.0164, 1
  %50 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_tqps, align 2
  %conv = zext i16 %51 to i32
  %cmp34 = icmp ult i32 %inc59, %conv
  br i1 %cmp34, label %for.body53.preheader.for.cond37.preheader_crit_edge, label %for.body53.preheader.for.cond63.preheader_crit_edge

for.body53.preheader.for.cond63.preheader_crit_edge: ; preds = %for.body53.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond63.preheader

for.body53.preheader.for.cond37.preheader_crit_edge: ; preds = %for.body53.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond37.preheader

for.cond69.preheader:                             ; preds = %for.cond69.preheader.for.cond69.preheader_crit_edge, %for.cond63.preheader.for.cond69.preheader_crit_edge
  %reg.7174 = phi ptr [ %incdec.ptr88.2, %for.cond69.preheader.for.cond69.preheader_crit_edge ], [ %reg.4.lcssa, %for.cond63.preheader.for.cond69.preheader_crit_edge ]
  %j.1173 = phi i32 [ %inc93, %for.cond69.preheader.for.cond69.preheader_crit_edge ], [ 0, %for.cond63.preheader.for.cond69.preheader_crit_edge ]
  %mul77 = shl i32 %j.1173, 2
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 8
  %add78 = add nuw nsw i32 %mul77, 131072
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i148)
  %54 = ptrtoint ptr %base.addr.i148 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %base.addr.i148, align 4
  %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149 = load volatile ptr, ptr %base.addr.i148, align 4
  %add.ptr.i150 = getelementptr i8, ptr %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149, i32 %add78
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #13, !srcloc !482
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i148)
  %incdec.ptr80 = getelementptr i32, ptr %reg.7174, i32 1
  %57 = ptrtoint ptr %reg.7174 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %reg.7174, align 4
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 8
  %add78.1 = add nuw nsw i32 %mul77, 131328
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i148)
  %60 = ptrtoint ptr %base.addr.i148 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %base.addr.i148, align 4
  %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.1 = load volatile ptr, ptr %base.addr.i148, align 4
  %add.ptr.i150.1 = getelementptr i8, ptr %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.1, i32 %add78.1
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.1) #13, !srcloc !482
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i148)
  %incdec.ptr80.1 = getelementptr i32, ptr %reg.7174, i32 2
  %63 = ptrtoint ptr %incdec.ptr80 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %incdec.ptr80, align 4
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 8
  %add78.2 = add nuw nsw i32 %mul77, 131584
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i148)
  %66 = ptrtoint ptr %base.addr.i148 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %base.addr.i148, align 4
  %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.2 = load volatile ptr, ptr %base.addr.i148, align 4
  %add.ptr.i150.2 = getelementptr i8, ptr %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.2, i32 %add78.2
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.2) #13, !srcloc !482
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i148)
  %incdec.ptr80.2 = getelementptr i32, ptr %reg.7174, i32 3
  %69 = ptrtoint ptr %incdec.ptr80.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %incdec.ptr80.1, align 4
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 8
  %add78.3 = add nuw nsw i32 %mul77, 131840
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i148)
  %72 = ptrtoint ptr %base.addr.i148 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %base.addr.i148, align 4
  %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.3 = load volatile ptr, ptr %base.addr.i148, align 4
  %add.ptr.i150.3 = getelementptr i8, ptr %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.3, i32 %add78.3
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.3) #13, !srcloc !482
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i148)
  %incdec.ptr80.3 = getelementptr i32, ptr %reg.7174, i32 4
  %75 = ptrtoint ptr %incdec.ptr80.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %incdec.ptr80.2, align 4
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 8
  %add78.4 = add nuw nsw i32 %mul77, 133376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i148)
  %78 = ptrtoint ptr %base.addr.i148 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %base.addr.i148, align 4
  %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.4 = load volatile ptr, ptr %base.addr.i148, align 4
  %add.ptr.i150.4 = getelementptr i8, ptr %base.addr.i148.0.base.addr.i148.0.base.addr.0.base.addr.0.base.addr.0..i149.4, i32 %add78.4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.4) #13, !srcloc !482
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i148)
  %incdec.ptr80.4 = getelementptr i32, ptr %reg.7174, i32 5
  %81 = ptrtoint ptr %incdec.ptr80.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %incdec.ptr80.3, align 4
  %incdec.ptr88 = getelementptr i32, ptr %reg.7174, i32 6
  %82 = ptrtoint ptr %incdec.ptr80.4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -33752070, ptr %incdec.ptr80.4, align 4
  %incdec.ptr88.1 = getelementptr i32, ptr %reg.7174, i32 7
  %83 = ptrtoint ptr %incdec.ptr88 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -33752070, ptr %incdec.ptr88, align 4
  %incdec.ptr88.2 = getelementptr i32, ptr %reg.7174, i32 8
  %84 = ptrtoint ptr %incdec.ptr88.1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -33752070, ptr %incdec.ptr88.1, align 4
  %inc93 = add nuw nsw i32 %j.1173, 1
  %85 = ptrtoint ptr %num_msi_used to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %num_msi_used, align 4
  %conv64 = zext i16 %86 to i32
  %sub65 = add nsw i32 %conv64, -1
  %cmp66 = icmp slt i32 %inc93, %sub65
  br i1 %cmp66, label %for.cond69.preheader.for.cond69.preheader_crit_edge, label %for.cond69.preheader.for.end94_crit_edge

for.cond69.preheader.for.end94_crit_edge:         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end94

for.cond69.preheader.for.cond69.preheader_crit_edge: ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond69.preheader

for.end94:                                        ; preds = %for.cond69.preheader.for.end94_crit_edge, %for.cond63.preheader.for.end94_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hclgevf_get_regs_len(ptr nocapture noundef readonly %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %num_tqps = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 18
  %4 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_tqps, align 2
  %conv = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv, 7
  %num_msi_used = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 30
  %6 = ptrtoint ptr %num_msi_used to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_msi_used, align 4
  %conv2 = zext i16 %7 to i32
  %sub = shl nuw nsw i32 %conv2, 1
  %mul3 = add nuw nsw i32 %sub, %mul
  %add4 = shl nuw nsw i32 %mul3, 4
  %mul5 = add nuw nsw i32 %add4, 48
  ret i32 %mul5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_get_rss_key_size(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_get_rss(ptr noundef %handle, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) #0 align 64 {
entry:
  %resp_msg.i = alloca [8 x i8], align 8
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %rss_cfg1 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %4 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp = icmp ugt i32 %7, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hclge_comm_get_rss_hash_info(ptr noundef %rss_cfg1, ptr noundef %key, ptr noundef %hfunc) #13
  br label %if.end10

if.else:                                          ; preds = %hclgevf_ae_get_hdev.exit
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %if.then2

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else.if.end_crit_edge
  %tobool3.not = icmp eq ptr %key, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp_msg.i) #13
  %9 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %resp_msg.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %10 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 13)
  %14 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 15, ptr %send_msg.i, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %10, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %11, align 1
  %call.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i, i16 noundef zeroext 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i24 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i24, label %for.inc.i, label %if.then4.hclgevf_get_rss_hash_key.exit_crit_edge

if.then4.hclgevf_get_rss_hash_key.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_get_rss_hash_key.exit

for.inc.i:                                        ; preds = %if.then4
  %17 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %resp_msg.i, align 8
  %19 = ptrtoint ptr %rss_cfg1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %rss_cfg1, align 1
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %11, align 1
  %call.1.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i, i16 noundef zeroext 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.hclgevf_get_rss_hash_key.exit_crit_edge

for.inc.i.hclgevf_get_rss_hash_key.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_get_rss_hash_key.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx17.1.i = getelementptr %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 0, i32 8
  %21 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %resp_msg.i, align 8
  %23 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %arrayidx17.1.i, align 1
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %11, align 1
  %call.2.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i, i16 noundef zeroext 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.hclgevf_get_rss_hash_key.exit_crit_edge

for.inc.1.i.hclgevf_get_rss_hash_key.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_get_rss_hash_key.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx17.2.i = getelementptr %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 0, i32 16
  %25 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %resp_msg.i, align 8
  %27 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %arrayidx17.2.i, align 1
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %11, align 1
  %call.3.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i, i16 noundef zeroext 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.hclgevf_get_rss_hash_key.exit_crit_edge

for.inc.2.i.hclgevf_get_rss_hash_key.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_get_rss_hash_key.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx17.3.i = getelementptr %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 0, i32 24
  %29 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %resp_msg.i, align 8
  %31 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %arrayidx17.3.i, align 1
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %11, align 1
  %call.4.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i, i16 noundef zeroext 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end8, label %for.inc.3.i.hclgevf_get_rss_hash_key.exit_crit_edge

for.inc.3.i.hclgevf_get_rss_hash_key.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_get_rss_hash_key.exit

hclgevf_get_rss_hash_key.exit:                    ; preds = %for.inc.3.i.hclgevf_get_rss_hash_key.exit_crit_edge, %for.inc.2.i.hclgevf_get_rss_hash_key.exit_crit_edge, %for.inc.1.i.hclgevf_get_rss_hash_key.exit_crit_edge, %for.inc.i.hclgevf_get_rss_hash_key.exit_crit_edge, %if.then4.hclgevf_get_rss_hash_key.exit_crit_edge
  %call.lcssa.i = phi i32 [ %call.i, %if.then4.hclgevf_get_rss_hash_key.exit_crit_edge ], [ %call.1.i, %for.inc.i.hclgevf_get_rss_hash_key.exit_crit_edge ], [ %call.2.i, %for.inc.1.i.hclgevf_get_rss_hash_key.exit_crit_edge ], [ %call.3.i, %for.inc.2.i.hclgevf_get_rss_hash_key.exit_crit_edge ], [ %call.4.i, %for.inc.3.i.hclgevf_get_rss_hash_key.exit_crit_edge ]
  %33 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.217, i32 noundef %call.lcssa.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp_msg.i) #13
  br label %cleanup

if.end8:                                          ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx11.4.i = getelementptr %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 0, i32 32
  %35 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %resp_msg.i, align 8
  %37 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %arrayidx11.4.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp_msg.i) #13
  %38 = call ptr @memcpy(ptr %key, ptr %rss_cfg1, i32 40)
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge, %if.then
  %39 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ae_dev, align 4
  %rss_ind_tbl_size = getelementptr inbounds %struct.hnae3_ae_dev, ptr %40, i32 0, i32 5, i32 3
  %41 = ptrtoint ptr %rss_ind_tbl_size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rss_ind_tbl_size, align 4
  call void @hclge_comm_get_rss_indir_tbl(ptr noundef %rss_cfg1, ptr noundef %indir, i16 noundef zeroext %42) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %hclgevf_get_rss_hash_key.exit
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call.lcssa.i, %hclgevf_get_rss_hash_key.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_set_rss(ptr noundef %handle, ptr nocapture noundef readonly %indir, ptr noundef %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %4 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp = icmp ugt i32 %7, 32
  br i1 %cmp, label %if.then, label %hclgevf_ae_get_hdev.exit.if.end5_crit_edge

hclgevf_ae_get_hdev.exit.if.end5_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %hclgevf_ae_get_hdev.exit
  %rss_cfg1 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %call3 = tail call i32 @hclge_comm_set_rss_hash_key(ptr noundef %rss_cfg1, ptr noundef %hw, ptr noundef %key, i8 noundef zeroext %hfunc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %hclgevf_ae_get_hdev.exit.if.end5_crit_edge
  %8 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ae_dev, align 4
  %rss_ind_tbl_size30 = getelementptr inbounds %struct.hnae3_ae_dev, ptr %9, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %rss_ind_tbl_size30 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rss_ind_tbl_size30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp732.not = icmp eq i16 %11, 0
  br i1 %cmp732.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %rss_indirection_tbl = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.033
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %conv9 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %rss_indirection_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rss_indirection_tbl, align 4
  %arrayidx10 = getelementptr i16, ptr %15, i32 %i.033
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv9, ptr %arrayidx10, align 2
  %inc = add nuw nsw i32 %i.033, 1
  %17 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ae_dev, align 4
  %rss_ind_tbl_size = getelementptr inbounds %struct.hnae3_ae_dev, ptr %18, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %rss_ind_tbl_size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rss_ind_tbl_size, align 4
  %conv = zext i16 %20 to i32
  %cmp7 = icmp ult i32 %inc, %conv
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %.lcssa = phi ptr [ %9, %if.end5.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %hw12 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %rss_indirection_tbl14 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %rss_indirection_tbl14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rss_indirection_tbl14, align 4
  %call15 = tail call i32 @hclge_comm_set_rss_indir_table(ptr noundef %.lcssa, ptr noundef %hw12, ptr noundef %22) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %for.end ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_set_rss_tuple(ptr noundef %handle, ptr noundef %nfc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %4 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %7)
  %cmp = icmp ult i32 %7, 33
  br i1 %cmp, label %hclgevf_ae_get_hdev.exit.cleanup_crit_edge, label %if.end

hclgevf_ae_get_hdev.exit.cleanup_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %hclgevf_ae_get_hdev.exit
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %rss_cfg = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4
  %call3 = tail call i32 @hclge_comm_set_rss_tuple(ptr noundef %5, ptr noundef %hw, ptr noundef %rss_cfg, ptr noundef %nfc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr9.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.219, i32 noundef %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge ], [ %call3, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_get_rss_tuple(ptr noundef %handle, ptr nocapture noundef %nfc) #0 align 64 {
entry:
  %tuple_sets = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tuple_sets) #13
  %4 = ptrtoint ptr %tuple_sets to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tuple_sets, align 1, !annotation !484
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %5 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %8)
  %cmp = icmp ult i32 %8, 33
  br i1 %cmp, label %hclgevf_ae_get_hdev.exit.cleanup_crit_edge, label %if.end

hclgevf_ae_get_hdev.exit.cleanup_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %hclgevf_ae_get_hdev.exit
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %data, align 8
  %rss_cfg = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 1
  %10 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_type, align 4
  %call1 = call i32 @hclge_comm_get_rss_tuple(ptr noundef %rss_cfg, i32 noundef %11, ptr noundef nonnull %tuple_sets) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %tuple_sets to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuple_sets, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call i64 @hclge_comm_convert_rss_tuple(i8 noundef zeroext %13) #13
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call5, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tuple_sets) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hclgevf_get_tc_size(ptr nocapture noundef readonly %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %rss_size = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %rss_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rss_size, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_get_vector(ptr nocapture noundef %handle, i16 noundef zeroext %vector_num, ptr nocapture noundef %vector_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %num_nic_msix = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 31
  %4 = ptrtoint ptr %num_nic_msix to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_nic_msix, align 2
  %sub = add i16 %5, -1
  %6 = tail call i16 @llvm.umin.i16(i16 %sub, i16 %vector_num)
  %num_msi_left = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 29
  %7 = ptrtoint ptr %num_msi_left to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_msi_left, align 2
  %9 = tail call i16 @llvm.umin.i16(i16 %8, i16 %6)
  %conv20 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp2181.not = icmp eq i16 %9, 0
  br i1 %cmp2181.not, label %hclgevf_ae_get_hdev.exit.for.end43_crit_edge, label %for.cond23.preheader.lr.ph

hclgevf_ae_get_hdev.exit.for.end43_crit_edge:     ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end43

for.cond23.preheader.lr.ph:                       ; preds = %hclgevf_ae_get_hdev.exit
  %num_msi = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 28
  %vector_status = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 34
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %vector_irq = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 35
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.inc41.for.cond23.preheader_crit_edge, %for.cond23.preheader.lr.ph
  %j.084 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.inc41.for.cond23.preheader_crit_edge ]
  %alloc.083 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %alloc.1, %for.inc41.for.cond23.preheader_crit_edge ]
  %vector.082 = phi ptr [ %vector_info, %for.cond23.preheader.lr.ph ], [ %vector.1, %for.inc41.for.cond23.preheader_crit_edge ]
  %10 = ptrtoint ptr %num_msi to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_msi, align 8
  %conv24 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp2579 = icmp ugt i16 %11, 1
  br i1 %cmp2579, label %for.body27.lr.ph, label %for.cond23.preheader.for.inc41_crit_edge

for.cond23.preheader.for.inc41_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc41

for.body27.lr.ph:                                 ; preds = %for.cond23.preheader
  %12 = ptrtoint ptr %vector_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vector_status, align 4
  br label %for.body27

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %for.body27.lr.ph
  %i.080 = phi i32 [ 1, %for.body27.lr.ph ], [ %inc40, %for.inc.for.body27_crit_edge ]
  %arrayidx = getelementptr i16, ptr %13, i32 %i.080
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp29 = icmp eq i16 %15, -1
  br i1 %cmp29, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr9.i, align 8
  %call31 = tail call i32 @pci_irq_vector(ptr noundef %17, i32 noundef %i.080) #13
  %vector32 = getelementptr inbounds %struct.hnae3_vector_info, ptr %vector.082, i32 0, i32 1
  %18 = ptrtoint ptr %vector32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call31, ptr %vector32, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 131072
  %sub34 = shl i32 %i.080, 2
  %mul = add i32 %sub34, -4
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %mul
  %21 = ptrtoint ptr %vector.082 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr35, ptr %vector.082, align 4
  %22 = ptrtoint ptr %vector_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vector_status, align 4
  %arrayidx37 = getelementptr i16, ptr %23, i32 %i.080
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %arrayidx37, align 2
  %25 = load i32, ptr %vector32, align 4
  %26 = ptrtoint ptr %vector_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vector_irq, align 8
  %arrayidx39 = getelementptr i32, ptr %27, i32 %i.080
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %arrayidx39, align 4
  %incdec.ptr = getelementptr %struct.hnae3_vector_info, ptr %vector.082, i32 1
  %inc = add i32 %alloc.083, 1
  br label %for.inc41

for.inc:                                          ; preds = %for.body27
  %inc40 = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc40, %conv24
  br i1 %exitcond.not, label %for.inc.for.inc41_crit_edge, label %for.inc.for.body27_crit_edge

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

for.inc.for.inc41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc41

for.inc41:                                        ; preds = %for.inc.for.inc41_crit_edge, %if.then, %for.cond23.preheader.for.inc41_crit_edge
  %vector.1 = phi ptr [ %incdec.ptr, %if.then ], [ %vector.082, %for.cond23.preheader.for.inc41_crit_edge ], [ %vector.082, %for.inc.for.inc41_crit_edge ]
  %alloc.1 = phi i32 [ %inc, %if.then ], [ %alloc.083, %for.cond23.preheader.for.inc41_crit_edge ], [ %alloc.083, %for.inc.for.inc41_crit_edge ]
  %inc42 = add nuw nsw i32 %j.084, 1
  %exitcond86.not = icmp eq i32 %inc42, %conv20
  br i1 %exitcond86.not, label %for.inc41.for.end43_crit_edge, label %for.inc41.for.cond23.preheader_crit_edge

for.inc41.for.cond23.preheader_crit_edge:         ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond23.preheader

for.inc41.for.end43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end43

for.end43:                                        ; preds = %for.inc41.for.end43_crit_edge, %hclgevf_ae_get_hdev.exit.for.end43_crit_edge
  %alloc.0.lcssa = phi i32 [ 0, %hclgevf_ae_get_hdev.exit.for.end43_crit_edge ], [ %alloc.1, %for.inc41.for.end43_crit_edge ]
  %29 = ptrtoint ptr %num_msi_left to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_msi_left, align 2
  %31 = trunc i32 %alloc.0.lcssa to i16
  %conv47 = sub i16 %30, %31
  store i16 %conv47, ptr %num_msi_left, align 2
  %num_msi_used = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 30
  %32 = ptrtoint ptr %num_msi_used to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_msi_used, align 4
  %conv49 = add i16 %33, %31
  store i16 %conv49, ptr %num_msi_used, align 4
  ret i32 %alloc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_put_vector(ptr nocapture noundef %handle, i32 noundef %vector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %num_msi.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 28
  %4 = ptrtoint ptr %num_msi.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_msi.i, align 8
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp8.not.i = icmp eq i16 %5, 0
  br i1 %cmp8.not.i, label %hclgevf_ae_get_hdev.exit.do.end_crit_edge, label %for.body.lr.ph.i

hclgevf_ae_get_hdev.exit.do.end_crit_edge:        ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %hclgevf_ae_get_hdev.exit
  %vector_irq.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 35
  %6 = ptrtoint ptr %vector_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vector_irq.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vector)
  %cmp2.i = icmp eq i32 %9, %vector
  br i1 %cmp2.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %hclgevf_ae_get_hdev.exit.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.221, i32 noundef -22) #16
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %vector_status.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 34
  %12 = ptrtoint ptr %vector_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vector_status.i, align 4
  %arrayidx.i8 = getelementptr i16, ptr %13, i32 %i.09.i
  %14 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp.i9 = icmp eq i16 %15, -1
  br i1 %cmp.i9, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.180, i32 noundef %i.09.i) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %arrayidx.i8, align 2
  %num_msi_left.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 29
  %19 = ptrtoint ptr %num_msi_left.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_msi_left.i, align 2
  %add.i = add i16 %20, 1
  store i16 %add.i, ptr %num_msi_left.i, align 2
  %num_msi_used.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 30
  %21 = ptrtoint ptr %num_msi_used.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_msi_used.i, align 4
  %sub.i = add i16 %22, -1
  store i16 %sub.i, ptr %num_msi_used.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_map_ring_to_vector(ptr noundef %handle, i32 noundef %vector, ptr noundef %ring_chain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %num_msi.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 28
  %4 = ptrtoint ptr %num_msi.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_msi.i, align 8
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp8.not.i = icmp eq i16 %5, 0
  br i1 %cmp8.not.i, label %hclgevf_ae_get_hdev.exit.do.end_crit_edge, label %for.body.lr.ph.i

hclgevf_ae_get_hdev.exit.do.end_crit_edge:        ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %hclgevf_ae_get_hdev.exit
  %vector_irq.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 35
  %6 = ptrtoint ptr %vector_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vector_irq.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vector)
  %cmp2.i = icmp eq i32 %9, %vector
  br i1 %cmp2.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %hclgevf_ae_get_hdev.exit.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.223, i32 noundef -22) #16
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc i32 @hclgevf_bind_ring_to_vector(ptr noundef %handle, i1 noundef zeroext true, i32 noundef %i.09.i, ptr noundef %ring_chain)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_unmap_ring_from_vector(ptr noundef %handle, i32 noundef %vector, ptr noundef %ring_chain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %hclgevf_ae_get_hdev.exit.cleanup_crit_edge

hclgevf_ae_get_hdev.exit.cleanup_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %hclgevf_ae_get_hdev.exit
  %num_msi.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 28
  %7 = ptrtoint ptr %num_msi.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_msi.i, align 8
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp8.not.i = icmp eq i16 %8, 0
  br i1 %cmp8.not.i, label %if.end.do.end_crit_edge, label %for.body.lr.ph.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end
  %vector_irq.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 35
  %9 = ptrtoint ptr %vector_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vector_irq.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %10, i32 %i.09.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %vector)
  %cmp2.i = icmp eq i32 %12, %vector
  br i1 %cmp2.i, label %if.end4, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.223, i32 noundef -22) #16
  br label %cleanup

if.end4:                                          ; preds = %for.body.i
  %call5 = tail call fastcc i32 @hclgevf_bind_ring_to_vector(ptr noundef %handle, i1 noundef zeroext false, i32 noundef %i.09.i, ptr noundef %ring_chain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %pdev11 = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 1
  %15 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev11, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.229, i32 noundef %i.09.i, i32 noundef %call5) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end4.cleanup_crit_edge, %do.end, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge ], [ %call5, %do.end10 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_reset_tqp(ptr noundef %handle) #0 align 64 {
entry:
  %desc.i.i = alloca %struct.hclge_desc, align 4
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  %return_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %6 = call ptr @memset(ptr %send_msg, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %return_status) #13
  %7 = ptrtoint ptr %return_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %return_status, align 1
  br i1 %tobool.not.i, label %hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge, label %if.else.i.i

hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit.i

if.else.i.i:                                      ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1
  %..i.i = select i1 %cmp.i.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit.i

hclgevf_ae_get_hdev.exit.i:                       ; preds = %if.else.i.i, %hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge
  %.sink.i.i = phi i32 [ -17696, %hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ]
  %num_tqps.i = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 8
  %10 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_tqps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp1.not.i = icmp eq i16 %11, 0
  br i1 %cmp1.not.i, label %hclgevf_ae_get_hdev.exit.i.if.end_crit_edge, label %for.body.lr.ph.i

hclgevf_ae_get_hdev.exit.i.if.end_crit_edge:      ; preds = %hclgevf_ae_get_hdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %hclgevf_ae_get_hdev.exit.i
  %add.ptr9.i.i = getelementptr i8, ptr %handle, i32 %.sink.i.i
  %12 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i, i32 0, i32 4
  %stream_id3.i.i = getelementptr inbounds %struct.hclgevf_cfg_com_tqp_queue_cmd, ptr %12, i32 0, i32 1
  %hw.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i16 %i.02.i, 1
  %13 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_tqps.i, align 2
  %cmp.i30 = icmp ult i16 %inc.i, %14
  br i1 %cmp.i30, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #13
  %15 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i, i32 noundef 2848, i1 noundef zeroext false) #13
  %16 = and i16 %i.02.i, 1023
  %17 = call i16 @llvm.bswap.i16(i16 %16) #13
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %12, align 4
  %19 = ptrtoint ptr %stream_id3.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %stream_id3.i.i, align 2
  %call.i.i.i = call i32 @hclge_comm_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i, label %for.cond.i, label %do.end

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr9.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.231, i32 noundef %call.i.i.i) #16
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %hclgevf_ae_get_hdev.exit.i.if.end_crit_edge
  %22 = call ptr @memset(ptr %5, i32 0, i32 14)
  %23 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 27, ptr %send_msg, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %4, align 1
  %call2 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext true, ptr noundef nonnull %return_status, i16 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %25 = ptrtoint ptr %return_status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %return_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp = icmp eq i8 %26, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_tqps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp934 = icmp ugt i16 %28, 1
  br i1 %cmp934, label %for.body.preheader, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %29 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i16 %i.035, 1
  %30 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_tqps.i, align 2
  %cmp9 = icmp ult i16 %inc, %31
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.035 = phi i16 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %32 = call ptr @memset(ptr %29, i32 0, i32 12)
  %33 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 27, ptr %send_msg, align 1
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %4, align 1
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %i.035, ptr %5, align 1
  %call11 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i.i, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call11, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %return_status) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hclgevf_get_fw_version(ptr nocapture noundef readonly %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %fw_version = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 16
  %4 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_version, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_enable_vlan_filter(ptr noundef %handle, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %ae_dev1 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %4 = ptrtoint ptr %ae_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ae_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %caps = getelementptr inbounds %struct.hnae3_ae_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %caps, align 4
  %8 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %hclgevf_ae_get_hdev.exit.cleanup_crit_edge, label %if.end

hclgevf_ae_get_hdev.exit.cleanup_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %11 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 13)
  %13 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %send_msg, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %10, align 1
  %conv = zext i1 %enable to i8
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %9, align 1
  %call4 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_set_vlan_filter(ptr noundef %handle, i16 noundef zeroext %proto, i16 noundef zeroext %vlan_id, i1 noundef zeroext %is_kill) #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_kill to i8
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 3
  %conv = zext i16 %vlan_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan_id)
  %cmp = icmp ugt i16 %vlan_id, 4095
  br i1 %cmp, label %hclgevf_ae_get_hdev.exit.cleanup_crit_edge, label %if.end

hclgevf_ae_get_hdev.exit.cleanup_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %proto)
  %cmp3.not = icmp eq i16 %proto, -32512
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end6
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp ne i32 %13, 0
  %14 = and i1 %tobool10.not, %is_kill
  br i1 %14, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

land.lhs.true:                                    ; preds = %if.end6
  br i1 %is_kill, label %land.lhs.true.if.then13_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true.if.then13_crit_edge, %lor.lhs.false.if.then13_crit_edge
  %vlan_del_fail_bmap = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 37
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %vlan_del_fail_bmap) #13
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %15 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 5
  %16 = call ptr @memset(ptr %15, i32 0, i32 9)
  %17 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 5, ptr %send_msg, align 1
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %4, align 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %5, align 1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %vlan_id, ptr %6, align 1
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 -32512, ptr %7, align 1
  %call22 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  %is_kill.not43 = xor i1 %is_kill, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool26.not = icmp eq i32 %call22, 0
  %or.cond = select i1 %is_kill.not43, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.end15.cleanup_crit_edge, label %if.then27

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_del_fail_bmap29 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 37
  call void @_set_bit(i32 noundef %conv, ptr noundef %vlan_del_fail_bmap29) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end15.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ -22, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ %call22, %if.then27 ], [ %call22, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_en_hw_strip_rxvtag(ptr noundef %handle, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 13)
  %8 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %send_msg, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %4, align 1
  %conv = zext i1 %enable to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %5, align 1
  %call1 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_reset_event(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.233) #16
  %default_reset_request = getelementptr inbounds %struct.hclgevf_dev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %default_reset_request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_reset_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %default_reset_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %default_reset_request, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %default_reset_request) #13
  br label %if.end19.sink.split.sink.split.i

if.else.i:                                        ; preds = %if.then
  %10 = ptrtoint ptr %default_reset_request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %default_reset_request, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not.i = icmp eq i32 %12, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.if.end19.sink.split.sink.split.i_crit_edge

if.else.i.if.end19.sink.split.sink.split.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.sink.split.sink.split.i

if.else4.i:                                       ; preds = %if.else.i
  %13 = ptrtoint ptr %default_reset_request to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %default_reset_request, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not.i = icmp eq i32 %15, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge

if.else4.i.if.end19.sink.split.sink.split.i_crit_edge: ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.sink.split.sink.split.i

if.else8.i:                                       ; preds = %if.else4.i
  %16 = ptrtoint ptr %default_reset_request to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %default_reset_request, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %if.else12.i, label %if.else8.i.if.end19.sink.split.i_crit_edge

if.else8.i.if.end19.sink.split.i_crit_edge:       ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.sink.split.i

if.else12.i:                                      ; preds = %if.else8.i
  %19 = ptrtoint ptr %default_reset_request to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %default_reset_request, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not.i = icmp eq i32 %21, 0
  br i1 %tobool14.not.i, label %if.else12.i.if.end_crit_edge, label %if.else12.i.if.end19.sink.split.i_crit_edge

if.else12.i.if.end19.sink.split.i_crit_edge:      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.sink.split.i

if.else12.i.if.end_crit_edge:                     ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end19.sink.split.sink.split.i:                 ; preds = %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge, %if.else.i.if.end19.sink.split.sink.split.i_crit_edge, %if.then.i
  %.sink8.i = phi i32 [ 2, %if.then.i ], [ 3, %if.else.i.if.end19.sink.split.sink.split.i_crit_edge ], [ 2, %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge ]
  %rst_level.0.ph.ph.i = phi i32 [ 0, %if.then.i ], [ 3, %if.else.i.if.end19.sink.split.sink.split.i_crit_edge ], [ 2, %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge ]
  tail call void @_clear_bit(i32 noundef %.sink8.i, ptr noundef %default_reset_request) #13
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.end19.sink.split.sink.split.i, %if.else12.i.if.end19.sink.split.i_crit_edge, %if.else8.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.else8.i.if.end19.sink.split.i_crit_edge ], [ 4, %if.else12.i.if.end19.sink.split.i_crit_edge ], [ 1, %if.end19.sink.split.sink.split.i ]
  %rst_level.0.ph.i = phi i32 [ 1, %if.else8.i.if.end19.sink.split.i_crit_edge ], [ 4, %if.else12.i.if.end19.sink.split.i_crit_edge ], [ %rst_level.0.ph.ph.i, %if.end19.sink.split.sink.split.i ]
  tail call void @_clear_bit(i32 noundef %.sink.i, ptr noundef %default_reset_request) #13
  br label %if.end

if.end:                                           ; preds = %if.end19.sink.split.i, %if.else12.i.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ 8, %if.else12.i.if.end_crit_edge ], [ %rst_level.0.ph.i, %if.end19.sink.split.i ], [ 1, %entry.if.end_crit_edge ]
  %reset_level4 = getelementptr inbounds %struct.hclgevf_dev, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %reset_level4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %reset_level4, align 4
  %reset_state = getelementptr inbounds %struct.hclgevf_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %reset_state) #13
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i13 = icmp eq i32 %25, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i, label %if.end.hclgevf_reset_task_schedule.exit_crit_edge

if.end.hclgevf_reset_task_schedule.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_reset_task_schedule.exit

land.lhs.true.i:                                  ; preds = %if.end
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.hclgevf_reset_task_schedule.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.hclgevf_reset_task_schedule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_reset_task_schedule.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i14, label %land.lhs.true4.i.hclgevf_reset_task_schedule.exit_crit_edge

land.lhs.true4.i.hclgevf_reset_task_schedule.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_reset_task_schedule.exit

if.then.i14:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = load ptr, ptr @hclgevf_wq, align 4
  %service_task.i = getelementptr inbounds %struct.hclgevf_dev, ptr %3, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %service_task.i, i32 noundef 0) #13
  br label %hclgevf_reset_task_schedule.exit

hclgevf_reset_task_schedule.exit:                 ; preds = %if.then.i14, %land.lhs.true4.i.hclgevf_reset_task_schedule.exit_crit_edge, %land.lhs.true.i.hclgevf_reset_task_schedule.exit_crit_edge, %if.end.hclgevf_reset_task_schedule.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %last_reset_time = getelementptr inbounds %struct.hclgevf_dev, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %last_reset_time to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %last_reset_time, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_set_def_reset_request(ptr nocapture noundef readonly %ae_dev, i32 noundef %rst_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %default_reset_request = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 7
  tail call void @_set_bit(i32 noundef %rst_type, ptr noundef %default_reset_request) #13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hclgevf_get_channels(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %ch) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %rss_size_max.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 20
  %4 = ptrtoint ptr %rss_size_max.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rss_size_max.i, align 2
  %num_tqps.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 18
  %6 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_tqps.i, align 2
  %num_tc.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 43, i32 5, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_tc.i, align 4
  %div.rhs.trunc.i = zext i8 %9 to i16
  %div9.i = udiv i16 %7, %div.rhs.trunc.i
  %10 = tail call i16 @llvm.umin.i16(i16 %div9.i, i16 %5) #13
  %11 = zext i16 %10 to i32
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %12 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_combined, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %13 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %other_count, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %14 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %max_other, align 4
  %rss_size = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rss_size, align 4
  %conv = zext i16 %16 to i32
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %17 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %combined_count, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hclgevf_get_tqps_and_rss_info(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %alloc_tqps, ptr nocapture noundef writeonly %max_rss_size) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %num_tqps = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 18
  %4 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_tqps, align 2
  %6 = ptrtoint ptr %alloc_tqps to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %alloc_tqps, align 2
  %rss_size_max = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 20
  %7 = ptrtoint ptr %rss_size_max to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rss_size_max, align 2
  %9 = ptrtoint ptr %max_rss_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %max_rss_size, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_set_channels(ptr noundef %handle, i32 noundef %new_tqps_num, i1 noundef zeroext %rxfh_configured) #0 align 64 {
entry:
  %tc_offset = alloca [8 x i16], align 2
  %tc_valid = alloca [8 x i16], align 2
  %tc_size = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tc_offset) #13
  %4 = call ptr @memset(ptr %tc_offset, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tc_valid) #13
  %5 = call ptr @memset(ptr %tc_valid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tc_size) #13
  %rss_size = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 1
  %6 = call ptr @memset(ptr %tc_size, i32 255, i32 16)
  %7 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rss_size, align 4
  %num_tqps = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 8
  %9 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_tqps, align 2
  br i1 %tobool.not.i, label %hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge, label %if.else.i.i

hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit.i

if.else.i.i:                                      ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 1
  %..i.i = select i1 %cmp.i.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit.i

hclgevf_ae_get_hdev.exit.i:                       ; preds = %if.else.i.i, %hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge
  %.sink.i.i = phi i32 [ -17696, %hclgevf_ae_get_hdev.exit.hclgevf_ae_get_hdev.exit.i_crit_edge ], [ %..i.i, %if.else.i.i ]
  %add.ptr9.i.i = getelementptr i8, ptr %handle, i32 %.sink.i.i
  %conv.i = trunc i32 %new_tqps_num to i16
  %req_rss_size.i = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 2
  %13 = ptrtoint ptr %req_rss_size.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %req_rss_size.i, align 2
  %rss_size_max.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i, i32 0, i32 20
  %14 = ptrtoint ptr %rss_size_max.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rss_size_max.i, align 2
  %num_tqps.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i, i32 0, i32 18
  %16 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_tqps.i, align 2
  %num_tc.i = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_tc.i, align 4
  %conv2.i = zext i8 %19 to i16
  %div.i = udiv i16 %17, %conv2.i
  %20 = tail call i16 @llvm.umin.i16(i16 %15, i16 %div.i) #13
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %conv.i)
  %cmp13.not.i = icmp eq i16 %8, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool.not.i80 = icmp eq i16 %conv.i, 0
  %or.cond.i = or i1 %tobool.not.i80, %cmp13.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %conv.i)
  %cmp21.not.i = icmp ult i16 %20, %conv.i
  %or.cond69.i = select i1 %or.cond.i, i1 true, i1 %cmp21.not.i
  br i1 %or.cond69.i, label %if.else.i81, label %hclgevf_ae_get_hdev.exit.i.if.end40.sink.split.i_crit_edge

hclgevf_ae_get_hdev.exit.i.if.end40.sink.split.i_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.sink.split.i

if.else.i81:                                      ; preds = %hclgevf_ae_get_hdev.exit.i
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %20)
  %cmp28.i = icmp ugt i16 %8, %20
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %20)
  %cmp36.i = icmp ult i16 %8, %20
  %or.cond70.i = select i1 %tobool.not.i80, i1 %cmp36.i, i1 false
  %or.cond71.i = or i1 %cmp28.i, %or.cond70.i
  br i1 %or.cond71.i, label %if.else.i81.if.end40.sink.split.i_crit_edge, label %if.else.i81.hclgevf_update_rss_size.exit_crit_edge

if.else.i81.hclgevf_update_rss_size.exit_crit_edge: ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_update_rss_size.exit

if.else.i81.if.end40.sink.split.i_crit_edge:      ; preds = %if.else.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.sink.split.i

if.end40.sink.split.i:                            ; preds = %if.else.i81.if.end40.sink.split.i_crit_edge, %hclgevf_ae_get_hdev.exit.i.if.end40.sink.split.i_crit_edge
  %.sink.i82 = phi i16 [ %conv.i, %hclgevf_ae_get_hdev.exit.i.if.end40.sink.split.i_crit_edge ], [ %20, %if.else.i81.if.end40.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %rss_size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %.sink.i82, ptr %rss_size, align 4
  br label %hclgevf_update_rss_size.exit

hclgevf_update_rss_size.exit:                     ; preds = %if.end40.sink.split.i, %if.else.i81.hclgevf_update_rss_size.exit_crit_edge
  %22 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rss_size, align 4
  %mul.i = mul i16 %23, %conv2.i
  %24 = ptrtoint ptr %num_tqps to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %mul.i, ptr %num_tqps, align 2
  %hw_tc_map = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 26
  %25 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hw_tc_map, align 2
  call void @hclge_comm_get_rss_tc_info(i16 noundef zeroext %8, i8 noundef zeroext %26, ptr noundef nonnull %tc_offset, ptr noundef nonnull %tc_valid, ptr noundef nonnull %tc_size) #13
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %call7 = call i32 @hclge_comm_set_rss_tc_mode(ptr noundef %hw, ptr noundef nonnull %tc_offset, ptr noundef nonnull %tc_valid, ptr noundef nonnull %tc_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %hclgevf_update_rss_size.exit.cleanup_crit_edge

hclgevf_update_rss_size.exit.cleanup_crit_edge:   ; preds = %hclgevf_update_rss_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %hclgevf_update_rss_size.exit
  br i1 %rxfh_configured, label %if.end.do.end33_crit_edge, label %if.end10

if.end.do.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

if.end10:                                         ; preds = %if.end
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %27 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ae_dev, align 4
  %rss_ind_tbl_size = getelementptr inbounds %struct.hnae3_ae_dev, ptr %28, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %rss_ind_tbl_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rss_ind_tbl_size, align 4
  %conv = zext i16 %30 to i32
  %31 = shl nuw nsw i32 %conv, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #17
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %for.cond.preheader

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end10
  %32 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ae_dev, align 4
  %rss_ind_tbl_size17106 = getelementptr inbounds %struct.hnae3_ae_dev, ptr %33, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %rss_ind_tbl_size17106 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rss_ind_tbl_size17106, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp108.not = icmp eq i16 %35, 0
  br i1 %cmp108.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %36 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rss_size, align 4
  %conv21 = zext i16 %37 to i32
  %38 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ae_dev, align 4
  %rss_ind_tbl_size17 = getelementptr inbounds %struct.hnae3_ae_dev, ptr %39, i32 0, i32 5, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rem = urem i32 %i.0109, %conv21
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %i.0109
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rem, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0109, 1
  %41 = ptrtoint ptr %rss_ind_tbl_size17 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rss_ind_tbl_size17, align 4
  %conv18 = zext i16 %42 to i32
  %cmp = icmp ult i32 %inc, %conv18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %43 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rss_size, align 4
  %conv23 = zext i16 %44 to i32
  %rss_size24 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %rss_size24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv23, ptr %rss_size24, align 8
  %46 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %handle, align 8
  %tobool.not.i.i83 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i83, label %for.end.hclgevf_ae_get_hdev.exit.i91_crit_edge, label %if.else.i.i87

for.end.hclgevf_ae_get_hdev.exit.i91_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit.i91

if.else.i.i87:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i84 = getelementptr inbounds %struct.hnae3_client, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %type.i.i84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i.i85 = icmp eq i32 %49, 1
  %..i.i86 = select i1 %cmp.i.i85, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit.i91

hclgevf_ae_get_hdev.exit.i91:                     ; preds = %if.else.i.i87, %for.end.hclgevf_ae_get_hdev.exit.i91_crit_edge
  %.sink.i.i88 = phi i32 [ -17696, %for.end.hclgevf_ae_get_hdev.exit.i91_crit_edge ], [ %..i.i86, %if.else.i.i87 ]
  %add.ptr9.i.i89 = getelementptr i8, ptr %handle, i32 %.sink.i.i88
  %ae_dev.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i89, i32 0, i32 1
  %50 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ae_dev.i, align 4
  %dev_version.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %dev_version.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dev_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %53)
  %cmp.i90 = icmp ugt i32 %53, 32
  br i1 %cmp.i90, label %if.then.i, label %hclgevf_ae_get_hdev.exit.i91.if.end5.i_crit_edge

hclgevf_ae_get_hdev.exit.i91.if.end5.i_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then.i:                                        ; preds = %hclgevf_ae_get_hdev.exit.i91
  %rss_cfg1.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i89, i32 0, i32 4
  %hw.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i89, i32 0, i32 2
  %call3.i = call i32 @hclge_comm_set_rss_hash_key(ptr noundef %rss_cfg1.i, ptr noundef %hw.i, ptr noundef null, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i92 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i92, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %hclgevf_ae_get_hdev.exit.i91.if.end5.i_crit_edge
  %54 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ae_dev.i, align 4
  %rss_ind_tbl_size30.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %55, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %rss_ind_tbl_size30.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rss_ind_tbl_size30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp732.not.i = icmp eq i16 %57, 0
  br i1 %cmp732.not.i, label %if.end5.i.hclgevf_set_rss.exit_crit_edge, label %for.body.lr.ph.i

if.end5.i.hclgevf_set_rss.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_rss.exit

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %rss_indirection_tbl.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i89, i32 0, i32 4, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %call8.i.i, i32 %i.033.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %conv9.i = trunc i32 %59 to i16
  %60 = ptrtoint ptr %rss_indirection_tbl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rss_indirection_tbl.i, align 4
  %arrayidx10.i = getelementptr i16, ptr %61, i32 %i.033.i
  %62 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv9.i, ptr %arrayidx10.i, align 2
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %63 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ae_dev.i, align 4
  %rss_ind_tbl_size.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %64, i32 0, i32 5, i32 3
  %65 = ptrtoint ptr %rss_ind_tbl_size.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rss_ind_tbl_size.i, align 4
  %conv.i93 = zext i16 %66 to i32
  %cmp7.i = icmp ult i32 %inc.i, %conv.i93
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.hclgevf_set_rss.exit_crit_edge

for.body.i.hclgevf_set_rss.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_rss.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

hclgevf_set_rss.exit:                             ; preds = %for.body.i.hclgevf_set_rss.exit_crit_edge, %if.end5.i.hclgevf_set_rss.exit_crit_edge
  %.lcssa.i = phi ptr [ %55, %if.end5.i.hclgevf_set_rss.exit_crit_edge ], [ %64, %for.body.i.hclgevf_set_rss.exit_crit_edge ]
  %hw12.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i89, i32 0, i32 2
  %rss_indirection_tbl14.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i89, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %rss_indirection_tbl14.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rss_indirection_tbl14.i, align 4
  %call15.i = call i32 @hclge_comm_set_rss_indir_table(ptr noundef %.lcssa.i, ptr noundef %hw12.i, ptr noundef %68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool26.not = icmp eq i32 %call15.i, 0
  br i1 %tobool26.not, label %out.thread103, label %hclgevf_set_rss.exit.out_crit_edge

hclgevf_set_rss.exit.out_crit_edge:               ; preds = %hclgevf_set_rss.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.thread103:                                    ; preds = %hclgevf_set_rss.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %do.end33

out:                                              ; preds = %hclgevf_set_rss.exit.out_crit_edge, %if.then.i.out_crit_edge
  %retval.0.i98 = phi i32 [ %call15.i, %hclgevf_set_rss.exit.out_crit_edge ], [ %call3.i, %if.then.i.out_crit_edge ]
  %69 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr9.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.235, i32 noundef %retval.0.i98) #16
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

do.end33:                                         ; preds = %out.thread103, %if.end.do.end33_crit_edge
  %71 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr9.i, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %conv36 = zext i16 %8 to i32
  %73 = ptrtoint ptr %rss_size to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rss_size, align 4
  %conv38 = zext i16 %74 to i32
  %conv39 = zext i16 %10 to i32
  %75 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_tc.i, align 4
  %conv42 = zext i8 %76 to i32
  %mul = mul nuw nsw i32 %conv42, %conv38
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.238, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %mul) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %out, %if.end10.cleanup_crit_edge, %hclgevf_update_rss_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %hclgevf_update_rss_size.exit.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %do.end33 ], [ %retval.0.i98, %out ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tc_size) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tc_valid) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tc_offset) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hclgevf_get_link_mode(ptr nocapture noundef readonly %handle, ptr nocapture noundef writeonly %supported, ptr nocapture noundef writeonly %advertising) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %supported1 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 6
  %4 = ptrtoint ptr %supported1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %supported1, align 8
  %conv = trunc i64 %5 to i32
  %6 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %supported, align 4
  %advertising4 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 2, i32 7
  %7 = ptrtoint ptr %advertising4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %advertising4, align 8
  %conv5 = trunc i64 %8 to i32
  %9 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %advertising, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hclgevf_get_hw_reset_stat(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %6 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 134144
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hclgevf_ae_dev_resetting(ptr noundef %handle) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hclgevf_ae_dev_reset_cnt(ptr nocapture noundef readonly %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %hw_rst_done_cnt = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %hw_rst_done_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_rst_done_cnt, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_gro_en(ptr noundef %handle, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %gro_en = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 36
  %4 = ptrtoint ptr %gro_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gro_en, align 4, !range !485
  store i8 %frombool, ptr %gro_en, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #13
  %ae_dev.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 1
  %6 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %7 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ae_dev.i, align 4
  %caps.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %caps.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i14 = icmp eq i32 %11, 0
  br i1 %tobool.not.i14, label %hclgevf_ae_get_hdev.exit.hclgevf_config_gro.exit.thread_crit_edge, label %if.end.i

hclgevf_ae_get_hdev.exit.hclgevf_config_gro.exit.thread_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_config_gro.exit.thread

if.end.i:                                         ; preds = %hclgevf_ae_get_hdev.exit
  %12 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 3088, i1 noundef zeroext false) #13
  %13 = ptrtoint ptr %gro_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gro_en, align 4, !range !485
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %12, align 4
  %hw.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2
  %call.i.i = call i32 @hclge_comm_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.end.i.hclgevf_config_gro.exit.thread_crit_edge, label %if.then

if.end.i.hclgevf_config_gro.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_config_gro.exit.thread

hclgevf_config_gro.exit.thread:                   ; preds = %if.end.i.hclgevf_config_gro.exit.thread_crit_edge, %hclgevf_ae_get_hdev.exit.hclgevf_config_gro.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr9.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.176, i32 noundef %call.i.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #13
  %18 = ptrtoint ptr %gro_en to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %5, ptr %gro_en, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %hclgevf_config_gro.exit.thread
  %retval.0.i17 = phi i32 [ 0, %hclgevf_config_gro.exit.thread ], [ %call.i.i, %if.then ]
  ret i32 %retval.0.i17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @hclgevf_get_qid_global(ptr noundef %handle, i16 noundef zeroext %queue_id) #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  %resp_data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp_data) #13
  %6 = ptrtoint ptr %resp_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %resp_data, align 2, !annotation !484
  %7 = getelementptr inbounds [2 x i8], ptr %resp_data, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !484
  %9 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 2
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %11 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 31, ptr %send_msg, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %queue_id, ptr %5, align 1
  %call2 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext true, ptr noundef nonnull %resp_data, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %hclgevf_ae_get_hdev.exit.if.end_crit_edge

hclgevf_ae_get_hdev.exit.if.end_crit_edge:        ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %resp_data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %resp_data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %hclgevf_ae_get_hdev.exit.if.end_crit_edge
  %qid_in_pf.0 = phi i16 [ 0, %hclgevf_ae_get_hdev.exit.if.end_crit_edge ], [ %15, %if.then ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp_data) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i16 %qid_in_pf.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_set_timer_task(ptr noundef %handle, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 5
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %hclgevf_ae_get_hdev.exit
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i6 = icmp eq i32 %6, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = load ptr, ptr @hclgevf_wq, align 4
  %service_task.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %service_task.i, i32 noundef 0) #13
  br label %if.end

if.else:                                          ; preds = %hclgevf_ae_get_hdev.exit
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !486
  %serv_processed_cnt.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 48
  %11 = ptrtoint ptr %serv_processed_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serv_processed_cnt.i, align 4
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not6.i = icmp eq i32 %15, 0
  br i1 %tobool.not6.i, label %if.else.if.end_crit_edge, label %if.else.land.lhs.true.i8_crit_edge

if.else.land.lhs.true.i8_crit_edge:               ; preds = %if.else
  br label %land.lhs.true.i8

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i8:                                 ; preds = %while.body.i.land.lhs.true.i8_crit_edge, %if.else.land.lhs.true.i8_crit_edge
  %i.07.i = phi i32 [ %inc.i, %while.body.i.land.lhs.true.i8_crit_edge ], [ 0, %if.else.land.lhs.true.i8_crit_edge ]
  %inc.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %i.07.i)
  %exitcond.not.i = icmp eq i32 %i.07.i, 100000
  br i1 %exitcond.not.i, label %land.lhs.true.i8.if.end_crit_edge, label %land.rhs.i

land.lhs.true.i8.if.end_crit_edge:                ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs.i:                                       ; preds = %land.lhs.true.i8
  %16 = ptrtoint ptr %serv_processed_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %serv_processed_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %17)
  %cmp2.i = icmp eq i32 %12, %17
  br i1 %cmp2.i, label %while.body.i, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #13
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 2048
  %tobool.not.i9 = icmp eq i32 %20, 0
  br i1 %tobool.not.i9, label %while.body.i.if.end_crit_edge, label %while.body.i.land.lhs.true.i8_crit_edge

while.body.i.land.lhs.true.i8_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i8

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %land.lhs.true.i8.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hclgevf_get_cmdq_stat(ptr noundef %handle) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  %comm_state = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %comm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %comm_state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool = icmp ne i32 %and1.i, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclgevf_devlink_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_cmd_queue_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_cmd_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_init_msi(ptr nocapture noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 1
  %2 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_dev, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %roce_base_msix_offset = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 33
  %7 = ptrtoint ptr %roce_base_msix_offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %roce_base_msix_offset, align 2
  %conv = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv, 1
  %num_msi = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 28
  %9 = ptrtoint ptr %num_msi to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_msi, align 8
  %conv2 = zext i16 %10 to i32
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef %add, i32 noundef %conv2, i32 noundef 4, ptr noundef null) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %num_msi3 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 28
  %11 = ptrtoint ptr %num_msi3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_msi3, align 8
  %conv4 = zext i16 %12 to i32
  %call.i83 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 2, i32 noundef %conv4, i32 noundef 6, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vectors.0 = phi i32 [ %call.i, %if.then ], [ %call.i83, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vectors.0)
  %cmp = icmp slt i32 %vectors.0, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %vectors.0) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %num_msi9 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 28
  %13 = ptrtoint ptr %num_msi9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_msi9, align 8
  %conv10 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %vectors.0, i32 %conv10)
  %cmp11 = icmp ult i32 %vectors.0, %conv10
  br i1 %cmp11, label %do.end16, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.70, i32 noundef %conv10, i32 noundef %vectors.0) #16
  br label %if.end21

if.end21:                                         ; preds = %do.end16, %if.end8.if.end21_crit_edge
  %conv22 = trunc i32 %vectors.0 to i16
  %17 = ptrtoint ptr %num_msi9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv22, ptr %num_msi9, align 8
  %num_msi_left = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 29
  %18 = ptrtoint ptr %num_msi_left to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv22, ptr %num_msi_left, align 2
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv27 = shl nuw i32 %vectors.0, 1
  %19 = and i32 %conv27, 131070
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev25, i32 noundef %19, i32 noundef 3520) #13
  %vector_status = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 34
  %20 = ptrtoint ptr %vector_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %vector_status, align 4
  %tobool30.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool30.not, label %if.then31, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end21
  %21 = ptrtoint ptr %num_msi9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_msi9, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp3595.not = icmp eq i16 %22, 0
  br i1 %cmp3595.not, label %for.cond.preheader.devm_kcalloc.exit87_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.devm_kcalloc.exit87_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %devm_kcalloc.exit87

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_free_irq_vectors(ptr noundef %1) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %23 = ptrtoint ptr %vector_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vector_status, align 4
  %arrayidx = getelementptr i16, ptr %24, i32 %i.096
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.096, 1
  %26 = ptrtoint ptr %num_msi9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_msi9, align 8
  %conv34 = zext i16 %27 to i32
  %cmp35 = icmp ult i32 %inc, %conv34
  br i1 %cmp35, label %for.body.for.body_crit_edge, label %devm_kcalloc.exit87.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

devm_kcalloc.exit87.loopexit:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast = zext i16 %27 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 2
  br label %devm_kcalloc.exit87

devm_kcalloc.exit87:                              ; preds = %devm_kcalloc.exit87.loopexit, %for.cond.preheader.devm_kcalloc.exit87_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %devm_kcalloc.exit87.loopexit ], [ 0, %for.cond.preheader.devm_kcalloc.exit87_crit_edge ]
  %call5.i.i84 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev25, i32 noundef %.lcssa, i32 noundef 3520) #13
  %vector_irq = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 35
  %28 = ptrtoint ptr %vector_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i84, ptr %vector_irq, align 8
  %tobool43.not = icmp eq ptr %call5.i.i84, null
  br i1 %tobool43.not, label %if.then44, label %devm_kcalloc.exit87.cleanup_crit_edge

devm_kcalloc.exit87.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then44:                                        ; preds = %devm_kcalloc.exit87
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %vector_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vector_status, align 4
  tail call void @devm_kfree(ptr noundef %dev25, ptr noundef %30) #13
  tail call void @pci_free_irq_vectors(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %devm_kcalloc.exit87.cleanup_crit_edge, %if.then31, %do.end
  %retval.0 = phi i32 [ %vectors.0, %do.end ], [ -12, %if.then44 ], [ -12, %if.then31 ], [ 0, %devm_kcalloc.exit87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_state_init(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %state) #13
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %state) #13
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %state) #13
  %service_task = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41
  tail call void @__init_work(ptr noundef %service_task, i32 noundef 0) #13
  %0 = ptrtoint ptr %service_task to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %service_task, align 8
  %lockdep_map = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.72, ptr noundef nonnull @hclgevf_state_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry10 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41, i32 0, i32 1
  %1 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hclgevf_service_task, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.74, ptr noundef nonnull @hclgevf_state_init.__key.73) #13
  %mbx_resp = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %mbx_resp, ptr noundef nonnull @.str.76, ptr noundef nonnull @hclgevf_state_init.__key.75) #13
  %reset_sem = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15
  %wait_list1.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 2
  %4 = ptrtoint ptr %reset_sem to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reset_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 2
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 3
  %7 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 4
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.154, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 0, i32 4, i32 5
  %12 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %14 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15, i32 2, i32 1
  %15 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.155, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %mac_table = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38
  tail call void @__raw_spin_lock_init(ptr noundef %mac_table, ptr noundef nonnull @.str.78, ptr noundef nonnull @hclgevf_state_init.__key.77, i16 noundef signext 3) #13
  %uc_mac_list = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38, i32 1
  %16 = ptrtoint ptr %uc_mac_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %uc_mac_list, ptr %uc_mac_list, align 4
  %prev.i38 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %uc_mac_list, ptr %prev.i38, align 4
  %mc_mac_list = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38, i32 2
  %18 = ptrtoint ptr %mc_mac_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %mc_mac_list, ptr %mc_mac_list, align 4
  %prev.i39 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mc_mac_list, ptr %prev.i39, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_misc_irq_init(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %misc_vector.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 3
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #13
  %vector_irq.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %vector_irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %vector_irq.i, align 4
  %hw.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 132096
  %5 = ptrtoint ptr %misc_vector.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %misc_vector.i, align 4
  %vector_status.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %vector_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vector_status.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %7, align 2
  %9 = load i32, ptr %vector_irq.i, align 4
  %vector_irq3.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 35
  %10 = ptrtoint ptr %vector_irq3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vector_irq3.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %11, align 4
  %num_msi_left.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 29
  %13 = ptrtoint ptr %num_msi_left.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_msi_left.i, align 2
  %sub.i = add i16 %14, -1
  store i16 %sub.i, ptr %num_msi_left.i, align 2
  %num_msi_used.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 30
  %15 = ptrtoint ptr %num_msi_used.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_msi_used.i, align 4
  %add.i = add i16 %16, 1
  store i16 %add.i, ptr %num_msi_used.i, align 4
  %name = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %entry.pci_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i)
  %23 = ptrtoint ptr %vector_irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vector_irq.i, align 4
  %call.i22 = tail call i32 @request_threaded_irq(i32 noundef %24, ptr noundef nonnull @hclgevf_misc_irq_handle, ptr noundef null, i32 noundef 0, ptr noundef %name, ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not = icmp eq i32 %call.i22, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %vector_irq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vector_irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.157, i32 noundef %28) #16
  br label %cleanup

if.end:                                           ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 160000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %misc_vector.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %misc_vector.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 16777216) #13, !srcloc !480
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call.i22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_configure(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %send_msg.i47 = alloca %struct.hclge_vf_to_pf_msg, align 1
  %resp_msg.i48 = alloca [2 x i8], align 1
  %resp_msg.i40 = alloca [4 x i8], align 4
  %send_msg.i41 = alloca %struct.hclge_vf_to_pf_msg, align 1
  %resp_msg.i33 = alloca [6 x i8], align 2
  %send_msg.i34 = alloca %struct.hclge_vf_to_pf_msg, align 1
  %send_msg.i26 = alloca %struct.hclge_vf_to_pf_msg, align 1
  %resp_msg.i27 = alloca i8, align 1
  %resp_msg.i = alloca [8 x i8], align 8
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  %caps.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %gro_en = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 36
  %0 = ptrtoint ptr %gro_en to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %gro_en, align 4
  %ae_dev1.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 1
  %1 = ptrtoint ptr %ae_dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ae_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp_msg.i) #13
  %3 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %resp_msg.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caps.i)
  %6 = call ptr @memset(ptr %5, i32 0, i32 14)
  %7 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 13, ptr %send_msg.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %call.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i, i16 noundef zeroext 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hclgevf_get_basic_info.exit

if.end.i:                                         ; preds = %entry
  %9 = getelementptr inbounds [8 x i8], ptr %resp_msg.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %resp_msg.i, i32 0, i32 2
  %11 = ptrtoint ptr %resp_msg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %resp_msg.i, align 8
  %hw_tc_map3.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 26
  %13 = ptrtoint ptr %hw_tc_map3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %hw_tc_map3.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %10, align 2
  %mbx_api_version4.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 17
  %16 = ptrtoint ptr %mbx_api_version4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %mbx_api_version4.i, align 8
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 4
  %19 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %caps.i, align 4
  %caps.i.0.caps.i.0.caps.0.caps.0..i = load volatile i32, ptr %caps.i, align 4
  %and1.i.i = and i32 %caps.i.0.caps.i.0.caps.0.caps.0..i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end_crit_edge, label %if.then7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %caps8.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %2, i32 0, i32 7
  call void @_set_bit(i32 noundef 19, ptr noundef %caps8.i) #13
  br label %if.end

hclgevf_get_basic_info.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.164, i32 noundef %call.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caps.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp_msg.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caps.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp_msg.i) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i26) #13
  %22 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i26, i32 0, i32 1
  %23 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i26, i32 0, i32 1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp_msg.i27) #13
  %24 = ptrtoint ptr %resp_msg.i27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %resp_msg.i27, align 1, !annotation !484
  %25 = call ptr @memset(ptr %23, i32 0, i32 14)
  %26 = ptrtoint ptr %send_msg.i26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %send_msg.i26, align 1
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %22, align 1
  %call.i28 = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg.i26, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i27, i16 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end4, label %hclgevf_get_port_base_vlan_filter_state.exit

hclgevf_get_port_base_vlan_filter_state.exit:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdev, align 8
  %dev.i30 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i30, ptr noundef nonnull @.str.166, i32 noundef %call.i28) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp_msg.i27) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i26) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %30 = ptrtoint ptr %resp_msg.i27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %resp_msg.i27, align 1
  %conv.i = zext i8 %31 to i32
  %port_base_vlan_state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 7
  %32 = ptrtoint ptr %port_base_vlan_state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %port_base_vlan_state.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp_msg.i27) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i26) #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_msg.i33) #13
  %33 = call ptr @memset(ptr %resp_msg.i33, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i34) #13
  %34 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i34, i32 0, i32 1
  %35 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i34, i32 0, i32 1, i32 0, i32 1
  %36 = call ptr @memset(ptr %35, i32 0, i32 14)
  %37 = ptrtoint ptr %send_msg.i34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 11, ptr %send_msg.i34, align 1
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %34, align 1
  %call.i35 = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg.i34, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i33, i16 noundef zeroext 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end8, label %hclgevf_get_queue_info.exit

hclgevf_get_queue_info.exit:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hdev, align 8
  %dev.i37 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i37, ptr noundef nonnull @.str.168, i32 noundef %call.i35) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i34) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_msg.i33) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %41 = getelementptr inbounds [6 x i8], ptr %resp_msg.i33, i32 0, i32 4
  %42 = getelementptr inbounds [6 x i8], ptr %resp_msg.i33, i32 0, i32 2
  %num_tqps.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 18
  %43 = ptrtoint ptr %resp_msg.i33 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %resp_msg.i33, align 2
  %45 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %num_tqps.i, align 2
  %rss_size_max.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 20
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %42, align 2
  %48 = ptrtoint ptr %rss_size_max.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %rss_size_max.i, align 2
  %rx_buf_len.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 23
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %41, align 2
  %51 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %rx_buf_len.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i34) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_msg.i33) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_msg.i40) #13
  %52 = ptrtoint ptr %resp_msg.i40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %resp_msg.i40, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i41) #13
  %53 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i41, i32 0, i32 1
  %54 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i41, i32 0, i32 1, i32 0, i32 1
  %55 = call ptr @memset(ptr %54, i32 0, i32 14)
  %56 = ptrtoint ptr %send_msg.i41 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 12, ptr %send_msg.i41, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %53, align 1
  %call.i42 = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg.i41, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i40, i16 noundef zeroext 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end12, label %hclgevf_get_queue_depth.exit

hclgevf_get_queue_depth.exit:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hdev, align 8
  %dev.i44 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44, ptr noundef nonnull @.str.170, i32 noundef %call.i42) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i41) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_msg.i40) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %60 = getelementptr inbounds [4 x i8], ptr %resp_msg.i40, i32 0, i32 2
  %num_tx_desc.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 24
  %61 = ptrtoint ptr %resp_msg.i40 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %resp_msg.i40, align 4
  %63 = ptrtoint ptr %num_tx_desc.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %num_tx_desc.i, align 2
  %num_rx_desc.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 25
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %60, align 2
  %66 = ptrtoint ptr %num_rx_desc.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %num_rx_desc.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i41) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_msg.i40) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i47) #13
  %67 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i47, i32 0, i32 1
  %68 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i47, i32 0, i32 1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp_msg.i48) #13
  %69 = ptrtoint ptr %resp_msg.i48 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %resp_msg.i48, align 1, !annotation !484
  %70 = getelementptr inbounds [2 x i8], ptr %resp_msg.i48, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %70, align 1, !annotation !484
  %72 = call ptr @memset(ptr %68, i32 0, i32 14)
  %73 = ptrtoint ptr %send_msg.i47 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 35, ptr %send_msg.i47, align 1
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %67, align 1
  %call.i49 = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg.i47, i1 noundef zeroext true, ptr noundef nonnull %resp_msg.i48, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i50, label %if.end.i53, label %do.end.i52

do.end.i52:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hdev, align 8
  %dev.i51 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i51, ptr noundef nonnull @.str.172, i32 noundef %call.i49) #16
  br label %hclgevf_get_pf_media_type.exit

if.end.i53:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %resp_msg.i48 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %resp_msg.i48, align 1
  %mac.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 2
  %79 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %mac.i, align 8
  %80 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %70, align 1
  %module_type.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 2, i32 1
  %82 = ptrtoint ptr %module_type.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %module_type.i, align 1
  br label %hclgevf_get_pf_media_type.exit

hclgevf_get_pf_media_type.exit:                   ; preds = %if.end.i53, %do.end.i52
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp_msg.i48) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i47) #13
  br label %cleanup

cleanup:                                          ; preds = %hclgevf_get_pf_media_type.exit, %hclgevf_get_queue_depth.exit, %hclgevf_get_queue_info.exit, %hclgevf_get_port_base_vlan_filter_state.exit, %hclgevf_get_basic_info.exit
  %retval.0 = phi i32 [ %call.i49, %hclgevf_get_pf_media_type.exit ], [ %call.i, %hclgevf_get_basic_info.exit ], [ %call.i28, %hclgevf_get_port_base_vlan_filter_state.exit ], [ %call.i35, %hclgevf_get_queue_info.exit ], [ %call.i42, %hclgevf_get_queue_depth.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_alloc_tqps(ptr nocapture noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tqps = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 18
  %0 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tqps, align 2
  %conv = zext i16 %1 to i32
  %2 = mul nuw nsw i32 %conv, 56
  %3 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %2, i32 noundef 3520) #13
  %htqp = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 42
  %5 = ptrtoint ptr %htqp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %htqp, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_tqps, align 2
  %conv4 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp59.not = icmp eq i16 %7, 0
  br i1 %cmp59.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %rx_buf_len = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 23
  %10 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_buf_len, align 8
  %conv10 = zext i16 %11 to i32
  %num_tx_desc = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 24
  %12 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_tx_desc, align 2
  %num_rx_desc = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 25
  %14 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_rx_desc, align 4
  %hw21 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %16 = ptrtoint ptr %hw21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw21, align 8
  %add.ptr25 = getelementptr i8, ptr %17, i32 524544
  %add.ptr = getelementptr i8, ptr %17, i32 524288
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tqp.060 = phi ptr [ %call5.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %tqp.060 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev7, ptr %tqp.060, align 8
  %conv9 = trunc i32 %i.061 to i16
  %index = getelementptr inbounds %struct.hclge_comm_tqp, ptr %tqp.060, i32 0, i32 3
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv9, ptr %index, align 8
  %q = getelementptr inbounds %struct.hclge_comm_tqp, ptr %tqp.060, i32 0, i32 1
  %ae_algo = getelementptr inbounds %struct.hclge_comm_tqp, ptr %tqp.060, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %ae_algo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ae_algovf, ptr %ae_algo, align 4
  %buf_size = getelementptr inbounds %struct.hclge_comm_tqp, ptr %tqp.060, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv10, ptr %buf_size, align 4
  %tx_desc_num = getelementptr inbounds %struct.hclge_comm_tqp, ptr %tqp.060, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %tx_desc_num to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %13, ptr %tx_desc_num, align 4
  %rx_desc_num = getelementptr inbounds %struct.hclge_comm_tqp, ptr %tqp.060, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %rx_desc_num to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %15, ptr %rx_desc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %i.061)
  %cmp14 = icmp ult i32 %i.061, 1024
  %sub = shl i32 %i.061, 9
  %mul26 = add nsw i32 %sub, -524288
  %add.ptr27 = getelementptr i8, ptr %add.ptr25, i32 %mul26
  %mul = shl nuw nsw i32 %i.061, 9
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %mul
  %storemerge = select i1 %cmp14, ptr %add.ptr18, ptr %add.ptr27
  %24 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %storemerge, ptr %q, align 4
  %incdec.ptr = getelementptr %struct.hclge_comm_tqp, ptr %tqp.060, i32 1
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_set_handle_info(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_algo = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 3
  %0 = ptrtoint ptr %ae_algo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ae_algovf, ptr %ae_algo, align 4
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %pdev2 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 1
  %3 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pdev2, align 4
  %numa_node_mask = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 22
  %4 = ptrtoint ptr %numa_node_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numa_node_mask, align 4
  %numa_node_mask3 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 6
  %6 = ptrtoint ptr %numa_node_mask3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %numa_node_mask3, align 4
  %flags = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags, align 8
  %or = or i64 %8, 8
  store i64 %or, ptr %flags, align 8
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %io_base5 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 13
  %11 = ptrtoint ptr %io_base5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %io_base5, align 8
  %num_tqps.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 18
  %12 = ptrtoint ptr %num_tqps.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_tqps.i, align 2
  %num_tx_desc.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 24
  %14 = ptrtoint ptr %num_tx_desc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_tx_desc.i, align 2
  %num_tx_desc2.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 4
  %16 = ptrtoint ptr %num_tx_desc2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %num_tx_desc2.i, align 2
  %num_rx_desc.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 25
  %17 = ptrtoint ptr %num_rx_desc.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_rx_desc.i, align 4
  %num_rx_desc3.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 5
  %19 = ptrtoint ptr %num_rx_desc3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %num_rx_desc3.i, align 4
  %rx_buf_len.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 23
  %20 = ptrtoint ptr %rx_buf_len.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rx_buf_len.i, align 8
  %rx_buf_len4.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 3
  %22 = ptrtoint ptr %rx_buf_len4.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %rx_buf_len4.i, align 4
  %hw_tc_map.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 26
  %23 = ptrtoint ptr %hw_tc_map.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hw_tc_map.i, align 2
  %and.i = and i8 %24, 1
  %and.1.i = lshr i8 %24, 1
  %and.1.lobit.i = and i8 %and.1.i, 1
  %and.2.i = lshr i8 %24, 2
  %and.2.lobit.i = and i8 %and.2.i, 1
  %and.3.i = lshr i8 %24, 3
  %and.3.lobit.i = and i8 %and.3.i, 1
  %and.4.i = lshr i8 %24, 4
  %and.4.lobit.i = and i8 %and.4.i, 1
  %and.5.i = lshr i8 %24, 5
  %and.5.lobit.i = and i8 %and.5.i, 1
  %and.6.i = lshr i8 %24, 6
  %and.6.lobit.i = and i8 %and.6.i, 1
  %.lobit.i = lshr i8 %24, 7
  %spec.select.1.i = add nuw nsw i8 %.lobit.i, %and.i
  %spec.select.2.i = add nuw nsw i8 %spec.select.1.i, %and.1.lobit.i
  %spec.select.3.i = add nuw nsw i8 %spec.select.2.i, %and.2.lobit.i
  %spec.select.4.i = add nuw nsw i8 %spec.select.3.i, %and.3.lobit.i
  %spec.select.5.i = add nuw nsw i8 %spec.select.4.i, %and.4.lobit.i
  %spec.select.6.i = add nuw nsw i8 %spec.select.5.i, %and.5.lobit.i
  %spec.select.7.i = add nuw nsw i8 %spec.select.6.i, %and.6.lobit.i
  %nic1.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.7.i)
  %tobool7.not.i = icmp eq i8 %spec.select.7.i, 0
  %spec.select159.i = select i1 %tobool7.not.i, i8 1, i8 %spec.select.7.i
  %num_tc10.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %num_tc10.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select159.i, ptr %num_tc10.i, align 4
  %rss_size_max.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 20
  %26 = ptrtoint ptr %rss_size_max.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rss_size_max.i, align 2
  %conv11.i = zext i16 %13 to i32
  %conv12.i = zext i8 %spec.select159.i to i32
  %div.rhs.trunc.i = zext i8 %spec.select159.i to i16
  %div163.i = udiv i16 %13, %div.rhs.trunc.i
  %28 = tail call i16 @llvm.umin.i16(i16 %div163.i, i16 %27) #13
  %29 = zext i16 %28 to i32
  %rss_size.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %28, ptr %rss_size.i, align 4
  %mul.i = mul nuw nsw i32 %conv12.i, %29
  %conv31.i = and i32 %mul.i, 65535
  %31 = tail call i32 @llvm.umin.i32(i32 %conv31.i, i32 %conv11.i) #13
  %conv41.i = trunc i32 %31 to i16
  %num_tqps42.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 8
  %32 = ptrtoint ptr %num_tqps42.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv41.i, ptr %num_tqps42.i, align 2
  %33 = shl nuw nsw i32 %31, 2
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %33, i32 noundef 3520) #13
  %tqp.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43, i32 5, i32 0, i32 9
  %34 = ptrtoint ptr %tqp.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i.i, ptr %tqp.i, align 4
  %tobool46.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool46.not.i, label %do.end, label %for.cond49.preheader.i

for.cond49.preheader.i:                           ; preds = %entry
  %35 = ptrtoint ptr %num_tqps42.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_tqps42.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp52167.not.i = icmp eq i16 %36, 0
  br i1 %cmp52167.not.i, label %for.cond49.preheader.i.hclgevf_knic_setup.exit.thread_crit_edge, label %for.body54.lr.ph.i

for.cond49.preheader.i.hclgevf_knic_setup.exit.thread_crit_edge: ; preds = %for.cond49.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_knic_setup.exit.thread

for.body54.lr.ph.i:                               ; preds = %for.cond49.preheader.i
  %htqp.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 42
  br label %for.body54.i

for.body54.i:                                     ; preds = %for.body54.i.for.body54.i_crit_edge, %for.body54.lr.ph.i
  %i.1168.i = phi i32 [ 0, %for.body54.lr.ph.i ], [ %inc65.i, %for.body54.i.for.body54.i_crit_edge ]
  %37 = ptrtoint ptr %htqp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %htqp.i, align 4
  %handle.i = getelementptr %struct.hclge_comm_tqp, ptr %38, i32 %i.1168.i, i32 1, i32 2
  %39 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %nic1.i, ptr %handle.i, align 4
  %40 = load ptr, ptr %htqp.i, align 4
  %tqp_index.i = getelementptr %struct.hclge_comm_tqp, ptr %40, i32 %i.1168.i, i32 1, i32 3
  %41 = ptrtoint ptr %tqp_index.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.1168.i, ptr %tqp_index.i, align 4
  %42 = load ptr, ptr %htqp.i, align 4
  %q61.i = getelementptr %struct.hclge_comm_tqp, ptr %42, i32 %i.1168.i, i32 1
  %43 = ptrtoint ptr %tqp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tqp.i, align 4
  %arrayidx63.i = getelementptr ptr, ptr %44, i32 %i.1168.i
  %45 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %q61.i, ptr %arrayidx63.i, align 4
  %inc65.i = add nuw nsw i32 %i.1168.i, 1
  %46 = ptrtoint ptr %num_tqps42.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_tqps42.i, align 2
  %conv51.i = zext i16 %47 to i32
  %cmp52.i = icmp ult i32 %inc65.i, %conv51.i
  br i1 %cmp52.i, label %for.body54.i.for.body54.i_crit_edge, label %for.body54.i.hclgevf_knic_setup.exit.thread_crit_edge

for.body54.i.hclgevf_knic_setup.exit.thread_crit_edge: ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_knic_setup.exit.thread

for.body54.i.for.body54.i_crit_edge:              ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54.i

hclgevf_knic_setup.exit.thread:                   ; preds = %for.body54.i.hclgevf_knic_setup.exit.thread_crit_edge, %for.cond49.preheader.i.hclgevf_knic_setup.exit.thread_crit_edge
  %.lcssa.i = phi i16 [ 0, %for.cond49.preheader.i.hclgevf_knic_setup.exit.thread_crit_edge ], [ %47, %for.body54.i.hclgevf_knic_setup.exit.thread_crit_edge ]
  %num_nic_msix.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 31
  %48 = ptrtoint ptr %num_nic_msix.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_nic_msix.i, align 2
  %sub.i = add i16 %49, -1
  %50 = tail call i16 @llvm.umin.i16(i16 %sub.i, i16 %.lcssa.i) #13
  %51 = ptrtoint ptr %num_tqps42.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %num_tqps42.i, align 2
  %conv84.i = zext i16 %50 to i32
  %div86.i = udiv i32 %conv84.i, %conv12.i
  %52 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rss_size.i, align 4
  %conv91.i = zext i16 %53 to i32
  %54 = tail call i32 @llvm.umin.i32(i32 %div86.i, i32 %conv91.i) #13
  %conv100.i = trunc i32 %54 to i16
  %55 = ptrtoint ptr %rss_size.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv100.i, ptr %rss_size.i, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.174, i32 noundef -12) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %hclgevf_knic_setup.exit.thread
  %retval.0.i20 = phi i32 [ 0, %hclgevf_knic_setup.exit.thread ], [ -12, %do.end ]
  ret i32 %retval.0.i20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_config_gro(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #13
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 1
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %1 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ae_dev, align 4
  %caps = getelementptr inbounds %struct.hnae3_ae_dev, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %caps, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 3088, i1 noundef zeroext false) #13
  %gro_en = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 36
  %7 = ptrtoint ptr %gro_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gro_en, align 4, !range !485
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %6, align 4
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.176, i32 noundef %call.i) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_rss_init_cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_rss_init_hw(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %tc_offset = alloca [8 x i16], align 2
  %tc_valid = alloca [8 x i16], align 2
  %tc_size = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_cfg1 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tc_offset) #13
  %0 = call ptr @memset(ptr %tc_offset, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tc_valid) #13
  %1 = call ptr @memset(ptr %tc_valid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tc_size) #13
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 1
  %2 = call ptr @memset(ptr %tc_size, i32 255, i32 16)
  %3 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ae_dev, align 4
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp = icmp ugt i32 %6, 32
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %rss_algo = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %rss_algo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rss_algo, align 4
  %conv = trunc i32 %8 to i8
  %call = tail call i32 @hclge_comm_set_rss_algo_key(ptr noundef %hw, i8 noundef zeroext %conv, ptr noundef %rss_cfg1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %nic = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43
  %call6 = tail call i32 @hclge_comm_set_rss_input_tuple(ptr noundef %nic, ptr noundef %hw, i1 noundef zeroext false, ptr noundef %rss_cfg1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %9 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ae_dev, align 4
  %hw12 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %rss_indirection_tbl = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %rss_indirection_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rss_indirection_tbl, align 4
  %call14 = tail call i32 @hclge_comm_set_rss_indir_table(ptr noundef %10, ptr noundef %hw12, ptr noundef %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %rss_size = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %rss_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rss_size, align 4
  %conv18 = trunc i32 %14 to i16
  %hw_tc_map = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 26
  %15 = ptrtoint ptr %hw_tc_map to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hw_tc_map, align 2
  call void @hclge_comm_get_rss_tc_info(i16 noundef zeroext %conv18, i8 noundef zeroext %16, ptr noundef nonnull %tc_offset, ptr noundef nonnull %tc_valid, ptr noundef nonnull %tc_size) #13
  %call27 = call i32 @hclge_comm_set_rss_tc_mode(ptr noundef %hw12, ptr noundef nonnull %tc_offset, ptr noundef nonnull %tc_valid, ptr noundef nonnull %tc_size) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end17 ], [ %call, %if.then.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call14, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tc_size) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tc_valid) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tc_offset) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_init_vlan_config(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %send_msg.i9 = alloca %struct.hclge_vf_to_pf_msg, align 1
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nic1 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43
  %0 = ptrtoint ptr %nic1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic1, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.hclgevf_en_hw_strip_rxvtag.exit_crit_edge, label %if.else.i.i

entry.hclgevf_en_hw_strip_rxvtag.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_en_hw_strip_rxvtag.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 1
  %..i.i = select i1 %cmp.i.i, i32 -17928, i32 -17696
  br label %hclgevf_en_hw_strip_rxvtag.exit

hclgevf_en_hw_strip_rxvtag.exit:                  ; preds = %if.else.i.i, %entry.hclgevf_en_hw_strip_rxvtag.exit_crit_edge
  %.sink.i.i = phi i32 [ -17696, %entry.hclgevf_en_hw_strip_rxvtag.exit_crit_edge ], [ %..i.i, %if.else.i.i ]
  %add.ptr9.i.i = getelementptr i8, ptr %nic1, i32 %.sink.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 13)
  %8 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %send_msg.i, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %5, align 1
  %call1.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i.i, ptr noundef nonnull %send_msg.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %hclgevf_en_hw_strip_rxvtag.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.178, i32 noundef %call1.i) #16
  br label %cleanup

if.end:                                           ; preds = %hclgevf_en_hw_strip_rxvtag.exit
  %13 = ptrtoint ptr %nic1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nic1, align 8
  %tobool.not.i.i10 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i10, label %if.end.hclgevf_ae_get_hdev.exit.i_crit_edge, label %if.else.i.i14

if.end.hclgevf_ae_get_hdev.exit.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit.i

if.else.i.i14:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i11 = getelementptr inbounds %struct.hnae3_client, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %type.i.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.i12 = icmp eq i32 %16, 1
  %..i.i13 = select i1 %cmp.i.i12, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit.i

hclgevf_ae_get_hdev.exit.i:                       ; preds = %if.else.i.i14, %if.end.hclgevf_ae_get_hdev.exit.i_crit_edge
  %.sink.i.i15 = phi i32 [ -17696, %if.end.hclgevf_ae_get_hdev.exit.i_crit_edge ], [ %..i.i13, %if.else.i.i14 ]
  %add.ptr9.i.i16 = getelementptr i8, ptr %nic1, i32 %.sink.i.i15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i9) #13
  %17 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i9, i32 0, i32 1, i32 0, i32 1, i32 3
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i16, i32 0, i32 5
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %hclgevf_ae_get_hdev.exit.i.hclgevf_set_vlan_filter.exit_crit_edge

hclgevf_ae_get_hdev.exit.i.hclgevf_set_vlan_filter.exit_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_vlan_filter.exit

lor.lhs.false.i:                                  ; preds = %hclgevf_ae_get_hdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  br label %hclgevf_set_vlan_filter.exit

hclgevf_set_vlan_filter.exit:                     ; preds = %lor.lhs.false.i, %hclgevf_ae_get_hdev.exit.i.hclgevf_set_vlan_filter.exit_crit_edge
  %24 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i9, i32 0, i32 1, i32 0, i32 1, i32 5
  %25 = call ptr @memset(ptr %24, i32 0, i32 9)
  %26 = ptrtoint ptr %send_msg.i9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %send_msg.i9, align 1
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 0, ptr %17, align 1
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 -32512, ptr %18, align 1
  %call22.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i.i16, ptr noundef nonnull %send_msg.i9, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i9) #13
  br label %cleanup

cleanup:                                          ; preds = %hclgevf_set_vlan_filter.exit, %do.end
  %retval.0 = phi i32 [ %call1.i, %do.end ], [ %call22.i, %hclgevf_set_vlan_filter.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_init_rxd_adv_layout(ptr nocapture noundef readonly %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ae_dev = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 1
  %0 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ae_dev, align 4
  %caps = getelementptr inbounds %struct.hnae3_ae_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %caps, align 4
  %4 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %add.ptr.i = getelementptr i8, ptr %6, i32 163848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #13, !srcloc !480
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_task_schedule(ptr noundef %hdev, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %6 = load ptr, ptr @hclgevf_wq, align 4
  %service_task = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %service_task, i32 noundef %delay) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_misc_irq_uninit(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %misc_vector = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %misc_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %misc_vector, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #13, !srcloc !480
  %vector_irq = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %vector_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vector_irq, align 4
  tail call void @synchronize_irq(i32 noundef %3) #13
  %4 = ptrtoint ptr %vector_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vector_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %hdev) #13
  %vector_status.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %vector_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vector_status.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i = icmp eq i16 %9, -1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.180, i32 noundef 0) #16
  br label %hclgevf_free_vector.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %7, align 2
  %num_msi_left.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 29
  %13 = ptrtoint ptr %num_msi_left.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_msi_left.i, align 2
  %add.i = add i16 %14, 1
  store i16 %add.i, ptr %num_msi_left.i, align 2
  %num_msi_used.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 30
  %15 = ptrtoint ptr %num_msi_used.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_msi_used.i, align 4
  %sub.i = add i16 %16, -1
  store i16 %sub.i, ptr %num_msi_used.i, align 4
  br label %hclgevf_free_vector.exit

hclgevf_free_vector.exit:                         ; preds = %if.end.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_state_uninit(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #13
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #13
  %func = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41, i32 0, i32 2
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %service_task = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %service_task) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mbx_resp = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 39
  tail call void @mutex_destroy(ptr noundef %mbx_resp) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_uninit_msi(ptr nocapture noundef readonly %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %vector_status = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %vector_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vector_status, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %3) #13
  %vector_irq = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 35
  %4 = ptrtoint ptr %vector_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vector_irq, align 8
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %5) #13
  tail call void @pci_free_irq_vectors(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_uninit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_devlink_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hclgevf_service_task(ptr noundef %work) #0 align 64 {
entry:
  %send_msg.i.i.i.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  %send_msg.i.i.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  %send_msg.i64.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  %send_msg.i59.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  %send_msg.i.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -17592
  tail call fastcc void @hclgevf_reset_service_task(ptr noundef %add.ptr)
  %state.i = getelementptr i8, ptr %work, i32 -17260
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.hclgevf_mailbox_service_task.exit_crit_edge, label %if.end.i

entry.hclgevf_mailbox_service_task.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_mailbox_service_task.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.hclgevf_mailbox_service_task.exit_crit_edge

if.end.i.hclgevf_mailbox_service_task.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_mailbox_service_task.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @hclgevf_mbx_async_handler(ptr noundef %add.ptr) #13
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %state.i) #13
  br label %hclgevf_mailbox_service_task.exit

hclgevf_mailbox_service_task.exit:                ; preds = %if.end5.i, %if.end.i.hclgevf_mailbox_service_task.exit_crit_edge, %entry.hclgevf_mailbox_service_task.exit_crit_edge
  %call.i5 = tail call i32 @round_jiffies_relative(i32 noundef 100) #13
  %nic.i = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i7 = icmp eq i32 %2, 0
  br i1 %tobool.not.i7, label %if.end.i8, label %hclgevf_mailbox_service_task.exit.hclgevf_periodic_service_task.exit_crit_edge

hclgevf_mailbox_service_task.exit.hclgevf_periodic_service_task.exit_crit_edge: ; preds = %hclgevf_mailbox_service_task.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_periodic_service_task.exit

if.end.i8:                                        ; preds = %hclgevf_mailbox_service_task.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_serv_processed.i = getelementptr i8, ptr %work, i32 584
  %4 = ptrtoint ptr %last_serv_processed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_serv_processed.i, align 8
  %add.neg.i = add i32 %3, -100
  %sub.i = sub i32 %add.neg.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i8.if.end11.i_crit_edge

if.end.i8.if.end11.i_crit_edge:                   ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub4.i = sub i32 %6, %5
  %call5.i = tail call i32 @round_jiffies_relative(i32 noundef 100) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i, i32 %call5.i)
  %cmp6.i = icmp ult i32 %sub4.i, %call5.i
  br i1 %cmp6.i, label %if.then7.i, label %if.then2.i.if.end11.i_crit_edge

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i = tail call i32 @round_jiffies_relative(i32 noundef 100) #13
  %sub9.i = sub i32 %call8.i, %sub4.i
  br label %out.i

if.end11.i:                                       ; preds = %if.then2.i.if.end11.i_crit_edge, %if.end.i8.if.end11.i_crit_edge
  %delta.0.i = phi i32 [ %sub4.i, %if.then2.i.if.end11.i_crit_edge ], [ %call.i5, %if.end.i8.if.end11.i_crit_edge ]
  %serv_processed_cnt.i = getelementptr i8, ptr %work, i32 580
  %7 = ptrtoint ptr %serv_processed_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serv_processed_cnt.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %serv_processed_cnt.i, align 4
  %rem.i = and i32 %inc.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool13.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end11.i.if.end15.i_crit_edge

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i.i) #13
  %comm_state.i.i = getelementptr i8, ptr %work, i32 -17408
  %9 = ptrtoint ptr %comm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %comm_state.i.i, align 4
  %and1.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then14.i.hclgevf_keep_alive.exit.i_crit_edge

if.then14.i.hclgevf_keep_alive.exit.i_crit_edge:  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_keep_alive.exit.i

if.end.i.i:                                       ; preds = %if.then14.i
  %11 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i, i32 0, i32 1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i, i32 0, i32 1
  %13 = call ptr @memset(ptr %11, i32 0, i32 14)
  %14 = ptrtoint ptr %send_msg.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 28, ptr %send_msg.i.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %12, align 1
  %call2.i.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr, ptr noundef nonnull %send_msg.i.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.hclgevf_keep_alive.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.hclgevf_keep_alive.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_keep_alive.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.147, i32 noundef %call2.i.i) #16
  br label %hclgevf_keep_alive.exit.i

hclgevf_keep_alive.exit.i:                        ; preds = %do.end.i.i, %if.end.i.i.hclgevf_keep_alive.exit.i_crit_edge, %if.then14.i.hclgevf_keep_alive.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i.i) #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %hclgevf_keep_alive.exit.i, %if.end11.i.if.end15.i_crit_edge
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i56.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i56.i)
  %tobool18.not.i = icmp eq i32 %and1.i56.i, 0
  br i1 %tobool18.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = ptrtoint ptr %last_serv_processed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_serv_processed.i, align 8
  br label %out.i

if.end21.i:                                       ; preds = %if.end15.i
  %22 = ptrtoint ptr %serv_processed_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %serv_processed_cnt.i, align 4
  %rem23.i = urem i32 %23, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23.i)
  %tobool24.not.i = icmp eq i32 %rem23.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %hw.i = getelementptr i8, ptr %work, i32 -17584
  %call27.i = call i32 @hclge_comm_tqps_update_stats(ptr noundef %nic.i, ptr noundef %hw.i) #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end28.i_crit_edge
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %26 = and i32 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool31.not.i = icmp eq i32 %26, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end28.i.if.end33.i_crit_edge

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i59.i) #13
  %27 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i59.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i59.i, i32 0, i32 1, i32 0, i32 1
  %29 = call ptr @memset(ptr %28, i32 0, i32 14)
  %30 = ptrtoint ptr %send_msg.i59.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 26, ptr %send_msg.i59.i, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %27, align 1
  %call.i.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr, ptr noundef nonnull %send_msg.i59.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i60.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i60.i, label %if.then32.i.hclgevf_request_link_info.exit.i_crit_edge, label %do.end.i62.i

if.then32.i.hclgevf_request_link_info.exit.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_request_link_info.exit.i

do.end.i62.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  %dev.i61.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i61.i, ptr noundef nonnull @.str.149, i32 noundef %call.i.i) #16
  br label %hclgevf_request_link_info.exit.i

hclgevf_request_link_info.exit.i:                 ; preds = %do.end.i62.i, %if.then32.i.hclgevf_request_link_info.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i59.i) #13
  br label %if.end33.i

if.end33.i:                                       ; preds = %hclgevf_request_link_info.exit.i, %if.end28.i.if.end33.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i64.i) #13
  %34 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i64.i, i32 0, i32 1
  %35 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i64.i, i32 0, i32 1, i32 0, i32 1
  %36 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i64.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %37 = call ptr @memset(ptr %36, i32 0, i32 13)
  %38 = ptrtoint ptr %send_msg.i64.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 33, ptr %send_msg.i64.i, align 1
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %34, align 1
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %35, align 1
  %call.i65.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr, ptr noundef nonnull %send_msg.i64.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %35, align 1
  %call3.i.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr, ptr noundef nonnull %send_msg.i64.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i64.i) #13
  %vlan_del_fail_bmap.i.i = getelementptr i8, ptr %work, i32 -17088
  %call.i66.i = call i32 @_find_first_bit_be(ptr noundef %vlan_del_fail_bmap.i.i, i32 noundef 4096) #13
  %conv132.i.i = and i32 %call.i66.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv132.i.i)
  %cmp.not33.i.i = icmp eq i32 %conv132.i.i, 4096
  br i1 %cmp.not33.i.i, label %if.end33.i.hclgevf_sync_vlan_filter.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end33.i.hclgevf_sync_vlan_filter.exit.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_vlan_filter.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end33.i
  %42 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i, i32 0, i32 1, i32 0, i32 1
  %44 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %45 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 3
  %46 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end10.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %conv136.i.i = phi i32 [ %conv132.i.i, %while.body.lr.ph.i.i ], [ %conv1.i.i, %if.end10.i.i.while.body.i.i_crit_edge ]
  %vlan_id.0.in35.i.i = phi i32 [ %call.i66.i, %while.body.lr.ph.i.i ], [ %call13.i.i, %if.end10.i.i.while.body.i.i_crit_edge ]
  %sync_cnt.034.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %if.end10.i.i.while.body.i.i_crit_edge ]
  %vlan_id.0.i.i = trunc i32 %vlan_id.0.in35.i.i to i16
  %47 = ptrtoint ptr %nic.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nic.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.hclgevf_ae_get_hdev.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

while.body.i.i.hclgevf_ae_get_hdev.exit.i.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i.i.i = getelementptr inbounds %struct.hnae3_client, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i.i.i.i = icmp eq i32 %50, 1
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit.i.i.i

hclgevf_ae_get_hdev.exit.i.i.i:                   ; preds = %if.else.i.i.i.i, %while.body.i.i.hclgevf_ae_get_hdev.exit.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ -17696, %while.body.i.i.hclgevf_ae_get_hdev.exit.i.i.i_crit_edge ], [ %..i.i.i.i, %if.else.i.i.i.i ]
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %nic.i, i32 %.sink.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan_id.0.i.i)
  %cmp.i.i.i = icmp ugt i16 %vlan_id.0.i.i, 4095
  br i1 %cmp.i.i.i, label %hclgevf_ae_get_hdev.exit.i.i.i.hclgevf_set_vlan_filter.exit.thread.i.i_crit_edge, label %if.end.i.i.i

hclgevf_ae_get_hdev.exit.i.i.i.hclgevf_set_vlan_filter.exit.thread.i.i_crit_edge: ; preds = %hclgevf_ae_get_hdev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_vlan_filter.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %hclgevf_ae_get_hdev.exit.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i.i, align 4
  %53 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge

if.end.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_vlan_filter.exit.thread.sink.split.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %54 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i.i.i, align 4
  %56 = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool10.not.i.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool10.not.i.not.i.i, label %if.end15.i.i.i, label %lor.lhs.false.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge

lor.lhs.false.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_vlan_filter.exit.thread.sink.split.i.i

if.end15.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %57 = call ptr @memset(ptr %46, i32 0, i32 9)
  %58 = ptrtoint ptr %send_msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 5, ptr %send_msg.i.i.i, align 1
  %59 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %42, align 1
  %60 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %43, align 1
  %61 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %vlan_id.0.i.i, ptr %44, align 1
  %62 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 -32512, ptr %45, align 1
  %call22.i.i.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i.i.i.i, ptr noundef nonnull %send_msg.i.i.i, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.end.i67.i, label %if.end15.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge

if.end15.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_set_vlan_filter.exit.thread.sink.split.i.i

hclgevf_set_vlan_filter.exit.thread.sink.split.i.i: ; preds = %if.end15.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge, %lor.lhs.false.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge, %if.end.i.i.i.hclgevf_set_vlan_filter.exit.thread.sink.split.i.i_crit_edge
  %conv.i.le30.i.i = and i32 %vlan_id.0.in35.i.i, 65535
  %vlan_del_fail_bmap.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i.i.i, i32 0, i32 37
  call void @_set_bit(i32 noundef %conv.i.le30.i.i, ptr noundef %vlan_del_fail_bmap.i.i.i) #13
  br label %hclgevf_set_vlan_filter.exit.thread.i.i

hclgevf_set_vlan_filter.exit.thread.i.i:          ; preds = %hclgevf_set_vlan_filter.exit.thread.sink.split.i.i, %hclgevf_ae_get_hdev.exit.i.i.i.hclgevf_set_vlan_filter.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i.i.i) #13
  br label %hclgevf_sync_vlan_filter.exit.i

if.end.i67.i:                                     ; preds = %if.end15.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i.i.i) #13
  call void @_clear_bit(i32 noundef %conv136.i.i, ptr noundef %vlan_del_fail_bmap.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %sync_cnt.034.i.i)
  %exitcond.i.i = icmp eq i32 %sync_cnt.034.i.i, 59
  br i1 %exitcond.i.i, label %if.end.i67.i.hclgevf_sync_vlan_filter.exit.i_crit_edge, label %if.end10.i.i

if.end.i67.i.hclgevf_sync_vlan_filter.exit.i_crit_edge: ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_vlan_filter.exit.i

if.end10.i.i:                                     ; preds = %if.end.i67.i
  %inc.i.i = add nuw nsw i32 %sync_cnt.034.i.i, 1
  %call13.i.i = call i32 @_find_first_bit_be(ptr noundef %vlan_del_fail_bmap.i.i, i32 noundef 4096) #13
  %conv1.i.i = and i32 %call13.i.i, 65535
  %cmp.not.i.i = icmp eq i32 %conv1.i.i, 4096
  br i1 %cmp.not.i.i, label %if.end10.i.i.hclgevf_sync_vlan_filter.exit.i_crit_edge, label %if.end10.i.i.while.body.i.i_crit_edge

if.end10.i.i.while.body.i.i_crit_edge:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end10.i.i.hclgevf_sync_vlan_filter.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_vlan_filter.exit.i

hclgevf_sync_vlan_filter.exit.i:                  ; preds = %if.end10.i.i.hclgevf_sync_vlan_filter.exit.i_crit_edge, %if.end.i67.i.hclgevf_sync_vlan_filter.exit.i_crit_edge, %hclgevf_set_vlan_filter.exit.thread.i.i, %if.end33.i.hclgevf_sync_vlan_filter.exit.i_crit_edge
  call fastcc void @hclgevf_sync_mac_list(ptr noundef %add.ptr, i32 noundef 0) #13
  call fastcc void @hclgevf_sync_mac_list(ptr noundef %add.ptr, i32 noundef 1) #13
  %netdev_flags.i.i = getelementptr i8, ptr %work, i32 220
  %63 = ptrtoint ptr %netdev_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %netdev_flags.i.i, align 4
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i, align 4
  %67 = and i32 %66, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool6.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool6.not.i.i, label %hclgevf_sync_vlan_filter.exit.i.hclgevf_sync_promisc_mode.exit.i_crit_edge, label %if.then.i.i

hclgevf_sync_vlan_filter.exit.i.hclgevf_sync_promisc_mode.exit.i_crit_edge: ; preds = %hclgevf_sync_vlan_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_promisc_mode.exit.i

if.then.i.i:                                      ; preds = %hclgevf_sync_vlan_filter.exit.i
  %conv.i.i = zext i8 %64 to i32
  %and3.i.i = and i32 %conv.i.i, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %and.i.i = and i32 %conv.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %68 = ptrtoint ptr %nic.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nic.i, align 8
  %tobool.not.i.i.i69.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i69.i, label %if.then.i.i.hclgevf_ae_get_hdev.exit.i.i77.i_crit_edge, label %if.else.i.i.i73.i

if.then.i.i.hclgevf_ae_get_hdev.exit.i.i77.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit.i.i77.i

if.else.i.i.i73.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i.i.i70.i = getelementptr inbounds %struct.hnae3_client, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %type.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type.i.i.i70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i.i.i71.i = icmp eq i32 %71, 1
  %..i.i.i72.i = select i1 %cmp.i.i.i71.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit.i.i77.i

hclgevf_ae_get_hdev.exit.i.i77.i:                 ; preds = %if.else.i.i.i73.i, %if.then.i.i.hclgevf_ae_get_hdev.exit.i.i77.i_crit_edge
  %.sink.i.i.i74.i = phi i32 [ -17696, %if.then.i.i.hclgevf_ae_get_hdev.exit.i.i77.i_crit_edge ], [ %..i.i.i72.i, %if.else.i.i.i73.i ]
  %add.ptr9.i.i.i75.i = getelementptr i8, ptr %nic.i, i32 %.sink.i.i.i74.i
  %ae_dev.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i.i75.i, i32 0, i32 1
  %72 = ptrtoint ptr %ae_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ae_dev.i.i.i, align 4
  %dev_version.i.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %dev_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dev_version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %75)
  %cmp.i.i76.i = icmp ugt i32 %75, 32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i.i.i.i) #13
  %76 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i.i, i32 0, i32 1
  %77 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %78 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %79 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 2
  %80 = getelementptr inbounds i8, ptr %send_msg.i.i.i.i, i32 5
  %81 = call ptr @memset(ptr %80, i32 0, i32 11)
  %82 = ptrtoint ptr %send_msg.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 8, ptr %send_msg.i.i.i.i, align 1
  %conv.i.i.i.i = zext i1 %cmp.i.i76.i to i8
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i.i.i.i, ptr %76, align 1
  %conv6.i.i.i.i = zext i1 %tobool.i.i to i8
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv6.i.i.i.i, ptr %77, align 1
  %conv10.i.i.i.i = zext i1 %tobool4.i.i to i8
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv10.i.i.i.i, ptr %78, align 1
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i.i.i75.i, i32 0, i32 43, i32 13
  %86 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %priv_flags.i.i.i.i, align 4
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %79, align 1
  %call14.i.i.i.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i.i.i75.i, ptr noundef nonnull %send_msg.i.i.i.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i.i)
  %tobool15.not.i.i.i.i = icmp eq i32 %call14.i.i.i.i, 0
  br i1 %tobool15.not.i.i.i.i, label %if.then11.i.i, label %hclgevf_set_promisc_mode.exit.i.i

hclgevf_set_promisc_mode.exit.i.i:                ; preds = %hclgevf_ae_get_hdev.exit.i.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %add.ptr9.i.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr9.i.i.i75.i, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.211, i32 noundef %call14.i.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i.i.i.i) #13
  br label %hclgevf_sync_promisc_mode.exit.i

if.then11.i.i:                                    ; preds = %hclgevf_ae_get_hdev.exit.i.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i.i.i.i) #13
  call void @_clear_bit(i32 noundef 12, ptr noundef %state.i) #13
  br label %hclgevf_sync_promisc_mode.exit.i

hclgevf_sync_promisc_mode.exit.i:                 ; preds = %if.then11.i.i, %hclgevf_set_promisc_mode.exit.i.i, %hclgevf_sync_vlan_filter.exit.i.hclgevf_sync_promisc_mode.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %94 = ptrtoint ptr %last_serv_processed.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %last_serv_processed.i, align 8
  br label %out.i

out.i:                                            ; preds = %hclgevf_sync_promisc_mode.exit.i, %if.then19.i, %if.then7.i
  %delta.1.i = phi i32 [ %sub9.i, %if.then7.i ], [ %delta.0.i, %if.then19.i ], [ %delta.0.i, %hclgevf_sync_promisc_mode.exit.i ]
  %95 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %state.i, align 4
  %97 = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i79.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i79.i, label %land.lhs.true.i.i, label %out.i.hclgevf_periodic_service_task.exit_crit_edge

out.i.hclgevf_periodic_service_task.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_periodic_service_task.exit

land.lhs.true.i.i:                                ; preds = %out.i
  %98 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %state.i, align 4
  %100 = and i32 %99, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool3.not.i80.i = icmp eq i32 %100, 0
  br i1 %tobool3.not.i80.i, label %if.then.i81.i, label %land.lhs.true.i.i.hclgevf_periodic_service_task.exit_crit_edge

land.lhs.true.i.i.hclgevf_periodic_service_task.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_periodic_service_task.exit

if.then.i81.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = load ptr, ptr @hclgevf_wq, align 4
  %call.i.i.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %101, ptr noundef %work, i32 noundef %delta.1.i) #13
  br label %hclgevf_periodic_service_task.exit

hclgevf_periodic_service_task.exit:               ; preds = %if.then.i81.i, %land.lhs.true.i.i.hclgevf_periodic_service_task.exit_crit_edge, %out.i.hclgevf_periodic_service_task.exit_crit_edge, %hclgevf_mailbox_service_task.exit.hclgevf_periodic_service_task.exit_crit_edge
  call fastcc void @hclgevf_reset_service_task(ptr noundef %add.ptr)
  %call.i10 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %hclgevf_periodic_service_task.exit.hclgevf_mailbox_service_task.exit16_crit_edge, label %if.end.i14

hclgevf_periodic_service_task.exit.hclgevf_mailbox_service_task.exit16_crit_edge: ; preds = %hclgevf_periodic_service_task.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_mailbox_service_task.exit16

if.end.i14:                                       ; preds = %hclgevf_periodic_service_task.exit
  %call2.i12 = call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i12)
  %tobool3.not.i13 = icmp eq i32 %call2.i12, 0
  br i1 %tobool3.not.i13, label %if.end5.i15, label %if.end.i14.hclgevf_mailbox_service_task.exit16_crit_edge

if.end.i14.hclgevf_mailbox_service_task.exit16_crit_edge: ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_mailbox_service_task.exit16

if.end5.i15:                                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #15
  call void @hclgevf_mbx_async_handler(ptr noundef %add.ptr) #13
  call void @_clear_bit(i32 noundef 10, ptr noundef %state.i) #13
  br label %hclgevf_mailbox_service_task.exit16

hclgevf_mailbox_service_task.exit16:              ; preds = %if.end5.i15, %if.end.i14.hclgevf_mailbox_service_task.exit16_crit_edge, %hclgevf_periodic_service_task.exit.hclgevf_mailbox_service_task.exit16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_reset_service_task(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %base.addr.i93.i.i.i = alloca ptr, align 4
  %base.addr.i90.i.i.i = alloca ptr, align 4
  %base.addr.i87.i.i.i = alloca ptr, align 4
  %base.addr.i.i18.i.i = alloca ptr, align 4
  %base.addr.i.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %reset_sem = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 15
  tail call void @down(ptr noundef %reset_sem) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #13
  %reset_state = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 12
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %reset_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %reset_attempts = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 14
  %0 = ptrtoint ptr %reset_attempts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reset_attempts, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %last_reset_time = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 8
  %2 = ptrtoint ptr %last_reset_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %last_reset_time, align 8
  %reset_pending = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 10
  %3 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %reset_pending, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %reset_pending) #13
  br label %if.end19.sink.split.sink.split.i

if.else.i:                                        ; preds = %if.then4
  %5 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %reset_pending, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.if.end19.sink.split.sink.split.i_crit_edge

if.else.i.if.end19.sink.split.sink.split.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.sink.split.sink.split.i

if.else4.i:                                       ; preds = %if.else.i
  %8 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %reset_pending, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.i = icmp eq i32 %10, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge

if.else4.i.if.end19.sink.split.sink.split.i_crit_edge: ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.sink.split.sink.split.i

if.else8.i:                                       ; preds = %if.else4.i
  %11 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %reset_pending, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %if.else12.i, label %if.else8.i.if.then7_crit_edge

if.else8.i.if.then7_crit_edge:                    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.else12.i:                                      ; preds = %if.else8.i
  %14 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %reset_pending, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not.i = icmp eq i32 %16, 0
  br i1 %tobool14.not.i, label %if.else12.i.if.end24_crit_edge, label %if.else12.i.if.then7_crit_edge

if.else12.i.if.then7_crit_edge:                   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.else12.i.if.end24_crit_edge:                   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end19.sink.split.sink.split.i:                 ; preds = %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge, %if.else.i.if.end19.sink.split.sink.split.i_crit_edge, %if.then.i
  %.sink8.i = phi i32 [ 2, %if.then.i ], [ 3, %if.else.i.if.end19.sink.split.sink.split.i_crit_edge ], [ 2, %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge ]
  %rst_level.0.ph.ph.i = phi i32 [ 0, %if.then.i ], [ 3, %if.else.i.if.end19.sink.split.sink.split.i_crit_edge ], [ 2, %if.else4.i.if.end19.sink.split.sink.split.i_crit_edge ]
  tail call void @_clear_bit(i32 noundef %.sink8.i, ptr noundef %reset_pending) #13
  br label %if.then7

if.then7:                                         ; preds = %if.end19.sink.split.sink.split.i, %if.else12.i.if.then7_crit_edge, %if.else8.i.if.then7_crit_edge
  %.sink.i = phi i32 [ 1, %if.else8.i.if.then7_crit_edge ], [ 4, %if.else12.i.if.then7_crit_edge ], [ 1, %if.end19.sink.split.sink.split.i ]
  %rst_level.0.ph.i = phi i32 [ 1, %if.else8.i.if.then7_crit_edge ], [ 4, %if.else12.i.if.then7_crit_edge ], [ %rst_level.0.ph.ph.i, %if.end19.sink.split.sink.split.i ]
  tail call void @_clear_bit(i32 noundef %.sink.i, ptr noundef %reset_pending) #13
  %reset_type = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 11
  %17 = ptrtoint ptr %reset_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rst_level.0.ph.i, ptr %reset_type, align 4
  %call.i = tail call fastcc i32 @hclgevf_reset_prepare(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i50 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i50, label %if.end.i, label %if.then7.err_reset.i_crit_edge

if.then7.err_reset.i_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_reset.i

if.end.i:                                         ; preds = %if.then7
  %18 = ptrtoint ptr %reset_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reset_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  %call.i.i = tail call i64 @ktime_get() #13
  %add.i.i.i = add i64 %call.i.i, 40000000000
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1417) #13
  %hw.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %20 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i.i, align 8
  %add.ptr135.i.i = getelementptr i8, ptr %21, i32 28680
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135.i.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !487
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not137.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not137.i.i, label %if.then.i.i.if.end4.i_crit_edge, label %if.then.i.i.land.lhs.true.i.i_crit_edge

if.then.i.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.then.i.i
  br label %land.lhs.true.i.i

if.then.i.i.if.end4.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

land.lhs.true.i.i:                                ; preds = %if.then31.i.i.land.lhs.true.i.i_crit_edge, %if.then.i.i.land.lhs.true.i.i_crit_edge
  %call16.i.i = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call16.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #13
  %24 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 28680
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !487
  %27 = and i32 %26, 256
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %if.then31.i.i.if.end4.i_crit_edge, label %if.then31.i.i.land.lhs.true.i.i_crit_edge

if.then31.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

if.then31.i.i.if.end4.i_crit_edge:                ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %28 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %29, i32 28680
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !488
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool35.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool35.not.i.i, label %for.end.i.i.if.end4.i_crit_edge, label %for.end.i.i.do.end.i_crit_edge

for.end.i.i.do.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

for.end.i.i.if.end4.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.else.i.i:                                      ; preds = %if.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1423) #13
  %hw56.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %32 = ptrtoint ptr %hw56.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw56.i.i, align 8
  %add.ptr59132.i.i = getelementptr i8, ptr %33, i32 134144
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59132.i.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !489
  %35 = and i32 %34, -520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool64.not134.i.i = icmp eq i32 %35, 0
  br i1 %tobool64.not134.i.i, label %if.else.i.i.if.end4.i_crit_edge, label %if.else.i.i.land.lhs.true68.i.i_crit_edge

if.else.i.i.land.lhs.true68.i.i_crit_edge:        ; preds = %if.else.i.i
  br label %land.lhs.true68.i.i

if.else.i.i.if.end4.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

land.lhs.true68.i.i:                              ; preds = %if.then84.i.i.land.lhs.true68.i.i_crit_edge, %if.else.i.i.land.lhs.true68.i.i_crit_edge
  %call69.i.i = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call69.i.i, i64 %add.i.i.i)
  %cmp3.i121.i.i = icmp sgt i64 %call69.i.i, %add.i.i.i
  br i1 %cmp3.i121.i.i, label %for.end88.i.i, label %if.then84.i.i

if.then84.i.i:                                    ; preds = %land.lhs.true68.i.i
  tail call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #13
  %36 = ptrtoint ptr %hw56.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw56.i.i, align 8
  %add.ptr59.i.i = getelementptr i8, ptr %37, i32 134144
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !489
  %39 = and i32 %38, -520093696
  %tobool64.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool64.not.i.i, label %if.then84.i.i.if.end4.i_crit_edge, label %if.then84.i.i.land.lhs.true68.i.i_crit_edge

if.then84.i.i.land.lhs.true68.i.i_crit_edge:      ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true68.i.i

if.then84.i.i.if.end4.i_crit_edge:                ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

for.end88.i.i:                                    ; preds = %land.lhs.true68.i.i
  %40 = ptrtoint ptr %hw56.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw56.i.i, align 8
  %add.ptr78.i.i = getelementptr i8, ptr %41, i32 134144
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !490
  %43 = and i32 %42, -520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool91.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool91.not.i.i, label %for.end88.i.i.if.end4.i_crit_edge, label %for.end88.i.i.do.end.i_crit_edge

for.end88.i.i.do.end.i_crit_edge:                 ; preds = %for.end88.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

for.end88.i.i.if.end4.i_crit_edge:                ; preds = %for.end88.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

do.end.i:                                         ; preds = %for.end88.i.i.do.end.i_crit_edge, %for.end.i.i.do.end.i_crit_edge
  %44 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.88) #16
  %46 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79) #16
  br label %err_reset.i

if.end4.i:                                        ; preds = %for.end88.i.i.if.end4.i_crit_edge, %if.then84.i.i.if.end4.i_crit_edge, %if.else.i.i.if.end4.i_crit_edge, %for.end.i.i.if.end4.i_crit_edge, %if.then31.i.i.if.end4.i_crit_edge, %if.then.i.i.if.end4.i_crit_edge
  tail call void @msleep(i32 noundef 5000) #13
  %call5.i = tail call fastcc i32 @hclgevf_reset_rebuild(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i51 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i51, label %if.end4.i.if.end24_crit_edge, label %if.end4.i.err_reset.i_crit_edge

if.end4.i.err_reset.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_reset.i

if.end4.i.if.end24_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

err_reset.i:                                      ; preds = %if.end4.i.err_reset.i_crit_edge, %do.end.i, %if.then7.err_reset.i_crit_edge
  %hw.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %48 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i.i.i)
  %50 = ptrtoint ptr %base.addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %base.addr.i.i.i.i, align 4
  %base.addr.i.i.i.i.0.base.addr.i.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i.i = load volatile ptr, ptr %base.addr.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %base.addr.i.i.i.i.0.base.addr.i.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i.i, i32 159752
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i.i.i)
  %52 = or i32 %51, 256
  %53 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %54, i32 159752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 %52) #13, !srcloc !480
  %rst_fail_cnt.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 6
  %55 = ptrtoint ptr %rst_fail_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rst_fail_cnt.i.i, align 4
  %inc.i.i = add i32 %56, 1
  store i32 %inc.i.i, ptr %rst_fail_cnt.i.i, align 4
  %57 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hdev, align 8
  %dev.i13.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13.i, ptr noundef nonnull @.str.110, i32 noundef %inc.i.i) #16
  %59 = ptrtoint ptr %rst_fail_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rst_fail_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %60)
  %cmp.i14.i = icmp ult i32 %60, 5
  br i1 %cmp.i14.i, label %if.then.i16.i, label %err_reset.i.if.end.i.i_crit_edge

err_reset.i.if.end.i.i_crit_edge:                 ; preds = %err_reset.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i16.i:                                    ; preds = %err_reset.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %reset_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reset_type, align 4
  tail call void @_set_bit(i32 noundef %62, ptr noundef %reset_pending) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i16.i, %err_reset.i.if.end.i.i_crit_edge
  %63 = ptrtoint ptr %reset_pending to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reset_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i.i, label %if.else.i17.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  tail call void @_set_bit(i32 noundef 1, ptr noundef %reset_state) #13
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state, align 4
  %67 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then5.i.i.if.end24_crit_edge

if.then5.i.i.if.end24_crit_edge:                  ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true.i.i.i:                              ; preds = %if.then5.i.i
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state, align 4
  %70 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.not.i.i.i = icmp eq i32 %70, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.if.end24_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.if.end24_crit_edge:           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %call6.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.then.i.i.i, label %land.lhs.true4.i.i.i.if.end24_crit_edge

land.lhs.true4.i.i.i.if.end24_crit_edge:          ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %71 = load ptr, ptr @hclgevf_wq, align 4
  %service_task.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41
  %call.i.i.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %service_task.i.i.i, i32 noundef 0) #13
  br label %if.end24

if.else.i17.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 13, ptr noundef %state) #13
  %72 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hdev, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %rst_stats.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13
  %vf_func_rst_cnt.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 1
  %74 = ptrtoint ptr %vf_func_rst_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vf_func_rst_cnt.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.112, i32 noundef %75) #16
  %76 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hdev, align 8
  %dev4.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %flr_rst_cnt.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 2
  %78 = ptrtoint ptr %flr_rst_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flr_rst_cnt.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4.i.i.i, ptr noundef nonnull @.str.115, i32 noundef %79) #16
  %80 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hdev, align 8
  %dev9.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %vf_rst_cnt.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 3
  %82 = ptrtoint ptr %vf_rst_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vf_rst_cnt.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i.i.i, ptr noundef nonnull @.str.118, i32 noundef %83) #16
  %84 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hdev, align 8
  %dev14.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %rst_done_cnt.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 4
  %86 = ptrtoint ptr %rst_done_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rst_done_cnt.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i.i.i, ptr noundef nonnull @.str.121, i32 noundef %87) #16
  %88 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hdev, align 8
  %dev19.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %hw_rst_done_cnt.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 5
  %90 = ptrtoint ptr %hw_rst_done_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hw_rst_done_cnt.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19.i.i.i, ptr noundef nonnull @.str.124, i32 noundef %91) #16
  %92 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hdev, align 8
  %dev24.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %94 = ptrtoint ptr %rst_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rst_stats.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24.i.i.i, ptr noundef nonnull @.str.127, i32 noundef %95) #16
  %96 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hdev, align 8
  %dev29.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %98 = ptrtoint ptr %rst_fail_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rst_fail_cnt.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29.i.i.i, ptr noundef nonnull @.str.130, i32 noundef %99) #16
  %100 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hdev, align 8
  %dev34.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %102 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i18.i.i)
  %104 = ptrtoint ptr %base.addr.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %base.addr.i.i18.i.i, align 4
  %base.addr.i.i18.i.i.0.base.addr.i.i18.i.i.0.base.addr.i.i18.i.0.base.addr.i.i18.i.0.base.addr.i.i18.0.base.addr.i.i18.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i20.i.i = load volatile ptr, ptr %base.addr.i.i18.i.i, align 4
  %add.ptr.i.i21.i.i = getelementptr i8, ptr %base.addr.i.i18.i.i.0.base.addr.i.i18.i.i.0.base.addr.i.i18.i.0.base.addr.i.i18.i.0.base.addr.i.i18.0.base.addr.i.i18.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i20.i.i, i32 132096
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i.i) #13, !srcloc !482
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i18.i.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34.i.i.i, ptr noundef nonnull @.str.133, i32 noundef %106) #16
  %107 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hdev, align 8
  %dev39.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i87.i.i.i)
  %111 = ptrtoint ptr %base.addr.i87.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %base.addr.i87.i.i.i, align 4
  %base.addr.i87.i.i.i.0.base.addr.i87.i.i.i.0.base.addr.i87.i.i.0.base.addr.i87.i.i.0.base.addr.i87.i.0.base.addr.i87.i.0.base.addr.i87.0.base.addr.i87.0.base.addr.0.base.addr.0.base.addr.0..i88.i.i.i = load volatile ptr, ptr %base.addr.i87.i.i.i, align 4
  %add.ptr.i89.i.i.i = getelementptr i8, ptr %base.addr.i87.i.i.i.0.base.addr.i87.i.i.i.0.base.addr.i87.i.i.0.base.addr.i87.i.i.0.base.addr.i87.i.0.base.addr.i87.i.0.base.addr.i87.0.base.addr.i87.0.base.addr.0.base.addr.0.base.addr.0..i88.i.i.i, i32 160004
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i.i.i) #13, !srcloc !482
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i87.i.i.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i.i.i, ptr noundef nonnull @.str.136, i32 noundef %113) #16
  %114 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hdev, align 8
  %dev47.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %116 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i90.i.i.i)
  %118 = ptrtoint ptr %base.addr.i90.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %base.addr.i90.i.i.i, align 4
  %base.addr.i90.i.i.i.0.base.addr.i90.i.i.i.0.base.addr.i90.i.i.0.base.addr.i90.i.i.0.base.addr.i90.i.0.base.addr.i90.i.0.base.addr.i90.0.base.addr.i90.0.base.addr.0.base.addr.0.base.addr.0..i91.i.i.i = load volatile ptr, ptr %base.addr.i90.i.i.i, align 4
  %add.ptr.i92.i.i.i = getelementptr i8, ptr %base.addr.i90.i.i.i.0.base.addr.i90.i.i.i.0.base.addr.i90.i.i.0.base.addr.i90.i.i.0.base.addr.i90.i.0.base.addr.i90.i.0.base.addr.i90.0.base.addr.i90.0.base.addr.0.base.addr.0.base.addr.0..i91.i.i.i, i32 159752
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i.i.i) #13, !srcloc !482
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i90.i.i.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47.i.i.i, ptr noundef nonnull @.str.139, i32 noundef %120) #16
  %121 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hdev, align 8
  %dev55.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %123 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hw.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i93.i.i.i)
  %125 = ptrtoint ptr %base.addr.i93.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %base.addr.i93.i.i.i, align 4
  %base.addr.i93.i.i.i.0.base.addr.i93.i.i.i.0.base.addr.i93.i.i.0.base.addr.i93.i.i.0.base.addr.i93.i.0.base.addr.i93.i.0.base.addr.i93.0.base.addr.i93.0.base.addr.0.base.addr.0.base.addr.0..i94.i.i.i = load volatile ptr, ptr %base.addr.i93.i.i.i, align 4
  %add.ptr.i95.i.i.i = getelementptr i8, ptr %base.addr.i93.i.i.i.0.base.addr.i93.i.i.i.0.base.addr.i93.i.i.0.base.addr.i93.i.i.0.base.addr.i93.i.0.base.addr.i93.i.0.base.addr.i93.0.base.addr.i93.0.base.addr.0.base.addr.0.base.addr.0..i94.i.i.i, i32 134144
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95.i.i.i) #13, !srcloc !482
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i93.i.i.i)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55.i.i.i, ptr noundef nonnull @.str.142, i32 noundef %127) #16
  %128 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hdev, align 8
  %dev63.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %130 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev63.i.i.i, ptr noundef nonnull @.str.145, i32 noundef %131) #16
  br label %if.end24

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %reset_state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else.if.end24_crit_edge, label %if.then12

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then12:                                        ; preds = %if.else
  %reset_attempts13 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 14
  %132 = ptrtoint ptr %reset_attempts13 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %reset_attempts13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp14 = icmp ugt i32 %133, 3
  br i1 %cmp14, label %if.then12.if.end22_crit_edge, label %if.else18

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.else18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nuw nsw i32 %133, 1
  %134 = ptrtoint ptr %reset_attempts13 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %inc, ptr %reset_attempts13, align 8
  %reset_level = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 9
  %135 = ptrtoint ptr %reset_level to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %reset_level, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.then12.if.end22_crit_edge
  %.sink = phi i32 [ %136, %if.else18 ], [ 3, %if.then12.if.end22_crit_edge ]
  %reset_pending20 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %reset_pending20) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %reset_state) #13
  %137 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %state, align 4
  %139 = and i32 %138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i52 = icmp eq i32 %139, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i, label %if.end22.if.end24_crit_edge

if.end22.if.end24_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true.i:                                  ; preds = %if.end22
  %140 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %state, align 4
  %142 = and i32 %141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool3.not.i = icmp eq i32 %142, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end24_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end24_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i54, label %land.lhs.true4.i.if.end24_crit_edge

land.lhs.true4.i.if.end24_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then.i54:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  %143 = load ptr, ptr @hclgevf_wq, align 4
  %service_task.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 41
  %call.i.i53 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %143, ptr noundef %service_task.i, i32 noundef 0) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then.i54, %land.lhs.true4.i.if.end24_crit_edge, %land.lhs.true.i.if.end24_crit_edge, %if.end22.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.else.i17.i, %if.then.i.i.i, %land.lhs.true4.i.i.i.if.end24_crit_edge, %land.lhs.true.i.i.i.if.end24_crit_edge, %if.then5.i.i.if.end24_crit_edge, %if.end4.i.if.end24_crit_edge, %if.else12.i.if.end24_crit_edge
  %reset_type25 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 11
  %144 = ptrtoint ptr %reset_type25 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 8, ptr %reset_type25, align 4
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %state) #13
  tail call void @up(ptr noundef %reset_sem) #13
  br label %return

return:                                           ; preds = %if.end24, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_reset_prepare(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %base.addr.i.i.i = alloca ptr, align 4
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_stats = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13
  %0 = ptrtoint ptr %rst_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rst_stats, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rst_stats, align 4
  %roce_client.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 46
  %2 = ptrtoint ptr %roce_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_client.i, align 4
  %roce.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 44
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %tobool1.not.i = icmp eq ptr %3, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.hnae3_client, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %reset_notify.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reset_notify.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_notify.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 %10(ptr noundef %roce.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end4.i.if.end_crit_edge, label %do.end.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, i32 noundef 1, i32 noundef %call7.i) #16
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @rtnl_lock() #13
  %nic_client.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 45
  %13 = ptrtoint ptr %nic_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nic_client.i, align 8
  %nic.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i13 = icmp eq i32 %17, 0
  %tobool1.not.i14 = icmp eq ptr %14, null
  %or.cond.i15 = select i1 %tobool.not.i13, i1 true, i1 %tobool1.not.i14
  br i1 %or.cond.i15, label %if.end.if.end4_crit_edge, label %if.end.i19

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i19:                                       ; preds = %if.end
  %ops.i16 = getelementptr inbounds %struct.hnae3_client, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i16, align 4
  %reset_notify.i17 = getelementptr inbounds %struct.hnae3_client_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %reset_notify.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_notify.i17, align 4
  %tobool2.not.i18 = icmp eq ptr %21, null
  br i1 %tobool2.not.i18, label %if.end.i19.hclgevf_notify_client.exit_crit_edge, label %if.end4.i22

if.end.i19.hclgevf_notify_client.exit_crit_edge:  ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_notify_client.exit

if.end4.i22:                                      ; preds = %if.end.i19
  %call7.i20 = tail call i32 %21(ptr noundef %nic.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i20)
  %tobool8.not.i21 = icmp eq i32 %call7.i20, 0
  br i1 %tobool8.not.i21, label %if.end4.i22.if.end4_crit_edge, label %do.end.i24

if.end4.i22.if.end4_crit_edge:                    ; preds = %if.end4.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

do.end.i24:                                       ; preds = %if.end4.i22
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdev, align 8
  %dev.i23 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i23, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %call7.i20) #16
  br label %hclgevf_notify_client.exit

hclgevf_notify_client.exit:                       ; preds = %do.end.i24, %if.end.i19.hclgevf_notify_client.exit_crit_edge
  %retval.0.i25 = phi i32 [ -95, %if.end.i19.hclgevf_notify_client.exit_crit_edge ], [ %call7.i20, %do.end.i24 ]
  tail call void @rtnl_unlock() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end4.i22.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call void @rtnl_unlock() #13
  %reset_type.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 11
  %24 = ptrtoint ptr %reset_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reset_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i = icmp eq i32 %25, 1
  br i1 %cmp.i, label %if.then.i, label %if.end4.if.end3.i_crit_edge

if.end4.if.end3.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %26 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %28 = call ptr @memset(ptr %27, i32 0, i32 14)
  %29 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %send_msg.i, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %26, align 1
  %call.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg.i, i1 noundef zeroext true, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i26 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i26, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %vf_func_rst_cnt.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %vf_func_rst_cnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vf_func_rst_cnt.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %vf_func_rst_cnt.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  br label %if.end3.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdev, align 8
  %dev.i27 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i27, ptr noundef nonnull @.str.83, i32 noundef %call.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  br label %cleanup

if.end3.i:                                        ; preds = %cleanup.thread.i, %if.end4.if.end3.i_crit_edge
  %comm_state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 3
  call void @_set_bit(i32 noundef 0, ptr noundef %comm_state.i) #13
  call void @msleep(i32 noundef 100) #13
  %hw.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %35 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i.i)
  %37 = ptrtoint ptr %base.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %base.addr.i.i.i, align 4
  %base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i = load volatile ptr, ptr %base.addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i, i32 159752
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !482
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i.i)
  %39 = or i32 %38, 256
  %40 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  call void @arm_heavy_mb() #13
  %add.ptr.i8.i.i = getelementptr i8, ptr %41, i32 159752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %39) #13, !srcloc !480
  %42 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdev, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %reset_type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reset_type.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.86, i32 noundef %45) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %cleanup.i, %hclgevf_notify_client.exit, %do.end.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i25, %hclgevf_notify_client.exit ], [ -95, %if.end.i.cleanup_crit_edge ], [ %call7.i, %do.end.i ], [ %call.i, %cleanup.i ], [ 0, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_reset_rebuild(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %base.addr.i.i.i = alloca ptr, align 4
  %desc.i.i.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rst_done_cnt = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %hw_rst_done_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_rst_done_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %hw_rst_done_cnt, align 4
  %roce_client.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 46
  %2 = ptrtoint ptr %roce_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_client.i, align 4
  %roce.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 44
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %tobool1.not.i = icmp eq ptr %3, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.hnae3_client, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %reset_notify.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reset_notify.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_notify.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 %10(ptr noundef %roce.i, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end4.i.if.end_crit_edge, label %do.end.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, i32 noundef 3, i32 noundef %call7.i) #16
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @rtnl_lock() #13
  %nic_client.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 45
  %13 = ptrtoint ptr %nic_client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nic_client.i.i, align 8
  %nic.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 43
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  %tobool1.not.i.i = icmp eq ptr %14, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.end.if.end.i35_crit_edge, label %if.end.i.i

if.end.if.end.i35_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i35

if.end.i.i:                                       ; preds = %if.end
  %ops.i.i = getelementptr inbounds %struct.hnae3_client, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %reset_notify.i.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %reset_notify.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_notify.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end_crit_edge, label %if.end4.i.i

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = tail call i32 %21(ptr noundef %nic.i.i, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end4.i.i.if.end.i35_crit_edge, label %do.end.i.i

if.end4.i.i.if.end.i35_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i35

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef %call7.i.i) #16
  br label %do.end

if.end.i35:                                       ; preds = %if.end4.i.i.if.end.i35_crit_edge, %if.end.if.end.i35_crit_edge
  %24 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev, align 8
  %reset_type.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 11
  %26 = ptrtoint ptr %reset_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reset_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i.i.i = icmp eq i32 %27, 3
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i35.if.end.i.i.i_crit_edge

if.end.i35.if.end.i.i.i_crit_edge:                ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i35
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %misc_vector.i.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %misc_vector.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %misc_vector.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #13, !srcloc !480
  %vector_irq.i.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %vector_irq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vector_irq.i.i.i.i, align 4
  tail call void @synchronize_irq(i32 noundef %34) #13
  %35 = ptrtoint ptr %vector_irq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vector_irq.i.i.i.i, align 4
  %call.i.i.i.i = tail call ptr @free_irq(i32 noundef %36, ptr noundef %hdev) #13
  %vector_status.i.i.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 34
  %37 = ptrtoint ptr %vector_status.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vector_status.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp.i.i.i.i.i = icmp eq i16 %40, -1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdev, align 8
  %dev.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i.i.i, ptr noundef nonnull @.str.180, i32 noundef 0) #16
  br label %hclgevf_misc_irq_uninit.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %38, align 2
  %num_msi_left.i.i.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 29
  %44 = ptrtoint ptr %num_msi_left.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_msi_left.i.i.i.i.i, align 2
  %add.i.i.i.i.i = add i16 %45, 1
  store i16 %add.i.i.i.i.i, ptr %num_msi_left.i.i.i.i.i, align 2
  %num_msi_used.i.i.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 30
  %46 = ptrtoint ptr %num_msi_used.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num_msi_used.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i16 %47, -1
  store i16 %sub.i.i.i.i.i, ptr %num_msi_used.i.i.i.i.i, align 4
  br label %hclgevf_misc_irq_uninit.exit.i.i.i

hclgevf_misc_irq_uninit.exit.i.i.i:               ; preds = %if.end.i.i.i.i.i, %do.end.i.i.i.i.i
  %48 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hdev, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %vector_status.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vector_status.i.i.i.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev.i.i.i.i, ptr noundef %51) #13
  %vector_irq.i42.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 35
  %52 = ptrtoint ptr %vector_irq.i42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vector_irq.i42.i.i.i, align 8
  tail call void @devm_kfree(ptr noundef %dev.i.i.i.i, ptr noundef %53) #13
  tail call void @pci_free_irq_vectors(ptr noundef %49) #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #13
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %hclgevf_misc_irq_uninit.exit.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end.i35.if.end.i.i.i_crit_edge
  %54 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %state.i, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool5.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool5.not.i.i.i, label %if.then6.i.i.i, label %if.end.i.i.i.if.end.i22.i_crit_edge

if.end.i.i.i.if.end.i22.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i22.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  tail call void @pci_set_master(ptr noundef %25) #13
  %call7.i.i.i = tail call fastcc i32 @hclgevf_init_msi(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end10.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.25, i32 noundef %call7.i.i.i) #16
  br label %do.end.i21.i

if.end10.i.i.i:                                   ; preds = %if.then6.i.i.i
  %call11.i.i.i = tail call fastcc i32 @hclgevf_misc_irq_init(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.end18.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hdev, align 8
  %dev.i43.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %vector_status.i44.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 34
  %59 = ptrtoint ptr %vector_status.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vector_status.i44.i.i.i, align 4
  tail call void @devm_kfree(ptr noundef %dev.i43.i.i.i, ptr noundef %60) #13
  %vector_irq.i45.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 35
  %61 = ptrtoint ptr %vector_irq.i45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vector_irq.i45.i.i.i, align 8
  tail call void @devm_kfree(ptr noundef %dev.i43.i.i.i, ptr noundef %62) #13
  tail call void @pci_free_irq_vectors(ptr noundef %58) #13
  %dev17.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i.i.i, ptr noundef nonnull @.str.108, i32 noundef %call11.i.i.i) #16
  br label %do.end.i21.i

if.end18.i.i.i:                                   ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #13
  br label %if.end.i22.i

do.end.i21.i:                                     ; preds = %if.then13.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call7.i.i.i, %do.end.i.i.i ], [ %call11.i.i.i, %if.then13.i.i.i ]
  %dev.i20.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i20.i, ptr noundef nonnull @.str.94, i32 noundef %retval.0.i.i.i) #16
  br label %do.end.i37

if.end.i22.i:                                     ; preds = %if.end18.i.i.i, %if.end.i.i.i.if.end.i22.i_crit_edge
  %lock.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2, i32 0, i32 2, i32 1, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #13
  %arq.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40
  %63 = ptrtoint ptr %arq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %hdev, ptr %arq.i.i.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 1
  %64 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %head.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 2
  %65 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %tail.i.i.i, align 8
  %count.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 40, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #13
  %66 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %count.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #13
  %ae_dev.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 1
  %67 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ae_dev.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 2
  %fw_version.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 16
  %reset_pending.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 10
  %69 = ptrtoint ptr %reset_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reset_pending.i.i, align 8
  %call3.i.i = tail call i32 @hclge_comm_cmd_init(ptr noundef %68, ptr noundef %hw.i.i, ptr noundef %fw_version.i.i, i1 noundef zeroext false, i32 noundef %70) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev9.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i.i, ptr noundef nonnull @.str.97, i32 noundef %call3.i.i) #16
  br label %do.end.i37

if.end10.i.i:                                     ; preds = %if.end.i22.i
  %call11.i.i = tail call fastcc i32 @hclgevf_rss_init_hw(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end19.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hdev, align 8
  %dev18.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i.i, ptr noundef nonnull @.str.37, i32 noundef %call11.i.i) #16
  br label %do.end.i37

if.end19.i.i:                                     ; preds = %if.end10.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i.i) #13
  %73 = call ptr @memset(ptr %desc.i.i.i, i32 255, i32 32)
  %74 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ae_dev.i.i, align 4
  %caps.i.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %caps.i.i.i, align 4
  %78 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i67.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i67.i.i, label %if.end19.i.i.if.end23.i.i_crit_edge, label %if.end.i70.i.i

if.end19.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i.i

if.end.i70.i.i:                                   ; preds = %if.end19.i.i
  %79 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i.i.i, i32 0, i32 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i.i.i, i32 noundef 3088, i1 noundef zeroext false) #13
  %gro_en.i.i.i = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 36
  %80 = ptrtoint ptr %gro_en.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %gro_en.i.i.i, align 4, !range !485
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %79, align 4
  %call.i.i68.i.i = call i32 @hclge_comm_cmd_send(ptr noundef %hw.i.i, ptr noundef nonnull %desc.i.i.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68.i.i)
  %tobool5.not.i69.i.i = icmp eq i32 %call.i.i68.i.i, 0
  br i1 %tobool5.not.i69.i.i, label %if.end.i70.i.i.if.end23.i.i_crit_edge, label %hclgevf_config_gro.exit.i.i

if.end.i70.i.i.if.end23.i.i_crit_edge:            ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i.i

hclgevf_config_gro.exit.i.i:                      ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hdev, align 8
  %dev.i71.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i71.i.i, ptr noundef nonnull @.str.176, i32 noundef %call.i.i68.i.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #13
  br label %do.end.i37

if.end23.i.i:                                     ; preds = %if.end.i70.i.i.if.end23.i.i_crit_edge, %if.end19.i.i.if.end23.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i.i) #13
  %call24.i.i = call fastcc i32 @hclgevf_init_vlan_config(ptr noundef %hdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end32.i.i, label %do.end29.i.i

do.end29.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hdev, align 8
  %dev31.i.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i.i, ptr noundef nonnull @.str.43, i32 noundef %call24.i.i) #16
  br label %do.end.i37

if.end32.i.i:                                     ; preds = %if.end23.i.i
  call void @_set_bit(i32 noundef 12, ptr noundef %state.i) #13
  %87 = ptrtoint ptr %ae_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ae_dev.i.i, align 4
  %caps.i75.i.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %caps.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %caps.i75.i.i, align 4
  %91 = and i32 %90, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i76.i.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i76.i.i, label %if.end32.i.i.if.end4.i38_crit_edge, label %if.then.i78.i.i

if.end32.i.i.if.end4.i38_crit_edge:               ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i38

if.then.i78.i.i:                                  ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  call void @arm_heavy_mb() #13
  %add.ptr.i.i.i.i = getelementptr i8, ptr %93, i32 163848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 16777216) #13, !srcloc !480
  br label %if.end4.i38

do.end.i37:                                       ; preds = %do.end29.i.i, %hclgevf_config_gro.exit.i.i, %do.end16.i.i, %do.end8.i.i, %do.end.i21.i
  %retval.0.i23.ph.i = phi i32 [ %call.i.i68.i.i, %hclgevf_config_gro.exit.i.i ], [ %call24.i.i, %do.end29.i.i ], [ %call11.i.i, %do.end16.i.i ], [ %call3.i.i, %do.end8.i.i ], [ %retval.0.i.i.i, %do.end.i21.i ]
  %94 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hdev, align 8
  %dev.i36 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i36, ptr noundef nonnull @.str.92) #16
  br label %do.end

if.end4.i38:                                      ; preds = %if.then.i78.i.i, %if.end32.i.i.if.end4.i38_crit_edge
  %96 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hdev, align 8
  %dev37.i.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37.i.i, ptr noundef nonnull @.str.104) #16
  %98 = ptrtoint ptr %nic_client.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %nic_client.i.i, align 8
  %100 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %state.i, align 4
  %102 = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i27.i = icmp eq i32 %102, 0
  %tobool1.not.i28.i = icmp eq ptr %99, null
  %or.cond.i29.i = select i1 %tobool.not.i27.i, i1 true, i1 %tobool1.not.i28.i
  br i1 %or.cond.i29.i, label %if.end4.i38.if.end8.i_crit_edge, label %if.end.i33.i

if.end4.i38.if.end8.i_crit_edge:                  ; preds = %if.end4.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.end.i33.i:                                     ; preds = %if.end4.i38
  %ops.i30.i = getelementptr inbounds %struct.hnae3_client, ptr %99, i32 0, i32 3
  %103 = ptrtoint ptr %ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i30.i, align 4
  %reset_notify.i31.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %reset_notify.i31.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %reset_notify.i31.i, align 4
  %tobool2.not.i32.i = icmp eq ptr %106, null
  br i1 %tobool2.not.i32.i, label %if.end.i33.i.do.end_crit_edge, label %if.end4.i36.i

if.end.i33.i.do.end_crit_edge:                    ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end4.i36.i:                                    ; preds = %if.end.i33.i
  %call7.i34.i = call i32 %106(ptr noundef %nic.i.i, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i34.i)
  %tobool8.not.i35.i = icmp eq i32 %call7.i34.i, 0
  br i1 %tobool8.not.i35.i, label %if.end4.i36.i.if.end8.i_crit_edge, label %do.end.i38.i

if.end4.i36.i.if.end8.i_crit_edge:                ; preds = %if.end4.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

do.end.i38.i:                                     ; preds = %if.end4.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hdev, align 8
  %dev.i37.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i37.i, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef %call7.i34.i) #16
  br label %do.end

if.end8.i:                                        ; preds = %if.end4.i36.i.if.end8.i_crit_edge, %if.end4.i38.if.end8.i_crit_edge
  %109 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i.i)
  %111 = ptrtoint ptr %base.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %base.addr.i.i.i, align 4
  %base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i = load volatile ptr, ptr %base.addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i, i32 159752
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !482
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i.i)
  %113 = and i32 %112, -257
  %114 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  call void @arm_heavy_mb() #13
  %add.ptr.i8.i.i = getelementptr i8, ptr %115, i32 159752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %113) #13, !srcloc !480
  %116 = ptrtoint ptr %nic_client.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %nic_client.i.i, align 8
  %118 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %state.i, align 4
  %120 = and i32 %119, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i45.i = icmp eq i32 %120, 0
  %tobool1.not.i46.i = icmp eq ptr %117, null
  %or.cond.i47.i = select i1 %tobool.not.i45.i, i1 true, i1 %tobool1.not.i46.i
  br i1 %or.cond.i47.i, label %if.end8.i.if.end4_crit_edge, label %if.end.i51.i

if.end8.i.if.end4_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.i51.i:                                     ; preds = %if.end8.i
  %ops.i48.i = getelementptr inbounds %struct.hnae3_client, ptr %117, i32 0, i32 3
  %121 = ptrtoint ptr %ops.i48.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i48.i, align 4
  %reset_notify.i49.i = getelementptr inbounds %struct.hnae3_client_ops, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %reset_notify.i49.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reset_notify.i49.i, align 4
  %tobool2.not.i50.i = icmp eq ptr %124, null
  br i1 %tobool2.not.i50.i, label %if.end.i51.i.do.end_crit_edge, label %if.end4.i54.i

if.end.i51.i.do.end_crit_edge:                    ; preds = %if.end.i51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end4.i54.i:                                    ; preds = %if.end.i51.i
  %call7.i52.i = call i32 %124(ptr noundef %nic.i.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i52.i)
  %tobool8.not.i53.i = icmp eq i32 %call7.i52.i, 0
  br i1 %tobool8.not.i53.i, label %if.end4.i54.i.if.end4_crit_edge, label %do.end.i56.i

if.end4.i54.i.if.end4_crit_edge:                  ; preds = %if.end4.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

do.end.i56.i:                                     ; preds = %if.end4.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hdev, align 8
  %dev.i55.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55.i, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef %call7.i52.i) #16
  br label %do.end

do.end:                                           ; preds = %do.end.i56.i, %if.end.i51.i.do.end_crit_edge, %do.end.i38.i, %if.end.i33.i.do.end_crit_edge, %do.end.i37, %do.end.i.i, %if.end.i.i.do.end_crit_edge
  %retval.0.i39.ph = phi i32 [ %call7.i52.i, %do.end.i56.i ], [ -95, %if.end.i51.i.do.end_crit_edge ], [ %call7.i34.i, %do.end.i38.i ], [ -95, %if.end.i33.i.do.end_crit_edge ], [ %call7.i.i, %do.end.i.i ], [ -95, %if.end.i.i.do.end_crit_edge ], [ %retval.0.i23.ph.i, %do.end.i37 ]
  call void @rtnl_unlock() #13
  %127 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end4.i54.i.if.end4_crit_edge, %if.end8.i.if.end4_crit_edge
  call void @rtnl_unlock() #13
  %129 = ptrtoint ptr %roce_client.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %roce_client.i, align 4
  %131 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state.i, align 4
  %133 = and i32 %132, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i43 = icmp eq i32 %133, 0
  %tobool1.not.i44 = icmp eq ptr %130, null
  %or.cond.i45 = select i1 %tobool.not.i43, i1 true, i1 %tobool1.not.i44
  br i1 %or.cond.i45, label %if.end4.if.end9_crit_edge, label %if.end.i49

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i49:                                       ; preds = %if.end4
  %ops.i46 = getelementptr inbounds %struct.hnae3_client, ptr %130, i32 0, i32 3
  %134 = ptrtoint ptr %ops.i46 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i46, align 4
  %reset_notify.i47 = getelementptr inbounds %struct.hnae3_client_ops, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %reset_notify.i47 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reset_notify.i47, align 4
  %tobool2.not.i48 = icmp eq ptr %137, null
  br i1 %tobool2.not.i48, label %if.end.i49.land.lhs.true_crit_edge, label %if.end4.i52

if.end.i49.land.lhs.true_crit_edge:               ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end4.i52:                                      ; preds = %if.end.i49
  %call7.i50 = call i32 %137(ptr noundef %roce.i, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i50)
  %tobool8.not.i51 = icmp eq i32 %call7.i50, 0
  br i1 %tobool8.not.i51, label %if.end4.i52.if.end9_crit_edge, label %do.end.i54

if.end4.i52.if.end9_crit_edge:                    ; preds = %if.end4.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end.i54:                                       ; preds = %if.end4.i52
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hdev, align 8
  %dev.i53 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i53, ptr noundef nonnull @.str.81, i32 noundef 2, i32 noundef %call7.i50) #16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.i54, %if.end.i49.land.lhs.true_crit_edge
  %retval.0.i55 = phi i32 [ -95, %if.end.i49.land.lhs.true_crit_edge ], [ %call7.i50, %do.end.i54 ]
  %rst_fail_cnt = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 6
  %140 = ptrtoint ptr %rst_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rst_fail_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %141)
  %cmp = icmp ult i32 %141, 4
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end4.i52.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %142 = ptrtoint ptr %roce_client.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %roce_client.i, align 4
  %144 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %state.i, align 4
  %146 = and i32 %145, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i60 = icmp eq i32 %146, 0
  %tobool1.not.i61 = icmp eq ptr %143, null
  %or.cond.i62 = select i1 %tobool.not.i60, i1 true, i1 %tobool1.not.i61
  br i1 %or.cond.i62, label %if.end9.if.end13_crit_edge, label %if.end.i66

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end.i66:                                       ; preds = %if.end9
  %ops.i63 = getelementptr inbounds %struct.hnae3_client, ptr %143, i32 0, i32 3
  %147 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops.i63, align 4
  %reset_notify.i64 = getelementptr inbounds %struct.hnae3_client_ops, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %reset_notify.i64 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reset_notify.i64, align 4
  %tobool2.not.i65 = icmp eq ptr %150, null
  br i1 %tobool2.not.i65, label %if.end.i66.cleanup_crit_edge, label %if.end4.i69

if.end.i66.cleanup_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i69:                                      ; preds = %if.end.i66
  %call7.i67 = call i32 %150(ptr noundef %roce.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i67)
  %tobool8.not.i68 = icmp eq i32 %call7.i67, 0
  br i1 %tobool8.not.i68, label %if.end4.i69.if.end13_crit_edge, label %do.end.i71

if.end4.i69.if.end13_crit_edge:                   ; preds = %if.end4.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.end.i71:                                       ; preds = %if.end4.i69
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hdev, align 8
  %dev.i70 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %call7.i67) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end4.i69.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %153 = load volatile i32, ptr @jiffies, align 128
  %last_reset_time = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 8
  %154 = ptrtoint ptr %last_reset_time to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %last_reset_time, align 8
  %rst_done_cnt = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 4
  %155 = ptrtoint ptr %rst_done_cnt to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rst_done_cnt, align 4
  %inc15 = add i32 %156, 1
  store i32 %inc15, ptr %rst_done_cnt, align 4
  %rst_fail_cnt17 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 13, i32 6
  %157 = ptrtoint ptr %rst_fail_cnt17 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %rst_fail_cnt17, align 4
  call void @_clear_bit(i32 noundef 13, ptr noundef %state.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end.i71, %if.end.i66.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end, %do.end.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39.ph, %do.end ], [ 0, %if.end13 ], [ %retval.0.i55, %land.lhs.true.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ], [ %call7.i, %do.end.i ], [ -95, %if.end.i66.cleanup_crit_edge ], [ %call7.i67, %do.end.i71 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_mbx_async_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_tqps_update_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_sync_mac_list(ptr noundef %hdev, i32 noundef %mac_type) unnamed_addr #0 align 64 {
entry:
  %tmp_add_list = alloca %struct.list_head, align 4
  %tmp_del_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_add_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_add_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_del_list) #13
  %1 = getelementptr inbounds %struct.list_head, ptr %tmp_del_list, i32 0, i32 1
  %2 = ptrtoint ptr %tmp_add_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %tmp_add_list, ptr %tmp_add_list, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp_add_list, ptr %0, align 4
  %4 = ptrtoint ptr %tmp_del_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %tmp_del_list, ptr %tmp_del_list, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tmp_del_list, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mac_type)
  %cmp = icmp eq i32 %mac_type, 0
  %uc_mac_list = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38, i32 1
  %mc_mac_list = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38, i32 2
  %cond = select i1 %cmp, ptr %uc_mac_list, ptr %mc_mac_list
  %mac_table2 = getelementptr inbounds %struct.hclgevf_dev, ptr %hdev, i32 0, i32 38
  call void @_raw_spin_lock_bh(ptr noundef %mac_table2) #13
  %6 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cond, align 4
  %cmp9.not94 = icmp eq ptr %7, %cond
  br i1 %cmp9.not94, label %entry.stop_traverse_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.stop_traverse_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_traverse

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %mac_node.095 = phi ptr [ %tmp.097, %for.inc.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %mac_node.095 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.097 = load ptr, ptr %mac_node.095, align 4
  %state = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.095, i32 0, i32 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %10, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb11
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.095) #13
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.__list_del_entry.exit.i_crit_edge

sw.bb.__list_del_entry.exit.i_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.095, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %mac_node.095 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_node.095, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %sw.bb.__list_del_entry.exit.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mac_node.095, ptr noundef %19, ptr noundef nonnull %tmp_del_list) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mac_node.095, ptr %1, align 4
  %21 = ptrtoint ptr %mac_node.095 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tmp_del_list, ptr %mac_node.095, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.095, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %mac_node.095, ptr %19, align 4
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2848, i32 noundef 20) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb11.stop_traverse_crit_edge, label %if.end

sw.bb11.stop_traverse_crit_edge:                  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_traverse

if.end:                                           ; preds = %sw.bb11
  %mac_addr = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %call7.i.i, i32 0, i32 2
  %mac_addr12 = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.095, i32 0, i32 2
  %25 = ptrtoint ptr %mac_addr12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac_addr12, align 4
  %27 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.095, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %call7.i.i, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %add.ptr1.i, align 8
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  %state15 = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %state15, align 8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  %call.i.i51 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %35, ptr noundef nonnull %tmp_add_list) #13
  br i1 %call.i.i51, label %if.end.i.i52, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i52:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %0, align 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tmp_add_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %35, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i52, %if.end.for.inc_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp9.not = icmp eq ptr %tmp.097, %cond
  br i1 %cmp9.not, label %for.inc.stop_traverse_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.stop_traverse_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %stop_traverse

stop_traverse:                                    ; preds = %for.inc.stop_traverse_crit_edge, %sw.bb11.stop_traverse_crit_edge, %entry.stop_traverse_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mac_table2) #13
  call fastcc void @hclgevf_config_mac_list(ptr noundef %hdev, ptr noundef nonnull %tmp_del_list, i32 noundef %mac_type)
  call fastcc void @hclgevf_config_mac_list(ptr noundef %hdev, ptr noundef nonnull %tmp_add_list, i32 noundef %mac_type)
  call void @_raw_spin_lock_bh(ptr noundef %mac_table2) #13
  %40 = ptrtoint ptr %tmp_del_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmp_del_list, align 4
  %cmp.not31.i = icmp eq ptr %41, %tmp_del_list
  br i1 %cmp.not31.i, label %stop_traverse.hclgevf_sync_from_del_list.exit_crit_edge, label %for.body.lr.ph.i

stop_traverse.hclgevf_sync_from_del_list.exit_crit_edge: ; preds = %stop_traverse
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_from_del_list.exit

for.body.lr.ph.i:                                 ; preds = %stop_traverse
  %prev.i2.i.i = getelementptr inbounds %struct.list_head, ptr %cond, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mac_node.032.i = phi ptr [ %41, %for.body.lr.ph.i ], [ %tmp.035.i, %for.inc.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %mac_node.032.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %tmp.035.i = load ptr, ptr %mac_node.032.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.032.i, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.032.i, i32 0, i32 2, i32 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i
  %mac_node.0.in.i.i = phi ptr [ %cond, %for.body.i ], [ %mac_node.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %43 = ptrtoint ptr %mac_node.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %mac_node.0.i.i = load ptr, ptr %mac_node.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mac_node.0.i.i, %cond
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.else.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.else.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mac_addr7.i.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mac_addr.i, align 4
  %46 = ptrtoint ptr %mac_addr7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mac_addr7.i.i, align 4
  %xor.i.i.i = xor i32 %47, %45
  %48 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %51, %49
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %hclgevf_find_mac_node.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

hclgevf_find_mac_node.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %mac_node.0.i.i, null
  br i1 %tobool.not.i, label %hclgevf_find_mac_node.exit.i.if.else.i_crit_edge, label %if.then.i

hclgevf_find_mac_node.exit.i.if.else.i_crit_edge: ; preds = %hclgevf_find_mac_node.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i:                                        ; preds = %hclgevf_find_mac_node.exit.i
  %state.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %state.i, align 4
  %call.i.i.i53 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.032.i) #13
  br i1 %call.i.i.i53, label %if.end.i.i.i54, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i54:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.032.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %mac_node.032.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac_node.032.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i54, %if.then.i.list_del.exit.i_crit_edge
  %59 = ptrtoint ptr %mac_node.032.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.032.i, align 4
  %prev.i.i55 = getelementptr inbounds %struct.list_head, ptr %mac_node.032.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i55, align 4
  call void @kfree(ptr noundef %mac_node.032.i) #13
  br label %for.inc.i

if.else.i:                                        ; preds = %hclgevf_find_mac_node.exit.i.if.else.i_crit_edge, %for.cond.i.i.if.else.i_crit_edge
  %call.i.i23.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.032.i) #13
  br i1 %call.i.i23.i, label %if.end.i.i26.i, label %if.else.i.__list_del_entry.exit.i.i_crit_edge

if.else.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i.i

if.end.i.i26.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i24.i = getelementptr inbounds %struct.list_head, ptr %mac_node.032.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i24.i, align 4
  %63 = ptrtoint ptr %mac_node.032.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mac_node.032.i, align 4
  %prev1.i.i.i25.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i25.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i26.i, %if.else.i.__list_del_entry.exit.i.i_crit_edge
  %67 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mac_node.032.i, ptr noundef %68, ptr noundef %cond) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %mac_node.032.i, ptr %prev.i2.i.i, align 4
  %70 = ptrtoint ptr %mac_node.032.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %cond, ptr %mac_node.032.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.032.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %mac_node.032.i, ptr %68, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %list_del.exit.i
  %cmp.not.i = icmp eq ptr %tmp.035.i, %tmp_del_list
  br i1 %cmp.not.i, label %for.inc.i.hclgevf_sync_from_del_list.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.hclgevf_sync_from_del_list.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_from_del_list.exit

hclgevf_sync_from_del_list.exit:                  ; preds = %for.inc.i.hclgevf_sync_from_del_list.exit_crit_edge, %stop_traverse.hclgevf_sync_from_del_list.exit_crit_edge
  %73 = ptrtoint ptr %tmp_add_list to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tmp_add_list, align 4
  %cmp.not53.i = icmp eq ptr %74, %tmp_add_list
  br i1 %cmp.not53.i, label %hclgevf_sync_from_del_list.exit.hclgevf_sync_from_add_list.exit_crit_edge, label %for.body.lr.ph.i57

hclgevf_sync_from_del_list.exit.hclgevf_sync_from_add_list.exit_crit_edge: ; preds = %hclgevf_sync_from_del_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_from_add_list.exit

for.body.lr.ph.i57:                               ; preds = %hclgevf_sync_from_del_list.exit
  %prev.i2.i.i56 = getelementptr inbounds %struct.list_head, ptr %cond, i32 0, i32 1
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.inc.i89.for.body.i60_crit_edge, %for.body.lr.ph.i57
  %mac_node.054.i = phi ptr [ %74, %for.body.lr.ph.i57 ], [ %tmp.058.i, %for.inc.i89.for.body.i60_crit_edge ]
  %75 = ptrtoint ptr %mac_node.054.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %tmp.058.i = load ptr, ptr %mac_node.054.i, align 4
  %mac_addr.i58 = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.054.i, i32 0, i32 2
  %add.ptr.i.i.i59 = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.054.i, i32 0, i32 2, i32 4
  br label %for.cond.i.i64

for.cond.i.i64:                                   ; preds = %for.body.i.i72.for.cond.i.i64_crit_edge, %for.body.i60
  %mac_node.0.in.i.i61 = phi ptr [ %cond, %for.body.i60 ], [ %mac_node.0.i.i62, %for.body.i.i72.for.cond.i.i64_crit_edge ]
  %76 = ptrtoint ptr %mac_node.0.in.i.i61 to i32
  call void @__asan_load4_noabort(i32 %76)
  %mac_node.0.i.i62 = load ptr, ptr %mac_node.0.in.i.i61, align 4
  %cmp.not.i.i63 = icmp eq ptr %mac_node.0.i.i62, %cond
  br i1 %cmp.not.i.i63, label %for.cond.i.i64.if.else.i85_crit_edge, label %for.body.i.i72

for.cond.i.i64.if.else.i85_crit_edge:             ; preds = %for.cond.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i85

for.body.i.i72:                                   ; preds = %for.cond.i.i64
  %mac_addr7.i.i65 = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i62, i32 0, i32 2
  %77 = ptrtoint ptr %mac_addr.i58 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mac_addr.i58, align 4
  %79 = ptrtoint ptr %mac_addr7.i.i65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mac_addr7.i.i65, align 4
  %xor.i.i.i66 = xor i32 %80, %78
  %81 = ptrtoint ptr %add.ptr.i.i.i59 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i.i59, align 2
  %add.ptr1.i.i.i67 = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i62, i32 0, i32 2, i32 4
  %83 = ptrtoint ptr %add.ptr1.i.i.i67 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr1.i.i.i67, align 2
  %xor37.i.i.i68 = xor i16 %84, %82
  %xor3.i.i.i69 = zext i16 %xor37.i.i.i68 to i32
  %or.i.i.i70 = or i32 %xor.i.i.i66, %xor3.i.i.i69
  %cmp.i.i.i71 = icmp eq i32 %or.i.i.i70, 0
  br i1 %cmp.i.i.i71, label %hclgevf_find_mac_node.exit.i74, label %for.body.i.i72.for.cond.i.i64_crit_edge

for.body.i.i72.for.cond.i.i64_crit_edge:          ; preds = %for.body.i.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i64

hclgevf_find_mac_node.exit.i74:                   ; preds = %for.body.i.i72
  %tobool.not.i73 = icmp eq ptr %mac_node.0.i.i62, null
  br i1 %tobool.not.i73, label %hclgevf_find_mac_node.exit.i74.if.else.i85_crit_edge, label %if.then.i76

hclgevf_find_mac_node.exit.i74.if.else.i85_crit_edge: ; preds = %hclgevf_find_mac_node.exit.i74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i85

if.then.i76:                                      ; preds = %hclgevf_find_mac_node.exit.i74
  %state.i75 = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.054.i, i32 0, i32 1
  %85 = ptrtoint ptr %state.i75 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state.i75, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %86, label %if.then.i76.hclgevf_update_mac_node.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb9.i.i
  ]

if.then.i76.hclgevf_update_mac_node.exit.i_crit_edge: ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_update_mac_node.exit.i

sw.bb.i.i:                                        ; preds = %if.then.i76
  %state1.i.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i62, i32 0, i32 1
  %88 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i.i = icmp eq i32 %89, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.i.i.hclgevf_update_mac_node.exit.i_crit_edge

sw.bb.i.i.hclgevf_update_mac_node.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_update_mac_node.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %state1.i.i, align 4
  br label %hclgevf_update_mac_node.exit.i

sw.bb3.i.i:                                       ; preds = %if.then.i76
  %state4.i.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i62, i32 0, i32 1
  %91 = ptrtoint ptr %state4.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %state4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp5.i.i = icmp eq i32 %92, 0
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %sw.bb3.i.i
  %call.i.i.i.i77 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mac_node.0.i.i62) #13
  br i1 %call.i.i.i.i77, label %if.end.i.i.i.i78, label %if.then6.i.i.list_del.exit.i.i_crit_edge

if.then6.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i78:                                 ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.0.i.i62, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i.i, align 4
  %95 = ptrtoint ptr %mac_node.0.i.i62 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mac_node.0.i.i62, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i78, %if.then6.i.i.list_del.exit.i.i_crit_edge
  %99 = ptrtoint ptr %mac_node.0.i.i62 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.0.i.i62, align 4
  %prev.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %mac_node.0.i.i62, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i79, align 4
  call void @kfree(ptr noundef nonnull %mac_node.0.i.i62) #13
  br label %hclgevf_update_mac_node.exit.i

if.else.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %state4.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %state4.i.i, align 4
  br label %hclgevf_update_mac_node.exit.i

sw.bb9.i.i:                                       ; preds = %if.then.i76
  %state10.i.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i.i62, i32 0, i32 1
  %102 = ptrtoint ptr %state10.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %state10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp11.i.i = icmp eq i32 %103, 0
  br i1 %cmp11.i.i, label %if.then12.i.i, label %sw.bb9.i.i.hclgevf_update_mac_node.exit.i_crit_edge

sw.bb9.i.i.hclgevf_update_mac_node.exit.i_crit_edge: ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_update_mac_node.exit.i

if.then12.i.i:                                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %state10.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %state10.i.i, align 4
  br label %hclgevf_update_mac_node.exit.i

hclgevf_update_mac_node.exit.i:                   ; preds = %if.then12.i.i, %sw.bb9.i.i.hclgevf_update_mac_node.exit.i_crit_edge, %if.else.i.i, %list_del.exit.i.i, %if.then.i.i, %sw.bb.i.i.hclgevf_update_mac_node.exit.i_crit_edge, %if.then.i76.hclgevf_update_mac_node.exit.i_crit_edge
  %call.i.i.i80 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.054.i) #13
  br i1 %call.i.i.i80, label %if.end.i.i.i82, label %hclgevf_update_mac_node.exit.i.list_del.exit.i84_crit_edge

hclgevf_update_mac_node.exit.i.list_del.exit.i84_crit_edge: ; preds = %hclgevf_update_mac_node.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i84

if.end.i.i.i82:                                   ; preds = %hclgevf_update_mac_node.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i35.i = getelementptr inbounds %struct.list_head, ptr %mac_node.054.i, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i35.i, align 4
  %107 = ptrtoint ptr %mac_node.054.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mac_node.054.i, align 4
  %prev1.i.i.i.i81 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev1.i.i.i.i81, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %108, ptr %106, align 4
  br label %list_del.exit.i84

list_del.exit.i84:                                ; preds = %if.end.i.i.i82, %hclgevf_update_mac_node.exit.i.list_del.exit.i84_crit_edge
  %111 = ptrtoint ptr %mac_node.054.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.054.i, align 4
  %prev.i.i83 = getelementptr inbounds %struct.list_head, ptr %mac_node.054.i, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i83 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i83, align 4
  call void @kfree(ptr noundef %mac_node.054.i) #13
  br label %for.inc.i89

if.else.i85:                                      ; preds = %hclgevf_find_mac_node.exit.i74.if.else.i85_crit_edge, %for.cond.i.i64.if.else.i85_crit_edge
  %state8.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.054.i, i32 0, i32 1
  %113 = ptrtoint ptr %state8.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %state8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp9.i = icmp eq i32 %114, 2
  br i1 %cmp9.i, label %if.then10.i, label %if.else13.i

if.then10.i:                                      ; preds = %if.else.i85
  %115 = ptrtoint ptr %state8.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %state8.i, align 4
  %call.i.i36.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.054.i) #13
  br i1 %call.i.i36.i, label %if.end.i.i39.i, label %if.then10.i.__list_del_entry.exit.i.i86_crit_edge

if.then10.i.__list_del_entry.exit.i.i86_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i.i86

if.end.i.i39.i:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i37.i = getelementptr inbounds %struct.list_head, ptr %mac_node.054.i, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i37.i, align 4
  %118 = ptrtoint ptr %mac_node.054.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mac_node.054.i, align 4
  %prev1.i.i.i38.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i38.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %__list_del_entry.exit.i.i86

__list_del_entry.exit.i.i86:                      ; preds = %if.end.i.i39.i, %if.then10.i.__list_del_entry.exit.i.i86_crit_edge
  %122 = ptrtoint ptr %prev.i2.i.i56 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i2.i.i56, align 4
  %call.i.i.i40.i = call zeroext i1 @__list_add_valid(ptr noundef %mac_node.054.i, ptr noundef %123, ptr noundef %cond) #13
  br i1 %call.i.i.i40.i, label %if.end.i.i.i41.i, label %__list_del_entry.exit.i.i86.for.inc.i89_crit_edge

__list_del_entry.exit.i.i86.for.inc.i89_crit_edge: ; preds = %__list_del_entry.exit.i.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i89

if.end.i.i.i41.i:                                 ; preds = %__list_del_entry.exit.i.i86
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %prev.i2.i.i56 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %mac_node.054.i, ptr %prev.i2.i.i56, align 4
  %125 = ptrtoint ptr %mac_node.054.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %cond, ptr %mac_node.054.i, align 4
  %prev3.i.i.i.i87 = getelementptr inbounds %struct.list_head, ptr %mac_node.054.i, i32 0, i32 1
  %126 = ptrtoint ptr %prev3.i.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %prev3.i.i.i.i87, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %mac_node.054.i, ptr %123, align 4
  br label %for.inc.i89

if.else13.i:                                      ; preds = %if.else.i85
  %call.i.i42.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.054.i) #13
  br i1 %call.i.i42.i, label %if.end.i.i45.i, label %if.else13.i.list_del.exit48.i_crit_edge

if.else13.i.list_del.exit48.i_crit_edge:          ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit48.i

if.end.i.i45.i:                                   ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i43.i = getelementptr inbounds %struct.list_head, ptr %mac_node.054.i, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i.i43.i, align 4
  %130 = ptrtoint ptr %mac_node.054.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mac_node.054.i, align 4
  %prev1.i.i.i44.i = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i44.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %list_del.exit48.i

list_del.exit48.i:                                ; preds = %if.end.i.i45.i, %if.else13.i.list_del.exit48.i_crit_edge
  %134 = ptrtoint ptr %mac_node.054.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.054.i, align 4
  %prev.i46.i = getelementptr inbounds %struct.list_head, ptr %mac_node.054.i, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i46.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i46.i, align 4
  call void @kfree(ptr noundef %mac_node.054.i) #13
  br label %for.inc.i89

for.inc.i89:                                      ; preds = %list_del.exit48.i, %if.end.i.i.i41.i, %__list_del_entry.exit.i.i86.for.inc.i89_crit_edge, %list_del.exit.i84
  %cmp.not.i88 = icmp eq ptr %tmp.058.i, %tmp_add_list
  br i1 %cmp.not.i88, label %for.inc.i89.hclgevf_sync_from_add_list.exit_crit_edge, label %for.inc.i89.for.body.i60_crit_edge

for.inc.i89.for.body.i60_crit_edge:               ; preds = %for.inc.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i60

for.inc.i89.hclgevf_sync_from_add_list.exit_crit_edge: ; preds = %for.inc.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_sync_from_add_list.exit

hclgevf_sync_from_add_list.exit:                  ; preds = %for.inc.i89.hclgevf_sync_from_add_list.exit_crit_edge, %hclgevf_sync_from_del_list.exit.hclgevf_sync_from_add_list.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mac_table2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_del_list) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_add_list) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclgevf_config_mac_list(ptr noundef %hdev, ptr noundef readonly %list, i32 noundef %mac_type) unnamed_addr #0 align 64 {
entry:
  %send_msg.i = alloca %struct.hclge_vf_to_pf_msg, align 1
  %format_mac_addr = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %format_mac_addr) #13
  %0 = call ptr @memset(ptr %format_mac_addr, i32 255, i32 18)
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %list, align 4
  %cmp.not38 = icmp eq ptr %2, %list
  br i1 %cmp.not38, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mac_type)
  %cmp.i = icmp eq i32 %mac_type, 0
  %code.0.i = select i1 %cmp.i, i8 3, i8 4
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg.i, i32 0, i32 1, i32 0, i32 1, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mac_node.039 = phi ptr [ %2, %for.body.lr.ph ], [ %tmp.041, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %mac_node.039 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.041 = load ptr, ptr %mac_node.039, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg.i) #13
  %state.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.039, i32 0, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  %..i = select i1 %cmp1.i, i8 1, i8 2
  %.13.i = select i1 %cmp1.i, i8 4, i8 5
  %subcode.0.i = select i1 %cmp.i, i8 %..i, i8 %.13.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %6, align 1
  %11 = ptrtoint ptr %send_msg.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %code.0.i, ptr %send_msg.i, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %subcode.0.i, ptr %3, align 1
  %mac_addr.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.039, i32 0, i32 2
  %13 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_addr.i, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %4, align 4
  %add.ptr.i.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.039, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %5, align 2
  %call.i = call i32 @hclgevf_send_mbx_msg(ptr noundef %hdev, ptr noundef nonnull %send_msg.i, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.le = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.039, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mac_addr.i, align 1
  %conv.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %add.ptr.i.i.le to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i.le, align 1
  %conv2.i = zext i8 %22 to i32
  %arrayidx3.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.039, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %24 to i32
  %call.i35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %format_mac_addr, i32 noundef 18, ptr noundef nonnull @.str.153, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i) #13
  %25 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.151, ptr noundef nonnull %format_mac_addr, i32 noundef %28, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %for.body
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp10 = icmp eq i32 %30, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %state.i, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mac_node.039) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.039, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %mac_node.039 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac_node.039, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %38 = ptrtoint ptr %mac_node.039 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.039, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mac_node.039, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %mac_node.039) #13
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.then11
  %cmp.not = icmp eq ptr %tmp.041, %list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %format_mac_addr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclgevf_misc_irq_handle(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %base.addr.i47.i = alloca ptr, align 4
  %base.addr.i44.i = alloca ptr, align 4
  %base.addr.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %misc_vector = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %misc_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %misc_vector, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #13, !srcloc !480
  %hw.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i)
  %4 = ptrtoint ptr %base.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %base.addr.i.i, align 4
  %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i = load volatile ptr, ptr %base.addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i, i32 160004
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !482
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i)
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i44.i)
  %9 = ptrtoint ptr %base.addr.i44.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %base.addr.i44.i, align 4
  %base.addr.i44.i.0.base.addr.i44.i.0.base.addr.i44.0.base.addr.i44.0.base.addr.0.base.addr.0.base.addr.0..i45.i = load volatile ptr, ptr %base.addr.i44.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %base.addr.i44.i.0.base.addr.i44.i.0.base.addr.i44.0.base.addr.i44.0.base.addr.0.base.addr.0.base.addr.0..i45.i, i32 134144
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #13, !srcloc !482
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i44.i)
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.159, i32 noundef %11) #16
  %reset_pending.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %reset_pending.i) #13
  %reset_state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %reset_state.i) #13
  %comm_state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 2, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %comm_state.i) #13
  %vf_rst_cnt.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 13, i32 3
  %14 = ptrtoint ptr %vf_rst_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vf_rst_cnt.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %vf_rst_cnt.i, align 4
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i47.i)
  %18 = ptrtoint ptr %base.addr.i47.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %base.addr.i47.i, align 4
  %base.addr.i47.i.0.base.addr.i47.i.0.base.addr.i47.0.base.addr.i47.0.base.addr.0.base.addr.0.base.addr.0..i48.i = load volatile ptr, ptr %base.addr.i47.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %base.addr.i47.i.0.base.addr.i47.i.0.base.addr.i47.0.base.addr.i47.0.base.addr.0.base.addr.0.base.addr.0..i48.i, i32 28680
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #13, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i47.i)
  %20 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i, align 8
  %22 = or i32 %19, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %add.ptr.i50.i = getelementptr i8, ptr %21, i32 28680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %22) #13, !srcloc !480
  %23 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %add.ptr.i.i10.c = getelementptr i8, ptr %24, i32 160000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.c, i32 -67108865) #13, !srcloc !480
  %state.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 5
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i11 = icmp eq i32 %27, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i, label %if.then.i.sw.epilog_crit_edge

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.i:                                         ; preds = %entry
  %and15.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %hclgevf_check_evt_cause.exit, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %ae_dev.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %ae_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ae_dev.i, align 4
  %dev_version.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %dev_version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %cmp.i = icmp ugt i32 %31, 32
  %and19.i = and i32 %6, -3
  %storemerge.i = select i1 %cmp.i, i32 -3, i32 %and19.i
  %32 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  %34 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i) #13
  %add.ptr.i.i10.c20 = getelementptr i8, ptr %33, i32 160000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.c20, i32 %34) #13, !srcloc !480
  tail call void @hclgevf_mbx_handler(ptr noundef %data) #13
  br label %sw.epilog

hclgevf_check_evt_cause.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 8
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26.i, ptr noundef nonnull @.str.162, i32 noundef %6) #16
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.then.i
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i, align 4
  %39 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool3.not.i = icmp eq i32 %39, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call6.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i12, label %land.lhs.true4.i.sw.epilog_crit_edge

land.lhs.true4.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i12:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = load ptr, ptr @hclgevf_wq, align 4
  %service_task.i = getelementptr inbounds %struct.hclgevf_dev, ptr %data, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %service_task.i, i32 noundef 0) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i12, %land.lhs.true4.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %hclgevf_check_evt_cause.exit, %if.then17.i, %if.then.i.sw.epilog_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  %41 = ptrtoint ptr %misc_vector to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %misc_vector, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 16777216) #13, !srcloc !480
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclgevf_mbx_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_set_rss_algo_key(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_set_rss_input_tuple(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_set_rss_indir_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_get_rss_tc_info(i16 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_set_rss_tc_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_init_roce_client_instance(ptr noundef %ae_dev, ptr noundef %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ae_dev1 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ae_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ae_dev1, align 4
  %flag = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %roce_client = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %roce_client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %roce_client, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nic_client = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 45
  %9 = ptrtoint ptr %nic_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nic_client, align 8
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %num_roce_msix.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %num_roce_msix.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_roce_msix.i, align 8
  %conv.i = zext i16 %12 to i32
  %num_vectors.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 5, i32 0, i32 6
  %13 = ptrtoint ptr %num_vectors.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %num_vectors.i, align 8
  %num_msi_left.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 29
  %14 = ptrtoint ptr %num_msi_left.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_msi_left.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %12)
  %cmp.i = icmp ult i16 %15, %12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp8.i = icmp eq i16 %15, 0
  %or.cond.i = or i1 %cmp.i, %cmp8.i
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %16 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 5
  %roce_base_msix_offset.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 33
  %17 = ptrtoint ptr %roce_base_msix_offset.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %roce_base_msix_offset.i, align 2
  %conv10.i = zext i16 %18 to i32
  %base_vector.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 5, i32 0, i32 5
  %19 = ptrtoint ptr %base_vector.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10.i, ptr %base_vector.i, align 4
  %20 = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 43, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %16, align 8
  %hw.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 8
  %roce_io_base.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %roce_io_base.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %roce_io_base.i, align 4
  %mem_base.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem_base.i, align 4
  %roce_mem_base.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 5, i32 0, i32 3
  %29 = ptrtoint ptr %roce_mem_base.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %roce_mem_base.i, align 8
  %pdev.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 43, i32 1
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 4
  %pdev15.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 1
  %32 = ptrtoint ptr %pdev15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %pdev15.i, align 4
  %ae_algo.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 43, i32 3
  %33 = ptrtoint ptr %ae_algo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ae_algo.i, align 4
  %ae_algo16.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %ae_algo16.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %ae_algo16.i, align 4
  %numa_node_mask.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 43, i32 6
  %36 = ptrtoint ptr %numa_node_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %numa_node_mask.i, align 4
  %numa_node_mask17.i = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44, i32 6
  %38 = ptrtoint ptr %numa_node_mask17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %numa_node_mask17.i, align 4
  %ops = getelementptr inbounds %struct.hnae3_client, ptr %client, i32 0, i32 3
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %roce = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 44
  %call8 = tail call i32 %42(ptr noundef %roce) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %state = getelementptr inbounds %struct.hclgevf_dev, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #13
  tail call void @hnae3_set_client_init_flag(ptr noundef %client, ptr noundef %ae_dev, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hnae3_set_client_init_flag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_reset_tqp_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_update_mac_list(ptr noundef %handle, i32 noundef %state, i32 noundef %mac_type, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mac_type)
  %cmp = icmp eq i32 %mac_type, 0
  %uc_mac_list = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 38, i32 1
  %mc_mac_list = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 38, i32 2
  %cond = select i1 %cmp, ptr %uc_mac_list, ptr %mc_mac_list
  %mac_table2 = getelementptr inbounds %struct.hclgevf_dev, ptr %add.ptr9.i, i32 0, i32 38
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_table2) #13
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %hclgevf_ae_get_hdev.exit
  %mac_node.0.in.i = phi ptr [ %cond, %hclgevf_ae_get_hdev.exit ], [ %mac_node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %mac_node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mac_node.0.i = load ptr, ptr %mac_node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mac_node.0.i, %cond
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr7.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %mac_addr7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_addr7.i, align 4
  %xor.i.i = xor i32 %8, %6
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %12, %10
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %hclgevf_find_mac_node.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

hclgevf_find_mac_node.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mac_node.0.i, null
  br i1 %tobool.not, label %hclgevf_find_mac_node.exit.if.end_crit_edge, label %if.then

hclgevf_find_mac_node.exit.if.end_crit_edge:      ; preds = %hclgevf_find_mac_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %hclgevf_find_mac_node.exit
  %13 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %state, label %if.then.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then
  %state1.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i37 = icmp eq i32 %15, 1
  br i1 %cmp.i37, label %if.then.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state1.i, align 4
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.then
  %state4.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.i = icmp eq i32 %18, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i38

if.then6.i:                                       ; preds = %sw.bb3.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mac_node.0.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then6.i.list_del.exit.i_crit_edge

if.then6.i.list_del.exit.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %mac_node.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_node.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then6.i.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %mac_node.0.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %mac_node.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mac_node.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %mac_node.0.i) #13
  br label %cleanup

if.else.i38:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %state4.i, align 4
  br label %cleanup

sw.bb9.i:                                         ; preds = %if.then
  %state10.i = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %mac_node.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %state10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp11.i = icmp eq i32 %29, 0
  br i1 %cmp11.i, label %if.then12.i, label %sw.bb9.i.cleanup_crit_edge

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %state10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %state10.i, align 4
  br label %cleanup

if.end:                                           ; preds = %hclgevf_find_mac_node.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp6 = icmp eq i32 %state, 1
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 2848, i32 noundef 20) #18
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %state17 = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %state17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state17, align 8
  %mac_addr = getelementptr inbounds %struct.hclgevf_mac_addr_node, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %35 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mac_addr, align 4
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr %struct.hclgevf_mac_addr_node, ptr %call7.i.i, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cond, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %40, ptr noundef %cond) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cond, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then12.i, %sw.bb9.i.cleanup_crit_edge, %if.else.i38, %list_del.exit.i, %if.then.i, %sw.bb.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %list_del.exit.i ], [ 0, %if.else.i38 ], [ 0, %sw.bb9.i.cleanup_crit_edge ], [ 0, %if.then12.i ], [ -2, %if.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_table2) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hclge_comm_tqps_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hclge_comm_tqps_get_strings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_tqps_get_sset_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_get_rss_hash_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_get_rss_indir_tbl(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_set_rss_hash_key(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_set_rss_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_get_rss_tuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hclge_comm_convert_rss_tuple(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclgevf_bind_ring_to_vector(ptr noundef %handle, i1 noundef zeroext %en, i32 noundef %vector_id, ptr noundef readonly %ring_chain) unnamed_addr #0 align 64 {
entry:
  %send_msg = alloca %struct.hclge_vf_to_pf_msg, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hclgevf_ae_get_hdev.exit_crit_edge, label %if.else.i

entry.hclgevf_ae_get_hdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %hclgevf_ae_get_hdev.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.hnae3_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %..i = select i1 %cmp.i, i32 -17928, i32 -17696
  br label %hclgevf_ae_get_hdev.exit

hclgevf_ae_get_hdev.exit:                         ; preds = %if.else.i, %entry.hclgevf_ae_get_hdev.exit_crit_edge
  %.sink.i = phi i32 [ -17696, %entry.hclgevf_ae_get_hdev.exit_crit_edge ], [ %..i, %if.else.i ]
  %add.ptr9.i = getelementptr i8, ptr %handle, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_msg) #13
  %4 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hclge_vf_to_pf_msg, ptr %send_msg, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds i8, ptr %send_msg, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 14)
  %conv = select i1 %en, i8 6, i8 7
  %9 = ptrtoint ptr %send_msg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %send_msg, align 1
  %conv1 = trunc i32 %vector_id to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1, ptr %4, align 1
  %tobool3.not39 = icmp eq ptr %ring_chain, null
  br i1 %tobool3.not39, label %hclgevf_ae_get_hdev.exit.cleanup_crit_edge, label %hclgevf_ae_get_hdev.exit.for.body_crit_edge

hclgevf_ae_get_hdev.exit.for.body_crit_edge:      ; preds = %hclgevf_ae_get_hdev.exit
  br label %for.body

hclgevf_ae_get_hdev.exit.cleanup_crit_edge:       ; preds = %hclgevf_ae_get_hdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hclgevf_ae_get_hdev.exit.for.body_crit_edge
  %i.041 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %hclgevf_ae_get_hdev.exit.for.body_crit_edge ]
  %node.040 = phi ptr [ %28, %for.inc.for.body_crit_edge ], [ %ring_chain, %hclgevf_ae_get_hdev.exit.for.body_crit_edge ]
  %flag = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %node.040, i32 0, i32 2
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flag, align 4
  %13 = trunc i32 %12 to i8
  %conv4 = and i8 %13, 1
  %arrayidx = getelementptr [4 x %struct.hclge_ring_chain_param], ptr %6, i32 0, i32 %i.041
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %arrayidx, align 1
  %tqp_index = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %node.040, i32 0, i32 1
  %15 = ptrtoint ptr %tqp_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tqp_index, align 4
  %conv5 = trunc i32 %16 to i8
  %tqp_index8 = getelementptr [4 x %struct.hclge_ring_chain_param], ptr %6, i32 0, i32 %i.041, i32 1
  %17 = ptrtoint ptr %tqp_index8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5, ptr %tqp_index8, align 1
  %int_gl_idx = getelementptr inbounds %struct.hnae3_ring_chain_node, ptr %node.040, i32 0, i32 3
  %18 = ptrtoint ptr %int_gl_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %int_gl_idx, align 4
  %20 = trunc i32 %19 to i8
  %conv11 = and i8 %20, 3
  %int_gl_index = getelementptr [4 x %struct.hclge_ring_chain_param], ptr %6, i32 0, i32 %i.041, i32 2
  %21 = ptrtoint ptr %int_gl_index to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11, ptr %int_gl_index, align 1
  %inc = add i32 %i.041, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp eq i32 %inc, 4
  br i1 %cmp, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %22 = ptrtoint ptr %node.040 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node.040, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %conv16 = trunc i32 %inc to i8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv16, ptr %5, align 1
  %call17 = call i32 @hclgevf_send_mbx_msg(ptr noundef %add.ptr9.i, ptr noundef nonnull %send_msg, i1 noundef zeroext false, ptr noundef null, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.incthread-pre-split, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr9.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.225, i32 noundef %call17) #16
  br label %cleanup

for.incthread-pre-split:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %node.040 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load ptr, ptr %node.040, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.incthread-pre-split, %lor.lhs.false.for.inc_crit_edge
  %28 = phi ptr [ %.pr, %for.incthread-pre-split ], [ %23, %lor.lhs.false.for.inc_crit_edge ]
  %i.1 = phi i32 [ 0, %for.incthread-pre-split ], [ %inc, %lor.lhs.false.for.inc_crit_edge ]
  %tobool3.not = icmp eq ptr %28, null
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ 0, %hclgevf_ae_get_hdev.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_msg) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hnae3_unregister_ae_algo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !280, !282, !284, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !302, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !398, !400, !401, !402, !403, !405, !406, !407, !408, !410, !412, !414, !416, !418, !419, !420, !421, !423, !424, !425, !426, !428, !429, !430, !431, !433, !434, !435, !436, !438, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !454, !456, !457, !458, !459, !461, !462, !463, !464, !466, !467, !468}
!llvm.module.flags = !{!470, !471, !472, !473, !474, !475, !476, !477}
!llvm.ident = !{!478}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3334, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hclgevf_update_port_base_vlan_info._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hclgevf_update_port_base_vlan_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_hclgevf__385_3446_hclgevf_init6, !9, !"__initcall__kmod_hclgevf__385_3446_hclgevf_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3446, i32 1}
!10 = !{ptr @__exitcall_hclgevf_exit, !11, !"__exitcall_hclgevf_exit", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3447, i32 1}
!12 = !{ptr @__UNIQUE_ID_file386, !13, !"__UNIQUE_ID_file386", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3449, i32 1}
!14 = !{ptr @__UNIQUE_ID_license387, !13, !"__UNIQUE_ID_license387", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author388, !16, !"__UNIQUE_ID_author388", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3450, i32 1}
!17 = !{ptr @__UNIQUE_ID_description389, !18, !"__UNIQUE_ID_description389", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3451, i32 1}
!19 = !{ptr @__UNIQUE_ID_version390, !20, !"__UNIQUE_ID_version390", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3452, i32 1}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__modver_attr, !20, !"__modver_attr", i1 false, i1 false}
!25 = !{ptr @hclgevf_wq, !26, !"hclgevf_wq", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 24, i32 33}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1376, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hclgevf_notify_client._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @hclgevf_notify_client._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3428, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hclgevf_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @hclgevf_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3430, i32 31}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3432, i32 3}
!42 = !{ptr @hclgevf_init._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hclgevf_init._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ae_algovf, !45, !"ae_algovf", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3421, i32 29}
!46 = !{ptr @hclgevf_ops, !47, !"hclgevf_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3362, i32 34}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3025, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hclgevf_init_ae_dev._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hclgevf_init_ae_dev._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3031, i32 3}
!55 = !{ptr @hclgevf_init_ae_dev._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hclgevf_init_ae_dev._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2898, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @hclgevf_init_hdev._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @hclgevf_init_hdev._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2905, i32 3}
!64 = !{ptr @hclgevf_init_hdev._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hclgevf_init_hdev._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2921, i32 3}
!68 = !{ptr @hclgevf_init_hdev._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hclgevf_init_hdev._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2927, i32 3}
!72 = !{ptr @hclgevf_init_hdev._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hclgevf_init_hdev._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2943, i32 3}
!76 = !{ptr @hclgevf_init_hdev._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hclgevf_init_hdev._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2949, i32 3}
!80 = !{ptr @hclgevf_init_hdev._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @hclgevf_init_hdev._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2957, i32 3}
!84 = !{ptr @hclgevf_init_hdev._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @hclgevf_init_hdev._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2965, i32 3}
!88 = !{ptr @hclgevf_init_hdev._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @hclgevf_init_hdev._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2975, i32 2}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @hclgevf_init_hdev._entry.45, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @hclgevf_init_hdev._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2578, i32 3}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hclgevf_pci_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @hclgevf_pci_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2584, i32 3}
!102 = !{ptr @hclgevf_pci_init._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @hclgevf_pci_init._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2590, i32 3}
!106 = !{ptr @hclgevf_pci_init._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hclgevf_pci_init._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2598, i32 3}
!110 = !{ptr @hclgevf_pci_init._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @hclgevf_pci_init._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2563, i32 3}
!114 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @hclgevf_dev_mem_map._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @hclgevf_dev_mem_map._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2642, i32 3}
!119 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @hclgevf_query_vf_resource._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @hclgevf_query_vf_resource._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2675, i32 3}
!124 = !{ptr @hclgevf_query_vf_resource._entry.64, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @hclgevf_query_vf_resource._entry_ptr.66, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2325, i32 3}
!128 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @hclgevf_init_msi._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @hclgevf_init_msi._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2331, i32 3}
!133 = !{ptr @hclgevf_init_msi._entry.69, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @hclgevf_init_msi._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @hclgevf_state_init.__key, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2284, i32 2}
!137 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @hclgevf_state_init.__key.73, !136, !"__key", i1 false, i1 false}
!139 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @hclgevf_state_init.__key.75, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2286, i32 2}
!142 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @hclgevf_state_init.__key.77, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2289, i32 2}
!145 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1628, i32 3}
!148 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @hclgevf_reset._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @hclgevf_reset._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1397, i32 3}
!153 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @hclgevf_notify_roce_client._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @hclgevf_notify_roce_client._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.83, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1495, i32 4}
!158 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @hclgevf_reset_prepare_wait._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @hclgevf_reset_prepare_wait._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1506, i32 2}
!163 = !{ptr @hclgevf_reset_prepare_wait._entry.85, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @hclgevf_reset_prepare_wait._entry_ptr.87, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1427, i32 3}
!167 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @hclgevf_reset_wait._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @hclgevf_reset_wait._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1594, i32 3}
!172 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @hclgevf_reset_rebuild._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @hclgevf_reset_rebuild._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1467, i32 3}
!177 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @hclgevf_reset_stack._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @hclgevf_reset_stack._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2827, i32 3}
!182 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @hclgevf_reset_hdev._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @hclgevf_reset_hdev._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2836, i32 3}
!187 = !{ptr @hclgevf_reset_hdev._entry.96, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @hclgevf_reset_hdev._entry_ptr.98, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @hclgevf_reset_hdev._entry.99, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2842, i32 3}
!191 = !{ptr @hclgevf_reset_hdev._entry_ptr.100, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @hclgevf_reset_hdev._entry.101, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2853, i32 3}
!194 = !{ptr @hclgevf_reset_hdev._entry_ptr.102, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2862, i32 2}
!197 = !{ptr @hclgevf_reset_hdev._entry.103, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @hclgevf_reset_hdev._entry_ptr.105, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.106, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2780, i32 4}
!201 = !{ptr @hclgevf_pci_reset._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @hclgevf_pci_reset._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.108, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2788, i32 4}
!205 = !{ptr @hclgevf_pci_reset._entry.107, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @hclgevf_pci_reset._entry_ptr.109, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.110, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1544, i32 2}
!209 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @hclgevf_reset_err_handle._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @hclgevf_reset_err_handle._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.112, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1514, i32 2}
!214 = !{ptr @.str.113, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @hclgevf_dump_rst_info._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @hclgevf_dump_rst_info._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.115, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1516, i32 2}
!219 = !{ptr @hclgevf_dump_rst_info._entry.114, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @hclgevf_dump_rst_info._entry_ptr.116, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1518, i32 2}
!223 = !{ptr @hclgevf_dump_rst_info._entry.117, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @hclgevf_dump_rst_info._entry_ptr.119, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.121, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1520, i32 2}
!227 = !{ptr @hclgevf_dump_rst_info._entry.120, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @hclgevf_dump_rst_info._entry_ptr.122, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.124, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1522, i32 2}
!231 = !{ptr @hclgevf_dump_rst_info._entry.123, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @hclgevf_dump_rst_info._entry_ptr.125, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.127, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1524, i32 2}
!235 = !{ptr @hclgevf_dump_rst_info._entry.126, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @hclgevf_dump_rst_info._entry_ptr.128, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.130, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1526, i32 2}
!239 = !{ptr @hclgevf_dump_rst_info._entry.129, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @hclgevf_dump_rst_info._entry_ptr.131, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.133, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1528, i32 2}
!243 = !{ptr @hclgevf_dump_rst_info._entry.132, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @hclgevf_dump_rst_info._entry_ptr.134, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.136, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1530, i32 2}
!247 = !{ptr @hclgevf_dump_rst_info._entry.135, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @hclgevf_dump_rst_info._entry_ptr.137, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.139, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1532, i32 2}
!251 = !{ptr @hclgevf_dump_rst_info._entry.138, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @hclgevf_dump_rst_info._entry_ptr.140, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.142, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1534, i32 2}
!255 = !{ptr @hclgevf_dump_rst_info._entry.141, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @hclgevf_dump_rst_info._entry_ptr.143, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.145, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1536, i32 2}
!259 = !{ptr @hclgevf_dump_rst_info._entry.144, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @hclgevf_dump_rst_info._entry_ptr.146, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.147, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1897, i32 3}
!263 = !{ptr @.str.148, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @hclgevf_keep_alive._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @hclgevf_keep_alive._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.149, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 414, i32 3}
!268 = !{ptr @.str.150, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @hclgevf_request_link_info._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @hclgevf_request_link_info._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.151, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1074, i32 4}
!273 = !{ptr @.str.152, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @hclgevf_config_mac_list._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @hclgevf_config_mac_list._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.153, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/hisilicon/hns3/hnae3.h", i32 872, i32 55}
!278 = !{ptr @sema_init.__key, !279, !"__key", i1 false, i1 false}
!279 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!280 = !{ptr @.str.154, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!282 = !{ptr @.str.155, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!284 = !{ptr @.str.156, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2374, i32 55}
!286 = !{ptr @.str.157, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2379, i32 3}
!288 = !{ptr @.str.158, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @hclgevf_misc_irq_init._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @hclgevf_misc_irq_init._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.159, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1982, i32 3}
!293 = !{ptr @.str.160, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @hclgevf_check_evt_cause._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @hclgevf_check_evt_cause._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.162, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2017, i32 2}
!298 = !{ptr @hclgevf_check_evt_cause._entry.161, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @hclgevf_check_evt_cause._entry_ptr.163, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.164, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 184, i32 3}
!302 = !{ptr @.str.165, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @hclgevf_get_basic_info._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @hclgevf_get_basic_info._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.166, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 212, i32 3}
!307 = !{ptr @.str.167, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @hclgevf_get_port_base_vlan_filter_state._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @hclgevf_get_port_base_vlan_filter_state._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.168, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 238, i32 3}
!312 = !{ptr @.str.169, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @hclgevf_get_queue_info._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @hclgevf_get_queue_info._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.170, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 268, i32 3}
!317 = !{ptr @.str.171, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @hclgevf_get_queue_depth._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @hclgevf_get_queue_depth._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.172, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 310, i32 3}
!322 = !{ptr @.str.173, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @hclgevf_get_pf_media_type._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @hclgevf_get_pf_media_type._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.174, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 470, i32 3}
!327 = !{ptr @.str.175, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @hclgevf_set_handle_info._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @hclgevf_set_handle_info._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.176, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2136, i32 3}
!332 = !{ptr @.str.177, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @hclgevf_config_gro._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @hclgevf_config_gro._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.178, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2182, i32 3}
!337 = !{ptr @.str.179, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @hclgevf_init_vlan_config._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @hclgevf_init_vlan_config._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.180, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 478, i32 3}
!342 = !{ptr @.str.181, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @hclgevf_free_vector._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @hclgevf_free_vector._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.182, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1725, i32 3}
!347 = !{ptr @.str.183, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @hclgevf_reset_prepare_general._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @hclgevf_reset_prepare_general._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.184, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1749, i32 3}
!352 = !{ptr @.str.185, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @hclgevf_reset_done._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @hclgevf_reset_done._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.186, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2405, i32 2}
!357 = !{ptr @.str.187, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @hclgevf_info_show._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @hclgevf_info_show._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.189, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2407, i32 2}
!362 = !{ptr @hclgevf_info_show._entry.188, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @hclgevf_info_show._entry_ptr.190, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.192, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2408, i32 2}
!366 = !{ptr @hclgevf_info_show._entry.191, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @hclgevf_info_show._entry_ptr.193, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.195, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2409, i32 2}
!370 = !{ptr @hclgevf_info_show._entry.194, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @hclgevf_info_show._entry_ptr.196, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.198, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2410, i32 2}
!374 = !{ptr @hclgevf_info_show._entry.197, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @hclgevf_info_show._entry_ptr.199, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.201, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2411, i32 2}
!378 = !{ptr @hclgevf_info_show._entry.200, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @hclgevf_info_show._entry_ptr.202, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.204, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2412, i32 2}
!382 = !{ptr @hclgevf_info_show._entry.203, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @hclgevf_info_show._entry_ptr.205, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.207, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2415, i32 2}
!386 = !{ptr @hclgevf_info_show._entry.206, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @hclgevf_info_show._entry_ptr.208, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.209, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 2274, i32 3}
!390 = !{ptr @.str.210, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @hclgevf_client_stop._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @hclgevf_client_stop._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.211, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 793, i32 3}
!395 = !{ptr @.str.212, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @hclgevf_cmd_set_promisc_mode._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @hclgevf_cmd_set_promisc_mode._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.213, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 875, i32 3}
!400 = !{ptr @.str.214, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @hclgevf_get_host_mac_addr._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @hclgevf_get_host_mac_addr._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.215, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 132, i32 3}
!405 = !{ptr @.str.216, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @hclgevf_update_stats._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @hclgevf_update_stats._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @cmdq_reg_addr_list, !409, !"cmdq_reg_addr_list", i1 false, i1 false}
!409 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 36, i32 18}
!410 = distinct !{null, !411, !"common_reg_addr_list", i1 false, i1 false}
!411 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 51, i32 18}
!412 = !{ptr @ring_reg_addr_list, !413, !"ring_reg_addr_list", i1 false, i1 false}
!413 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 55, i32 18}
!414 = distinct !{null, !415, !"tqp_intr_reg_addr_list", i1 false, i1 false}
!415 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 82, i32 18}
!416 = !{ptr @.str.217, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 552, i32 4}
!418 = !{ptr @.str.218, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @hclgevf_get_rss_hash_key._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @hclgevf_get_rss_hash_key._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.219, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 633, i32 3}
!423 = !{ptr @.str.220, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @hclgevf_set_rss_tuple._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @hclgevf_set_rss_tuple._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.221, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 764, i32 3}
!428 = !{ptr @.str.222, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @hclgevf_put_vector._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @hclgevf_put_vector._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.223, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 721, i32 3}
!433 = !{ptr @.str.224, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @hclgevf_map_ring_to_vector._entry, !432, !"_entry", i1 false, i1 false}
!435 = !{ptr @hclgevf_map_ring_to_vector._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.225, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 701, i32 5}
!438 = !{ptr @.str.226, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @hclgevf_bind_ring_to_vector._entry, !437, !"_entry", i1 false, i1 false}
!440 = !{ptr @hclgevf_bind_ring_to_vector._entry_ptr, !437, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.227, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 742, i32 3}
!443 = !{ptr @hclgevf_unmap_ring_from_vector._entry, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @hclgevf_unmap_ring_from_vector._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.229, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 749, i32 3}
!447 = !{ptr @hclgevf_unmap_ring_from_vector._entry.228, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @hclgevf_unmap_ring_from_vector._entry_ptr.230, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.231, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1327, i32 3}
!451 = !{ptr @.str.232, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @hclgevf_reset_tqp._entry, !450, !"_entry", i1 false, i1 false}
!453 = !{ptr @hclgevf_reset_tqp._entry_ptr, !450, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.233, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 1678, i32 2}
!456 = !{ptr @.str.234, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @hclgevf_reset_event._entry, !455, !"_entry", i1 false, i1 false}
!458 = !{ptr @hclgevf_reset_event._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.235, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3150, i32 3}
!461 = !{ptr @.str.236, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @hclgevf_set_channels._entry, !460, !"_entry", i1 false, i1 false}
!463 = !{ptr @hclgevf_set_channels._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.238, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 3157, i32 3}
!466 = !{ptr @hclgevf_set_channels._entry.237, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @hclgevf_set_channels._entry_ptr.239, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @ae_algovf_pci_tbl, !469, !"ae_algovf_pci_tbl", i1 false, i1 false}
!469 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_main.c", i32 26, i32 35}
!470 = !{i32 1, !"wchar_size", i32 2}
!471 = !{i32 1, !"min_enum_size", i32 4}
!472 = !{i32 8, !"branch-target-enforcement", i32 0}
!473 = !{i32 8, !"sign-return-address", i32 0}
!474 = !{i32 8, !"sign-return-address-all", i32 0}
!475 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!476 = !{i32 7, !"uwtable", i32 1}
!477 = !{i32 7, !"frame-pointer", i32 2}
!478 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!479 = !{i64 2157602594}
!480 = !{i64 6135763}
!481 = !{i64 2157847606}
!482 = !{i64 6136181}
!483 = !{i64 2157606017}
!484 = !{!"auto-init"}
!485 = !{i8 0, i8 2}
!486 = !{i64 2157867110}
!487 = !{i64 2157806139}
!488 = !{i64 2157806673}
!489 = !{i64 2157809396}
!490 = !{i64 2157809930}
