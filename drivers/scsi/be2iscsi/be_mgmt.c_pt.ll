; ModuleID = '/llk/IR_all_yes/drivers/scsi/be2iscsi/be_mgmt.c_pt.bc'
source_filename = "../drivers/scsi/be2iscsi/be_mgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.be_dma_mem = type { ptr, i32, i32 }
%struct.iscsi_bsg_request = type <{ i32, %union.anon.134 }>
%union.anon.134 = type { %struct.iscsi_bsg_host_vendor }
%struct.iscsi_bsg_host_vendor = type { i64, [0 x i32] }
%struct.be_bsg_vendor_cmd = type <{ %struct.be_cmd_req_hdr, i16, i16, i16 }>
%struct.be_cmd_req_hdr = type { i8, i8, i8, i8, i32, i32, i8, [3 x i8] }
%struct.be_ctrl_info = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.be_dma_mem, %struct.be_dma_mem, %struct.be_mcc_obj, %struct.spinlock, [17 x %struct.wait_queue_head], [16 x i32], [17 x i32], i16, i16, i32, [17 x %struct.beiscsi_mcc_tag_state] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.be_mcc_obj = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { %struct.be_dma_mem, i16, i16, i16, i16, i16, i8, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.beiscsi_mcc_tag_state = type { i32, ptr, %struct.be_dma_mem }
%struct.beiscsi_hba = type { %struct.hba_parameters, ptr, [22 x i32], ptr, ptr, ptr, ptr, i32, i32, [64 x ptr], ptr, i16, i16, i16, ptr, i16, i16, i16, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, [2048 x i16], [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.anon.117, i32, i8, %struct.delayed_work, %struct.timer_list, i32, %struct.delayed_work, %struct.work_struct, i8, [6 x i8], i8, i8, [32 x i8], ptr, %struct.be_ctrl_info, i32, i32, [64 x %struct.be_aic_obj], i32, ptr, %struct.boot_struct, %struct.work_struct }
%struct.hba_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.117 = type { i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.be_aic_obj = type { i32, i32, i32 }
%struct.boot_struct = type { i32, i32, i32, %struct.be_dma_mem, i32, %struct.mgmt_session_info, ptr }
%struct.mgmt_session_info = type { i32, i32, [6 x i8], i16, i32, i16, i16, [224 x i8], [224 x i8], %struct.mgmt_session_login_options, [1 x %struct.mgmt_conn_info] }
%struct.mgmt_session_login_options = type { i8, i8, i16, i32, i32, i16, i16, i16, i16 }
%struct.mgmt_conn_info = type { i32, i32, i16, i16, i16, i16, i32, %struct.ip_addr_format, %struct.ip_addr_format, %struct.ip_addr_format, %struct.mgmt_conn_login_options }
%struct.ip_addr_format = type { i16, i8, i8, [16 x i8], i32 }
%struct.mgmt_conn_login_options = type { i8, i8, i8, i8, i32, i32, i32, i32, %struct.mgmt_auth_method_format }
%struct.mgmt_auth_method_format = type { i8, [3 x i8], %struct.mgmt_chap_format }
%struct.mgmt_chap_format = type { i32, [256 x i8], [16 x i8], [256 x i8], [16 x i8], i16, i16, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.be_mcc_wrb = type { i32, i32, i32, i32, i32, %union.anon.133 }
%union.anon.133 = type { [19 x %struct.be_sge], [8 x i8] }
%struct.be_sge = type { i32, i32, i32 }
%struct.beiscsi_endpoint = type { ptr, ptr, ptr, i16, [64 x i8], i32, i16, i32, i16, i16 }
%struct.hwi_controller = type { ptr, [2 x %struct.be_ring], [2 x %struct.be_ring], ptr }
%struct.be_ring = type { i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, ptr }
%struct.hwi_wrb_context = type { %struct.spinlock, ptr, ptr, ptr, i16, i16, i16, i16, i8, i32 }
%struct.be_mem_descriptor = type { i32, i32, ptr }
%struct.be_bus_address32 = type { i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.tcp_connect_and_offload_in_v1 = type { %struct.be_cmd_req_hdr, %struct.ip_addr_format, i16, i16, i16, i16, %struct.phys_addr, i16, i16, i8, i8, [2 x i8], i16, i8, i8, [3 x i8], i8 }
%struct.phys_addr = type { i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.hwi_context_memory = type { [64 x %struct.be_eq_obj], [63 x %struct.be_queue_info], ptr, [2 x %struct.be_queue_info], [2 x %struct.be_queue_info], [2 x ptr] }
%struct.be_eq_obj = type { i32, %struct.be_queue_info, ptr, ptr, %struct.work_struct, %struct.irq_poll }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.107, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.107 = type { ptr }
%struct.be_cmd_req_modify_eq_delay = type { %struct.be_cmd_req_hdr, i32, [64 x %struct.anon.135] }
%struct.anon.135 = type { i32, i32, i32 }
%struct.be_set_eqd = type { i32, i32, i32 }
%struct.be_cmd_hba_name = type { %struct.be_cmd_req_hdr, i16, i16, [224 x i8], [32 x i8] }
%struct.be_cmd_get_def_gateway_resp = type { %struct.be_cmd_req_hdr, %struct.ip_addr_format }
%struct.be_cmd_get_def_gateway_req = type { %struct.be_cmd_req_hdr, i32 }
%struct.be_cmd_set_def_gateway_req = type { %struct.be_cmd_req_hdr, i32, %struct.ip_addr_format }
%struct.be_cmd_get_if_info_resp = type { %struct.be_cmd_req_hdr, i32, i32, i32, i32, %struct.be_ip_addr_subnet_format }
%struct.be_ip_addr_subnet_format = type { i16, i8, i8, [16 x i8], [16 x i8], i32 }
%struct.be_cmd_rel_dhcp_req = type { %struct.be_cmd_req_hdr, i32, i32 }
%struct.be_cmd_set_ip_addr_req = type { %struct.be_cmd_req_hdr, %struct.be_ip_addr_record_params }
%struct.be_ip_addr_record_params = type { i32, %struct.be_ip_addr_record }
%struct.be_ip_addr_record = type { i32, i32, %struct.be_ip_addr_subnet_format, i32 }
%struct.be_cmd_get_if_info_req = type { %struct.be_cmd_req_hdr, i32, i32 }
%struct.be_cmd_resp_hdr = type { i32, i32, i32, i32 }
%struct.be_cmd_set_dhcp_req = type { %struct.be_cmd_req_hdr, i32, i32, i32, i32 }
%struct.be_cmd_get_session_resp = type { %struct.be_cmd_resp_hdr, %struct.mgmt_session_info }
%struct.be_cmd_get_session_req = type { %struct.be_cmd_req_hdr, i32 }
%struct.ulp_cid_info = type { ptr, i16, i16, i16 }
%struct.wrb_handle = type { i16, ptr, ptr }
%struct.be_invalidate_connection_params_in = type { %struct.be_cmd_req_hdr, i32, i16, i16, i16, i16 }
%struct.be_tcp_upload_params_in = type { %struct.be_cmd_req_hdr, i16, i16, i32 }
%struct.invldt_cmds_params_in = type { %struct.be_cmd_req_hdr, i32, i32, [128 x %struct.invldt_cmd_tbl], i16, i16 }
%struct.invldt_cmd_tbl = type { i16, i16 }

@mgmt_vendor_specific_fw_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BG_%d : Unsupported cmd = 0x%x\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mgmt_vendor_specific_fw_cmd\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/be2iscsi/be_mgmt.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mgmt_vendor_specific_fw_cmd._entry_ptr = internal global ptr @mgmt_vendor_specific_fw_cmd._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mgmt_open_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 133, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BG_%d : unknown addr family %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mgmt_open_connection\00", [43 x i8] zeroinitializer }, align 32
@mgmt_open_connection._entry_ptr = internal global ptr @mgmt_open_connection._entry, section ".printk_index", align 4
@mgmt_open_connection._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 191, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BG_%d : i=%d cq_id=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mgmt_open_connection._entry_ptr.11 = internal global ptr @mgmt_open_connection._entry.8, section ".printk_index", align 4
@beiscsi_get_initiator_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 381, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BS_%d : Initiator Name MBX Failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"beiscsi_get_initiator_name\00", [37 x i8] zeroinitializer }, align 32
@beiscsi_get_initiator_name._entry_ptr = internal global ptr @beiscsi_get_initiator_name._entry, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@beiscsi_if_get_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 416, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BG_%d : %s failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_if_get_handle\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_if_get_handle._entry_ptr = internal global ptr @beiscsi_if_get_handle._entry, section ".printk_index", align 4
@beiscsi_if_set_gw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BG_%d : Failed to Get Gateway Addr\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beiscsi_if_set_gw\00", [46 x i8] zeroinitializer }, align 32
@beiscsi_if_set_gw._entry_ptr = internal global ptr @beiscsi_if_set_gw._entry, section ".printk_index", align 4
@beiscsi_if_set_gw._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 478, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BG_%d : Failed to clear Gateway Addr Set\0A\00", [54 x i8] zeroinitializer }, align 32
@beiscsi_if_set_gw._entry_ptr.21 = internal global ptr @beiscsi_if_set_gw._entry.19, section ".printk_index", align 4
@beiscsi_if_set_gw._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BG_%d : Failed to Set Gateway Addr\0A\00", [60 x i8] zeroinitializer }, align 32
@beiscsi_if_set_gw._entry_ptr.24 = internal global ptr @beiscsi_if_set_gw._entry.22, section ".printk_index", align 4
@beiscsi_if_en_static._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 624, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BG_%d : failed to release existing DHCP: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"beiscsi_if_en_static\00", [43 x i8] zeroinitializer }, align 32
@beiscsi_if_en_static._entry_ptr = internal global ptr @beiscsi_if_en_static._entry, section ".printk_index", align 4
@beiscsi_if_en_dhcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 659, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BG_%d : DHCP Already Enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"beiscsi_if_en_dhcp\00", [45 x i8] zeroinitializer }, align 32
@beiscsi_if_en_dhcp._entry_ptr = internal global ptr @beiscsi_if_en_dhcp._entry, section ".printk_index", align 4
@beiscsi_if_en_dhcp._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.28, ptr @.str.2, i32 676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@beiscsi_if_en_dhcp._entry_ptr.30 = internal global ptr @beiscsi_if_en_dhcp._entry.29, section ".printk_index", align 4
@beiscsi_if_en_dhcp._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.28, ptr @.str.2, i32 685, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@beiscsi_if_en_dhcp._entry_ptr.32 = internal global ptr @beiscsi_if_en_dhcp._entry.31, section ".printk_index", align 4
@beiscsi_if_set_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 729, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BG_%d : VLAN Setting Failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beiscsi_if_set_vlan\00", [44 x i8] zeroinitializer }, align 32
@beiscsi_if_set_vlan._entry_ptr = internal global ptr @beiscsi_if_set_vlan._entry, section ".printk_index", align 4
@beiscsi_if_set_vlan._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 737, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BS_%d : VLAN MBX Cmd Failed\0A\00", [35 x i8] zeroinitializer }, align 32
@beiscsi_if_set_vlan._entry_ptr.37 = internal global ptr @beiscsi_if_set_vlan._entry.35, section ".printk_index", align 4
@beiscsi_if_get_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 773, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BG_%d : Memory Allocation Failure\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beiscsi_if_get_info\00", [44 x i8] zeroinitializer }, align 32
@beiscsi_if_get_info._entry_ptr = internal global ptr @beiscsi_if_get_info._entry, section ".printk_index", align 4
@beiscsi_boot_get_shandle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1107, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BG_%d : Getting Boot Target Info Failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"beiscsi_boot_get_shandle\00", [39 x i8] zeroinitializer }, align 32
@beiscsi_boot_get_shandle._entry_ptr = internal global ptr @beiscsi_boot_get_shandle._entry, section ".printk_index", align 4
@beiscsi_boot_get_shandle._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1115, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BG_%d : MBX CMD get_boot_target Failed\0A\00", [56 x i8] zeroinitializer }, align 32
@beiscsi_boot_get_shandle._entry_ptr.44 = internal global ptr @beiscsi_boot_get_shandle._entry.42, section ".printk_index", align 4
@beiscsi_boot_get_shandle._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1123, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BG_%d : No boot targets configured\0A\00", [60 x i8] zeroinitializer }, align 32
@beiscsi_boot_get_shandle._entry_ptr.47 = internal global ptr @beiscsi_boot_get_shandle._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Emulex OneConnectOpen-iSCSI Driver version11.4.0.1\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ULP%d : %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Obsolete/Unsupported BE2 Adapter Family\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BE3-R Adapter Family\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Skyhawk-R Adapter Family\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown Adapter Family: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Port Identifier : %u\0A\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_mgmt_invalidate_icds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1521, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BM_%d : invldt_cmds_params alloc failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"beiscsi_mgmt_invalidate_icds\00", [35 x i8] zeroinitializer }, align 32
@beiscsi_mgmt_invalidate_icds._entry_ptr = internal global ptr @beiscsi_mgmt_invalidate_icds._entry, section ".printk_index", align 4
@beiscsi_prep_nemb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 282, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BG_%d : Failed to allocate memory for if info\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_prep_nemb_cmd\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_prep_nemb_cmd._entry_ptr = internal global ptr @beiscsi_prep_nemb_cmd._entry, section ".printk_index", align 4
@beiscsi_prep_nemb_cmd._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 289, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BG_%d : subsystem %u cmd %u size %u\0A\00", [59 x i8] zeroinitializer }, align 32
@beiscsi_prep_nemb_cmd._entry_ptr.61 = internal global ptr @beiscsi_prep_nemb_cmd._entry.59, section ".printk_index", align 4
@beiscsi_if_clr_ip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 545, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BG_%d : failed to clear IP: rc %d status %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beiscsi_if_clr_ip\00", [46 x i8] zeroinitializer }, align 32
@beiscsi_if_clr_ip._entry_ptr = internal global ptr @beiscsi_if_clr_ip._entry, section ".printk_index", align 4
@beiscsi_if_set_ip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 588, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"BG_%d : failed to set IP: rc %d status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beiscsi_if_set_ip\00", [46 x i8] zeroinitializer }, align 32
@beiscsi_if_set_ip._entry_ptr = internal global ptr @beiscsi_if_set_ip._entry, section ".printk_index", align 4
@beiscsi_boot_process_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 832, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BG_%d : %s no boot work %lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"beiscsi_boot_process_compl\00", [37 x i8] zeroinitializer }, align 32
@beiscsi_boot_process_compl._entry_ptr = internal global ptr @beiscsi_boot_process_compl._entry, section ".printk_index", align 4
@beiscsi_boot_process_compl._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 839, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BG_%d : %s tag mismatch %d:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@beiscsi_boot_process_compl._entry_ptr.70 = internal global ptr @beiscsi_boot_process_compl._entry.68, section ".printk_index", align 4
@beiscsi_boot_process_compl._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 877, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BG_%d : get boot session info error : 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@beiscsi_boot_process_compl._entry_ptr.73 = internal global ptr @beiscsi_boot_process_compl._entry.71, section ".printk_index", align 4
@beiscsi_boot_process_compl._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 891, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BG_%d : FW boot session logout error : 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@beiscsi_boot_process_compl._entry_ptr.76 = internal global ptr @beiscsi_boot_process_compl._entry.74, section ".printk_index", align 4
@beiscsi_boot_process_compl._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 907, ptr @.str.5, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"BG_%d : failed to setup boot target: status %d action %d\0A\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_boot_process_compl._entry_ptr.79 = internal global ptr @beiscsi_boot_process_compl._entry.77, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967285]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [8 x i64] [i64 6, i64 16, i64 530, i64 546, i64 1794, i64 1795, i64 1810, i64 1826]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 71, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 131, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 190, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 379, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 384, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 415, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 468, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 477, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 485, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 622, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 658, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 675, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 684, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 727, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 735, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 771, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1105, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1113, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1122, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1145, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1189, i32 7 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1252, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1255, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1257, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1260, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1280, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 1520, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 281, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 287, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 543, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 586, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 830, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 837, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 875, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 889, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [35 x i8] c"../drivers/scsi/be2iscsi/be_mgmt.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 905, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @beiscsi_boot_get_shandle._entry, ptr @beiscsi_boot_get_shandle._entry.42, ptr @beiscsi_boot_get_shandle._entry.45, ptr @beiscsi_boot_get_shandle._entry_ptr, ptr @beiscsi_boot_get_shandle._entry_ptr.44, ptr @beiscsi_boot_get_shandle._entry_ptr.47, ptr @beiscsi_boot_process_compl._entry, ptr @beiscsi_boot_process_compl._entry.68, ptr @beiscsi_boot_process_compl._entry.71, ptr @beiscsi_boot_process_compl._entry.74, ptr @beiscsi_boot_process_compl._entry.77, ptr @beiscsi_boot_process_compl._entry_ptr, ptr @beiscsi_boot_process_compl._entry_ptr.70, ptr @beiscsi_boot_process_compl._entry_ptr.73, ptr @beiscsi_boot_process_compl._entry_ptr.76, ptr @beiscsi_boot_process_compl._entry_ptr.79, ptr @beiscsi_get_initiator_name._entry, ptr @beiscsi_get_initiator_name._entry_ptr, ptr @beiscsi_if_clr_ip._entry, ptr @beiscsi_if_clr_ip._entry_ptr, ptr @beiscsi_if_en_dhcp._entry, ptr @beiscsi_if_en_dhcp._entry.29, ptr @beiscsi_if_en_dhcp._entry.31, ptr @beiscsi_if_en_dhcp._entry_ptr, ptr @beiscsi_if_en_dhcp._entry_ptr.30, ptr @beiscsi_if_en_dhcp._entry_ptr.32, ptr @beiscsi_if_en_static._entry, ptr @beiscsi_if_en_static._entry_ptr, ptr @beiscsi_if_get_handle._entry, ptr @beiscsi_if_get_handle._entry_ptr, ptr @beiscsi_if_get_info._entry, ptr @beiscsi_if_get_info._entry_ptr, ptr @beiscsi_if_set_gw._entry, ptr @beiscsi_if_set_gw._entry.19, ptr @beiscsi_if_set_gw._entry.22, ptr @beiscsi_if_set_gw._entry_ptr, ptr @beiscsi_if_set_gw._entry_ptr.21, ptr @beiscsi_if_set_gw._entry_ptr.24, ptr @beiscsi_if_set_ip._entry, ptr @beiscsi_if_set_ip._entry_ptr, ptr @beiscsi_if_set_vlan._entry, ptr @beiscsi_if_set_vlan._entry.35, ptr @beiscsi_if_set_vlan._entry_ptr, ptr @beiscsi_if_set_vlan._entry_ptr.37, ptr @beiscsi_mgmt_invalidate_icds._entry, ptr @beiscsi_mgmt_invalidate_icds._entry_ptr, ptr @beiscsi_prep_nemb_cmd._entry, ptr @beiscsi_prep_nemb_cmd._entry.59, ptr @beiscsi_prep_nemb_cmd._entry_ptr, ptr @beiscsi_prep_nemb_cmd._entry_ptr.61, ptr @mgmt_open_connection._entry, ptr @mgmt_open_connection._entry.8, ptr @mgmt_open_connection._entry_ptr, ptr @mgmt_open_connection._entry_ptr.11, ptr @mgmt_vendor_specific_fw_cmd._entry, ptr @mgmt_vendor_specific_fw_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_vendor_specific_fw_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_open_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_open_connection._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_initiator_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_get_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_set_gw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_set_gw._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_set_gw._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_en_static._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_en_dhcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_en_dhcp._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_en_dhcp._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_set_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_set_vlan._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_get_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_get_shandle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_get_shandle._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_get_shandle._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_mgmt_invalidate_icds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_prep_nemb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_prep_nemb_cmd._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_clr_ip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_if_set_ip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_process_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_process_compl._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_process_compl._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_process_compl._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_boot_process_compl._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgmt_vendor_specific_fw_cmd(ptr noundef %ctrl, ptr noundef %phba, ptr nocapture noundef readonly %job, ptr nocapture noundef %nonemb_cmd) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tag, align 4
  %request = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 3
  %1 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request, align 4
  %3 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nonemb_cmd, align 4
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %5 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %request_payload, align 4
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %size, align 4
  %8 = call ptr @memset(ptr %4, i32 0, i32 %6)
  %vendor_cmd = getelementptr inbounds %struct.iscsi_bsg_request, ptr %2, i32 1
  %arrayidx = getelementptr %struct.iscsi_bsg_request, ptr %2, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx, align 1
  %conv = trunc i32 %10 to i16
  %arrayidx5 = getelementptr [0 x i32], ptr %vendor_cmd, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx5, align 1
  %arrayidx9 = getelementptr %struct.iscsi_bsg_request, ptr %2, i32 2
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx9, align 1
  %conv10 = trunc i32 %14 to i16
  %arrayidx13 = getelementptr %struct.iscsi_bsg_request, ptr %2, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx13, align 1
  %conv14 = trunc i32 %16 to i16
  %region15 = getelementptr inbounds %struct.be_bsg_vendor_cmd, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %region15 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %conv, ptr %region15, align 1
  %sector16 = getelementptr inbounds %struct.be_bsg_vendor_cmd, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %sector16 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %conv10, ptr %sector16, align 1
  %offset17 = getelementptr inbounds %struct.be_bsg_vendor_cmd, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %offset17 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %conv14, ptr %offset17, align 1
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %vendor_cmd to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %vendor_cmd, align 1
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %14, %12
  %add = add i32 %mul, %16
  tail call void @be_cmd_hdr_prepare(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext 96, i32 noundef 22) #10
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_cnt, align 4
  %27 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nonemb_cmd, align 4
  %conv28 = and i32 %add, 65535
  %add.ptr = getelementptr i8, ptr %28, i32 %conv28
  %request_len = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 5
  %29 = ptrtoint ptr %request_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %request_len, align 4
  %call29 = tail call i32 @sg_copy_to_buffer(ptr noundef %24, i32 noundef %26, ptr noundef %add.ptr, i32 noundef %30) #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @be_cmd_hdr_prepare(ptr noundef %4, i8 noundef zeroext 2, i8 noundef zeroext 97, i32 noundef 22) #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %31 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %do.body.if.end38_crit_edge, label %do.end

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %33 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str, i32 noundef 73, i32 noundef %21) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end, %do.body.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb
  %call42 = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.end46

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call42, i32 0, i32 5
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  %sg_cnt50 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %sg_cnt50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sg_cnt50, align 4
  %conv51 = trunc i32 %38 to i8
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call42, i32 noundef %36, i1 noundef zeroext false, i8 noundef zeroext %conv51) #10
  %dma = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %pa_hi = getelementptr inbounds %struct.be_mcc_wrb, ptr %call42, i32 0, i32 5, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pa_hi, align 4
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %payload.i, align 4
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %len = getelementptr inbounds %struct.be_mcc_wrb, ptr %call42, i32 0, i32 5, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %len, align 4
  %48 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tag, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %49) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %50 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then44, %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end38 ], [ %51, %if.end46 ], [ 0, %if.then44 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @be_cmd_hdr_prepare(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_mcc_wrb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @be_wrb_hdr_prepare(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @be_mcc_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgmt_open_connection(ptr noundef %phba, ptr nocapture noundef readonly %dst_addr, ptr nocapture noundef %beiscsi_ep, ptr nocapture noundef readonly %nonemb_cmd) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tag, align 4
  %ep_cid = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 6
  %1 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ep_cid, align 4
  %3 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dst_addr, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %4, label %do.body [
    i16 2, label %entry.if.end16_crit_edge
    i16 10, label %entry.if.end16_crit_edge229
  ]

entry.if.end16_crit_edge229:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  %conv13 = zext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.6, i32 noundef 133, i32 noundef %conv13) #13
  br label %cleanup

if.end16:                                         ; preds = %entry.if.end16_crit_edge, %entry.if.end16_crit_edge229
  %phwi_ctrlr17 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 1
  %8 = ptrtoint ptr %phwi_ctrlr17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phwi_ctrlr17, align 4
  %phwi_ctxt = getelementptr inbounds %struct.hwi_controller, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %phwi_ctxt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phwi_ctxt, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 23, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %idxprom18 = zext i16 %15 to i32
  %ulp_num20 = getelementptr %struct.hwi_wrb_context, ptr %13, i32 %idxprom18, i32 8
  %16 = ptrtoint ptr %ulp_num20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ulp_num20, align 4
  %conv21 = zext i8 %17 to i32
  %id = getelementptr %struct.hwi_controller, ptr %9, i32 0, i32 1, i32 %conv21, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %conv24 = trunc i32 %19 to i16
  %id27 = getelementptr %struct.hwi_controller, ptr %9, i32 0, i32 2, i32 %conv21, i32 1
  %20 = ptrtoint ptr %id27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id27, align 4
  %conv28 = trunc i32 %21 to i16
  %init_mem = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 10
  %22 = ptrtoint ptr %init_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_mem, align 4
  %mem_array = getelementptr %struct.be_mem_descriptor, ptr %23, i32 21, i32 2
  %24 = ptrtoint ptr %mem_array to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem_array, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %address_hi = getelementptr inbounds %struct.be_bus_address32, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %address_hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address_hi, align 4
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool37.not = icmp eq i32 %call, 0
  br i1 %tobool37.not, label %if.end39, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end16
  %call40 = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call40, i32 0, i32 5
  %30 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nonemb_cmd, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 72)
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call40, i32 noundef %34, i1 noundef zeroext false, i8 noundef zeroext 1) #10
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  call void @be_cmd_hdr_prepare(ptr noundef %31, i8 noundef zeroext 2, i8 noundef zeroext 70, i32 noundef %36) #10
  %37 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dst_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp49 = icmp eq i16 %38, 2
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %dst_addr, i32 0, i32 2
  %39 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sin_addr, align 4
  %ip_type = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %ip_type to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ip_type, align 1
  %conv54 = trunc i32 %40 to i8
  %addr = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv54, ptr %addr, align 1
  %and57 = lshr i32 %40, 8
  %conv58 = trunc i32 %and57 to i8
  %arrayidx61 = getelementptr %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 1, i32 3, i32 1
  %43 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv58, ptr %arrayidx61, align 1
  %and62 = lshr i32 %40, 16
  %conv64 = trunc i32 %and62 to i8
  %arrayidx67 = getelementptr %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 1, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv64, ptr %arrayidx67, align 1
  %shr69 = lshr i32 %40, 24
  %conv70 = trunc i32 %shr69 to i8
  %arrayidx73 = getelementptr %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 1, i32 3, i32 3
  %45 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv70, ptr %arrayidx73, align 1
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %dst_addr, i32 0, i32 1
  %46 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sin_port, align 2
  %tcp_port = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 2
  %48 = ptrtoint ptr %tcp_port to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %tcp_port, align 1
  %49 = load i32, ptr %sin_addr, align 4
  %dst_addr76 = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 5
  %50 = ptrtoint ptr %dst_addr76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dst_addr76, align 4
  %51 = load i16, ptr %sin_port, align 2
  %dst_tcpport = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 8
  %52 = ptrtoint ptr %dst_tcpport to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %dst_tcpport, align 4
  br label %if.end89

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %ip_type80 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %ip_type80 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 16, ptr %ip_type80, align 1
  %addr82 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 1, i32 3
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_addr, i32 0, i32 3
  %54 = call ptr @memcpy(ptr %addr82, ptr %sin6_addr, i32 16)
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_addr, i32 0, i32 1
  %55 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sin6_port, align 2
  %tcp_port83 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 2
  %57 = ptrtoint ptr %tcp_port83 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %tcp_port83, align 1
  %58 = load i16, ptr %sin6_port, align 2
  %dst_tcpport85 = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 8
  %59 = ptrtoint ptr %dst_tcpport85 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %dst_tcpport85, align 4
  %dst6_addr = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 4
  %60 = call ptr @memcpy(ptr %dst6_addr, ptr %sin6_addr, i32 16)
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then51
  %.sink = phi i16 [ 1, %if.then51 ], [ 16, %if.else ]
  %61 = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 3
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %.sink, ptr %61, align 4
  %cid90 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 3
  %63 = ptrtoint ptr %cid90 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %2, ptr %cid90, align 1
  %nxt_cqid = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 8
  %64 = ptrtoint ptr %nxt_cqid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nxt_cqid, align 4
  %inc = add i32 %65, 1
  %num_cpus = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 7
  %66 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %67)
  %cmp92 = icmp eq i32 %inc, %67
  %spec.store.select = select i1 %cmp92, i32 0, i32 %inc
  %68 = ptrtoint ptr %nxt_cqid to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.store.select, ptr %nxt_cqid, align 4
  %id98 = getelementptr %struct.hwi_context_memory, ptr %11, i32 0, i32 1, i32 %65, i32 3
  %69 = ptrtoint ptr %id98 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %id98, align 4
  %cq_id = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 4
  %71 = ptrtoint ptr %cq_id to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 %70, ptr %cq_id, align 1
  %attr_log_enable101 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %72 = ptrtoint ptr %attr_log_enable101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %attr_log_enable101, align 4
  %and102 = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end89.if.end112_crit_edge, label %do.end107

if.end89.if.end112_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

do.end107:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %shost108 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %74 = ptrtoint ptr %shost108 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shost108, align 4
  %shost_gendev109 = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 49
  %conv111 = zext i16 %70 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev109, ptr noundef nonnull @.str.9, i32 noundef 191, i32 noundef %65, i32 noundef %conv111) #13
  br label %if.end112

if.end112:                                        ; preds = %do.end107, %if.end89.if.end112_crit_edge
  %defq_id = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 5
  %76 = ptrtoint ptr %defq_id to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %conv24, ptr %defq_id, align 1
  %hdr_ring_id = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 7
  %77 = ptrtoint ptr %hdr_ring_id to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %conv24, ptr %hdr_ring_id, align 1
  %data_ring_id = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 8
  %78 = ptrtoint ptr %data_ring_id to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %conv28, ptr %data_ring_id, align 1
  %do_offload = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 9
  %79 = ptrtoint ptr %do_offload to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %do_offload, align 1
  %dataout_template_pa = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 6
  %80 = ptrtoint ptr %dataout_template_pa to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %27, ptr %dataout_template_pa, align 1
  %hi119 = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 6, i32 1
  %81 = ptrtoint ptr %hi119 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %29, ptr %hi119, align 1
  %dma = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %pa_hi = getelementptr inbounds %struct.be_mcc_wrb, ptr %call40, i32 0, i32 5, i32 0, i32 0, i32 1
  %82 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %pa_hi, align 4
  %83 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %payload.i, align 4
  %87 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %len = getelementptr inbounds %struct.be_mcc_wrb, ptr %call40, i32 0, i32 5, i32 0, i32 0, i32 2
  %90 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %len, align 4
  %generation = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 45
  %91 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %generation, align 4
  %93 = and i32 %92, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %switch = icmp eq i32 %93, 2
  br i1 %switch, label %if.end112.if.end133_crit_edge, label %if.then131

if.end112.if.end133_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then131:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %version = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %31, i32 0, i32 6
  %94 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %version, align 1
  %tcp_window_size = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 12
  %95 = ptrtoint ptr %tcp_window_size to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 -32768, ptr %tcp_window_size, align 1
  %tcp_window_scale_count = getelementptr inbounds %struct.tcp_connect_and_offload_in_v1, ptr %31, i32 0, i32 13
  %96 = ptrtoint ptr %tcp_window_scale_count to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %tcp_window_scale_count, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end112.if.end133_crit_edge
  %97 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tag, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %98) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %99 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.then42, %if.end16.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %100, %if.end133 ], [ 0, %if.then42 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_modify_eq_delay(ptr noundef %phba, ptr nocapture noundef readonly %set_eqd, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 788, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %7 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 788, ptr %3, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 1, i8 noundef zeroext 41, i32 noundef 788) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %9 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end_crit_edge, label %do.end19.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %11 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 1, i32 noundef 41, i32 noundef 788) #13
  br label %if.end

beiscsi_prep_nemb_cmd.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %cleanup

if.end:                                           ; preds = %do.end19.i, %if.end8.i.if.end_crit_edge
  %15 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nonemb_cmd, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %num)
  %num_eq = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %num_eq to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %num_eq, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp38 = icmp sgt i32 %num, 0
  br i1 %cmp38, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.be_set_eqd, ptr %set_eqd, i32 %i.039
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx1 = getelementptr %struct.be_cmd_req_modify_eq_delay, ptr %16, i32 0, i32 2, i32 %i.039
  %22 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %arrayidx1, align 1
  %phase = getelementptr %struct.be_cmd_req_modify_eq_delay, ptr %16, i32 0, i32 2, i32 %i.039, i32 1
  %23 = ptrtoint ptr %phase to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %phase, align 1
  %delay_multiplier = getelementptr %struct.be_set_eqd, ptr %set_eqd, i32 %i.039, i32 2
  %24 = ptrtoint ptr %delay_multiplier to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %delay_multiplier, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %delay_multiplier8 = getelementptr %struct.be_cmd_req_modify_eq_delay, ptr %16, i32 0, i32 2, i32 %i.039, i32 2
  %27 = ptrtoint ptr %delay_multiplier8 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %delay_multiplier8, align 1
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call9 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef nonnull @__beiscsi_eq_delay_compl, ptr noundef null, i32 noundef 0)
  %28 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call9, label %if.end.i [
    i32 0, label %for.end.cleanup_crit_edge
    i32 -16, label %cleanup.fold.split
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 4
  %dev.i34 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %33 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nonemb_cmd, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i34, i32 noundef %32, ptr noundef %34, i32 noundef %36, i32 noundef 0) #10
  br label %cleanup

cleanup.fold.split:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.end.i, %for.end.cleanup_crit_edge, %beiscsi_prep_nemb_cmd.exit
  %retval.0 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit ], [ %call9, %for.end.cleanup_crit_edge ], [ %call9, %if.end.i ], [ -16, %cleanup.fold.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef %nonemb_cmd, ptr noundef %cbfn, ptr noundef writeonly %resp_buf, i32 noundef %resp_buf_len) unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call, i32 noundef %2, i1 noundef zeroext false, i8 noundef zeroext 1) #10
  %dma = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %pa_hi = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pa_hi, align 4
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %payload.i, align 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %len = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %len, align 4
  %tobool7.not = icmp eq ptr %cbfn, null
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  br i1 %tobool7.not, label %if.end24.critedge, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %13
  call void @_set_bit(i32 noundef 2, ptr noundef %arrayidx) #10
  %14 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tag, align 4
  %cbfn11 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %15, i32 1
  %16 = ptrtoint ptr %cbfn11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cbfn, ptr %cbfn11, align 4
  %tag_mem_state = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %15, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %size16 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %15, i32 2, i32 2
  %19 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size16, align 4
  %20 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nonemb_cmd, align 4
  %22 = ptrtoint ptr %tag_mem_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tag_mem_state, align 4
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma, align 4
  %dma19 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %15, i32 2, i32 1
  %25 = ptrtoint ptr %dma19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dma19, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %15) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end24.critedge:                                ; preds = %if.end
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %13) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %26 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tag, align 4
  %call25 = call i32 @beiscsi_mccq_compl_wait(ptr noundef %phba, i32 noundef %27, ptr noundef null, ptr noundef %nonemb_cmd) #10
  %tobool26.not = icmp eq ptr %resp_buf, null
  br i1 %tobool26.not, label %if.end24.critedge.cleanup_crit_edge, label %if.then27

if.end24.critedge.cleanup_crit_edge:              ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nonemb_cmd, align 4
  %30 = call ptr @memcpy(ptr %resp_buf, ptr %29, i32 %resp_buf_len)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.critedge.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then8 ], [ -12, %if.then ], [ %call25, %if.then27 ], [ %call25, %if.end24.critedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__beiscsi_eq_delay_compl(ptr noundef %phba, i32 noundef %tag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__beiscsi_mcc_compl_status(ptr noundef %phba, i32 noundef %tag, ptr noundef null, ptr noundef null) #10
  %size = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag, i32 2, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tag_mem_state = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag, i32 2
  %pcidev = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 6
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %tag_mem_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tag_mem_state, align 4
  %dma = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag, i32 2, i32 1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %1, ptr noundef %5, i32 noundef %7, i32 noundef 0) #10
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_get_initiator_name(ptr noundef %phba, ptr nocapture noundef writeonly %name, i1 noundef zeroext %cfg) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  %resp = alloca %struct.be_cmd_hba_name, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 276, ptr nonnull %resp) #10
  %5 = call ptr @memset(ptr %resp, i32 255, i32 276)
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 276, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %8 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 276, ptr %3, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 6, i8 noundef zeroext 6, i32 noundef 276) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %10 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end_crit_edge, label %do.end19.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %12 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 6, i32 noundef 6, i32 noundef 276) #13
  br label %if.end

beiscsi_prep_nemb_cmd.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %14 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %cleanup

if.end:                                           ; preds = %do.end19.i, %if.end8.i.if.end_crit_edge
  br i1 %cfg, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nonemb_cmd, align 4
  %version = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %version, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef nonnull %resp, i32 noundef 276)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call4)
  %cmp.i = icmp eq i32 %call4, -16
  br i1 %cmp.i, label %if.end3.do.body_crit_edge, label %beiscsi_free_nemb_cmd.exit

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

beiscsi_free_nemb_cmd.exit:                       ; preds = %if.end3
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i29 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %23 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nonemb_cmd, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i29, i32 noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end14, label %beiscsi_free_nemb_cmd.exit.do.body_crit_edge

beiscsi_free_nemb_cmd.exit.do.body_crit_edge:     ; preds = %beiscsi_free_nemb_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %beiscsi_free_nemb_cmd.exit.do.body_crit_edge, %if.end3.do.body_crit_edge
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %27 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.12, i32 noundef 381) #13
  br label %cleanup

if.end14:                                         ; preds = %beiscsi_free_nemb_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %initiator_name = getelementptr inbounds %struct.be_cmd_hba_name, ptr %resp, i32 0, i32 3
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.14, ptr noundef %initiator_name)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.body, %beiscsi_prep_nemb_cmd.exit
  %retval.0 = phi i32 [ %call4, %do.body ], [ %call15, %if.end14 ], [ -12, %beiscsi_prep_nemb_cmd.exit ]
  call void @llvm.lifetime.end.p0(i64 276, ptr nonnull %resp) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_if_get_handle(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %wrb = alloca ptr, align 4
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrb) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %1 = ptrtoint ptr %wrb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %wrb, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call2, i32 0, i32 5
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call2, i32 noundef 24, i1 noundef zeroext true, i8 noundef zeroext 0) #10
  call void @be_cmd_hdr_prepare(ptr noundef %payload.i, i8 noundef zeroext 2, i8 noundef zeroext 24, i32 noundef 24) #10
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %3) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag, align 4
  %call9 = call i32 @beiscsi_mccq_compl_wait(ptr noundef %phba, i32 noundef %5, ptr noundef nonnull %wrb, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end6
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %6 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.15, i32 noundef 416, ptr noundef nonnull @.str.16, i32 noundef %call9) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %wrb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wrb, align 4
  %if_hndl_list = getelementptr inbounds %struct.be_mcc_wrb, ptr %11, i32 0, i32 5, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %if_hndl_list to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %if_hndl_list, align 1
  %interface_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 46
  %14 = ptrtoint ptr %interface_handle to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %interface_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %do.body.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %if.then4 ], [ -4, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrb) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_mccq_compl_wait(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_if_set_gw(ptr noundef %phba, i32 noundef %ip_type, ptr nocapture noundef readonly %gw) local_unnamed_addr #0 align 64 {
entry:
  %gw_resp = alloca %struct.be_cmd_get_def_gateway_resp, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gw_resp) #10
  %0 = call ptr @memset(ptr %gw_resp, i32 0, i32 40)
  %call = call i32 @beiscsi_if_get_gw(ptr noundef %phba, i32 noundef %ip_type, ptr noundef nonnull %gw_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %1 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %3 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.17, i32 noundef 469) #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, ptr %gw_resp, i32 0, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ip_type)
  %cmp.i = icmp ult i32 %ip_type, 16
  %cond.i = select i1 %cmp.i, i32 4, i32 16
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end6
  %len.0.i = phi i32 [ %cond.i, %if.end6 ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end30_crit_edge, label %land.rhs.i

while.cond.i.if.end30_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add nsw i32 %len.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %addr, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %land.rhs.i.while.cond.i_crit_edge, label %if.then8

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then8:                                         ; preds = %land.rhs.i
  %call12 = call fastcc i32 @beiscsi_if_mod_gw(ptr noundef %phba, i32 noundef 2, i32 noundef %ip_type, ptr noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then8.if.end30_crit_edge, label %do.body15

if.then8.if.end30_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.body15:                                        ; preds = %if.then8
  %attr_log_enable17 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %7 = ptrtoint ptr %attr_log_enable17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr_log_enable17, align 4
  %and18 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body15.cleanup_crit_edge, label %do.end23

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end23:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %shost24 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %9 = ptrtoint ptr %shost24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost24, align 4
  %shost_gendev25 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev25, ptr noundef nonnull @.str.20, i32 noundef 478) #13
  br label %cleanup

if.end30:                                         ; preds = %if.then8.if.end30_crit_edge, %while.cond.i.if.end30_crit_edge
  %call31 = call fastcc i32 @beiscsi_if_mod_gw(ptr noundef %phba, i32 noundef 1, i32 noundef %ip_type, ptr noundef %gw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %do.body34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body34:                                        ; preds = %if.end30
  %attr_log_enable36 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %11 = ptrtoint ptr %attr_log_enable36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr_log_enable36, align 4
  %and37 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body34.cleanup_crit_edge, label %do.end42

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end42:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %shost43 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost43, align 4
  %shost_gendev44 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev44, ptr noundef nonnull @.str.23, i32 noundef 486) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.body34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end23, %do.body15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ], [ %call12, %do.end23 ], [ %call12, %do.body15.cleanup_crit_edge ], [ %call31, %do.body34.cleanup_crit_edge ], [ %call31, %do.end42 ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gw_resp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_if_get_gw(ptr noundef %phba, i32 noundef %ip_type, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 40, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %7 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 40, ptr %3, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 2, i8 noundef zeroext 22, i32 noundef 40) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %9 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end_crit_edge, label %do.end19.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %11 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 22, i32 noundef 40) #13
  br label %if.end

beiscsi_prep_nemb_cmd.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %cleanup

if.end:                                           ; preds = %do.end19.i, %if.end8.i.if.end_crit_edge
  %15 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nonemb_cmd, align 4
  %ip_type1 = getelementptr inbounds %struct.be_cmd_get_def_gateway_req, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ip_type1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %ip_type, ptr %ip_type1, align 1
  %call2 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef %resp, i32 noundef 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call2)
  %cmp.i = icmp eq i32 %call2, -16
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 4
  %dev.i11 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %22 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nonemb_cmd, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i11, i32 noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %beiscsi_prep_nemb_cmd.exit
  %retval.0 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit ], [ -16, %if.end.cleanup_crit_edge ], [ %call2, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @beiscsi_if_mod_gw(ptr noundef %phba, i32 noundef %action, i32 noundef %ip_type, ptr nocapture noundef readonly %gw) unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 44, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %7 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 44, ptr %3, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 2, i8 noundef zeroext 23, i32 noundef 44) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %9 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end_crit_edge, label %do.end19.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %11 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 23, i32 noundef 44) #13
  br label %if.end

beiscsi_prep_nemb_cmd.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %cleanup

if.end:                                           ; preds = %do.end19.i, %if.end8.i.if.end_crit_edge
  %15 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nonemb_cmd, align 4
  %action1 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %action1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %action, ptr %action1, align 1
  %conv = trunc i32 %ip_type to i8
  %ip_type2 = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, ptr %16, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %ip_type2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %ip_type2, align 1
  %addr = getelementptr inbounds %struct.be_cmd_set_def_gateway_req, ptr %16, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ip_type)
  %cmp = icmp ult i32 %ip_type, 16
  %cond = select i1 %cmp, i32 4, i32 16
  %19 = call ptr @memcpy(ptr %addr, ptr %gw, i32 %cond)
  %call5 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call5)
  %cmp.i = icmp eq i32 %call5, -16
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i17 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %24 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nonemb_cmd, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i17, i32 noundef %23, ptr noundef %25, i32 noundef %27, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %beiscsi_prep_nemb_cmd.exit
  %retval.0 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit ], [ -16, %if.end.cleanup_crit_edge ], [ %call5, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_if_en_static(ptr noundef %phba, i32 noundef %ip_type, ptr noundef readonly %ip, ptr noundef readonly %subnet) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd.i = alloca %struct.be_dma_mem, align 4
  %if_info = alloca ptr, align 4
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_info) #10
  %0 = ptrtoint ptr %if_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %if_info, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %1 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %2 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !155
  %4 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !155
  %call = call i32 @beiscsi_if_get_info(ptr noundef %phba, i32 noundef %ip_type, ptr noundef nonnull %if_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %if_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_info, align 4
  %dhcp_state = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dhcp_state to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %dhcp_state, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end.if.end17_crit_edge, label %if.then2

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then2:                                         ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 24, ptr noundef %2, i32 noundef 3264, i32 noundef 0) #10
  %12 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.then2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 24, ptr %4, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 2, i8 noundef zeroext 18, i32 noundef 24) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %14 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end6_crit_edge, label %do.end19.i

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %16 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 18, i32 noundef 24) #13
  br label %if.end6

beiscsi_prep_nemb_cmd.exit:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %18 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %exit

if.end6:                                          ; preds = %do.end19.i, %if.end8.i.if.end6_crit_edge
  %20 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nonemb_cmd, align 4
  %interface_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 46
  %22 = ptrtoint ptr %interface_handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interface_handle, align 4
  %interface_hndl = getelementptr inbounds %struct.be_cmd_rel_dhcp_req, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %interface_hndl to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %interface_hndl, align 1
  %ip_type7 = getelementptr inbounds %struct.be_cmd_rel_dhcp_req, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %ip_type7 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %ip_type, ptr %ip_type7, align 1
  %call8 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call8)
  %cmp.i = icmp eq i32 %call8, -16
  br i1 %cmp.i, label %if.end6.do.body_crit_edge, label %beiscsi_free_nemb_cmd.exit

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

beiscsi_free_nemb_cmd.exit:                       ; preds = %if.end6
  %26 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i, align 4
  %dev.i53 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %4, align 4
  %30 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nonemb_cmd, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %2, align 4
  call void @dma_free_attrs(ptr noundef %dev.i53, i32 noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %beiscsi_free_nemb_cmd.exit.do.body_crit_edge, label %beiscsi_free_nemb_cmd.exit.if.end17_crit_edge

beiscsi_free_nemb_cmd.exit.if.end17_crit_edge:    ; preds = %beiscsi_free_nemb_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

beiscsi_free_nemb_cmd.exit.do.body_crit_edge:     ; preds = %beiscsi_free_nemb_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %beiscsi_free_nemb_cmd.exit.do.body_crit_edge, %if.end6.do.body_crit_edge
  %34 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %attr_log_enable13.i, align 4
  %and = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.exit_crit_edge, label %do.end

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %36 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %37, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.25, i32 noundef 624, i32 noundef %call8) #13
  br label %exit

if.end17:                                         ; preds = %beiscsi_free_nemb_cmd.exit.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %rc.0 = phi i32 [ %call8, %beiscsi_free_nemb_cmd.exit.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  %addr = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %7, i32 0, i32 5, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ip_type)
  %cmp.i55 = icmp ult i32 %ip_type, 16
  %cond.i = select i1 %cmp.i55, i32 4, i32 16
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end17
  %len.0.i = phi i32 [ %cond.i, %if.end17 ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool.not.i56 = icmp eq i32 %len.0.i, 0
  br i1 %tobool.not.i56, label %while.cond.i.if.end24_crit_edge, label %land.rhs.i

while.cond.i.if.end24_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add nsw i32 %len.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %addr, i32 %sub.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %tobool1.not.i = icmp eq i8 %39, 0
  br i1 %tobool1.not.i, label %land.rhs.i.while.cond.i_crit_edge, label %if.then19

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then19:                                        ; preds = %land.rhs.i
  %call20 = call fastcc i32 @beiscsi_if_clr_ip(ptr noundef %phba, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.exit_crit_edge

if.then19.exit_crit_edge:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %while.cond.i.if.end24_crit_edge
  %rc.1 = phi i32 [ 0, %if.then19.if.end24_crit_edge ], [ %rc.0, %while.cond.i.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %ip, null
  br i1 %tobool25.not, label %if.end24.exit_crit_edge, label %if.then26

if.end24.exit_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd.i) #10
  %40 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd.i, align 4, !annotation !155
  %41 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd.i, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !155
  %43 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd.i, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %43, align 4, !annotation !155
  %pdev.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %45 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 72, ptr noundef %41, i32 noundef 3264, i32 noundef 0) #10
  %47 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i.i, ptr %nonemb_cmd.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %beiscsi_prep_nemb_cmd.exit.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then26
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 72, ptr %43, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i.i, i8 noundef zeroext 2, i8 noundef zeroext 21, i32 noundef 72) #10
  %attr_log_enable13.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %49 = ptrtoint ptr %attr_log_enable13.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %attr_log_enable13.i.i, align 4
  %and14.i.i = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end8.i.i.if.end.i59_crit_edge, label %do.end19.i.i

if.end8.i.i.if.end.i59_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i59

do.end19.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %51 = ptrtoint ptr %shost20.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %shost20.i.i, align 4
  %shost_gendev21.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %52, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 21, i32 noundef 72) #13
  br label %if.end.i59

beiscsi_prep_nemb_cmd.exit.i:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %53 = ptrtoint ptr %shost.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shost.i.i, align 4
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %beiscsi_if_set_ip.exit

if.end.i59:                                       ; preds = %do.end19.i.i, %if.end8.i.i.if.end.i59_crit_edge
  %55 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nonemb_cmd.i, align 4
  %ip_params.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ip_params.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 1, ptr %ip_params.i, align 1
  %ip_record.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %ip_record.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 1, ptr %ip_record.i, align 1
  %interface_handle.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 46
  %59 = ptrtoint ptr %interface_handle.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %interface_handle.i, align 4
  %interface_hndl.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1, i32 1
  %61 = ptrtoint ptr %interface_hndl.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %interface_hndl.i, align 1
  %ip_addr.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1, i32 2
  %62 = ptrtoint ptr %ip_addr.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 40, ptr %ip_addr.i, align 1
  %conv.i = trunc i32 %ip_type to i8
  %ip_type9.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1, i32 2, i32 1
  %63 = ptrtoint ptr %ip_type9.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i, ptr %ip_type9.i, align 1
  %addr.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1, i32 2, i32 3
  %64 = call ptr @memcpy(ptr %addr.i, ptr %ip, i32 %cond.i)
  %tobool14.not.i = icmp eq ptr %subnet, null
  br i1 %tobool14.not.i, label %if.end.i59.if.end20.i_crit_edge, label %if.then15.i

if.end.i59.if.end20.i_crit_edge:                  ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  %subnet_mask.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1, i32 2, i32 4
  %65 = call ptr @memcpy(ptr %subnet_mask.i, ptr %subnet, i32 %cond.i)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end.i59.if.end20.i_crit_edge
  %call21.i = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd.i, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end20.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end20.i.do.end.i_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end20.i
  %status.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1, i32 3
  %66 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool26.not.i = icmp eq i32 %67, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i.if.end.i.i_crit_edge, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i.if.end.i.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end20.i.do.end.i_crit_edge
  %shost.i60 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %68 = ptrtoint ptr %shost.i60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %shost.i60, align 4
  %shost_gendev.i61 = getelementptr inbounds %struct.Scsi_Host, ptr %69, i32 0, i32 49
  %status30.i = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %56, i32 0, i32 1, i32 1, i32 3
  %70 = ptrtoint ptr %status30.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %status30.i, align 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i61, ptr noundef nonnull @.str.64, i32 noundef 588, i32 noundef %call21.i, i32 noundef %71) #13
  %72 = ptrtoint ptr %status30.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %status30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool34.not.i = icmp eq i32 %73, 0
  br i1 %tobool34.not.i, label %if.end37.i, label %do.end.i.if.end.i.i_crit_edge

do.end.i.if.end.i.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end37.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call21.i)
  %cmp.i.i = icmp eq i32 %call21.i, -16
  br i1 %cmp.i.i, label %if.end37.i.beiscsi_if_set_ip.exit_crit_edge, label %if.end37.i.if.end.i.i_crit_edge

if.end37.i.if.end.i.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end37.i.beiscsi_if_set_ip.exit_crit_edge:      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %beiscsi_if_set_ip.exit

if.end.i.i:                                       ; preds = %if.end37.i.if.end.i.i_crit_edge, %do.end.i.if.end.i.i_crit_edge, %lor.lhs.false.i.if.end.i.i_crit_edge
  %rc.069.i = phi i32 [ %call21.i, %if.end37.i.if.end.i.i_crit_edge ], [ -22, %do.end.i.if.end.i.i_crit_edge ], [ %call21.i, %lor.lhs.false.i.if.end.i.i_crit_edge ]
  %74 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev.i.i, align 4
  %dev.i63.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %43, align 4
  %78 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nonemb_cmd.i, align 4
  %80 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %41, align 4
  call void @dma_free_attrs(ptr noundef %dev.i63.i, i32 noundef %77, ptr noundef %79, i32 noundef %81, i32 noundef 0) #10
  br label %beiscsi_if_set_ip.exit

beiscsi_if_set_ip.exit:                           ; preds = %if.end.i.i, %if.end37.i.beiscsi_if_set_ip.exit_crit_edge, %beiscsi_prep_nemb_cmd.exit.i
  %retval.0.i62 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit.i ], [ -16, %if.end37.i.beiscsi_if_set_ip.exit_crit_edge ], [ %rc.069.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd.i) #10
  br label %exit

exit:                                             ; preds = %beiscsi_if_set_ip.exit, %if.end24.exit_crit_edge, %if.then19.exit_crit_edge, %do.end, %do.body.exit_crit_edge, %beiscsi_prep_nemb_cmd.exit
  %rc.2 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit ], [ %retval.0.i62, %beiscsi_if_set_ip.exit ], [ %rc.1, %if.end24.exit_crit_edge ], [ %call20, %if.then19.exit_crit_edge ], [ %call8, %do.end ], [ %call8, %do.body.exit_crit_edge ]
  call void @kfree(ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_if_get_info(ptr noundef %phba, i32 noundef %ip_type, ptr nocapture noundef %if_info) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  %call = tail call i32 @beiscsi_if_get_handle(ptr noundef %phba)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev.i71 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i72 = call ptr @dma_alloc_attrs(ptr noundef %dev.i71, i32 noundef 72, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %7 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i72, ptr %nonemb_cmd, align 4
  %tobool.not.i73 = icmp eq ptr %call.i.i72, null
  br i1 %tobool.not.i73, label %do.body.preheader.beiscsi_prep_nemb_cmd.exit_crit_edge, label %if.end8.i.lr.ph

do.body.preheader.beiscsi_prep_nemb_cmd.exit_crit_edge: ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %beiscsi_prep_nemb_cmd.exit

if.end8.i.lr.ph:                                  ; preds = %do.body.preheader
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %interface_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 46
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then21.if.end8.i_crit_edge, %if.end8.i.lr.ph
  %call.i.i77 = phi ptr [ %call.i.i72, %if.end8.i.lr.ph ], [ %call.i.i, %if.then21.if.end8.i_crit_edge ]
  %ioctl_size.074 = phi i32 [ 72, %if.end8.i.lr.ph ], [ %add, %if.then21.if.end8.i_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ioctl_size.074, ptr %3, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i77, i8 noundef zeroext 2, i8 noundef zeroext 25, i32 noundef %ioctl_size.074) #10
  %9 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end4_crit_edge, label %do.end19.i

if.end8.i.if.end4_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 25, i32 noundef %ioctl_size.074) #13
  br label %if.end4

beiscsi_prep_nemb_cmd.exit:                       ; preds = %if.then21.beiscsi_prep_nemb_cmd.exit_crit_edge, %do.body.preheader.beiscsi_prep_nemb_cmd.exit_crit_edge
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %cleanup

if.end4:                                          ; preds = %do.end19.i, %if.end8.i.if.end4_crit_edge
  %15 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nonemb_cmd, align 4
  %17 = ptrtoint ptr %interface_handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interface_handle, align 4
  %interface_hndl = getelementptr inbounds %struct.be_cmd_get_if_info_req, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %interface_hndl to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %interface_hndl, align 1
  %ip_type5 = getelementptr inbounds %struct.be_cmd_get_if_info_req, ptr %16, i32 0, i32 2
  %20 = ptrtoint ptr %ip_type5 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %ip_type, ptr %ip_type5, align 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %ioctl_size.074, i32 noundef 3520) #14
  %21 = ptrtoint ptr %if_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i, ptr %if_info, align 4
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %do.body9, label %if.end17

do.body9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost20.i, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.38, i32 noundef 773) #13
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %dev.i52 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %28 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nonemb_cmd, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i52, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %call18 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef nonnull %call9.i.i, i32 noundef %ioctl_size.074)
  %32 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call18, label %if.end.i [
    i32 -11, label %if.then21
    i32 -16, label %if.end17.cleanup_crit_edge
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  %33 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nonemb_cmd, align 4
  %actual_resp_len = getelementptr inbounds %struct.be_cmd_resp_hdr, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %actual_resp_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual_resp_len, align 4
  %add = add i32 %36, 16
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 4
  %dev.i55 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i55, i32 noundef %40, ptr noundef %34, i32 noundef %42, i32 noundef 0) #10
  %43 = ptrtoint ptr %if_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %if_info, align 4
  call void @kfree(ptr noundef %44) #10
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %add, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %47 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then21.beiscsi_prep_nemb_cmd.exit_crit_edge, label %if.then21.if.end8.i_crit_edge

if.then21.if.end8.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then21.beiscsi_prep_nemb_cmd.exit_crit_edge:   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %beiscsi_prep_nemb_cmd.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 4
  %dev.i59 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 4
  %52 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nonemb_cmd, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i59, i32 noundef %51, ptr noundef %53, i32 noundef %55, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end17.cleanup_crit_edge, %do.body9, %beiscsi_prep_nemb_cmd.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.body9 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %beiscsi_prep_nemb_cmd.exit ], [ %call18, %if.end.i ], [ %call18, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @beiscsi_if_clr_ip(ptr noundef %phba, ptr nocapture noundef readonly %if_info) unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 72, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %7 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 72, ptr %3, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 2, i8 noundef zeroext 21, i32 noundef 72) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %9 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end_crit_edge, label %do.end19.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %11 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 21, i32 noundef 72) #13
  br label %if.end

beiscsi_prep_nemb_cmd.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %cleanup

if.end:                                           ; preds = %do.end19.i, %if.end8.i.if.end_crit_edge
  %15 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nonemb_cmd, align 4
  %ip_params = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ip_params to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 1, ptr %ip_params, align 1
  %ip_record = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %ip_record to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 2, ptr %ip_record, align 1
  %interface_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 46
  %19 = ptrtoint ptr %interface_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interface_handle, align 4
  %interface_hndl = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %interface_hndl to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %interface_hndl, align 1
  %ip_addr = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %ip_addr to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 40, ptr %ip_addr, align 1
  %ip_type = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %if_info, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %ip_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ip_type, align 1
  %ip_type10 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1, i32 2, i32 1
  %25 = ptrtoint ptr %ip_type10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ip_type10, align 1
  %addr = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1, i32 2, i32 3
  %addr15 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %if_info, i32 0, i32 5, i32 3
  %26 = call ptr @memcpy(ptr %addr, ptr %addr15, i32 16)
  %subnet_mask = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1, i32 2, i32 4
  %subnet_mask22 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %if_info, i32 0, i32 5, i32 4
  %27 = call ptr @memcpy(ptr %subnet_mask, ptr %subnet_mask22, i32 16)
  %call24 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %status = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1, i32 3
  %28 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not = icmp eq i32 %29, 0
  br i1 %tobool27.not, label %lor.lhs.false.if.end.i_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  %30 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %attr_log_enable13.i, align 4
  %and = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body.if.end38_crit_edge, label %do.end

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %32 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 49
  %status34 = getelementptr inbounds %struct.be_cmd_set_ip_addr_req, ptr %16, i32 0, i32 1, i32 1, i32 3
  %34 = ptrtoint ptr %status34 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %status34, align 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev, ptr noundef nonnull @.str.62, i32 noundef 545, i32 noundef %call24, i32 noundef %35) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end, %do.body.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call24)
  %cmp.i = icmp eq i32 %call24, -16
  br i1 %cmp.i, label %if.end38.cleanup_crit_edge, label %if.end38.if.end.i_crit_edge

if.end38.if.end.i_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end38.if.end.i_crit_edge, %lor.lhs.false.if.end.i_crit_edge
  %36 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i, align 4
  %dev.i62 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %40 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nonemb_cmd, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i62, i32 noundef %39, ptr noundef %41, i32 noundef %43, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end38.cleanup_crit_edge, %beiscsi_prep_nemb_cmd.exit
  %retval.0 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit ], [ -16, %if.end38.cleanup_crit_edge ], [ %call24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_if_en_dhcp(ptr noundef %phba, i32 noundef %ip_type) local_unnamed_addr #0 align 64 {
entry:
  %gw_resp = alloca %struct.be_cmd_get_def_gateway_resp, align 1
  %if_info = alloca ptr, align 4
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gw_resp) #10
  %0 = call ptr @memset(ptr %gw_resp, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_info) #10
  %1 = ptrtoint ptr %if_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %if_info, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %2 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  %5 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !155
  %call = call i32 @beiscsi_if_get_info(ptr noundef %phba, i32 noundef %ip_type, ptr noundef nonnull %if_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %if_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %if_info, align 4
  %dhcp_state = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dhcp_state to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %dhcp_state, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %11 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.exit_crit_edge, label %do.end

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.27, i32 noundef 659) #13
  br label %exit

if.end9:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %8, i32 0, i32 5, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ip_type)
  %cmp.i = icmp ult i32 %ip_type, 16
  %cond.i = select i1 %cmp.i, i32 4, i32 16
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end9
  %len.0.i = phi i32 [ %cond.i, %if.end9 ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end16_crit_edge, label %land.rhs.i

while.cond.i.if.end16_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add nsw i32 %len.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %addr, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %tobool1.not.i = icmp eq i8 %16, 0
  br i1 %tobool1.not.i, label %land.rhs.i.while.cond.i_crit_edge, label %if.then11

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then11:                                        ; preds = %land.rhs.i
  %call12 = tail call fastcc i32 @beiscsi_if_clr_ip(ptr noundef %phba, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then11.exit_crit_edge

if.then11.exit_crit_edge:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %while.cond.i.if.end16_crit_edge
  %17 = call ptr @memset(ptr %gw_resp, i32 0, i32 40)
  %ip_type18 = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %8, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %ip_type18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ip_type18, align 1
  %conv = zext i8 %19 to i32
  %call19 = call i32 @beiscsi_if_get_gw(ptr noundef %phba, i32 noundef %conv, ptr noundef nonnull %gw_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end36, label %do.body22

do.body22:                                        ; preds = %if.end16
  %attr_log_enable24 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %20 = ptrtoint ptr %attr_log_enable24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attr_log_enable24, align 4
  %and25 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body22.exit_crit_edge, label %do.end30

do.body22.exit_crit_edge:                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.end30:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %shost31 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %22 = ptrtoint ptr %shost31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost31, align 4
  %shost_gendev32 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev32, ptr noundef nonnull @.str.17, i32 noundef 676) #13
  br label %exit

if.end36:                                         ; preds = %if.end16
  %addr38 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, ptr %gw_resp, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %ip_type18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ip_type18, align 1
  %conv41 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %25)
  %cmp.i103 = icmp ult i8 %25, 16
  %cond.i104 = select i1 %cmp.i103, i32 4, i32 16
  br label %while.cond.i107

while.cond.i107:                                  ; preds = %land.rhs.i111.while.cond.i107_crit_edge, %if.end36
  %len.0.i105 = phi i32 [ %cond.i104, %if.end36 ], [ %sub.i108, %land.rhs.i111.while.cond.i107_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i105)
  %tobool.not.i106 = icmp eq i32 %len.0.i105, 0
  br i1 %tobool.not.i106, label %while.cond.i107.if.end65_crit_edge, label %land.rhs.i111

while.cond.i107.if.end65_crit_edge:               ; preds = %while.cond.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.rhs.i111:                                    ; preds = %while.cond.i107
  %sub.i108 = add nsw i32 %len.0.i105, -1
  %arrayidx.i109 = getelementptr i8, ptr %addr38, i32 %sub.i108
  %26 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i109, align 1
  %tobool1.not.i110 = icmp eq i8 %27, 0
  br i1 %tobool1.not.i110, label %land.rhs.i111.while.cond.i107_crit_edge, label %if.then43

land.rhs.i111.while.cond.i107_crit_edge:          ; preds = %land.rhs.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i107

if.then43:                                        ; preds = %land.rhs.i111
  %call47 = call fastcc i32 @beiscsi_if_mod_gw(ptr noundef %phba, i32 noundef 2, i32 noundef %conv41, ptr noundef %addr38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then43.if.end65_crit_edge, label %do.body50

if.then43.if.end65_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.body50:                                        ; preds = %if.then43
  %attr_log_enable52 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %28 = ptrtoint ptr %attr_log_enable52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %attr_log_enable52, align 4
  %and53 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body50.exit_crit_edge, label %do.end58

do.body50.exit_crit_edge:                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.end58:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %shost59 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %30 = ptrtoint ptr %shost59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost59, align 4
  %shost_gendev60 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev60, ptr noundef nonnull @.str.20, i32 noundef 685) #13
  br label %exit

if.end65:                                         ; preds = %if.then43.if.end65_crit_edge, %while.cond.i107.if.end65_crit_edge
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 32, ptr noundef %3, i32 noundef 3264, i32 noundef 0) #10
  %34 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i113 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i113, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end65
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32, ptr %5, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 2, i8 noundef zeroext 17, i32 noundef 32) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %36 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end69_crit_edge, label %do.end19.i

if.end8.i.if.end69_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %38 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 17, i32 noundef 32) #13
  br label %if.end69

beiscsi_prep_nemb_cmd.exit:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %40 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %exit

if.end69:                                         ; preds = %do.end19.i, %if.end8.i.if.end69_crit_edge
  %42 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nonemb_cmd, align 4
  %flags = getelementptr inbounds %struct.be_cmd_set_dhcp_req, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 1, ptr %flags, align 1
  %retry_count = getelementptr inbounds %struct.be_cmd_set_dhcp_req, ptr %43, i32 0, i32 4
  %45 = ptrtoint ptr %retry_count to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 1, ptr %retry_count, align 1
  %interface_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 46
  %46 = ptrtoint ptr %interface_handle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %interface_handle, align 4
  %interface_hndl = getelementptr inbounds %struct.be_cmd_set_dhcp_req, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %interface_hndl to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %interface_hndl, align 1
  %ip_type70 = getelementptr inbounds %struct.be_cmd_set_dhcp_req, ptr %43, i32 0, i32 2
  %49 = ptrtoint ptr %ip_type70 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %ip_type, ptr %ip_type70, align 1
  %call71 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call71)
  %cmp.i114 = icmp eq i32 %call71, -16
  br i1 %cmp.i114, label %if.end69.exit_crit_edge, label %if.end.i

if.end69.exit_crit_edge:                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end.i:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i, align 4
  %dev.i116 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %5, align 4
  %54 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nonemb_cmd, align 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %3, align 4
  call void @dma_free_attrs(ptr noundef %dev.i116, i32 noundef %53, ptr noundef %55, i32 noundef %57, i32 noundef 0) #10
  br label %exit

exit:                                             ; preds = %if.end.i, %if.end69.exit_crit_edge, %beiscsi_prep_nemb_cmd.exit, %do.end58, %do.body50.exit_crit_edge, %do.end30, %do.body22.exit_crit_edge, %if.then11.exit_crit_edge, %do.end, %do.body.exit_crit_edge
  %rc.0 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit ], [ %call12, %if.then11.exit_crit_edge ], [ 0, %do.end ], [ 0, %do.body.exit_crit_edge ], [ %call19, %do.end30 ], [ %call19, %do.body22.exit_crit_edge ], [ %call47, %do.end58 ], [ %call47, %do.body50.exit_crit_edge ], [ -16, %if.end69.exit_crit_edge ], [ %call71, %if.end.i ]
  call void @kfree(ptr noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_info) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gw_resp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_if_set_vlan(ptr noundef %phba, i16 noundef zeroext %vlan_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @be_cmd_set_vlan(ptr noundef %phba, i16 noundef zeroext %vlan_tag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.33, i32 noundef 729) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call i32 @beiscsi_mccq_compl_wait(ptr noundef %phba, i32 noundef %call, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.body11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %shost24 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %2 = ptrtoint ptr %shost24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost24, align 4
  %shost_gendev25 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev25, ptr noundef nonnull @.str.36, i32 noundef 737) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %if.end7.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ %call8, %do.body11 ], [ -16, %do.body ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_cmd_set_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgmt_get_nic_conf(ptr noundef %phba, ptr noundef %nic) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !155
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 44, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %7 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %nonemb_cmd, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %beiscsi_prep_nemb_cmd.exit, label %if.end8.i

if.end8.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 44, ptr %3, align 4
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i.i, i8 noundef zeroext 2, i8 noundef zeroext 7, i32 noundef 44) #10
  %attr_log_enable13.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %9 = ptrtoint ptr %attr_log_enable13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_log_enable13.i, align 4
  %and14.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end8.i.if.end_crit_edge, label %do.end19.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %shost20.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %11 = ptrtoint ptr %shost20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost20.i, align 4
  %shost_gendev21.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev21.i, ptr noundef nonnull @.str.60, i32 noundef 289, i32 noundef 2, i32 noundef 7, i32 noundef 44) #13
  br label %if.end

beiscsi_prep_nemb_cmd.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.57, i32 noundef 282) #13
  br label %cleanup

if.end:                                           ; preds = %do.end19.i, %if.end8.i.if.end_crit_edge
  %call1 = call fastcc i32 @beiscsi_exec_nemb_cmd(ptr noundef %phba, ptr noundef nonnull %nonemb_cmd, ptr noundef null, ptr noundef %nic, i32 noundef 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1)
  %cmp.i = icmp eq i32 %call1, -16
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %dev.i9 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %19 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nonemb_cmd, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev.i9, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %beiscsi_prep_nemb_cmd.exit
  %retval.0 = phi i32 [ -12, %beiscsi_prep_nemb_cmd.exit ], [ -16, %if.end.cleanup_crit_edge ], [ %call1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_boot_logout_sess(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call, i32 noundef 20, i1 noundef zeroext true, i8 noundef zeroext 0) #10
  call void @be_cmd_hdr_prepare(ptr noundef %payload.i, i8 noundef zeroext 6, i8 noundef zeroext 24, i32 noundef 20) #10
  %boot_sess = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 5
  %1 = ptrtoint ptr %boot_sess to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %boot_sess, align 4
  %session_handle4 = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %session_handle4 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %session_handle4, align 1
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag, align 4
  %tag6 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 1
  %6 = ptrtoint ptr %tag6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tag6, align 4
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %5
  call void @_set_bit(i32 noundef 2, ptr noundef %arrayidx) #10
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %cbfn = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %8, i32 1
  %9 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @beiscsi_boot_process_compl, ptr %cbfn, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %8) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %11, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @beiscsi_boot_process_compl(ptr noundef %phba, i32 noundef %tag) #0 align 64 {
entry:
  %wrb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrb) #10
  %0 = ptrtoint ptr %wrb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %wrb, align 4, !annotation !155
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state, align 4
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.66, i32 noundef 832, ptr noundef nonnull @.str.67, i32 noundef %2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %boot_struct = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50
  %tag2 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 1
  %6 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %tag)
  %cmp.not = icmp eq i32 %7, %tag
  br i1 %cmp.not, label %if.end11, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shost7 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %8 = ptrtoint ptr %shost7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost7, align 4
  %shost_gendev8 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev8, ptr noundef nonnull @.str.69, i32 noundef 839, ptr noundef nonnull @.str.67, i32 noundef %tag, i32 noundef %7) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %action = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 4
  %10 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %action, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %11, label %if.end11.sw.epilogthread-pre-split_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb33
    i32 4, label %sw.bb52
  ]

if.end11.sw.epilogthread-pre-split_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilogthread-pre-split

sw.bb:                                            ; preds = %if.end11
  %call13 = tail call i32 @__beiscsi_mcc_compl_status(ptr noundef %phba, i32 noundef %tag, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %action, align 4
  br label %sw.epilogthread-pre-split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %boot_struct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %boot_struct, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %boot_struct, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end11
  %call19 = call i32 @__beiscsi_mcc_compl_status(ptr noundef %phba, i32 noundef %tag, ptr noundef nonnull %wrb, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %sw.bb18.if.end23_crit_edge

sw.bb18.if.end23_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %wrb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wrb, align 4
  %boot_session_handle = getelementptr inbounds %struct.be_mcc_wrb, ptr %17, i32 0, i32 5, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %boot_session_handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boot_session_handle, align 4
  %s_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 2
  %20 = ptrtoint ptr %s_handle to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %s_handle, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %sw.bb18.if.end23_crit_edge
  %s_handle24 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 2
  %21 = ptrtoint ptr %s_handle24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_handle24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp25 = icmp eq i32 %22, -1
  br i1 %cmp25, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %action, align 4
  %24 = ptrtoint ptr %boot_struct to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %boot_struct, align 4
  %dec29 = add i32 %25, -1
  store i32 %dec29, ptr %boot_struct, align 4
  br label %sw.epilog

if.else30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %action, align 4
  br label %sw.epilogthread-pre-split

sw.bb33:                                          ; preds = %if.end11
  %nonemb_cmd = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 3
  %call34 = tail call i32 @__beiscsi_mcc_compl_status(ptr noundef %phba, i32 noundef %tag, ptr noundef null, ptr noundef %nonemb_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %do.end42

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nonemb_cmd, align 4
  %boot_sess = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 5
  %session_info = getelementptr inbounds %struct.be_cmd_get_session_resp, ptr %28, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %boot_sess, ptr %session_info, i32 1164)
  %30 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %action, align 4
  br label %if.end45

do.end42:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  %shost43 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %31 = ptrtoint ptr %shost43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shost43, align 4
  %shost_gendev44 = getelementptr inbounds %struct.Scsi_Host, ptr %32, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev44, ptr noundef nonnull @.str.72, i32 noundef 877, i32 noundef %call34) #13
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.then36
  %boot_work.0 = phi i32 [ 0, %do.end42 ], [ 1, %if.then36 ]
  %pdev = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %size = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 3, i32 2
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  %37 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nonemb_cmd, align 4
  %dma = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 3, i32 1
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %36, ptr noundef %38, i32 noundef %40, i32 noundef 0) #10
  %41 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %nonemb_cmd, align 4
  br label %sw.epilogthread-pre-split

sw.bb52:                                          ; preds = %if.end11
  %call53 = call i32 @__beiscsi_mcc_compl_status(ptr noundef %phba, i32 noundef %tag, ptr noundef nonnull %wrb, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %sw.bb52.if.end66_crit_edge

sw.bb52.if.end66_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then55:                                        ; preds = %sw.bb52
  %42 = ptrtoint ptr %wrb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wrb, align 4
  %session_status = getelementptr inbounds %struct.be_mcc_wrb, ptr %43, i32 0, i32 5, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %session_status to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %session_status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %45)
  %cmp57.not = icmp eq i32 %45, 32
  br i1 %cmp57.not, label %if.then55.if.end66_crit_edge, label %do.end61

if.then55.if.end66_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %shost62 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %46 = ptrtoint ptr %shost62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shost62, align 4
  %shost_gendev63 = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev63, ptr noundef nonnull @.str.75, i32 noundef 891, i32 noundef %45) #13
  br label %if.end66

if.end66:                                         ; preds = %do.end61, %if.then55.if.end66_crit_edge, %sw.bb52.if.end66_crit_edge
  %48 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %action, align 4
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %if.end66, %if.end45, %if.else30, %if.then15, %if.end11.sw.epilogthread-pre-split_crit_edge
  %boot_work.1.ph = phi i32 [ 1, %if.then15 ], [ 1, %if.else30 ], [ %boot_work.0, %if.end45 ], [ 1, %if.end66 ], [ 1, %if.end11.sw.epilogthread-pre-split_crit_edge ]
  %status.0.ph = phi i32 [ 0, %if.then15 ], [ %call19, %if.else30 ], [ %call34, %if.end45 ], [ %call53, %if.end66 ], [ 0, %if.end11.sw.epilogthread-pre-split_crit_edge ]
  %49 = ptrtoint ptr %boot_struct to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %boot_struct, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.then26, %if.else
  %50 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %dec29, %if.then26 ], [ %dec, %if.else ]
  %boot_work.1 = phi i32 [ %boot_work.1.ph, %sw.epilogthread-pre-split ], [ 1, %if.then26 ], [ 1, %if.else ]
  %status.0 = phi i32 [ %status.0.ph, %sw.epilogthread-pre-split ], [ %call19, %if.then26 ], [ %call13, %if.else ]
  %51 = ptrtoint ptr %tag2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tag2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool70.not = icmp eq i32 %50, 0
  br i1 %tobool70.not, label %if.end78.thread, label %if.end78

if.end78.thread:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %shost75 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %52 = ptrtoint ptr %shost75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %shost75, align 4
  %shost_gendev76 = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 49
  %54 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %action, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev76, ptr noundef nonnull @.str.78, i32 noundef 907, i32 noundef %status.0, i32 noundef %55) #13
  br label %if.then80

if.end78:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_work.1)
  %tobool79.not = icmp eq i32 %boot_work.1, 0
  br i1 %tobool79.not, label %if.end78.if.then80_crit_edge, label %if.end82

if.end78.if.then80_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

if.then80:                                        ; preds = %if.end78.if.then80_crit_edge, %if.end78.thread
  call void @_clear_bit(i32 noundef 3, ptr noundef %state) #10
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %boot_work83 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %boot_work83) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then80, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_boot_reopen_sess(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call, i32 noundef 24, i1 noundef zeroext true, i8 noundef zeroext 0) #10
  call void @be_cmd_hdr_prepare(ptr noundef %payload.i, i8 noundef zeroext 6, i8 noundef zeroext 36, i32 noundef 24) #10
  %reopen_type = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %reopen_type to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 1, ptr %reopen_type, align 1
  %session_handle = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %session_handle to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 -1, ptr %session_handle, align 1
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tag, align 4
  %tag4 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 1
  %5 = ptrtoint ptr %tag4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tag4, align 4
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %4
  call void @_set_bit(i32 noundef 2, ptr noundef %arrayidx) #10
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag, align 4
  %cbfn = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %7, i32 1
  %8 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @beiscsi_boot_process_compl, ptr %cbfn, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %7) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %10, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_boot_get_sinfo(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %nonemb_cmd3 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 3
  %size = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 3, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1180, ptr %size, align 4
  %pdev = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dma = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 3, i32 1
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 1180, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #10
  %4 = ptrtoint ptr %nonemb_cmd3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %nonemb_cmd3, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memset(ptr %call.i, i32 0, i32 20)
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call, i32 noundef 20, i1 noundef zeroext false, i8 noundef zeroext 1) #10
  call void @be_cmd_hdr_prepare(ptr noundef nonnull %call.i, i8 noundef zeroext 6, i8 noundef zeroext 14, i32 noundef 1180) #10
  %s_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 2
  %6 = ptrtoint ptr %s_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_handle, align 4
  %session_handle = getelementptr inbounds %struct.be_cmd_get_session_req, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %session_handle to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %session_handle, align 1
  %pa_hi = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pa_hi, align 4
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %payload.i, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %len = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %len, align 4
  %18 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tag, align 4
  %tag20 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 1
  %20 = ptrtoint ptr %tag20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tag20, align 4
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %19
  call void @_set_bit(i32 noundef 2, ptr noundef %arrayidx) #10
  %21 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tag, align 4
  %cbfn = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %22, i32 1
  %23 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @beiscsi_boot_process_compl, ptr %cbfn, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %22) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %24 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then
  %retval.0 = phi i32 [ %25, %if.end11 ], [ 0, %if.then9 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__beiscsi_boot_get_shandle(ptr noundef %phba, i32 noundef %async) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call, i32 noundef 16, i1 noundef zeroext true, i8 noundef zeroext 0) #10
  call void @be_cmd_hdr_prepare(ptr noundef %payload.i, i8 noundef zeroext 6, i8 noundef zeroext 52, i32 noundef 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %async)
  %tobool4.not = icmp eq i32 %async, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tag, align 4
  %tag6 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 50, i32 1
  %3 = ptrtoint ptr %tag6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag6, align 4
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %2
  call void @_set_bit(i32 noundef 2, ptr noundef %arrayidx) #10
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag, align 4
  %cbfn = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %5, i32 1
  %6 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @beiscsi_boot_process_compl, ptr %cbfn, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %8) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ %10, %if.end9 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_boot_get_shandle(ptr noundef %phba, ptr nocapture noundef writeonly %s_handle) local_unnamed_addr #0 align 64 {
entry:
  %wrb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrb) #10
  %0 = ptrtoint ptr %wrb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %wrb, align 4, !annotation !155
  %1 = ptrtoint ptr %s_handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %s_handle, align 4
  %call = tail call i32 @__beiscsi_boot_get_shandle(ptr noundef %phba, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.40, i32 noundef 1107) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = call i32 @beiscsi_mccq_compl_wait(ptr noundef %phba, i32 noundef %call, ptr noundef nonnull %wrb, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end29, label %do.body11

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %shost24 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %4 = ptrtoint ptr %shost24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost24, align 4
  %shost_gendev25 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev25, ptr noundef nonnull @.str.43, i32 noundef 1115) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %wrb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrb, align 4
  %boot_session_count = getelementptr inbounds %struct.be_mcc_wrb, ptr %7, i32 0, i32 5, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %boot_session_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %boot_session_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool31.not = icmp eq i32 %9, 0
  br i1 %tobool31.not, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %shost36 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %10 = ptrtoint ptr %shost36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost36, align 4
  %shost_gendev37 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev37, ptr noundef nonnull @.str.46, i32 noundef 1123) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %boot_session_handle = getelementptr inbounds %struct.be_mcc_wrb, ptr %7, i32 0, i32 5, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %boot_session_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boot_session_handle, align 4
  %14 = ptrtoint ptr %s_handle to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %s_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end35, %do.body11, %do.body
  %retval.0 = phi i32 [ -16, %do.body11 ], [ 1, %if.end38 ], [ -6, %do.end35 ], [ -11, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrb) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @beiscsi_drvr_ver_disp(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.48, i32 52)
  ret i32 51
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_fw_ver_disp(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ver_str = getelementptr i8, ptr %dev, i32 6161
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %fw_ver_str)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_active_session_disp(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ulp_supported = getelementptr i8, ptr %dev, i32 5844
  %0 = ptrtoint ptr %ulp_supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ulp_supported, align 4
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iscsi_cid_count = getelementptr i8, ptr %dev, i32 5800
  %cid_array_info = getelementptr i8, ptr %dev, i32 5752
  %3 = ptrtoint ptr %cid_array_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cid_array_info, align 4
  %avlbl_cids5 = getelementptr inbounds %struct.ulp_cid_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %avlbl_cids5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %avlbl_cids5, align 4
  %7 = ptrtoint ptr %iscsi_cid_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iscsi_cid_count, align 4
  %conv14 = and i32 %8, 65535
  %conv15 = zext i16 %6 to i32
  %sub16 = sub nsw i32 %conv14, %conv15
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %sub16.sink = phi i32 [ %sub16, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef %sub16.sink) #10
  %9 = ptrtoint ptr %ulp_supported to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ulp_supported, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 5756
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %avlbl_cids5.1 = getelementptr inbounds %struct.ulp_cid_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %avlbl_cids5.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %avlbl_cids5.1, align 4
  %arrayidx8.1 = getelementptr i8, ptr %dev, i32 5804
  %16 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.1, align 4
  %conv10.1 = and i32 %call17, 65535
  %add.ptr11.1 = getelementptr i8, ptr %buf, i32 %conv10.1
  %sub.1 = sub nsw i32 4096, %conv10.1
  %conv14.1 = and i32 %17, 65535
  %conv15.1 = zext i16 %15 to i32
  %sub16.1 = sub nsw i32 %conv14.1, %conv15.1
  %call17.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11.1, i32 noundef %sub.1, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef %sub16.1) #10
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %conv20.1 = and i32 %call17, 65535
  %add.ptr21.1 = getelementptr i8, ptr %buf, i32 %conv20.1
  %sub23.1 = sub nsw i32 4096, %conv20.1
  %call25.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21.1, i32 noundef %sub23.1, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef 0) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then.1
  %.pn.in.1 = phi i32 [ %call17.1, %if.then.1 ], [ %call25.1, %if.else.1 ]
  %len.1.1 = add i32 %call17, %.pn.in.1
  %conv29 = and i32 %len.1.1, 65535
  ret i32 %conv29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_free_session_disp(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ulp_supported = getelementptr i8, ptr %dev, i32 5844
  %0 = ptrtoint ptr %ulp_supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ulp_supported, align 4
  %2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cid_array_info = getelementptr i8, ptr %dev, i32 5752
  %3 = ptrtoint ptr %cid_array_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cid_array_info, align 4
  %avlbl_cids = getelementptr inbounds %struct.ulp_cid_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %avlbl_cids to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %avlbl_cids, align 4
  %conv9 = zext i16 %6 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %conv9.sink = phi i32 [ %conv9, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef %conv9.sink) #10
  %7 = ptrtoint ptr %ulp_supported to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ulp_supported, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 5756
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %avlbl_cids.1 = getelementptr inbounds %struct.ulp_cid_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %avlbl_cids.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %avlbl_cids.1, align 4
  %conv9.1 = zext i16 %13 to i32
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %.sink = phi i32 [ %conv9.1, %if.then.1 ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %conv13.1 = and i32 %call10, 65535
  %sub16.1 = sub nsw i32 4096, %conv13.1
  %add.ptr14.1 = getelementptr i8, ptr %buf, i32 %conv13.1
  %call18.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14.1, i32 noundef %sub16.1, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef %.sink) #10
  %len.1.1 = add i32 %call10, %call18.1
  %conv22 = and i32 %len.1.1, 65535
  ret i32 %conv22
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_adap_family_disp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcidev = getelementptr i8, ptr %dev, i32 1220
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %3, label %sw.default [
    i16 530, label %entry.sw.bb_crit_edge
    i16 1794, label %entry.sw.bb_crit_edge15
    i16 1795, label %entry.sw.bb_crit_edge16
    i16 546, label %entry.sw.bb3_crit_edge
    i16 1810, label %entry.sw.bb3_crit_edge17
    i16 1826, label %sw.bb5
  ]

entry.sw.bb3_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.50, i32 41)
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge17
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.51, i32 22)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.52, i32 26)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %3 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.53, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ %call8, %sw.default ], [ 25, %sw.bb5 ], [ 21, %sw.bb3 ], [ 40, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_phys_port_disp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_config = getelementptr i8, ptr %dev, i32 5780
  %0 = ptrtoint ptr %fw_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_config, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.54, i32 noundef %1)
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @beiscsi_offload_cxn_v0(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %pwrb_handle, ptr nocapture noundef readonly %mem_descr, ptr nocapture noundef %pwrb_context) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrb1 = getelementptr inbounds %struct.wrb_handle, ptr %pwrb_handle, i32 0, i32 2
  %0 = ptrtoint ptr %pwrb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrb1, align 4
  %arrayidx = getelementptr [6 x i32], ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 2
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, 32767
  %and1.i = shl i32 %3, 15
  %or.i = or i32 %and.i, %and1.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and.i87 = and i32 %7, 268435455
  %or.i88 = or i32 %and.i87, 1879048192
  store i32 %or.i88, ptr %1, align 4
  %arrayidx5 = getelementptr [6 x i32], ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %add.ptr.i89 = getelementptr i32, ptr %1, i32 3
  %10 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i89, align 4
  %and.i90 = and i32 %11, -16384
  %and1.i91 = and i32 %9, 16383
  %or.i92 = or i32 %and.i90, %and1.i91
  store i32 %or.i92, ptr %add.ptr.i89, align 4
  %arrayidx8 = getelementptr [6 x i32], ptr %params, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %add.ptr.i93 = getelementptr i32, ptr %1, i32 4
  %14 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i93, align 4
  %and.i94 = and i32 %15, -1572865
  %and = shl i32 %13, 19
  %shl2.i95 = and i32 %and, 1572864
  %or.i96 = or i32 %and.i94, %shl2.i95
  store i32 %or.i96, ptr %add.ptr.i93, align 4
  %16 = load i32, ptr %arrayidx8, align 4
  %and.i98 = and i32 %or.i96, -262145
  %17 = shl i32 %16, 16
  %shl2.i99 = and i32 %17, 262144
  %or.i100 = or i32 %shl2.i99, %and.i98
  store i32 %or.i100, ptr %add.ptr.i93, align 4
  %18 = load i32, ptr %arrayidx8, align 4
  %and.i102 = and i32 %or.i100, -131073
  %19 = shl i32 %18, 14
  %shl2.i103 = and i32 %19, 131072
  %or.i104 = or i32 %and.i102, %shl2.i103
  store i32 %or.i104, ptr %add.ptr.i93, align 4
  %20 = load i32, ptr %arrayidx8, align 4
  %and.i106 = and i32 %or.i104, -268435457
  %21 = shl i32 %20, 24
  %shl2.i107 = and i32 %21, 268435456
  %or.i108 = or i32 %and.i106, %shl2.i107
  store i32 %or.i108, ptr %add.ptr.i93, align 4
  %22 = load i32, ptr %arrayidx8, align 4
  %and.i110 = and i32 %or.i108, -134217729
  %23 = shl i32 %22, 22
  %shl2.i111 = and i32 %23, 134217728
  %or.i112 = or i32 %and.i110, %shl2.i111
  store i32 %or.i112, ptr %add.ptr.i93, align 4
  %arrayidx30 = getelementptr [6 x i32], ptr %params, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30, align 4
  %add = add i32 %25, 1
  %add.ptr.i113 = getelementptr i32, ptr %1, i32 5
  %26 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %add.ptr.i113, align 4
  %27 = ptrtoint ptr %pwrb_handle to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pwrb_handle, align 4
  %and.i114 = and i32 %or.i88, 2130771967
  %29 = and i16 %28, 255
  %and1.i115 = zext i16 %29 to i32
  %shl2.i116 = shl nuw nsw i32 %and1.i115, 16
  %or.i117 = or i32 %shl2.i116, %and.i114
  store i32 %or.i117, ptr %1, align 4
  %30 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %params, align 4
  %add.ptr.i118 = getelementptr i32, ptr %1, i32 1
  %32 = ptrtoint ptr %add.ptr.i118 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i118, align 4
  %and.i119 = and i32 %33, -134217473
  %and1.i120 = shl i32 %31, 8
  %shl2.i121 = and i32 %and1.i120, 134217472
  %or.i122 = or i32 %and.i119, %shl2.i121
  store i32 %or.i122, ptr %add.ptr.i118, align 4
  %34 = load i16, ptr %pwrb_handle, align 4
  %and.i124 = and i32 %or.i122, -256
  %35 = and i16 %34, 255
  %and1.i125 = zext i16 %35 to i32
  %or.i126 = or i32 %and.i124, %and1.i125
  store i32 %or.i126, ptr %add.ptr.i118, align 4
  %plast_wrb = getelementptr inbounds %struct.hwi_wrb_context, ptr %pwrb_context, i32 0, i32 3
  %36 = ptrtoint ptr %plast_wrb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %plast_wrb, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %pwrb_handle to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pwrb_handle, align 4
  %add.ptr.i127 = getelementptr i32, ptr %37, i32 1
  %40 = ptrtoint ptr %add.ptr.i127 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i127, align 4
  %and.i128 = and i32 %41, -256
  %42 = and i16 %39, 255
  %and1.i129 = zext i16 %42 to i32
  %or.i130 = or i32 %and.i128, %and1.i129
  store i32 %or.i130, ptr %add.ptr.i127, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %43 = ptrtoint ptr %plast_wrb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %1, ptr %plast_wrb, align 4
  %44 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i89, align 4
  %and.i132 = and i32 %45, 536870911
  store i32 %and.i132, ptr %add.ptr.i89, align 4
  %46 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i93, align 4
  %or.i135 = and i32 %47, 469762047
  %and.i137 = or i32 %or.i135, -2147483648
  store i32 %and.i137, ptr %add.ptr.i93, align 4
  %mem_array = getelementptr %struct.be_mem_descriptor, ptr %mem_descr, i32 21, i32 2
  %48 = ptrtoint ptr %mem_array to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem_array, align 4
  %address_hi = getelementptr inbounds %struct.be_bus_address32, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %address_hi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %address_hi, align 4
  %add.ptr.i140 = getelementptr i32, ptr %1, i32 6
  %52 = ptrtoint ptr %add.ptr.i140 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr.i140, align 4
  %53 = load ptr, ptr %mem_array, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %add.ptr.i141 = getelementptr i32, ptr %1, i32 7
  %56 = ptrtoint ptr %add.ptr.i141 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %add.ptr.i141, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @beiscsi_offload_cxn_v2(ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %pwrb_handle, ptr nocapture noundef %pwrb_context) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrb1 = getelementptr inbounds %struct.wrb_handle, ptr %pwrb_handle, i32 0, i32 2
  %0 = ptrtoint ptr %pwrb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrb1, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and.i = and i32 %5, 117440512
  %and1.i = and i32 %3, 16777215
  %or.i = or i32 %and1.i, %and.i
  %or.i97 = or i32 %or.i, 939524096
  store i32 %or.i97, ptr %1, align 4
  %6 = ptrtoint ptr %pwrb_handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pwrb_handle, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %and.i98 = and i32 %9, -256
  %10 = and i16 %7, 255
  %and1.i99 = zext i16 %10 to i32
  %or.i100 = or i32 %and.i98, %and1.i99
  store i32 %or.i100, ptr %add.ptr.i, align 4
  %plast_wrb = getelementptr inbounds %struct.hwi_wrb_context, ptr %pwrb_context, i32 0, i32 3
  %11 = ptrtoint ptr %plast_wrb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plast_wrb, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %pwrb_handle to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pwrb_handle, align 4
  %add.ptr.i101 = getelementptr i32, ptr %12, i32 1
  %15 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i101, align 4
  %and.i102 = and i32 %16, -256
  %17 = and i16 %14, 255
  %and1.i103 = zext i16 %17 to i32
  %or.i104 = or i32 %and.i102, %and1.i103
  store i32 %or.i104, ptr %add.ptr.i101, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %plast_wrb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %plast_wrb, align 4
  %19 = ptrtoint ptr %pwrb_handle to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pwrb_handle, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %and.i106 = and i32 %22, -65281
  %23 = shl i16 %20, 8
  %shl2.i = zext i16 %23 to i32
  %or.i108 = or i32 %and.i106, %shl2.i
  store i32 %or.i108, ptr %add.ptr.i, align 4
  %arrayidx14 = getelementptr [6 x i32], ptr %params, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14, align 4
  %add.ptr.i109 = getelementptr i32, ptr %1, i32 2
  %26 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i109, align 4
  %and.i110 = and i32 %27, -16777216
  %and1.i111 = and i32 %25, 16777215
  %or.i112 = or i32 %and.i110, %and1.i111
  store i32 %or.i112, ptr %add.ptr.i109, align 4
  %arrayidx17 = getelementptr [6 x i32], ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx17, align 4
  %add.ptr.i113 = getelementptr i32, ptr %1, i32 3
  %30 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i113, align 4
  %and.i114 = and i32 %31, -16777216
  %and1.i115 = and i32 %29, 16777215
  %or.i116 = or i32 %and.i114, %and1.i115
  store i32 %or.i116, ptr %add.ptr.i113, align 4
  %arrayidx20 = getelementptr [6 x i32], ptr %params, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20, align 4
  %add.ptr.i117 = getelementptr i32, ptr %1, i32 8
  %34 = ptrtoint ptr %add.ptr.i117 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i117, align 4
  %and.i118 = and i32 %35, -16777216
  %and1.i119 = and i32 %33, 16777215
  %or.i120 = or i32 %and.i118, %and1.i119
  store i32 %or.i120, ptr %add.ptr.i117, align 4
  %add.ptr.i121 = getelementptr i32, ptr %1, i32 11
  %36 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i121, align 4
  %and.i122 = and i32 %37, -65536
  %or.i123 = or i32 %and.i122, 1
  store i32 %or.i123, ptr %add.ptr.i121, align 4
  %arrayidx24 = getelementptr [6 x i32], ptr %params, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx24, align 4
  %add.ptr.i124 = getelementptr i32, ptr %1, i32 4
  %40 = ptrtoint ptr %add.ptr.i124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i124, align 4
  %and.i125 = and i32 %41, -1572865
  %and = shl i32 %39, 19
  %shl2.i126 = and i32 %and, 1572864
  %or.i127 = or i32 %and.i125, %shl2.i126
  store i32 %or.i127, ptr %add.ptr.i124, align 4
  %42 = load i32, ptr %arrayidx24, align 4
  %and.i129 = and i32 %or.i127, -262145
  %43 = shl i32 %42, 16
  %shl2.i130 = and i32 %43, 262144
  %or.i131 = or i32 %shl2.i130, %and.i129
  store i32 %or.i131, ptr %add.ptr.i124, align 4
  %44 = load i32, ptr %arrayidx24, align 4
  %and.i133 = and i32 %or.i131, -131073
  %45 = shl i32 %44, 14
  %shl2.i134 = and i32 %45, 131072
  %or.i135 = or i32 %and.i133, %shl2.i134
  store i32 %or.i135, ptr %add.ptr.i124, align 4
  %46 = load i32, ptr %arrayidx24, align 4
  %and.i137 = and i32 %or.i135, -268435457
  %47 = shl i32 %46, 24
  %shl2.i138 = and i32 %47, 268435456
  %or.i139 = or i32 %and.i137, %shl2.i138
  store i32 %or.i139, ptr %add.ptr.i124, align 4
  %48 = load i32, ptr %arrayidx24, align 4
  %and.i141 = and i32 %or.i139, -134217729
  %49 = shl i32 %48, 22
  %shl2.i142 = and i32 %49, 134217728
  %or.i143 = or i32 %and.i141, %shl2.i142
  store i32 %or.i143, ptr %add.ptr.i124, align 4
  %50 = load i32, ptr %arrayidx24, align 4
  %and.i145 = and i32 %or.i123, -1073807359
  %51 = shl i32 %50, 24
  %shl2.i146 = and i32 %51, 1073741824
  %or.i147 = or i32 %shl2.i146, %and.i145
  store i32 %or.i147, ptr %add.ptr.i121, align 4
  %52 = load i32, ptr %arrayidx24, align 4
  %and.i149 = and i32 %or.i147, 2147418113
  %53 = shl i32 %52, 24
  %shr53 = and i32 %53, -2147483648
  %or.i151 = or i32 %and.i149, %shr53
  store i32 %or.i151, ptr %add.ptr.i121, align 4
  %54 = load i32, ptr %arrayidx24, align 4
  %and57 = lshr i32 %54, 8
  %shr58 = and i32 %and57, 65535
  %and.i153 = and i32 %or.i143, -65536
  %or.i154 = or i32 %shr58, %and.i153
  store i32 %or.i154, ptr %add.ptr.i124, align 4
  %arrayidx61 = getelementptr [6 x i32], ptr %params, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx61, align 4
  %add = add i32 %56, 1
  %add.ptr.i155 = getelementptr i32, ptr %1, i32 5
  %57 = ptrtoint ptr %add.ptr.i155 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add, ptr %add.ptr.i155, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_invalidate_cxn(ptr noundef %phba, ptr nocapture noundef readonly %beiscsi_ep) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tag, align 4
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call, i32 noundef 28, i1 noundef zeroext true, i8 noundef zeroext 0) #10
  call void @be_cmd_hdr_prepare(ptr noundef %payload.i, i8 noundef zeroext 6, i8 noundef zeroext 42, i32 noundef 28) #10
  %fw_handle = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 7
  %1 = ptrtoint ptr %fw_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_handle, align 4
  %session_handle = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %session_handle to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %session_handle, align 1
  %ep_cid = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 6
  %4 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ep_cid, align 4
  %cid = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %cid to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %cid, align 1
  %conn = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 1
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 4
  %tobool4.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool4.not, i16 -32766, i16 -32767
  %9 = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %spec.select, ptr %9, align 1
  %save_cfg = getelementptr inbounds %struct.be_invalidate_connection_params_in, ptr %payload.i, i32 0, i32 5
  %11 = ptrtoint ptr %save_cfg to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %save_cfg, align 1
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %13) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %14 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %15, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_upload_cxn(ptr noundef %phba, ptr nocapture noundef readonly %beiscsi_ep) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call, i32 noundef 128, i1 noundef zeroext true, i8 noundef zeroext 0) #10
  call void @be_cmd_hdr_prepare(ptr noundef %payload.i, i8 noundef zeroext 1, i8 noundef zeroext 56, i32 noundef 24) #10
  %ep_cid = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 6
  %1 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ep_cid, align 4
  %id = getelementptr inbounds %struct.be_mcc_wrb, ptr %call, i32 0, i32 5, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %id, align 1
  %conn = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 1
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %tobool4.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool4.not, i16 3, i16 1
  %6 = getelementptr inbounds %struct.be_tcp_upload_params_in, ptr %payload.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %spec.select, ptr %6, align 1
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tag, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %9) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %11, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_mgmt_invalidate_icds(ptr noundef %phba, ptr nocapture noundef readonly %inv_tbl, i32 noundef %nents) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !155
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !155
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #10
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tag, align 4, !annotation !155
  %5 = add i32 %nents, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %5)
  %6 = icmp ult i32 %5, -128
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 540, ptr %3, align 4
  %pdev = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 540, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #10
  %10 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %nonemb_cmd, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %11 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.55, i32 noundef 1521) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #10
  %call17 = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %for.body.lr.ph

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nonemb_cmd, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev23, i32 noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 0) #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %21 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nonemb_cmd, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  call void @be_wrb_hdr_prepare(ptr noundef nonnull %call17, i32 noundef %24, i1 noundef zeroext false, i8 noundef zeroext 1) #10
  call void @be_cmd_hdr_prepare(ptr noundef %22, i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 540) #10
  %ref_handle = getelementptr inbounds %struct.invldt_cmds_params_in, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ref_handle to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %ref_handle, align 1
  %cleanup_type = getelementptr inbounds %struct.invldt_cmds_params_in, ptr %22, i32 0, i32 4
  %26 = ptrtoint ptr %cleanup_type to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 1, ptr %cleanup_type, align 1
  %icd_count = getelementptr inbounds %struct.invldt_cmds_params_in, ptr %22, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.invldt_cmd_tbl, ptr %inv_tbl, i32 %i.093
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx, align 1
  %arrayidx32 = getelementptr %struct.invldt_cmds_params_in, ptr %22, i32 0, i32 3, i32 %i.093
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %arrayidx32, align 1
  %cid = getelementptr %struct.invldt_cmd_tbl, ptr %inv_tbl, i32 %i.093, i32 1
  %30 = ptrtoint ptr %cid to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %cid, align 1
  %cid37 = getelementptr %struct.invldt_cmds_params_in, ptr %22, i32 0, i32 3, i32 %i.093, i32 1
  %32 = ptrtoint ptr %cid37 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %cid37, align 1
  %33 = ptrtoint ptr %icd_count to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %icd_count, align 1
  %inc = add i32 %34, 1
  store i32 %inc, ptr %icd_count, align 1
  %inc38 = add nuw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc38, %nents
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call17, i32 0, i32 5
  %pa_hi = getelementptr inbounds %struct.be_mcc_wrb, ptr %call17, i32 0, i32 5, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %pa_hi, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %payload.i, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %len = getelementptr inbounds %struct.be_mcc_wrb, ptr %call17, i32 0, i32 5, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %len, align 4
  %44 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tag, align 4
  call void @be_mcc_notify(ptr noundef %phba, i32 noundef %45) #10
  call void @mutex_unlock(ptr noundef %mbox_lock) #10
  %46 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tag, align 4
  %call46 = call i32 @beiscsi_mccq_compl_wait(ptr noundef %phba, i32 noundef %47, ptr noundef null, ptr noundef nonnull %nonemb_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, -16
  br i1 %cmp47.not, label %for.end.cleanup_crit_edge, label %if.then49

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 4
  %52 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nonemb_cmd, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev52, i32 noundef %51, ptr noundef %53, i32 noundef %55, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %for.end.cleanup_crit_edge, %if.then19, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then19 ], [ -12, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ %call46, %if.then49 ], [ -16, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__beiscsi_mcc_compl_status(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 71, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mgmt_vendor_specific_fw_cmd._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mgmt_vendor_specific_fw_cmd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 131, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mgmt_open_connection._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mgmt_open_connection._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 190, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mgmt_open_connection._entry.8, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @mgmt_open_connection._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 379, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @beiscsi_get_initiator_name._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @beiscsi_get_initiator_name._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 384, i32 21}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 415, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @beiscsi_if_get_handle._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @beiscsi_if_get_handle._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 468, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @beiscsi_if_set_gw._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @beiscsi_if_set_gw._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 477, i32 4}
!38 = !{ptr @beiscsi_if_set_gw._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @beiscsi_if_set_gw._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 485, i32 3}
!42 = !{ptr @beiscsi_if_set_gw._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @beiscsi_if_set_gw._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 622, i32 4}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @beiscsi_if_en_static._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @beiscsi_if_en_static._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 658, i32 3}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @beiscsi_if_en_dhcp._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @beiscsi_if_en_dhcp._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @beiscsi_if_en_dhcp._entry.29, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 675, i32 3}
!56 = !{ptr @beiscsi_if_en_dhcp._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @beiscsi_if_en_dhcp._entry.31, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 684, i32 4}
!59 = !{ptr @beiscsi_if_en_dhcp._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 727, i32 3}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @beiscsi_if_set_vlan._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @beiscsi_if_set_vlan._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 735, i32 3}
!67 = !{ptr @beiscsi_if_set_vlan._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @beiscsi_if_set_vlan._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 771, i32 4}
!71 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @beiscsi_if_get_info._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @beiscsi_if_get_info._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1105, i32 3}
!76 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @beiscsi_boot_get_shandle._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @beiscsi_boot_get_shandle._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1113, i32 3}
!81 = !{ptr @beiscsi_boot_get_shandle._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @beiscsi_boot_get_shandle._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1122, i32 3}
!85 = !{ptr @beiscsi_boot_get_shandle._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @beiscsi_boot_get_shandle._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1145, i32 34}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1189, i32 7}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1252, i32 5}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1255, i32 35}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1257, i32 35}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1260, i32 5}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1280, i32 34}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 1520, i32 3}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @beiscsi_mgmt_invalidate_icds._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @beiscsi_mgmt_invalidate_icds._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 281, i32 3}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @beiscsi_prep_nemb_cmd._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @beiscsi_prep_nemb_cmd._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 287, i32 2}
!113 = !{ptr @beiscsi_prep_nemb_cmd._entry.59, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @beiscsi_prep_nemb_cmd._entry_ptr.61, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 543, i32 3}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @beiscsi_if_clr_ip._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @beiscsi_if_clr_ip._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 586, i32 3}
!122 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @beiscsi_if_set_ip._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @beiscsi_if_set_ip._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 830, i32 3}
!127 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @beiscsi_boot_process_compl._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @beiscsi_boot_process_compl._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 837, i32 3}
!132 = !{ptr @beiscsi_boot_process_compl._entry.68, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @beiscsi_boot_process_compl._entry_ptr.70, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 875, i32 4}
!136 = !{ptr @beiscsi_boot_process_compl._entry.71, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @beiscsi_boot_process_compl._entry_ptr.73, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 889, i32 5}
!140 = !{ptr @beiscsi_boot_process_compl._entry.74, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @beiscsi_boot_process_compl._entry_ptr.76, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/be2iscsi/be_mgmt.c", i32 905, i32 3}
!144 = !{ptr @beiscsi_boot_process_compl._entry.77, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @beiscsi_boot_process_compl._entry_ptr.79, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
