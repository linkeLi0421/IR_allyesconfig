; ModuleID = '/llk/IR_all_yes/drivers/scsi/be2iscsi/be_cmds.c_pt.bc'
source_filename = "../drivers/scsi/be2iscsi/be_cmds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.beiscsi_hba = type { %struct.hba_parameters, ptr, [22 x i32], ptr, ptr, ptr, ptr, i32, i32, [64 x ptr], ptr, i16, i16, i16, ptr, i16, i16, i16, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, [2048 x i16], [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.anon.129, i32, i8, %struct.delayed_work, %struct.timer_list, i32, %struct.delayed_work, %struct.work_struct, i8, [6 x i8], i8, i8, [32 x i8], ptr, %struct.be_ctrl_info, i32, i32, [64 x %struct.be_aic_obj], i32, ptr, %struct.boot_struct, %struct.work_struct }
%struct.hba_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.129 = type { i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.be_ctrl_info = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.be_dma_mem, %struct.be_dma_mem, %struct.be_mcc_obj, %struct.spinlock, [17 x %struct.wait_queue_head], [16 x i32], [17 x i32], i16, i16, i32, [17 x %struct.beiscsi_mcc_tag_state] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.be_dma_mem = type { ptr, i32, i32 }
%struct.be_mcc_obj = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { %struct.be_dma_mem, i16, i16, i16, i16, i16, i8, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.beiscsi_mcc_tag_state = type { i32, ptr, %struct.be_dma_mem }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.be_mcc_wrb = type { i32, i32, i32, i32, i32, %union.anon }
%union.anon = type { [19 x %struct.be_sge], [8 x i8] }
%struct.be_sge = type { i32, i32, i32 }
%struct.be_cmd_req_hdr = type { i8, i8, i8, i8, i32, i32, i8, [3 x i8] }
%struct.be_cmd_resp_hdr = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.be_mcc_compl = type { i32, i32, i32, i32 }
%struct.be_async_event_link_state = type { i8, i8, i8, i8, i8, i8, i16, i32, %struct.be_async_event_trailer }
%struct.be_async_event_trailer = type { i32 }
%struct.be_async_event_sli = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.be_mcc_mailbox = type { %struct.be_mcc_wrb, %struct.be_mcc_compl }
%struct.be_cmd_req_cq_create = type { %struct.be_cmd_req_hdr, i16, i8, i8, [16 x i8], [4 x %struct.phys_addr] }
%struct.phys_addr = type { i32, i32 }
%struct.be_defq_create_req = type { %struct.be_cmd_req_hdr, i16, i8, i8, %struct.be_default_pdu_context, [8 x %struct.phys_addr] }
%struct.be_default_pdu_context = type { [4 x i32] }
%struct.hwi_controller = type { ptr, [2 x %struct.be_ring], [2 x %struct.be_ring], ptr }
%struct.be_ring = type { i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, ptr }
%struct.be_defq_create_resp = type { %struct.be_cmd_req_hdr, i16, i8, i8, i32, i16, i16 }
%struct.be_wrbq_create_req = type { %struct.be_cmd_req_hdr, i16, i8, i8, [8 x %struct.phys_addr] }
%struct.hwi_wrb_context = type { %struct.spinlock, ptr, ptr, ptr, i16, i16, i16, i16, i8, i32 }
%struct.be_wrbq_create_resp = type { %struct.be_cmd_resp_hdr, i16, i8, i8, i32, i16, i16 }
%struct.be_post_template_pages_req = type { %struct.be_cmd_req_hdr, i16, i16, %struct.phys_addr, %struct.virt_addr, %struct.virt_addr, [16 x %struct.phys_addr] }
%struct.virt_addr = type { i32, i32 }
%struct.be_post_sgl_pages_req = type { %struct.be_cmd_req_hdr, i16, i16, i32, [26 x %struct.phys_addr], i32 }
%struct.be_mgmt_controller_attributes_resp = type { %struct.be_cmd_resp_hdr, %struct.mgmt_controller_attributes }
%struct.mgmt_controller_attributes = type <{ %struct.mgmt_hba_attributes, i16, i16, i16, i16, i8, i8, i8, i8, i64, i8, [3 x i8], [4 x i32] }>
%struct.mgmt_hba_attributes = type { [32 x i8], [32 x i8], i32, i8, i8, [2 x i8], i32, i32, [12 x i8], i32, [32 x i8], [64 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i16, i8, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i32, [8 x i32], i8, i8, [2 x i8], [3 x i32] }
%struct.iscsi_cleanup_req = type { %struct.be_cmd_req_hdr, i16, i8, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@alloc_mcc_wrb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 100, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BC_%d : MCC queue full: WRB used %u tag avail %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alloc_mcc_wrb\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/be2iscsi/be_cmds.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alloc_mcc_wrb._entry_ptr = internal global ptr @alloc_mcc_wrb._entry, section ".printk_index", align 4
@alloc_mcc_wrb._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 113, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"BC_%d : MCC tag 0 allocated: tag avail %u alloc index %u\0A\00", [38 x i8] zeroinitializer }, align 32
@alloc_mcc_wrb._entry_ptr.7 = internal global ptr @alloc_mcc_wrb._entry.5, section ".printk_index", align 4
@__beiscsi_mcc_compl_status._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 204, ptr @.str.10, ptr @.str.4 }, align 1
@.str.8 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"BC_%d : MBX Cmd Failed for Subsys : %d Opcode : %d with Status : %d and Extd_Status : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__beiscsi_mcc_compl_status\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__beiscsi_mcc_compl_status._entry_ptr = internal global ptr @__beiscsi_mcc_compl_status._entry, section ".printk_index", align 4
@__beiscsi_mcc_compl_status._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 213, ptr @.str.10, ptr @.str.4 }, align 1
@.str.12 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"BC_%d : Insufficient Buffer Error Resp_Len : %d Actual_Resp_Len : %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__beiscsi_mcc_compl_status._entry_ptr.13 = internal global ptr @__beiscsi_mcc_compl_status._entry.11, section ".printk_index", align 4
@beiscsi_mccq_compl_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 243, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BC_%d : invalid tag %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"beiscsi_mccq_compl_wait\00", [40 x i8] zeroinitializer }, align 32
@beiscsi_mccq_compl_wait._entry_ptr = internal global ptr @beiscsi_mccq_compl_wait._entry, section ".printk_index", align 4
@beiscsi_mccq_compl_wait._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 298, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BC_%d : MBX Cmd Completion timed out\0A\00", [58 x i8] zeroinitializer }, align 32
@beiscsi_mccq_compl_wait._entry_ptr.18 = internal global ptr @beiscsi_mccq_compl_wait._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@beiscsi_process_async_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 481, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"BC_%d : ASYNC Event %x: status 0x%08x flags 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"beiscsi_process_async_event\00", [36 x i8] zeroinitializer }, align 32
@beiscsi_process_async_event._entry_ptr = internal global ptr @beiscsi_process_async_event._entry, section ".printk_index", align 4
@beiscsi_process_mcc_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 500, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BC_%d : MBX cmd completed but not posted\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"beiscsi_process_mcc_compl\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_process_mcc_compl._entry_ptr = internal global ptr @beiscsi_process_mcc_compl._entry, section ".printk_index", align 4
@beiscsi_process_mcc_compl._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 511, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"BC_%d : MBX Completion for timeout Command from FW\0A\00", [44 x i8] zeroinitializer }, align 32
@beiscsi_process_mcc_compl._entry_ptr.26 = internal global ptr @beiscsi_process_mcc_compl._entry.24, section ".printk_index", align 4
@beiscsi_process_mcc_compl._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 545, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BC_%d : MBX ASYNC command with no callback\0A\00", [52 x i8] zeroinitializer }, align 32
@beiscsi_process_mcc_compl._entry_ptr.29 = internal global ptr @beiscsi_process_mcc_compl._entry.27, section ".printk_index", align 4
@beiscsi_cmd_cq_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 835, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BC_%d : In be_cmd_cq_create, status=ox%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_cmd_cq_create\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_cmd_cq_create._entry_ptr = internal global ptr @beiscsi_cmd_cq_create._entry, section ".printk_index", align 4
@beiscsi_cmd_q_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 911, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BC_%d : In beiscsi_cmd_q_destroy queue_type : %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_cmd_q_destroy\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_cmd_q_destroy._entry_ptr = internal global ptr @beiscsi_cmd_q_destroy._entry, section ".printk_index", align 4
@be_cmd_iscsi_post_sgl_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1205, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"BC_%d : FW CMD to map iscsi frags failed.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"be_cmd_iscsi_post_sgl_pages\00", [36 x i8] zeroinitializer }, align 32
@be_cmd_iscsi_post_sgl_pages._entry_ptr = internal global ptr @be_cmd_iscsi_post_sgl_pages._entry, section ".printk_index", align 4
@beiscsi_check_supported_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1273, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BG_%d : dma_alloc_coherent failed in %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"beiscsi_check_supported_fw\00", [37 x i8] zeroinitializer }, align 32
@beiscsi_check_supported_fw._entry_ptr = internal global ptr @beiscsi_check_supported_fw._entry, section ".printk_index", align 4
@beiscsi_check_supported_fw._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 1298, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"BG_%d : Firmware Version of CMD : %s\0AFirmware Version is : %s\0ADeveloper Build, not performing version check...\0A\00", [48 x i8] zeroinitializer }, align 32
@beiscsi_check_supported_fw._entry_ptr.40 = internal global ptr @beiscsi_check_supported_fw._entry.38, section ".printk_index", align 4
@beiscsi_check_supported_fw._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 1304, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BM_%d : phba->fw_config.iscsi_features = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@beiscsi_check_supported_fw._entry_ptr.43 = internal global ptr @beiscsi_check_supported_fw._entry.41, section ".printk_index", align 4
@beiscsi_check_supported_fw._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 1309, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BG_%d :  Failed in beiscsi_check_supported_fw\0A\00", [49 x i8] zeroinitializer }, align 32
@beiscsi_check_supported_fw._entry_ptr.46 = internal global ptr @beiscsi_check_supported_fw._entry.44, section ".printk_index", align 4
@beiscsi_get_fw_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1349, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BG_%d : Failed in beiscsi_get_fw_config\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_get_fw_config\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr = internal global ptr @beiscsi_get_fw_config._entry, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1358, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BG_%d : invalid physical port id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.51 = internal global ptr @beiscsi_get_fw_config._entry.49, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 1370, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BG_%d : invalid EQ count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.54 = internal global ptr @beiscsi_get_fw_config._entry.52, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.3, i32 1377, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BG_%d : invalid CQ count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.57 = internal global ptr @beiscsi_get_fw_config._entry.55, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.3, i32 1383, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BG_%d : EQ_Count : %d CQ_Count : %d\0A\00", [59 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.60 = internal global ptr @beiscsi_get_fw_config._entry.58, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.3, i32 1427, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"BG_%d : Function loaded on ULP : %d\0A\09iscsi_cid_count : %d\0A\09iscsi_cid_start : %d\0A\09 iscsi_icd_count : %d\0A\09 iscsi_icd_start : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.63 = internal global ptr @beiscsi_get_fw_config._entry.61, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.48, ptr @.str.3, i32 1435, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"BG_%d : iSCSI initiator mode not set: ULP0 %x ULP1 %x\0A\00", [41 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.66 = internal global ptr @beiscsi_get_fw_config._entry.64, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.48, ptr @.str.3, i32 1448, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BG_%d: invalid ICD count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.69 = internal global ptr @beiscsi_get_fw_config._entry.67, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.48, ptr @.str.3, i32 1456, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BG_%d: invalid CID count %d\0A\00", [35 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.72 = internal global ptr @beiscsi_get_fw_config._entry.70, section ".printk_index", align 4
@beiscsi_get_fw_config._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.48, ptr @.str.3, i32 1469, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BG_%d : DUA Mode : 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@beiscsi_get_fw_config._entry_ptr.75 = internal global ptr @beiscsi_get_fw_config._entry.73, section ".printk_index", align 4
@beiscsi_get_port_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1509, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BG_%d : GET_PORT_NAME ret 0x%x status 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_get_port_name\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_get_port_name._entry_ptr = internal global ptr @beiscsi_get_port_name._entry, section ".printk_index", align 4
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Linux iSCSI v%s\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"11.4.0.1\00", [23 x i8] zeroinitializer }, align 32
@beiscsi_set_host_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1549, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BG_%d : HBA set host driver version\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_set_host_data\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_set_host_data._entry_ptr = internal global ptr @beiscsi_set_host_data._entry, section ".printk_index", align 4
@beiscsi_set_host_data._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 1558, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BG_%d : HBA failed to set host driver version\0A\00", [49 x i8] zeroinitializer }, align 32
@beiscsi_set_host_data._entry_ptr.84 = internal global ptr @beiscsi_set_host_data._entry.82, section ".printk_index", align 4
@beiscsi_set_uer_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1589, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BG_%d : HBA error recovery supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"beiscsi_set_uer_feature\00", [40 x i8] zeroinitializer }, align 32
@beiscsi_set_uer_feature._entry_ptr = internal global ptr @beiscsi_set_uer_feature._entry, section ".printk_index", align 4
@beiscsi_set_uer_feature._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 1598, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BG_%d : HBA error recovery not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@beiscsi_set_uer_feature._entry_ptr.89 = internal global ptr @beiscsi_set_uer_feature._entry.87, section ".printk_index", align 4
@beiscsi_check_fw_rdy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 1635, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BC_%d : FW not ready 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"beiscsi_check_fw_rdy\00", [43 x i8] zeroinitializer }, align 32
@beiscsi_check_fw_rdy._entry_ptr = internal global ptr @beiscsi_check_fw_rdy._entry, section ".printk_index", align 4
@beiscsi_cmd_special_wrb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1697, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BC_%d : special WRB message failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"beiscsi_cmd_special_wrb\00", [40 x i8] zeroinitializer }, align 32
@beiscsi_cmd_special_wrb._entry_ptr = internal global ptr @beiscsi_cmd_special_wrb._entry, section ".printk_index", align 4
@beiscsi_init_sliport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1724, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BC_%d : SLI Function Reset failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"beiscsi_init_sliport\00", [43 x i8] zeroinitializer }, align 32
@beiscsi_init_sliport._entry_ptr = internal global ptr @beiscsi_init_sliport._entry, section ".printk_index", align 4
@beiscsi_cmd_iscsi_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 1779, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BG_%d : %s failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"beiscsi_cmd_iscsi_cleanup\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_cmd_iscsi_cleanup._entry_ptr = internal global ptr @beiscsi_cmd_iscsi_cleanup._entry, section ".printk_index", align 4
@beiscsi_detect_ue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 1816, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BC_%d : HBA error detected\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beiscsi_detect_ue\00", [46 x i8] zeroinitializer }, align 32
@beiscsi_detect_ue._entry_ptr = internal global ptr @beiscsi_detect_ue._entry, section ".printk_index", align 4
@beiscsi_detect_ue._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 1825, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BC_%d : UE_LOW %s bit set\0A\00", [37 x i8] zeroinitializer }, align 32
@beiscsi_detect_ue._entry_ptr.102 = internal global ptr @beiscsi_detect_ue._entry.100, section ".printk_index", align 4
@desc_ue_status_low = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169], [32 x i8] zeroinitializer }, align 32
@beiscsi_detect_ue._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.3, i32 1834, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BC_%d : UE_HIGH %s bit set\0A\00", [36 x i8] zeroinitializer }, align 32
@beiscsi_detect_ue._entry_ptr.105 = internal global ptr @beiscsi_detect_ue._entry.103, section ".printk_index", align 4
@desc_ue_status_hi = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.194, ptr @.str.194, ptr @.str.194, ptr @.str.194, ptr @.str.194, ptr @.str.194, ptr @.str.194], [32 x i8] zeroinitializer }, align 32
@beiscsi_detect_tpe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 1858, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BC_%d : HBA error recoverable: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"beiscsi_detect_tpe\00", [45 x i8] zeroinitializer }, align 32
@beiscsi_detect_tpe._entry_ptr = internal global ptr @beiscsi_detect_tpe._entry, section ".printk_index", align 4
@beiscsi_detect_tpe._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.3, i32 1862, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BC_%d : HBA in UE: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@beiscsi_detect_tpe._entry_ptr.110 = internal global ptr @beiscsi_detect_tpe._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/scsi/be2iscsi/be.h\00", [37 x i8] zeroinitializer }, align 32
@beiscsi_process_async_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.3, i32 380, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BC_%d : Link Up on Port %d tag 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"beiscsi_process_async_link\00", [37 x i8] zeroinitializer }, align 32
@beiscsi_process_async_link._entry_ptr = internal global ptr @beiscsi_process_async_link._entry, section ".printk_index", align 4
@beiscsi_process_async_link._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.3, i32 385, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BC_%d : Link Down on Port %d tag 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@beiscsi_process_async_link._entry_ptr.116 = internal global ptr @beiscsi_process_async_link._entry.114, section ".printk_index", align 4
@beiscsi_process_async_sli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 428, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"BC_%d : Port %c: Unrecognized optic state 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"beiscsi_process_async_sli\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_process_async_sli._entry_ptr = internal global ptr @beiscsi_process_async_sli._entry, section ".printk_index", align 4
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" Link is non-operational.\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" Link is operational.\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_process_async_sli._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.118, ptr @.str.3, i32 450, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BC_%d : Port %c: %s%s\0A\00", [41 x i8] zeroinitializer }, align 32
@beiscsi_process_async_sli._entry_ptr.123 = internal global ptr @beiscsi_process_async_sli._entry.121, section ".printk_index", align 4
@beiscsi_port_misconf_event_msg = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Physical Link is functional.\00", [35 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"Optics faulted/incorrectly installed/not installed - Reseat optics, if issue not resolved, replace.\00", [60 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Optics of two types installed - Remove one optic or install matching pair of optics.\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Incompatible optics - Replace with compatible optics for card to function.\00", [53 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Unqualified optics - Replace with Avago optics for Warranty and Technical Support.\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Uncertified optics - Replace with Avago Certified optics to enable link operation.\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@be_mbox_db_ready_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 619, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BC_%d : FW Timed Out\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"be_mbox_db_ready_poll\00", [42 x i8] zeroinitializer }, align 32
@be_mbox_db_ready_poll._entry_ptr = internal global ptr @be_mbox_db_ready_poll._entry, section ".printk_index", align 4
@beiscsi_process_mbox_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 335, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BC_%d : BMBX busy, no completion\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"beiscsi_process_mbox_compl\00", [37 x i8] zeroinitializer }, align 32
@beiscsi_process_mbox_compl._entry_ptr = internal global ptr @beiscsi_process_mbox_compl._entry, section ".printk_index", align 4
@beiscsi_process_mbox_compl._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.3, i32 358, ptr @.str, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"BC_%d : error in cmd completion: Subsystem : %d Opcode : %d status(compl/extd)=%d/%d\0A\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_process_mbox_compl._entry_ptr.137 = internal global ptr @beiscsi_process_mbox_compl._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CEV\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CTX\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DBUF\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ERX\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Host\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MPU\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NDMA\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PTC \00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDMA \00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RXF \00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RXIPS \00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RXULP0 \00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RXULP1 \00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RXULP2 \00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TIM \00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TPOST \00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TPRE \00", [26 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TXIPS \00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TXULP0 \00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TXULP1 \00", [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UC \00", [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WDMA \00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TXULP2 \00", [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOST1 \00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P0_OB_LINK \00", [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P1_OB_LINK \00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HOST_GPIO \00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MBOX \00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AXGMAC0\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AXGMAC1\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JTAG\00", [27 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MPU_INTPEND\00", [20 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LPCMEMHOST\00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MGMT_MAC\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCS0ONLINE\00", [21 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MPU_IRAM\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCS1ONLINE\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCTL0\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCTL1\00", [26 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PMEM\00", [27 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RR\00", [29 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TXPB\00", [27 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RXPP\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XAUI\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TXP\00", [28 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ARM\00", [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IPC\00", [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST2\00", [26 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST3\00", [26 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST4\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST5\00", [26 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST6\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST7\00", [26 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST8\00", [26 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HOST9\00", [26 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NETC\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 17]
@__sancov_gen_cov_switch_values.195 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 116]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 116]
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 97, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 109, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 199, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 208, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 242, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 295, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 456, i32 14 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 479, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 498, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 508, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 544, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 833, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 909, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1204, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1271, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1291, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1302, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1308, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1348, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1356, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1368, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1375, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1380, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1413, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1432, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1447, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1455, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1467, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1507, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1542, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1542, i32 24 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1548, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1557, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1588, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1597, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1634, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1696, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1723, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1778, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1815, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1823, i32 5 }
@___asan_gen_.495 = private unnamed_addr constant [19 x i8] c"desc_ue_status_low\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 17, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1832, i32 5 }
@___asan_gen_.504 = private unnamed_addr constant [18 x i8] c"desc_ue_status_hi\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 53, i32 27 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1857, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 1861, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant [30 x i8] c"../drivers/scsi/be2iscsi/be.h\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 42, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 378, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 383, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 426, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 436, i32 5 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 437, i32 5 }
@___asan_gen_.561 = private unnamed_addr constant [31 x i8] c"beiscsi_port_misconf_event_msg\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 391, i32 14 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 447, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 392, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 393, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 394, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 395, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 396, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 397, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 617, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 333, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 356, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 18, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 19, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 20, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 21, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 22, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 23, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 24, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 25, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 26, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 27, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 28, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 29, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 30, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 31, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 32, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 33, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 34, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 35, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 36, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 37, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 38, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 39, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 40, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 41, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 42, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 43, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 44, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 45, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 46, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 47, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 48, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 49, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 54, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 55, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 56, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 57, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 58, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 59, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 60, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 61, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 62, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 63, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 64, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 65, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 66, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 67, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 68, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 69, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 70, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 71, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 72, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 73, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 74, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 75, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 76, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 77, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.778 = private constant [35 x i8] c"../drivers/scsi/be2iscsi/be_cmds.c\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.778, i32 78, i32 2 }
@llvm.compiler.used = appending global [244 x ptr] [ptr @__beiscsi_mcc_compl_status._entry, ptr @__beiscsi_mcc_compl_status._entry.11, ptr @__beiscsi_mcc_compl_status._entry_ptr, ptr @__beiscsi_mcc_compl_status._entry_ptr.13, ptr @alloc_mcc_wrb._entry, ptr @alloc_mcc_wrb._entry.5, ptr @alloc_mcc_wrb._entry_ptr, ptr @alloc_mcc_wrb._entry_ptr.7, ptr @be_cmd_iscsi_post_sgl_pages._entry, ptr @be_cmd_iscsi_post_sgl_pages._entry_ptr, ptr @be_mbox_db_ready_poll._entry, ptr @be_mbox_db_ready_poll._entry_ptr, ptr @beiscsi_check_fw_rdy._entry, ptr @beiscsi_check_fw_rdy._entry_ptr, ptr @beiscsi_check_supported_fw._entry, ptr @beiscsi_check_supported_fw._entry.38, ptr @beiscsi_check_supported_fw._entry.41, ptr @beiscsi_check_supported_fw._entry.44, ptr @beiscsi_check_supported_fw._entry_ptr, ptr @beiscsi_check_supported_fw._entry_ptr.40, ptr @beiscsi_check_supported_fw._entry_ptr.43, ptr @beiscsi_check_supported_fw._entry_ptr.46, ptr @beiscsi_cmd_cq_create._entry, ptr @beiscsi_cmd_cq_create._entry_ptr, ptr @beiscsi_cmd_iscsi_cleanup._entry, ptr @beiscsi_cmd_iscsi_cleanup._entry_ptr, ptr @beiscsi_cmd_q_destroy._entry, ptr @beiscsi_cmd_q_destroy._entry_ptr, ptr @beiscsi_cmd_special_wrb._entry, ptr @beiscsi_cmd_special_wrb._entry_ptr, ptr @beiscsi_detect_tpe._entry, ptr @beiscsi_detect_tpe._entry.108, ptr @beiscsi_detect_tpe._entry_ptr, ptr @beiscsi_detect_tpe._entry_ptr.110, ptr @beiscsi_detect_ue._entry, ptr @beiscsi_detect_ue._entry.100, ptr @beiscsi_detect_ue._entry.103, ptr @beiscsi_detect_ue._entry_ptr, ptr @beiscsi_detect_ue._entry_ptr.102, ptr @beiscsi_detect_ue._entry_ptr.105, ptr @beiscsi_get_fw_config._entry, ptr @beiscsi_get_fw_config._entry.49, ptr @beiscsi_get_fw_config._entry.52, ptr @beiscsi_get_fw_config._entry.55, ptr @beiscsi_get_fw_config._entry.58, ptr @beiscsi_get_fw_config._entry.61, ptr @beiscsi_get_fw_config._entry.64, ptr @beiscsi_get_fw_config._entry.67, ptr @beiscsi_get_fw_config._entry.70, ptr @beiscsi_get_fw_config._entry.73, ptr @beiscsi_get_fw_config._entry_ptr, ptr @beiscsi_get_fw_config._entry_ptr.51, ptr @beiscsi_get_fw_config._entry_ptr.54, ptr @beiscsi_get_fw_config._entry_ptr.57, ptr @beiscsi_get_fw_config._entry_ptr.60, ptr @beiscsi_get_fw_config._entry_ptr.63, ptr @beiscsi_get_fw_config._entry_ptr.66, ptr @beiscsi_get_fw_config._entry_ptr.69, ptr @beiscsi_get_fw_config._entry_ptr.72, ptr @beiscsi_get_fw_config._entry_ptr.75, ptr @beiscsi_get_port_name._entry, ptr @beiscsi_get_port_name._entry_ptr, ptr @beiscsi_init_sliport._entry, ptr @beiscsi_init_sliport._entry_ptr, ptr @beiscsi_mccq_compl_wait._entry, ptr @beiscsi_mccq_compl_wait._entry.16, ptr @beiscsi_mccq_compl_wait._entry_ptr, ptr @beiscsi_mccq_compl_wait._entry_ptr.18, ptr @beiscsi_process_async_event._entry, ptr @beiscsi_process_async_event._entry_ptr, ptr @beiscsi_process_async_link._entry, ptr @beiscsi_process_async_link._entry.114, ptr @beiscsi_process_async_link._entry_ptr, ptr @beiscsi_process_async_link._entry_ptr.116, ptr @beiscsi_process_async_sli._entry, ptr @beiscsi_process_async_sli._entry.121, ptr @beiscsi_process_async_sli._entry_ptr, ptr @beiscsi_process_async_sli._entry_ptr.123, ptr @beiscsi_process_mbox_compl._entry, ptr @beiscsi_process_mbox_compl._entry.135, ptr @beiscsi_process_mbox_compl._entry_ptr, ptr @beiscsi_process_mbox_compl._entry_ptr.137, ptr @beiscsi_process_mcc_compl._entry, ptr @beiscsi_process_mcc_compl._entry.24, ptr @beiscsi_process_mcc_compl._entry.27, ptr @beiscsi_process_mcc_compl._entry_ptr, ptr @beiscsi_process_mcc_compl._entry_ptr.26, ptr @beiscsi_process_mcc_compl._entry_ptr.29, ptr @beiscsi_set_host_data._entry, ptr @beiscsi_set_host_data._entry.82, ptr @beiscsi_set_host_data._entry_ptr, ptr @beiscsi_set_host_data._entry_ptr.84, ptr @beiscsi_set_uer_feature._entry, ptr @beiscsi_set_uer_feature._entry.87, ptr @beiscsi_set_uer_feature._entry_ptr, ptr @beiscsi_set_uer_feature._entry_ptr.89, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @desc_ue_status_low, ptr @.str.104, ptr @desc_ue_status_hi, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @beiscsi_port_misconf_event_msg, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194], section "llvm.metadata"
@0 = internal global [194 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_mcc_wrb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_mcc_wrb._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_mccq_compl_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_mccq_compl_wait._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_async_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_mcc_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_mcc_compl._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_mcc_compl._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_cmd_cq_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_cmd_q_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_cmd_iscsi_post_sgl_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_check_supported_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_check_supported_fw._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_check_supported_fw._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_check_supported_fw._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_fw_config._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_port_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_set_host_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_set_host_data._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_set_uer_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_set_uer_feature._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_check_fw_rdy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_cmd_special_wrb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_init_sliport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_cmd_iscsi_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_detect_ue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_detect_ue._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @desc_ue_status_low to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_detect_ue._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @desc_ue_status_hi to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_detect_tpe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_detect_tpe._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_async_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_async_link._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_async_sli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_async_sli._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_port_misconf_event_msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_mbox_db_ready_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_mbox_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_process_mbox_compl._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_mcc_wrb(ptr noundef %phba, ptr nocapture noundef writeonly %ref_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcc_obj = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7
  %mcc_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 8
  tail call void @_raw_spin_lock(ptr noundef %mcc_lock) #9
  %used = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 7
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %used, align 4
  %len = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  br i1 %cmp, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  %conv10 = zext i16 %1 to i32
  %mcc_tag_available = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 14
  %6 = ptrtoint ptr %mcc_tag_available to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcc_tag_available, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %conv10, i32 noundef %7) #12
  br label %alloc_failed

if.end14:                                         ; preds = %entry
  %mcc_tag_available16 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 14
  %8 = ptrtoint ptr %mcc_tag_available16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcc_tag_available16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.end14.alloc_failed_crit_edge, label %if.end19

if.end14.alloc_failed_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_failed

if.end19:                                         ; preds = %if.end14
  %mcc_alloc_index = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 12
  %10 = ptrtoint ptr %mcc_alloc_index to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mcc_alloc_index, align 4
  %idxprom = zext i16 %11 to i32
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 10, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %do.body24, label %if.end47

do.body24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %shost37 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %14 = ptrtoint ptr %shost37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost37, align 4
  %shost_gendev38 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev38, ptr noundef nonnull @.str.6, i32 noundef 113, i32 noundef %9, i32 noundef %idxprom) #12
  br label %alloc_failed

if.end47:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %ref_tag to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %ref_tag, align 4
  %17 = ptrtoint ptr %mcc_alloc_index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mcc_alloc_index, align 4
  %idxprom52 = zext i16 %18 to i32
  %arrayidx53 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 10, i32 %idxprom52
  %19 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 11, i32 %13
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx55, align 4
  %arrayidx57 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %13
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx57, align 4
  %cbfn = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %13, i32 1
  %22 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cbfn, align 4
  %23 = ptrtoint ptr %mcc_tag_available16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mcc_tag_available16, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %mcc_tag_available16, align 4
  %25 = load i16, ptr %mcc_alloc_index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %25)
  %cmp66 = icmp eq i16 %25, 15
  %inc = add i16 %25, 1
  %storemerge = select i1 %cmp66, i16 0, i16 %inc
  %26 = ptrtoint ptr %mcc_alloc_index to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge, ptr %mcc_alloc_index, align 4
  %27 = ptrtoint ptr %mcc_obj to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mcc_obj, align 4
  %head.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 5
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %head.i, align 4
  %conv.i = zext i16 %30 to i32
  %entry_size.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 2
  %31 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %entry_size.i, align 2
  %conv1.i = zext i16 %32 to i32
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  %add.ptr.i = getelementptr i8, ptr %28, i32 %mul.i
  %33 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 256)
  %tag0 = getelementptr inbounds %struct.be_mcc_wrb, ptr %add.ptr.i, i32 0, i32 2
  %34 = ptrtoint ptr %tag0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %13, ptr %tag0, align 4
  %35 = load i16, ptr %head.i, align 4
  %conv74 = zext i16 %35 to i32
  %shl = shl nuw i32 %conv74, 16
  %and75 = and i32 %shl, 16711680
  %or = or i32 %and75, %13
  store i32 %or, ptr %tag0, align 4
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len, align 4
  %38 = load i16, ptr %head.i, align 2
  %39 = tail call i16 @llvm.ctpop.i16(i16 %37) #9, !range !373
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %tobool.not.i.i.i = icmp ult i16 %39, 2
  br i1 %tobool.not.i.i.i, label %if.end47.queue_head_inc.exit_crit_edge, label %do.end.i.i.i, !prof !374

if.end47.queue_head_inc.exit_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %queue_head_inc.exit

do.end.i.i.i:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 42, i32 noundef 9, ptr noundef null) #9
  br label %queue_head_inc.exit

queue_head_inc.exit:                              ; preds = %do.end.i.i.i, %if.end47.queue_head_inc.exit_crit_edge
  %add.i.i = add i16 %38, 1
  %sub.i.i.i = add i16 %37, -1
  %and24.i.i.i = and i16 %add.i.i, %sub.i.i.i
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %and24.i.i.i, ptr %head.i, align 2
  %41 = ptrtoint ptr %used to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %used, align 4
  %inc78 = add i16 %42, 1
  store i16 %inc78, ptr %used, align 4
  br label %alloc_failed

alloc_failed:                                     ; preds = %queue_head_inc.exit, %do.body24, %if.end14.alloc_failed_crit_edge, %do.body
  %wrb.0 = phi ptr [ null, %do.body ], [ %add.ptr.i, %queue_head_inc.exit ], [ null, %do.body24 ], [ null, %if.end14.alloc_failed_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %mcc_lock) #9
  ret ptr %wrb.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_mcc_wrb(ptr noundef %ctrl, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcc_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %mcc_lock) #9
  %and = and i32 %tag, 31
  %mcc_free_index = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 13
  %0 = ptrtoint ptr %mcc_free_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mcc_free_index, align 2
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 10, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %arrayidx, align 4
  %3 = load i16, ptr %mcc_free_index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %3)
  %cmp = icmp eq i16 %3, 15
  %inc = add i16 %3, 1
  %storemerge = select i1 %cmp, i16 0, i16 %inc
  %4 = ptrtoint ptr %mcc_free_index to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %storemerge, ptr %mcc_free_index, align 2
  %mcc_tag_available = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 14
  %5 = ptrtoint ptr %mcc_tag_available to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcc_tag_available, align 4
  %inc5 = add i32 %6, 1
  store i32 %inc5, ptr %mcc_tag_available, align 4
  %used = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 7, i32 0, i32 7
  %7 = ptrtoint ptr %used to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %used, align 4
  %dec = add i16 %8, -1
  store i16 %dec, ptr %used, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mcc_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__beiscsi_mcc_compl_status(ptr nocapture noundef readonly %phba, i32 noundef %tag, ptr noundef writeonly %wrb, ptr noundef readonly %mbx_cmd_mem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 11, i32 %tag
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = and i32 %1, 255
  %2 = lshr i32 %1, 8
  %tobool.not = icmp eq ptr %mbx_cmd_mem, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %mbx_cmd_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mbx_cmd_mem, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %mcc_obj = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7
  %and5 = lshr i32 %1, 16
  %conv7 = and i32 %and5, 255
  %5 = ptrtoint ptr %mcc_obj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcc_obj, align 4
  %entry_size.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %entry_size.i, align 2
  %conv.i = zext i16 %8 to i32
  %mul.i = mul nuw nsw i32 %conv7, %conv.i
  %add.ptr.i = getelementptr i8, ptr %6, i32 %mul.i
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %add.ptr.i, i32 0, i32 5
  %tobool10.not = icmp eq ptr %wrb, null
  br i1 %tobool10.not, label %if.else.if.end12_crit_edge, label %if.then11

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %wrb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %wrb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else.if.end12_crit_edge, %if.then
  %mbx_hdr.0 = phi ptr [ %4, %if.then ], [ %payload.i, %if.then11 ], [ %payload.i, %if.else.if.end12_crit_edge ]
  %10 = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end12.if.end47_crit_edge, label %do.body

if.end12.if.end47_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.body:                                          ; preds = %if.end12
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %12 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr_log_enable, align 4
  %and18 = and i32 %13, 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body.if.end26_crit_edge, label %do.end

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %14 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  %subsystem = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %mbx_hdr.0, i32 0, i32 1
  %16 = ptrtoint ptr %subsystem to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %subsystem, align 1
  %conv22 = zext i8 %17 to i32
  %18 = ptrtoint ptr %mbx_hdr.0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mbx_hdr.0, align 4
  %conv23 = zext i8 %19 to i32
  %conv25 = and i32 %2, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev, ptr noundef nonnull @.str.8, i32 noundef 204, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %conv, i32 noundef %conv25) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end, %do.body.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv)
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then31, label %if.end26.if.end47_crit_edge

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then31:                                        ; preds = %if.end26
  %20 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attr_log_enable, align 4
  %and35 = and i32 %21, 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then31.if.end47_crit_edge, label %do.end40

if.then31.if.end47_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end40:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %shost41 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %22 = ptrtoint ptr %shost41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost41, align 4
  %shost_gendev42 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 49
  %response_length = getelementptr inbounds %struct.be_cmd_resp_hdr, ptr %mbx_hdr.0, i32 0, i32 2
  %24 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %response_length, align 4
  %actual_resp_len = getelementptr inbounds %struct.be_cmd_resp_hdr, ptr %mbx_hdr.0, i32 0, i32 3
  %26 = ptrtoint ptr %actual_resp_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_resp_len, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev42, ptr noundef nonnull @.str.12, i32 noundef 213, i32 noundef %25, i32 noundef %27) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %if.then31.if.end47_crit_edge, %if.end26.if.end47_crit_edge, %if.end12.if.end47_crit_edge
  %rc.0 = phi i32 [ -5, %if.end26.if.end47_crit_edge ], [ 0, %if.end12.if.end47_crit_edge ], [ -11, %do.end40 ], [ -11, %if.then31.if.end47_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_mccq_compl_wait(ptr noundef %phba, i32 noundef %tag, ptr noundef %wrb, ptr noundef %mbx_cmd_mem) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %tag, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %0)
  %1 = icmp ult i32 %0, -16
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.14, i32 noundef 243, i32 noundef %tag) #12
  br label %cleanup104

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %arrayidx) #9
  br label %cleanup104

if.end3:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 257) #9
  %arrayidx11 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 11, i32 %tag
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not.not = icmp eq i32 %7, 0
  br i1 %tobool12.not.not, label %if.then20, label %if.end55.thread

if.then20:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %arrayidx24 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 9, i32 %tag
  %call25164 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx24, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool30.not165.not = icmp eq i32 %10, 0
  br i1 %tobool30.not165.not, label %if.then20.if.end46_crit_edge, label %if.then20.for.end_crit_edge

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then20.if.end46_crit_edge:                     ; preds = %if.then20
  br label %if.end46

if.end46:                                         ; preds = %cleanup.if.end46_crit_edge, %if.then20.if.end46_crit_edge
  %__ret21.1168 = phi i32 [ %__ret21.1, %cleanup.if.end46_crit_edge ], [ 11000, %if.then20.if.end46_crit_edge ]
  %call25167 = phi i32 [ %call25, %cleanup.if.end46_crit_edge ], [ %call25164, %if.then20.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25167)
  %tobool47.not = icmp eq i32 %call25167, 0
  br i1 %tobool47.not, label %cleanup, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

cleanup:                                          ; preds = %if.end46
  %call50 = call i32 @schedule_timeout(i32 noundef %__ret21.1168) #9
  %call25 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx24, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool30.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool34.not = icmp eq i32 %call50, 0
  %spec.store.select105 = select i1 %tobool34.not, i32 1, i32 %call50
  %__ret21.1 = select i1 %tobool30.not, i32 %call50, i32 %spec.store.select105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1)
  %tobool40.not = icmp eq i32 %__ret21.1, 0
  %not.tobool30.not = xor i1 %tobool30.not, true
  %13 = select i1 %not.tobool30.not, i1 true, i1 %tobool40.not
  br i1 %13, label %cleanup.for.end_crit_edge, label %cleanup.if.end46_crit_edge

cleanup.if.end46_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then20.for.end_crit_edge
  %__ret21.1.lcssa = phi i32 [ 11000, %if.then20.for.end_crit_edge ], [ %__ret21.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %arrayidx24, ptr noundef nonnull %__wq_entry) #9
  br label %if.end55

if.end55:                                         ; preds = %for.end, %if.end46.if.end55_crit_edge
  %__ret21.2150 = phi i32 [ %__ret21.1.lcssa, %for.end ], [ %call25167, %if.end46.if.end55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool59.not = icmp eq i32 %and1.i, 0
  br i1 %tobool59.not, label %if.end55.if.then60_crit_edge, label %if.end65

if.end55.if.then60_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.end55.thread:                                  ; preds = %if.end3
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state, align 4
  %and1.i156 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i156)
  %tobool59.not157 = icmp eq i32 %and1.i156, 0
  br i1 %tobool59.not157, label %if.end55.thread.if.then60_crit_edge, label %if.end55.thread.if.end101_crit_edge

if.end55.thread.if.end101_crit_edge:              ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.end55.thread.if.then60_crit_edge:              ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.then60:                                        ; preds = %if.end55.thread.if.then60_crit_edge, %if.end55.if.then60_crit_edge
  %arrayidx63 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag
  call void @_clear_bit(i32 noundef 0, ptr noundef %arrayidx63) #9
  br label %cleanup104

if.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret21.2150)
  %cmp66 = icmp slt i32 %__ret21.2150, 1
  br i1 %cmp66, label %if.then67, label %if.end65.if.end101_crit_edge

if.end65.if.end101_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then67:                                        ; preds = %if.end65
  %arrayidx70 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag
  %tobool71.not = icmp eq ptr %mbx_cmd_mem, null
  br i1 %tobool71.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %tag_mem_state = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag, i32 2
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %mbx_cmd_mem, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %size73 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag, i32 2, i32 2
  %20 = ptrtoint ptr %size73 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %size73, align 4
  %21 = ptrtoint ptr %mbx_cmd_mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mbx_cmd_mem, align 4
  %23 = ptrtoint ptr %tag_mem_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %tag_mem_state, align 4
  %dma = getelementptr inbounds %struct.be_dma_mem, ptr %mbx_cmd_mem, i32 0, i32 1
  %24 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma, align 4
  %dma75 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag, i32 2, i32 1
  %26 = ptrtoint ptr %dma75 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dma75, align 4
  br label %do.body78

if.else:                                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %size76 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag, i32 2, i32 2
  %27 = ptrtoint ptr %size76 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %size76, align 4
  br label %do.body78

do.body78:                                        ; preds = %if.else, %if.then72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  call void @arm_heavy_mb() #9
  call void @_set_bit(i32 noundef 1, ptr noundef %arrayidx70) #9
  %shost95 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %28 = ptrtoint ptr %shost95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shost95, align 4
  %shost_gendev96 = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev96, ptr noundef nonnull @.str.17, i32 noundef 298) #12
  br label %cleanup104

if.end101:                                        ; preds = %if.end65.if.end101_crit_edge, %if.end55.thread.if.end101_crit_edge
  %call102 = call i32 @__beiscsi_mcc_compl_status(ptr noundef %phba, i32 noundef %tag, ptr noundef %wrb, ptr noundef %mbx_cmd_mem)
  %mcc_lock.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 8
  call void @_raw_spin_lock(ptr noundef %mcc_lock.i) #9
  %and.i = and i32 %tag, 31
  %mcc_free_index.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 13
  %30 = ptrtoint ptr %mcc_free_index.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mcc_free_index.i, align 2
  %idxprom.i = zext i16 %31 to i32
  %arrayidx.i = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 10, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i, ptr %arrayidx.i, align 4
  %33 = load i16, ptr %mcc_free_index.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %33)
  %cmp.i = icmp eq i16 %33, 15
  %inc.i = add i16 %33, 1
  %storemerge.i = select i1 %cmp.i, i16 0, i16 %inc.i
  %34 = ptrtoint ptr %mcc_free_index.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %storemerge.i, ptr %mcc_free_index.i, align 2
  %mcc_tag_available.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 14
  %35 = ptrtoint ptr %mcc_tag_available.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mcc_tag_available.i, align 4
  %inc5.i = add i32 %36, 1
  store i32 %inc5.i, ptr %mcc_tag_available.i, align 4
  %used.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 7
  %37 = ptrtoint ptr %used.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %used.i, align 4
  %dec.i = add i16 %38, -1
  store i16 %dec.i, ptr %used.i, align 4
  call void @_raw_spin_unlock(ptr noundef %mcc_lock.i) #9
  br label %cleanup104

cleanup104:                                       ; preds = %if.end101, %do.body78, %if.then60, %if.then2, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %if.then2 ], [ -16, %do.body78 ], [ %call102, %if.end101 ], [ -5, %if.then60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beiscsi_process_async_event(ptr noundef %phba, ptr nocapture noundef readonly %compl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.be_mcc_compl, ptr %compl, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %shr = lshr i32 %1, 8
  %conv3 = and i32 %shr, 255
  %trunc = trunc i32 %shr to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.do.body_crit_edge [
    i8 1, label %sw.bb
    i8 4, label %sw.bb4
    i8 17, label %sw.bb5
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  %port_speed.i = getelementptr inbounds %struct.be_async_event_link_state, ptr %compl, i32 0, i32 3
  %3 = ptrtoint ptr %port_speed.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_speed.i, align 1
  %port_speed1.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 41
  %5 = ptrtoint ptr %port_speed1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %port_speed1.i, align 4
  %port_link_status.i = getelementptr inbounds %struct.be_async_event_link_state, ptr %compl, i32 0, i32 1
  %6 = ptrtoint ptr %port_link_status.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_link_status.i, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %state6.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state6.i) #9
  %9 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state6.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then4.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @beiscsi_start_boot_work(ptr noundef %phba, i32 noundef -1) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %if.then.i.do.end.i_crit_edge
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %12 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 49
  %14 = ptrtoint ptr %compl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %compl, align 1
  %conv5.i = zext i8 %15 to i32
  %event_tag.i = getelementptr inbounds %struct.be_async_event_link_state, ptr %compl, i32 0, i32 7
  %16 = ptrtoint ptr %event_tag.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %event_tag.i, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.112, i32 noundef 380, i32 noundef %conv5.i, i32 noundef %17) #12
  br label %do.body

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state6.i) #9
  %shost10.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %18 = ptrtoint ptr %shost10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost10.i, align 4
  %shost_gendev11.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  %20 = ptrtoint ptr %compl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %compl, align 1
  %conv13.i = zext i8 %21 to i32
  %event_tag14.i = getelementptr inbounds %struct.be_async_event_link_state, ptr %compl, i32 0, i32 7
  %22 = ptrtoint ptr %event_tag14.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %event_tag14.i, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev11.i, ptr noundef nonnull @.str.115, i32 noundef 385, i32 noundef %conv13.i, i32 noundef %23) #12
  %24 = ptrtoint ptr %shost10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shost10.i, align 4
  tail call void @iscsi_host_for_each_session(ptr noundef %25, ptr noundef nonnull @beiscsi_session_fail) #9
  br label %do.body

sw.bb4:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %sw.bb4.do.body_crit_edge, label %if.then

sw.bb4.do.body_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @beiscsi_start_boot_work(ptr noundef %phba, i32 noundef -1) #9
  br label %do.body

sw.bb5:                                           ; preds = %entry
  %29 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 589824
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb5.do.body_crit_edge

sw.bb5.do.body_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %sw.bb5
  %30 = ptrtoint ptr %compl to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %compl, align 1
  %fw_config.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30
  %32 = ptrtoint ptr %fw_config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_config.i, align 4
  %mul.i = shl i32 %33, 3
  %shr5.i = lshr i32 %31, %mul.i
  %conv7.i = trunc i32 %shr5.i to i8
  %event_data2.i = getelementptr inbounds %struct.be_async_event_sli, ptr %compl, i32 0, i32 1
  %34 = ptrtoint ptr %event_data2.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %event_data2.i, align 1
  %optic_state.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 32
  %36 = ptrtoint ptr %optic_state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %optic_state.i, align 4
  store i8 %conv7.i, ptr %optic_state.i, align 4
  %conv15.i = and i32 %shr5.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv15.i)
  %cmp16.i = icmp ugt i32 %conv15.i, 5
  br i1 %cmp16.i, label %do.end.i33, label %if.end21.i

do.end.i33:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %shost.i31 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %38 = ptrtoint ptr %shost.i31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shost.i31, align 4
  %shost_gendev.i32 = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  %port_name.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 40
  %40 = ptrtoint ptr %port_name.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port_name.i, align 1
  %conv19.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %compl to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %compl, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev.i32, ptr noundef nonnull @.str.117, i32 noundef 428, i32 noundef %conv19.i, i32 noundef %43) #12
  br label %do.body

if.end21.i:                                       ; preds = %if.end.i
  %shr11.i = lshr i32 %35, %mul.i
  %and23.i = and i32 %shr11.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool.not.i34 = icmp eq i32 %and23.i, 0
  br i1 %tobool.not.i34, label %if.end21.i.if.end47.i_crit_edge, label %if.then24.i

if.end21.i.if.end47.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv15.i)
  %cmp26.i = icmp ugt i32 %conv15.i, 3
  %and30.i = and i32 %shr11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %cond.i = select i1 %tobool31.not.i, ptr @.str.120, ptr @.str.119
  %msg.0.i = select i1 %cmp26.i, ptr %cond.i, ptr null
  %44 = lshr i32 %shr11.i, 1
  %and35.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and35.i)
  %cmp36.i = icmp eq i32 %and35.i, 1
  %sev.0.i = select i1 %cmp36.i, ptr @.str.19, ptr @.str.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and35.i)
  %cmp43.i = icmp eq i32 %and35.i, 2
  %spec.select91.i = select i1 %cmp43.i, ptr @.str, ptr %sev.0.i
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end47.i_crit_edge
  %sev.1.i = phi ptr [ @.str.10, %if.end21.i.if.end47.i_crit_edge ], [ %spec.select91.i, %if.then24.i ]
  %msg.1.i = phi ptr [ null, %if.end21.i.if.end47.i_crit_edge ], [ %msg.0.i, %if.then24.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %conv7.i)
  %cmp51.not.i = icmp eq i8 %37, %conv7.i
  br i1 %cmp51.not.i, label %if.end47.i.do.body_crit_edge, label %do.end58.i

if.end47.i.do.body_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end58.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %shost59.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %45 = ptrtoint ptr %shost59.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shost59.i, align 4
  %shost_gendev60.i = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 49
  %port_name61.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 40
  %47 = ptrtoint ptr %port_name61.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port_name61.i, align 1
  %conv62.i = zext i8 %48 to i32
  %arrayidx.i = getelementptr [6 x ptr], ptr @beiscsi_port_misconf_event_msg, i32 0, i32 %conv15.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %tobool63.not.i = icmp eq ptr %msg.1.i, null
  %spec.select.i = select i1 %tobool63.not.i, ptr @.str.124, ptr %msg.1.i
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %sev.1.i, ptr noundef %shost_gendev60.i, ptr noundef nonnull @.str.122, i32 noundef 450, i32 noundef %conv62.i, ptr noundef %50, ptr noundef nonnull %spec.select.i) #12
  br label %do.body

do.body:                                          ; preds = %do.end58.i, %if.end47.i.do.body_crit_edge, %do.end.i33, %sw.bb5.do.body_crit_edge, %if.then, %sw.bb4.do.body_crit_edge, %if.else.i, %do.end.i, %entry.do.body_crit_edge
  %sev.0 = phi ptr [ @.str, %if.then ], [ @.str, %sw.bb4.do.body_crit_edge ], [ @.str, %entry.do.body_crit_edge ], [ @.str.19, %do.end.i ], [ @.str.19, %if.else.i ], [ @.str.19, %sw.bb5.do.body_crit_edge ], [ @.str.19, %do.end.i33 ], [ @.str.19, %if.end47.i.do.body_crit_edge ], [ @.str.19, %do.end58.i ]
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %51 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %attr_log_enable, align 4
  %and6 = and i32 %52, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %arrayidx = getelementptr i8, ptr %sev.0, i32 1
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %54)
  %cmp = icmp ult i8 %54, 52
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %55 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 49
  %57 = ptrtoint ptr %compl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %compl, align 4
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %sev.0, ptr noundef %shost_gendev, ptr noundef nonnull @.str.20, i32 noundef 481, i32 noundef %conv3, i32 noundef %58, i32 noundef %60) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end, %lor.lhs.false.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @beiscsi_start_boot_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_process_mcc_compl(ptr noundef %ctrl, ptr nocapture noundef %compl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %compl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compl, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %7 = ptrtoint ptr %compl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %compl, align 4
  %incdec.ptr.i = getelementptr i32, ptr %compl, i32 1
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr.i, align 4
  %and = and i32 %9, 31
  %shr = and i32 %9, 16711680
  %arrayidx = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 15, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %12 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.22, i32 noundef 500) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %arrayidx) #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %if.end43, label %do.body21

do.body21:                                        ; preds = %if.end11
  %attr_log_enable23 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 48
  %17 = ptrtoint ptr %attr_log_enable23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr_log_enable23, align 4
  %and24 = and i32 %18, 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body21.if.end32_crit_edge, label %do.end29

do.body21.if.end32_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end29:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %shost30 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %19 = ptrtoint ptr %shost30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shost30, align 4
  %shost_gendev31 = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev31, ptr noundef nonnull @.str.25, i32 noundef 511) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %do.body21.if.end32_crit_edge
  %size = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 15, i32 %and, i32 2, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  br i1 %tobool37.not, label %if.end32.if.end42_crit_edge, label %if.then38

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %tag_mem_state = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 15, i32 %and, i32 2
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %tag_mem_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tag_mem_state, align 4
  %dma = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 15, i32 %and, i32 2, i32 1
  %27 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %22, ptr noundef %26, i32 noundef %28, i32 noundef 0) #9
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %size, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end32.if.end42_crit_edge
  %mcc_lock.i = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %mcc_lock.i) #9
  %mcc_free_index.i = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 13
  %30 = ptrtoint ptr %mcc_free_index.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mcc_free_index.i, align 2
  %idxprom.i = zext i16 %31 to i32
  %arrayidx.i = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 10, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %arrayidx.i, align 4
  %33 = load i16, ptr %mcc_free_index.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %33)
  %cmp.i = icmp eq i16 %33, 15
  %inc.i = add i16 %33, 1
  %storemerge.i = select i1 %cmp.i, i16 0, i16 %inc.i
  %34 = ptrtoint ptr %mcc_free_index.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %storemerge.i, ptr %mcc_free_index.i, align 2
  %mcc_tag_available.i = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 14
  %35 = ptrtoint ptr %mcc_tag_available.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mcc_tag_available.i, align 4
  %inc5.i = add i32 %36, 1
  store i32 %inc5.i, ptr %mcc_tag_available.i, align 4
  %used.i = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 7, i32 0, i32 7
  %37 = ptrtoint ptr %used.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %used.i, align 4
  %dec.i = add i16 %38, -1
  store i16 %dec.i, ptr %used.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mcc_lock.i) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end11
  %39 = ptrtoint ptr %compl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %compl, align 4
  %arrayidx51 = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 11, i32 %and
  %41 = lshr i32 %40, 8
  %and56 = and i32 %41, 65280
  %and61 = and i32 %40, 255
  %or = or i32 %shr, %and61
  %or59 = or i32 %or, %and56
  %or64 = or i32 %or59, -2147483648
  %42 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or64, ptr %arrayidx51, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx, align 4
  %45 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool69.not = icmp eq i32 %45, 0
  br i1 %tobool69.not, label %if.end84, label %if.then70

if.then70:                                        ; preds = %if.end43
  %cbfn = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 15, i32 %and, i32 1
  %46 = ptrtoint ptr %cbfn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cbfn, align 4
  %tobool73.not = icmp eq ptr %47, null
  br i1 %tobool73.not, label %do.end80, label %if.then74

if.then74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %47(ptr noundef %3, i32 noundef %and) #9
  br label %if.end83

do.end80:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %shost81 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %48 = ptrtoint ptr %shost81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %shost81, align 4
  %shost_gendev82 = getelementptr inbounds %struct.Scsi_Host, ptr %49, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev82, ptr noundef nonnull @.str.28, i32 noundef 545) #12
  br label %if.end83

if.end83:                                         ; preds = %do.end80, %if.then74
  %mcc_lock.i153 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %mcc_lock.i153) #9
  %mcc_free_index.i154 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 13
  %50 = ptrtoint ptr %mcc_free_index.i154 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mcc_free_index.i154, align 2
  %idxprom.i155 = zext i16 %51 to i32
  %arrayidx.i156 = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 10, i32 %idxprom.i155
  %52 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and, ptr %arrayidx.i156, align 4
  %53 = load i16, ptr %mcc_free_index.i154, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %53)
  %cmp.i157 = icmp eq i16 %53, 15
  %inc.i158 = add i16 %53, 1
  %storemerge.i159 = select i1 %cmp.i157, i16 0, i16 %inc.i158
  %54 = ptrtoint ptr %mcc_free_index.i154 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %storemerge.i159, ptr %mcc_free_index.i154, align 2
  %mcc_tag_available.i160 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 14
  %55 = ptrtoint ptr %mcc_tag_available.i160 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mcc_tag_available.i160, align 4
  %inc5.i161 = add i32 %56, 1
  store i32 %inc5.i161, ptr %mcc_tag_available.i160, align 4
  %used.i162 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 7, i32 0, i32 7
  %57 = ptrtoint ptr %used.i162 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %used.i162, align 4
  %dec.i163 = add i16 %58, -1
  store i16 %dec.i163, ptr %used.i162, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mcc_lock.i153) #9
  br label %cleanup

if.end84:                                         ; preds = %if.end43
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx, align 4
  %61 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool89.not = icmp eq i32 %61, 0
  br i1 %tobool89.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 @__beiscsi_mcc_compl_status(ptr noundef %3, i32 noundef %and, ptr noundef null, ptr noundef null)
  %mcc_lock.i164 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %mcc_lock.i164) #9
  %mcc_free_index.i165 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 13
  %62 = ptrtoint ptr %mcc_free_index.i165 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %mcc_free_index.i165, align 2
  %idxprom.i166 = zext i16 %63 to i32
  %arrayidx.i167 = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 10, i32 %idxprom.i166
  %64 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and, ptr %arrayidx.i167, align 4
  %65 = load i16, ptr %mcc_free_index.i165, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %65)
  %cmp.i168 = icmp eq i16 %65, 15
  %inc.i169 = add i16 %65, 1
  %storemerge.i170 = select i1 %cmp.i168, i16 0, i16 %inc.i169
  %66 = ptrtoint ptr %mcc_free_index.i165 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %storemerge.i170, ptr %mcc_free_index.i165, align 2
  %mcc_tag_available.i171 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 14
  %67 = ptrtoint ptr %mcc_tag_available.i171 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mcc_tag_available.i171, align 4
  %inc5.i172 = add i32 %68, 1
  store i32 %inc5.i172, ptr %mcc_tag_available.i171, align 4
  %used.i173 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 7, i32 0, i32 7
  %69 = ptrtoint ptr %used.i173 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %used.i173, align 4
  %dec.i174 = add i16 %70, -1
  store i16 %dec.i174, ptr %used.i173, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mcc_lock.i164) #9
  br label %cleanup

if.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx93 = getelementptr %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 9, i32 %and
  tail call void @__wake_up(ptr noundef %arrayidx93, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then90, %if.end83, %if.end42, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @be_mcc_notify(ptr noundef %phba, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %tag
  tail call void @_set_bit(i32 noundef 0, ptr noundef %arrayidx) #9
  %id = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %conv = zext i16 %1 to i32
  %or2 = or i32 %conv, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  tail call void @arm_heavy_mb() #9
  %db_va = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 4
  %2 = ptrtoint ptr %db_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_va, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !378
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @be_wrb_hdr_prepare(ptr nocapture noundef %wrb, i32 noundef %payload_len, i1 noundef zeroext %embedded, i8 noundef zeroext %sge_cnt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i8 %sge_cnt, 3
  %shl = zext i8 %0 to i32
  %shl.sink = select i1 %embedded, i32 1, i32 %shl
  %1 = ptrtoint ptr %wrb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wrb, align 4
  %or2 = or i32 %2, %shl.sink
  %payload_length = getelementptr %struct.be_mcc_wrb, ptr %wrb, i32 0, i32 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %or2) #9
  %4 = ptrtoint ptr %wrb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %wrb, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %payload_len) #9
  %6 = ptrtoint ptr %payload_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %payload_length, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @be_cmd_hdr_prepare(ptr nocapture noundef writeonly %req_hdr, i8 noundef zeroext %subsystem, i8 noundef zeroext %opcode, i32 noundef %cmd_len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %opcode, ptr %req_hdr, align 4
  %subsystem2 = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %req_hdr, i32 0, i32 1
  %1 = ptrtoint ptr %subsystem2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %subsystem, ptr %subsystem2, align 1
  %sub = add i32 %cmd_len, -16
  %2 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %request_length = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %req_hdr, i32 0, i32 5
  %3 = ptrtoint ptr %request_length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %request_length, align 4
  %timeout = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %req_hdr, i32 0, i32 4
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %timeout, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @wrb_from_mbox(ptr nocapture noundef readonly %mbox_mem) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_cmd_eq_create(ptr noundef %ctrl, ptr nocapture noundef %eq, i32 noundef %eq_delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1677721600, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 13, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1409286144, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %10 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eq, align 4
  %12 = ptrtoint ptr %11 to i32
  %and = and i32 %12, 4095
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %eq, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %add = add i32 %14, 4095
  %add3 = add i32 %add, %and
  %shr = lshr i32 %add3, 12
  %conv = trunc i32 %shr to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %num_pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %num_pages to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %num_pages, align 1
  %context = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 2
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devfn, align 4
  %add.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %and5 = shl i32 %20, 4
  %shl2.i = and i32 %and5, 112
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl2.i, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 536870912, ptr %context, align 4
  %len = getelementptr inbounds %struct.be_queue_info, ptr %eq, i32 0, i32 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len, align 4
  %25 = lshr i16 %24, 8
  %div = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %24)
  %tobool.not.i.i = icmp ult i16 %24, 256
  %26 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #9, !range !379
  %add.ptr.i51 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %sub.i.op.i = shl nuw nsw i32 %26, 26
  %sub.i.op.i.op = and i32 %sub.i.op.i, 469762048
  %sub.i.op.i.op.op = xor i32 %sub.i.op.i.op, 469762048
  %shl2.i53 = select i1 %tobool.not.i.i, i32 469762048, i32 %sub.i.op.i.op.op
  %27 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl2.i53, ptr %add.ptr.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eq_delay)
  %cmp.i = icmp eq i32 %eq_delay, 0
  br i1 %cmp.i, label %entry.eq_delay_to_mult.exit_crit_edge, label %if.else.i

entry.eq_delay_to_mult.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %eq_delay_to_mult.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %eq_delay)
  %cmp1.i = icmp ugt i32 %eq_delay, 1000000
  br i1 %cmp1.i, label %if.else.i.eq_delay_to_mult.exit_crit_edge, label %if.else3.i

if.else.i.eq_delay_to_mult.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %eq_delay_to_mult.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 1000000, %eq_delay
  %sub.i55 = sub nsw i32 651042, %div.i
  %mul.i = mul nsw i32 %sub.i55, 10
  %div4.i = udiv i32 %mul.i, %div.i
  %add.i = add i32 %div4.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10230, i32 %add.i)
  %cmp6.i = icmp ult i32 %add.i, 10230
  %div5.i = udiv i32 %add.i, 10
  %div5.i.op = shl i32 %div5.i, 13
  %div5.i.op.op = and i32 %div5.i.op, 8380416
  %phi.bo64 = select i1 %cmp6.i, i32 %div5.i.op.op, i32 8380416
  br label %eq_delay_to_mult.exit

eq_delay_to_mult.exit:                            ; preds = %if.else3.i, %if.else.i.eq_delay_to_mult.exit_crit_edge, %entry.eq_delay_to_mult.exit_crit_edge
  %multiplier.1.i = phi i32 [ 0, %entry.eq_delay_to_mult.exit_crit_edge ], [ %phi.bo64, %if.else3.i ], [ 8380416, %if.else.i.eq_delay_to_mult.exit_crit_edge ]
  %or.i60 = or i32 %multiplier.1.i, %shl2.i
  %28 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %context, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %context, align 4
  %incdec.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %32 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %incdec.ptr.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %35 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %incdec.ptr.i, align 4
  %incdec.ptr.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i60) #9
  %37 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %incdec.ptr.i.1, align 4
  %incdec.ptr.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %incdec.ptr.i.2, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %incdec.ptr.i.2, align 4
  %pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3
  %42 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eq, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i62 = and i32 %44, 4095
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  %add.i63 = add i32 %46, 4095
  %add2.i = add i32 %add.i63, %and.i62
  %shr.i = lshr i32 %add2.i, 12
  %47 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp423.not.i = icmp eq i32 %47, 0
  br i1 %cmp423.not.i, label %eq_delay_to_mult.exit.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i

eq_delay_to_mult.exit.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %eq_delay_to_mult.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i:                                       ; preds = %eq_delay_to_mult.exit
  %dma1.i = getelementptr inbounds %struct.be_dma_mem, ptr %eq, i32 0, i32 1
  %48 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma1.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %pages, align 4
  %hi.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %exitcond.not.i = icmp eq i32 %47, 1
  br i1 %exitcond.not.i, label %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.1

for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.1:                                     ; preds = %for.body.i
  %conv.i = zext i32 %49 to i64
  %add12.i = add nuw nsw i64 %conv.i, 4096
  %conv7.i.1 = trunc i64 %add12.i to i32
  %53 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.1) #9
  %arrayidx.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx.i.1, align 4
  %sh.diff = lshr i64 %add12.i, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %55 = and i32 %tr.sh.diff, 16777216
  %hi.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4
  %56 = ptrtoint ptr %hi.i.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hi.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %exitcond.not.i.1 = icmp eq i32 %47, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.2

for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %add12.i.1 = add nuw nsw i64 %conv.i, 8192
  %conv7.i.2 = trunc i64 %add12.i.1 to i32
  %57 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.2) #9
  %arrayidx.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx.i.2, align 4
  %sh.diff65 = lshr i64 %add12.i.1, 8
  %tr.sh.diff66 = trunc i64 %sh.diff65 to i32
  %59 = and i32 %tr.sh.diff66, 16777216
  %hi.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 2
  %60 = ptrtoint ptr %hi.i.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %hi.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %exitcond.not.i.2 = icmp eq i32 %47, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.3

for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %add12.i.2 = add nuw nsw i64 %conv.i, 12288
  %conv7.i.3 = trunc i64 %add12.i.2 to i32
  %61 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.3) #9
  %arrayidx.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5
  %62 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.i.3, align 4
  %sh.diff67 = lshr i64 %add12.i.2, 8
  %tr.sh.diff68 = trunc i64 %sh.diff67 to i32
  %63 = and i32 %tr.sh.diff68, 16777216
  %hi.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %hi.i.3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %hi.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %exitcond.not.i.3 = icmp eq i32 %47, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.4

for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %add12.i.3 = add nuw nsw i64 %conv.i, 16384
  %conv7.i.4 = trunc i64 %add12.i.3 to i32
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.4) #9
  %arrayidx.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx.i.4, align 4
  %sh.diff69 = lshr i64 %add12.i.3, 8
  %tr.sh.diff70 = trunc i64 %sh.diff69 to i32
  %67 = and i32 %tr.sh.diff70, 16777216
  %hi.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6
  %68 = ptrtoint ptr %hi.i.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %hi.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %exitcond.not.i.4 = icmp eq i32 %47, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.5

for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %add12.i.4 = add nuw nsw i64 %conv.i, 20480
  %conv7.i.5 = trunc i64 %add12.i.4 to i32
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.5) #9
  %arrayidx.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i.5, align 4
  %sh.diff71 = lshr i64 %add12.i.4, 8
  %tr.sh.diff72 = trunc i64 %sh.diff71 to i32
  %71 = and i32 %tr.sh.diff72, 16777216
  %hi.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 2
  %72 = ptrtoint ptr %hi.i.5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %hi.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %47)
  %exitcond.not.i.5 = icmp eq i32 %47, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.6

for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %add12.i.5 = add nuw nsw i64 %conv.i, 24576
  %conv7.i.6 = trunc i64 %add12.i.5 to i32
  %73 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.6) #9
  %arrayidx.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7
  %74 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx.i.6, align 4
  %sh.diff73 = lshr i64 %add12.i.5, 8
  %tr.sh.diff74 = trunc i64 %sh.diff73 to i32
  %75 = and i32 %tr.sh.diff74, 16777216
  %hi.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %hi.i.6 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %hi.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %exitcond.not.i.6 = icmp eq i32 %47, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.7

for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.6 = add nuw nsw i64 %conv.i, 28672
  %conv7.i.7 = trunc i64 %add12.i.6 to i32
  %77 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.7) #9
  %arrayidx.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7, i32 2
  %78 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx.i.7, align 4
  %sh.diff75 = lshr i64 %add12.i.6, 8
  %tr.sh.diff76 = trunc i64 %sh.diff75 to i32
  %79 = and i32 %tr.sh.diff76, 16777216
  %hi.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 8
  %80 = ptrtoint ptr %hi.i.7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %hi.i.7, align 4
  br label %be_cmd_page_addrs_prepare.exit

be_cmd_page_addrs_prepare.exit:                   ; preds = %for.body.i.7, %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, %eq_delay_to_mult.exit.be_cmd_page_addrs_prepare.exit_crit_edge
  %call24 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.then, label %be_cmd_page_addrs_prepare.exit.if.end_crit_edge

be_cmd_page_addrs_prepare.exit.if.end_crit_edge:  ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %num_pages to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %num_pages, align 1
  %83 = tail call i16 @llvm.bswap.i16(i16 %82)
  %id = getelementptr inbounds %struct.be_queue_info, ptr %eq, i32 0, i32 3
  %84 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %id, align 4
  %created = getelementptr inbounds %struct.be_queue_info, ptr %eq, i32 0, i32 6
  %85 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %created, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %be_cmd_page_addrs_prepare.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @be_mbox_notify(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %db1 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %db1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 352
  %mbox_mem2 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %2 = ptrtoint ptr %mbox_mem2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_mem2, align 4
  %call = tail call fastcc i32 @be_mbox_db_ready_poll(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #9, !srcloc !378
  %call6 = tail call fastcc i32 @be_mbox_db_ready_poll(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dma = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %6 = lshr i32 %5, 2
  %shl14 = and i32 %6, 1073741820
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl14) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #9, !srcloc !378
  %call16 = tail call fastcc i32 @be_mbox_db_ready_poll(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #9
  %compl = getelementptr inbounds %struct.be_mcc_mailbox, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %mbox_mem2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox_mem2, align 4
  %pdev.i = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %payload.i.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %10, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.be_mcc_mailbox, ptr %3, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %14, i32 0, i32 27
  %17 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.133, i32 noundef 335) #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end19
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp14.i = icmp sgt i32 %19, -1
  br i1 %cmp14.i, label %do.end27.i, label %if.end9.i.if.end33.i_crit_edge, !prof !380

if.end9.i.if.end33.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

do.end27.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 339, i32 noundef 9, ptr noundef null) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end27.i, %if.end9.i.if.end33.i_crit_edge
  %21 = ptrtoint ptr %compl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %compl, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = ptrtoint ptr %compl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %compl, align 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags.i, align 4
  %conv47.i = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv47.i)
  %cmp48.i = icmp eq i32 %conv47.i, 0
  br i1 %cmp48.i, label %if.end33.i.cleanup_crit_edge, label %do.body52.i

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body52.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr43.i = lshr i32 %23, 16
  %shost65.i = getelementptr inbounds %struct.beiscsi_hba, ptr %14, i32 0, i32 27
  %26 = ptrtoint ptr %shost65.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost65.i, align 4
  %shost_gendev66.i = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 49
  %subsystem.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %subsystem.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %subsystem.i, align 1
  %conv67.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %payload.i.i, align 4
  %conv68.i = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev66.i, ptr noundef nonnull @.str.136, i32 noundef 358, i32 noundef %conv67.i, i32 noundef %conv68.i, i32 noundef %conv47.i, i32 noundef %shr43.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body52.i, %if.end33.i.cleanup_crit_edge, %do.body.i, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call16, %if.end9.cleanup_crit_edge ], [ %conv47.i, %do.body52.i ], [ -16, %do.body.i ], [ 0, %if.end33.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_cmd_cq_create(ptr noundef %ctrl, ptr nocapture noundef %cq, ptr nocapture noundef readonly %eq, i1 noundef zeroext %sol_evts, i1 noundef zeroext %no_delay, i32 noundef %coalesce_wm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %context = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 2
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %1, align 4
  %9 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1140850688, ptr %payload_length.i, align 4
  %10 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %11 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 872415232, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %timeout.i, align 4
  %14 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cq, align 4
  %16 = ptrtoint ptr %15 to i32
  %and = and i32 %16, 4095
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %cq, i32 0, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %add = add i32 %18, 4095
  %add5 = add i32 %add, %and
  %shr = lshr i32 %add5, 12
  %conv = trunc i32 %shr to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %num_pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %num_pages to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %num_pages, align 1
  %generation = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 45
  %21 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %generation, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch = icmp eq i32 %23, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %context, align 4
  %and.i = and i32 %25, -28673
  %and1.i = shl i32 %coalesce_wm, 12
  %shl2.i = and i32 %and1.i, 12288
  %shl2.i107 = select i1 %no_delay, i32 16384, i32 0
  %or.i = or i32 %shl2.i, %shl2.i107
  %or.i108 = or i32 %or.i, %and.i
  store i32 %or.i108, ptr %context, align 4
  %len = getelementptr inbounds %struct.be_queue_info, ptr %cq, i32 0, i32 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len, align 4
  %28 = lshr i16 %27, 8
  %div = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %27)
  %tobool.not.i.i = icmp ult i16 %27, 256
  %29 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #9, !range !379
  %and.i109 = and i32 %or.i108, 134217727
  %sub.i.op.i = shl nuw i32 %29, 27
  %sub.i.op.i.op = and i32 %sub.i.op.i, 402653184
  %sub.i.op.i.op.op = xor i32 %sub.i.op.i.op, 402653184
  %shl2.i111 = select i1 %tobool.not.i.i, i32 402653184, i32 %sub.i.op.i.op.op
  %or.i112 = select i1 %sol_evts, i32 -536870912, i32 -1610612736
  %or.i114 = or i32 %or.i112, %and.i109
  %or.i120 = or i32 %or.i114, %shl2.i111
  %30 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i120, ptr %context, align 4
  %id = getelementptr inbounds %struct.be_queue_info, ptr %eq, i32 0, i32 3
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %id, align 4
  %add.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 4
  %and.i121 = and i32 %34, 1077936127
  %35 = and i16 %32, 255
  %and1.i122 = zext i16 %35 to i32
  %shl2.i123 = shl nuw nsw i32 %and1.i122, 22
  %or.i124 = or i32 %shl2.i123, %and.i121
  %or.i127 = or i32 %or.i124, -2147483648
  store i32 %or.i127, ptr %add.ptr.i, align 4
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devfn, align 4
  %add.ptr.i128 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %add.ptr.i128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i128, align 4
  %and.i129 = and i32 %41, -4081
  %and26 = shl i32 %39, 4
  %shl2.i130 = and i32 %and26, 112
  %or.i131 = or i32 %and.i129, %shl2.i130
  store i32 %or.i131, ptr %add.ptr.i128, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %version = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1
  %42 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %version, align 1
  %page_size = getelementptr inbounds %struct.be_cmd_req_cq_create, ptr %payload.i, i32 0, i32 2
  %43 = ptrtoint ptr %page_size to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %page_size, align 1
  %44 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %context, align 4
  %and.i132 = and i32 %45, -28673
  %and1.i133 = shl i32 %coalesce_wm, 12
  %shl2.i134 = and i32 %and1.i133, 12288
  %shl2.i138 = select i1 %no_delay, i32 16384, i32 0
  %or.i135 = or i32 %shl2.i134, %shl2.i138
  %or.i139 = or i32 %or.i135, %and.i132
  store i32 %or.i139, ptr %context, align 4
  %len33 = getelementptr inbounds %struct.be_queue_info, ptr %cq, i32 0, i32 1
  %46 = ptrtoint ptr %len33 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %len33, align 4
  %48 = lshr i16 %47, 8
  %div35 = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %47)
  %tobool.not.i.i140 = icmp ult i16 %47, 256
  %49 = tail call i32 @llvm.ctlz.i32(i32 %div35, i1 true) #9, !range !379
  %and.i143 = and i32 %or.i139, 1207959551
  %sub.i.op.i141 = shl nuw i32 %49, 27
  %sub.i.op.i141.op = and i32 %sub.i.op.i141, 402653184
  %sub.i.op.i141.op.op = xor i32 %sub.i.op.i141.op, 402653184
  %shl2.i145 = select i1 %tobool.not.i.i140, i32 402653184, i32 %sub.i.op.i141.op.op
  %or.i146 = or i32 %and.i143, %shl2.i145
  %or.i150 = or i32 %or.i146, -1610612736
  %50 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i150, ptr %context, align 4
  %id40 = getelementptr inbounds %struct.be_queue_info, ptr %eq, i32 0, i32 3
  %51 = ptrtoint ptr %id40 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %id40, align 4
  %conv41 = zext i16 %52 to i32
  %add.ptr.i151 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %53 = ptrtoint ptr %add.ptr.i151 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i151, align 4
  %and.i152 = and i32 %54, 2147418112
  %or.i154 = or i32 %and.i152, %conv41
  %or.i157 = or i32 %or.i154, -2147483648
  store i32 %or.i157, ptr %add.ptr.i151, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %55 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %context, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %58 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %context, align 4
  %incdec.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %59 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %incdec.ptr.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  %62 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %incdec.ptr.i, align 4
  %incdec.ptr.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %incdec.ptr.i.1, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %66 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %incdec.ptr.i.1, align 4
  %incdec.ptr.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %incdec.ptr.i.2, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %70 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %incdec.ptr.i.2, align 4
  %pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3
  %71 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cq, align 4
  %73 = ptrtoint ptr %72 to i32
  %and.i159 = and i32 %73, 4095
  %74 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size, align 4
  %add.i = add i32 %75, 4095
  %add2.i = add i32 %add.i, %and.i159
  %shr.i = lshr i32 %add2.i, 12
  %76 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp423.not.i = icmp eq i32 %76, 0
  br i1 %cmp423.not.i, label %if.end.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i

if.end.be_cmd_page_addrs_prepare.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i:                                       ; preds = %if.end
  %dma1.i = getelementptr inbounds %struct.be_dma_mem, ptr %cq, i32 0, i32 1
  %77 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma1.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  %80 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %pages, align 4
  %hi.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %exitcond.not.i = icmp eq i32 %76, 1
  br i1 %exitcond.not.i, label %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.1

for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.1:                                     ; preds = %for.body.i
  %conv.i = zext i32 %78 to i64
  %add12.i = add nuw nsw i64 %conv.i, 4096
  %conv7.i.1 = trunc i64 %add12.i to i32
  %82 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.1) #9
  %arrayidx.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 2
  %83 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx.i.1, align 4
  %sh.diff = lshr i64 %add12.i, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %84 = and i32 %tr.sh.diff, 16777216
  %hi.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4
  %85 = ptrtoint ptr %hi.i.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %hi.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %exitcond.not.i.1 = icmp eq i32 %76, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.2

for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %add12.i.1 = add nuw nsw i64 %conv.i, 8192
  %conv7.i.2 = trunc i64 %add12.i.1 to i32
  %86 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.2) #9
  %arrayidx.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx.i.2, align 4
  %sh.diff160 = lshr i64 %add12.i.1, 8
  %tr.sh.diff161 = trunc i64 %sh.diff160 to i32
  %88 = and i32 %tr.sh.diff161, 16777216
  %hi.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 2
  %89 = ptrtoint ptr %hi.i.2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %hi.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %exitcond.not.i.2 = icmp eq i32 %76, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.3

for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.2 = add nuw nsw i64 %conv.i, 12288
  %conv7.i.3 = trunc i64 %add12.i.2 to i32
  %90 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.3) #9
  %arrayidx.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5
  %91 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx.i.3, align 4
  %sh.diff162 = lshr i64 %add12.i.2, 8
  %tr.sh.diff163 = trunc i64 %sh.diff162 to i32
  %92 = and i32 %tr.sh.diff163, 16777216
  %hi.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 1
  %93 = ptrtoint ptr %hi.i.3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %hi.i.3, align 4
  br label %be_cmd_page_addrs_prepare.exit

be_cmd_page_addrs_prepare.exit:                   ; preds = %for.body.i.3, %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, %if.end.be_cmd_page_addrs_prepare.exit_crit_edge
  %call43 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %do.body

if.then45:                                        ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %num_pages to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %num_pages, align 1
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %id46 = getelementptr inbounds %struct.be_queue_info, ptr %cq, i32 0, i32 3
  %97 = ptrtoint ptr %id46 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %id46, align 4
  %created = getelementptr inbounds %struct.be_queue_info, ptr %cq, i32 0, i32 6
  %98 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %created, align 2
  br label %if.end59

do.body:                                          ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 27
  %99 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %100, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.30, i32 noundef 835, i32 noundef %call43) #12
  br label %if.end59

if.end59:                                         ; preds = %do.body, %if.then45
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_cmd_mccq_create(ptr noundef %phba, ptr nocapture noundef %mccq, ptr nocapture noundef readonly %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %mbox_mem = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %context = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1744830464, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 90, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1476395008, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %10 = ptrtoint ptr %mccq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mccq, align 4
  %12 = ptrtoint ptr %11 to i32
  %and = and i32 %12, 4095
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %mccq, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %add = add i32 %14, 4095
  %add4 = add i32 %add, %and
  %shr = lshr i32 %add4, 12
  %conv = trunc i32 %shr to i16
  %num_pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %num_pages to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %num_pages, align 1
  %async_evt_bitmap = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %async_evt_bitmap to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 131090, ptr %async_evt_bitmap, align 1
  %pcidev = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 6
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devfn, align 4
  %add.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %and9 = shl i32 %20, 14
  %shl2.i = and i32 %and9, 114688
  %or.i47 = or i32 %shl2.i, -2147483648
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i47, ptr %add.ptr.i, align 4
  %len = getelementptr inbounds %struct.be_queue_info, ptr %mccq, i32 0, i32 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len, align 4
  %conv12 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i.i = icmp eq i16 %23, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %conv12, i1 true) #9, !range !379
  %.neg = mul nuw nsw i32 %24, 983040
  %sub.i.i.op.op = and i32 %.neg, 983040
  %shl2.i49 = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i.op.op
  %25 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl2.i49, ptr %context, align 4
  %id = getelementptr inbounds %struct.be_queue_info, ptr %cq, i32 0, i32 3
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %id, align 4
  %28 = and i16 %27, 1023
  %and1.i52 = zext i16 %28 to i32
  %shl2.i53 = shl nuw i32 %and1.i52, 22
  %or.i54 = or i32 %shl2.i49, %shl2.i53
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i54) #9
  %30 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %context, align 4
  %incdec.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i47) #9
  %32 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %incdec.ptr.i, align 4
  %incdec.ptr.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %incdec.ptr.i.1, align 4
  %incdec.ptr.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3
  %34 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %incdec.ptr.i.2, align 4
  %ctrl1 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44
  %pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %mccq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mccq, align 4
  %37 = ptrtoint ptr %36 to i32
  %and.i55 = and i32 %37, 4095
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %add.i = add i32 %39, 4095
  %add2.i = add i32 %add.i, %and.i55
  %shr.i = lshr i32 %add2.i, 12
  %40 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp423.not.i = icmp eq i32 %40, 0
  br i1 %cmp423.not.i, label %entry.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i

entry.be_cmd_page_addrs_prepare.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i:                                       ; preds = %entry
  %dma1.i = getelementptr inbounds %struct.be_dma_mem, ptr %mccq, i32 0, i32 1
  %41 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma1.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %pages, align 4
  %hi.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %exitcond.not.i = icmp eq i32 %40, 1
  br i1 %exitcond.not.i, label %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.1

for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.1:                                     ; preds = %for.body.i
  %conv.i = zext i32 %42 to i64
  %add12.i = add nuw nsw i64 %conv.i, 4096
  %conv7.i.1 = trunc i64 %add12.i to i32
  %46 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.1) #9
  %arrayidx.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx.i.1, align 4
  %sh.diff = lshr i64 %add12.i, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %48 = and i32 %tr.sh.diff, 16777216
  %hi.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %hi.i.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %hi.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %exitcond.not.i.1 = icmp eq i32 %40, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.2

for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %add12.i.1 = add nuw nsw i64 %conv.i, 8192
  %conv7.i.2 = trunc i64 %add12.i.1 to i32
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.2) #9
  %arrayidx.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx.i.2, align 4
  %sh.diff57 = lshr i64 %add12.i.1, 8
  %tr.sh.diff58 = trunc i64 %sh.diff57 to i32
  %52 = and i32 %tr.sh.diff58, 16777216
  %hi.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5
  %53 = ptrtoint ptr %hi.i.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %hi.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %exitcond.not.i.2 = icmp eq i32 %40, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.3

for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %add12.i.2 = add nuw nsw i64 %conv.i, 12288
  %conv7.i.3 = trunc i64 %add12.i.2 to i32
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.3) #9
  %arrayidx.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx.i.3, align 4
  %sh.diff59 = lshr i64 %add12.i.2, 8
  %tr.sh.diff60 = trunc i64 %sh.diff59 to i32
  %56 = and i32 %tr.sh.diff60, 16777216
  %hi.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 2
  %57 = ptrtoint ptr %hi.i.3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %hi.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %exitcond.not.i.3 = icmp eq i32 %40, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.4

for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %add12.i.3 = add nuw nsw i64 %conv.i, 16384
  %conv7.i.4 = trunc i64 %add12.i.3 to i32
  %58 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.4) #9
  %arrayidx.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6
  %59 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx.i.4, align 4
  %sh.diff61 = lshr i64 %add12.i.3, 8
  %tr.sh.diff62 = trunc i64 %sh.diff61 to i32
  %60 = and i32 %tr.sh.diff62, 16777216
  %hi.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %hi.i.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %hi.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %exitcond.not.i.4 = icmp eq i32 %40, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.5

for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %add12.i.4 = add nuw nsw i64 %conv.i, 20480
  %conv7.i.5 = trunc i64 %add12.i.4 to i32
  %62 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.5) #9
  %arrayidx.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 2
  %63 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx.i.5, align 4
  %sh.diff63 = lshr i64 %add12.i.4, 8
  %tr.sh.diff64 = trunc i64 %sh.diff63 to i32
  %64 = and i32 %tr.sh.diff64, 16777216
  %hi.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7
  %65 = ptrtoint ptr %hi.i.5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %hi.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %exitcond.not.i.5 = icmp eq i32 %40, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.6

for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %add12.i.5 = add nuw nsw i64 %conv.i, 24576
  %conv7.i.6 = trunc i64 %add12.i.5 to i32
  %66 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.6) #9
  %arrayidx.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7, i32 1
  %67 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx.i.6, align 4
  %sh.diff65 = lshr i64 %add12.i.5, 8
  %tr.sh.diff66 = trunc i64 %sh.diff65 to i32
  %68 = and i32 %tr.sh.diff66, 16777216
  %hi.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7, i32 2
  %69 = ptrtoint ptr %hi.i.6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %hi.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %exitcond.not.i.6 = icmp eq i32 %40, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.7

for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.6 = add nuw nsw i64 %conv.i, 28672
  %conv7.i.7 = trunc i64 %add12.i.6 to i32
  %70 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.7) #9
  %arrayidx.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 8
  %71 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx.i.7, align 4
  %sh.diff67 = lshr i64 %add12.i.6, 8
  %tr.sh.diff68 = trunc i64 %sh.diff67 to i32
  %72 = and i32 %tr.sh.diff68, 16777216
  %hi.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %hi.i.7 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %hi.i.7, align 4
  br label %be_cmd_page_addrs_prepare.exit

be_cmd_page_addrs_prepare.exit:                   ; preds = %for.body.i.7, %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, %entry.be_cmd_page_addrs_prepare.exit_crit_edge
  %call16 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then, label %be_cmd_page_addrs_prepare.exit.if.end_crit_edge

be_cmd_page_addrs_prepare.exit.if.end_crit_edge:  ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %num_pages to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %num_pages, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %id19 = getelementptr inbounds %struct.be_queue_info, ptr %mccq, i32 0, i32 3
  %77 = ptrtoint ptr %id19 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %id19, align 4
  %created = getelementptr inbounds %struct.be_queue_info, ptr %mccq, i32 0, i32 6
  %78 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %created, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %be_cmd_page_addrs_prepare.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_cmd_q_destroy(ptr noundef %ctrl, ptr nocapture noundef readonly %q, i32 noundef %queue_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 27
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev, ptr noundef nonnull @.str.32, i32 noundef 911, i32 noundef %queue_type) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %10 = getelementptr inbounds i8, ptr %1, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %1, align 4
  %13 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 335544320, ptr %payload_length.i, align 4
  %14 = zext i32 %queue_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %queue_type, label %sw.default [
    i32 1, label %if.end.if.then18_crit_edge
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
    i32 4, label %sw.bb8
    i32 5, label %sw.bb9
    i32 6, label %sw.epilog
  ]

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/be2iscsi/be_cmds.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 944, 0\0A.popsection", ""() #9, !srcloc !381
  unreachable

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %16 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67108864, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %timeout.i, align 4
  br label %if.end20

if.then18:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %if.end.if.then18_crit_edge
  %subsys.0.ph = phi i8 [ 1, %if.end.if.then18_crit_edge ], [ 1, %sw.bb6 ], [ 1, %sw.bb7 ], [ 2, %sw.bb8 ], [ 2, %sw.bb9 ]
  %opcode.0.ph = phi i8 [ 55, %if.end.if.then18_crit_edge ], [ 54, %sw.bb6 ], [ 53, %sw.bb7 ], [ 67, %sw.bb8 ], [ 65, %sw.bb9 ]
  %19 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %opcode.0.ph, ptr %payload.i, align 4
  %subsystem2.i36 = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %20 = ptrtoint ptr %subsystem2.i36 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %subsys.0.ph, ptr %subsystem2.i36, align 1
  %request_length.i37 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %request_length.i37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 67108864, ptr %request_length.i37, align 4
  %timeout.i38 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %timeout.i38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 100, ptr %timeout.i38, align 4
  %id = getelementptr inbounds %struct.be_queue_info, ptr %q, i32 0, i32 3
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %id19 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %id19 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %id19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %sw.epilog
  %call21 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @be_cmd_create_default_pdu_queue(ptr noundef %ctrl, ptr nocapture noundef readonly %cq, ptr nocapture noundef %dq, i32 noundef %length, i32 noundef %entry_size, i8 noundef zeroext %is_header, i8 noundef zeroext %ulp_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %context = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 2
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %1, align 4
  %9 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1677721600, ptr %payload_length.i, align 4
  %10 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %11 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1409286144, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %timeout.i, align 4
  %14 = ptrtoint ptr %dq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dq, align 4
  %16 = ptrtoint ptr %15 to i32
  %and = and i32 %16, 4095
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %dq, i32 0, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %add = add i32 %18, 4095
  %add3 = add i32 %add, %and
  %shr = lshr i32 %add3, 12
  %conv = trunc i32 %shr to i16
  %num_pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %num_pages to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %conv, ptr %num_pages, align 1
  %dual_ulp_aware = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 30, i32 10
  %20 = ptrtoint ptr %dual_ulp_aware to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dual_ulp_aware, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ulp_num4 = getelementptr inbounds %struct.be_defq_create_req, ptr %payload.i, i32 0, i32 2
  %22 = ptrtoint ptr %ulp_num4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %ulp_num, ptr %ulp_num4, align 1
  %dua_feature = getelementptr inbounds %struct.be_defq_create_req, ptr %payload.i, i32 0, i32 3
  %23 = ptrtoint ptr %dua_feature to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dua_feature, align 1
  %25 = or i8 %24, 3
  store i8 %25, ptr %dua_feature, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %generation = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 45
  %26 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %generation, align 4
  %28 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch = icmp eq i32 %28, 2
  %add.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %and.i115 = and i32 %30, 4194303
  %or.i = or i32 %and.i115, -2147483648
  store i32 %or.i, ptr %add.ptr.i, align 4
  br i1 %switch, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devfn, align 4
  %and.i117 = and i32 %or.i, -2147467265
  %and20 = shl i32 %34, 14
  %shl2.i = and i32 %and20, 114688
  %or.i118 = or i32 %shl2.i, %and.i117
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i118, ptr %add.ptr.i, align 4
  %div113 = lshr i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %tobool.not.i.i = icmp ult i32 %length, 8
  %36 = tail call i32 @llvm.ctlz.i32(i32 %div113, i1 true) #9, !range !379
  %37 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %context, align 4
  %and.i119 = and i32 %38, -983041
  %.neg156 = mul nuw nsw i32 %36, 983040
  %sub.i.i.op.op = and i32 %.neg156, 983040
  %shl2.i120 = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i.op.op
  %or.i121 = or i32 %and.i119, %shl2.i120
  store i32 %or.i121, ptr %context, align 4
  %add.ptr.i122 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %add.ptr.i122 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i122, align 4
  %and.i123 = and i32 %40, -65536
  %and1.i124 = and i32 %entry_size, 65535
  %or.i125 = or i32 %and.i123, %and1.i124
  store i32 %or.i125, ptr %add.ptr.i122, align 4
  %id = getelementptr inbounds %struct.be_queue_info, ptr %cq, i32 0, i32 3
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id, align 4
  %and.i127 = and i32 %or.i125, -67043329
  %43 = and i16 %42, 1023
  br label %if.end35

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div29112 = lshr i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %tobool.not.i.i136 = icmp ult i32 %length, 8
  %44 = tail call i32 @llvm.ctlz.i32(i32 %div29112, i1 true) #9, !range !379
  %45 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %context, align 4
  %and.i141 = and i32 %46, -983041
  %.neg = mul nuw nsw i32 %44, 983040
  %sub.i.i137.op.op = and i32 %.neg, 983040
  %shl2.i143 = select i1 %tobool.not.i.i136, i32 0, i32 %sub.i.i137.op.op
  %or.i144 = or i32 %and.i141, %shl2.i143
  store i32 %or.i144, ptr %context, align 4
  %add.ptr.i145 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %add.ptr.i145 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i145, align 4
  %and.i146 = and i32 %48, -65536
  %and1.i147 = and i32 %entry_size, 65535
  %or.i148 = or i32 %and.i146, %and1.i147
  store i32 %or.i148, ptr %add.ptr.i145, align 4
  %id33 = getelementptr inbounds %struct.be_queue_info, ptr %cq, i32 0, i32 3
  %49 = ptrtoint ptr %id33 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %id33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then15
  %.sink = phi i16 [ %50, %if.else ], [ %43, %if.then15 ]
  %and1.i147.sink = phi i32 [ %and1.i147, %if.else ], [ %and.i127, %if.then15 ]
  %add.ptr.i145.sink = phi ptr [ %add.ptr.i145, %if.else ], [ %add.ptr.i122, %if.then15 ]
  %conv34 = zext i16 %.sink to i32
  %shl2.i152 = shl nuw i32 %conv34, 16
  %or.i153 = or i32 %shl2.i152, %and1.i147.sink
  %51 = ptrtoint ptr %add.ptr.i145.sink to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i153, ptr %add.ptr.i145.sink, align 4
  %52 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %context, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %55 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %context, align 4
  %incdec.ptr.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %56 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  %59 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %incdec.ptr.i, align 4
  %incdec.ptr.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %incdec.ptr.i.1, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  %63 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %incdec.ptr.i.1, align 4
  %incdec.ptr.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %incdec.ptr.i.2, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #9
  %67 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %incdec.ptr.i.2, align 4
  %pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3
  %68 = ptrtoint ptr %dq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dq, align 4
  %70 = ptrtoint ptr %69 to i32
  %and.i154 = and i32 %70, 4095
  %71 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size, align 4
  %add.i = add i32 %72, 4095
  %add2.i = add i32 %add.i, %and.i154
  %shr.i = lshr i32 %add2.i, 12
  %73 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp423.not.i = icmp eq i32 %73, 0
  br i1 %cmp423.not.i, label %if.end35.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i

if.end35.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i:                                       ; preds = %if.end35
  %dma1.i = getelementptr inbounds %struct.be_dma_mem, ptr %dq, i32 0, i32 1
  %74 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma1.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  %77 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %pages, align 4
  %hi.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %exitcond.not.i = icmp eq i32 %73, 1
  br i1 %exitcond.not.i, label %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.1

for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.1:                                     ; preds = %for.body.i
  %conv.i = zext i32 %75 to i64
  %add12.i = add nuw nsw i64 %conv.i, 4096
  %conv7.i.1 = trunc i64 %add12.i to i32
  %79 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.1) #9
  %arrayidx.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 2
  %80 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx.i.1, align 4
  %sh.diff = lshr i64 %add12.i, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %81 = and i32 %tr.sh.diff, 16777216
  %hi.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4
  %82 = ptrtoint ptr %hi.i.1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %hi.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %exitcond.not.i.1 = icmp eq i32 %73, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.2

for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %add12.i.1 = add nuw nsw i64 %conv.i, 8192
  %conv7.i.2 = trunc i64 %add12.i.1 to i32
  %83 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.2) #9
  %arrayidx.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx.i.2, align 4
  %sh.diff158 = lshr i64 %add12.i.1, 8
  %tr.sh.diff159 = trunc i64 %sh.diff158 to i32
  %85 = and i32 %tr.sh.diff159, 16777216
  %hi.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 2
  %86 = ptrtoint ptr %hi.i.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %hi.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %exitcond.not.i.2 = icmp eq i32 %73, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.3

for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %add12.i.2 = add nuw nsw i64 %conv.i, 12288
  %conv7.i.3 = trunc i64 %add12.i.2 to i32
  %87 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.3) #9
  %arrayidx.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5
  %88 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx.i.3, align 4
  %sh.diff160 = lshr i64 %add12.i.2, 8
  %tr.sh.diff161 = trunc i64 %sh.diff160 to i32
  %89 = and i32 %tr.sh.diff161, 16777216
  %hi.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 1
  %90 = ptrtoint ptr %hi.i.3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %hi.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %exitcond.not.i.3 = icmp eq i32 %73, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.4

for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %add12.i.3 = add nuw nsw i64 %conv.i, 16384
  %conv7.i.4 = trunc i64 %add12.i.3 to i32
  %91 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.4) #9
  %arrayidx.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 2
  %92 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx.i.4, align 4
  %sh.diff162 = lshr i64 %add12.i.3, 8
  %tr.sh.diff163 = trunc i64 %sh.diff162 to i32
  %93 = and i32 %tr.sh.diff163, 16777216
  %hi.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6
  %94 = ptrtoint ptr %hi.i.4 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %hi.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %73)
  %exitcond.not.i.4 = icmp eq i32 %73, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.5

for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %add12.i.4 = add nuw nsw i64 %conv.i, 20480
  %conv7.i.5 = trunc i64 %add12.i.4 to i32
  %95 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.5) #9
  %arrayidx.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 1
  %96 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx.i.5, align 4
  %sh.diff164 = lshr i64 %add12.i.4, 8
  %tr.sh.diff165 = trunc i64 %sh.diff164 to i32
  %97 = and i32 %tr.sh.diff165, 16777216
  %hi.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 2
  %98 = ptrtoint ptr %hi.i.5 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %hi.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %73)
  %exitcond.not.i.5 = icmp eq i32 %73, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.6

for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %add12.i.5 = add nuw nsw i64 %conv.i, 24576
  %conv7.i.6 = trunc i64 %add12.i.5 to i32
  %99 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.6) #9
  %arrayidx.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7
  %100 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx.i.6, align 4
  %sh.diff166 = lshr i64 %add12.i.5, 8
  %tr.sh.diff167 = trunc i64 %sh.diff166 to i32
  %101 = and i32 %tr.sh.diff167, 16777216
  %hi.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7, i32 1
  %102 = ptrtoint ptr %hi.i.6 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %hi.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %73)
  %exitcond.not.i.6 = icmp eq i32 %73, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.7

for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.6 = add nuw nsw i64 %conv.i, 28672
  %conv7.i.7 = trunc i64 %add12.i.6 to i32
  %103 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.7) #9
  %arrayidx.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7, i32 2
  %104 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx.i.7, align 4
  %sh.diff168 = lshr i64 %add12.i.6, 8
  %tr.sh.diff169 = trunc i64 %sh.diff168 to i32
  %105 = and i32 %tr.sh.diff169, 16777216
  %hi.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 8
  %106 = ptrtoint ptr %hi.i.7 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %hi.i.7, align 4
  br label %be_cmd_page_addrs_prepare.exit

be_cmd_page_addrs_prepare.exit:                   ; preds = %for.body.i.7, %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, %if.end35.be_cmd_page_addrs_prepare.exit_crit_edge
  %call36 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %be_cmd_page_addrs_prepare.exit.if.end63_crit_edge

be_cmd_page_addrs_prepare.exit.if.end63_crit_edge: ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then38:                                        ; preds = %be_cmd_page_addrs_prepare.exit
  %107 = ptrtoint ptr %num_pages to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %num_pages, align 1
  %109 = tail call i16 @llvm.bswap.i16(i16 %108)
  %id41 = getelementptr inbounds %struct.be_queue_info, ptr %dq, i32 0, i32 3
  %110 = ptrtoint ptr %id41 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %id41, align 4
  %created = getelementptr inbounds %struct.be_queue_info, ptr %dq, i32 0, i32 6
  %111 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %created, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_header)
  %tobool42.not = icmp eq i8 %is_header, 0
  %phwi_ctrlr45 = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 1
  %112 = ptrtoint ptr %phwi_ctrlr45 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phwi_ctrlr45, align 4
  %idxprom46 = zext i8 %ulp_num to i32
  %arrayidx = getelementptr %struct.hwi_controller, ptr %113, i32 0, i32 1, i32 %idxprom46
  %arrayidx47 = getelementptr %struct.hwi_controller, ptr %113, i32 0, i32 2, i32 %idxprom46
  %defq_ring.0 = select i1 %tobool42.not, ptr %arrayidx47, ptr %arrayidx
  %conv50 = zext i16 %109 to i32
  %id51 = getelementptr inbounds %struct.be_ring, ptr %defq_ring.0, i32 0, i32 1
  %114 = ptrtoint ptr %id51 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv50, ptr %id51, align 4
  %115 = ptrtoint ptr %dual_ulp_aware to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %dual_ulp_aware, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool54.not = icmp eq i16 %116, 0
  br i1 %tobool54.not, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %ulp_num56 = getelementptr inbounds %struct.be_ring, ptr %defq_ring.0, i32 0, i32 6
  %117 = ptrtoint ptr %ulp_num56 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %ulp_num56, align 4
  br label %if.end63.sink.split

if.else57:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %ulp_num58 = getelementptr inbounds %struct.be_defq_create_resp, ptr %payload.i, i32 0, i32 3
  %118 = ptrtoint ptr %ulp_num58 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ulp_num58, align 1
  %ulp_num59 = getelementptr inbounds %struct.be_ring, ptr %defq_ring.0, i32 0, i32 6
  %120 = ptrtoint ptr %ulp_num59 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %ulp_num59, align 4
  %121 = ptrtoint ptr %context to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %context, align 1
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.else57, %if.then55
  %.sink157 = phi i32 [ 160, %if.then55 ], [ %122, %if.else57 ]
  %doorbell_offset = getelementptr inbounds %struct.be_ring, ptr %defq_ring.0, i32 0, i32 9
  %123 = ptrtoint ptr %doorbell_offset to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.sink157, ptr %doorbell_offset, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %be_cmd_page_addrs_prepare.exit.if.end63_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @be_cmd_wrbq_create(ptr noundef %ctrl, ptr nocapture noundef readonly %q_mem, ptr nocapture noundef writeonly %wrbq, ptr nocapture noundef writeonly %pwrb_context, i8 noundef zeroext %ulp_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %1, align 4
  %9 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1409286144, ptr %payload_length.i, align 4
  %10 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 66, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %11 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1140850688, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %timeout.i, align 4
  %14 = ptrtoint ptr %q_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q_mem, align 4
  %16 = ptrtoint ptr %15 to i32
  %and = and i32 %16, 4095
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %q_mem, i32 0, i32 2
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %add = add i32 %18, 4095
  %add4 = add i32 %add, %and
  %shr = lshr i32 %add4, 12
  %conv = trunc i32 %shr to i16
  %num_pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %num_pages to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %conv, ptr %num_pages, align 1
  %dual_ulp_aware = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 30, i32 10
  %20 = ptrtoint ptr %dual_ulp_aware to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dual_ulp_aware, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ulp_num5 = getelementptr inbounds %struct.be_wrbq_create_req, ptr %payload.i, i32 0, i32 2
  %22 = ptrtoint ptr %ulp_num5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %ulp_num, ptr %ulp_num5, align 1
  %dua_feature = getelementptr inbounds %struct.be_wrbq_create_req, ptr %payload.i, i32 0, i32 3
  %23 = ptrtoint ptr %dua_feature to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dua_feature, align 1
  %25 = or i8 %24, 3
  store i8 %25, ptr %dua_feature, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %q_mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %q_mem, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i = and i32 %28, 4095
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  %add.i = add i32 %30, 4095
  %add2.i = add i32 %add.i, %and.i
  %shr.i = lshr i32 %add2.i, 12
  %31 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp423.not.i = icmp eq i32 %31, 0
  br i1 %cmp423.not.i, label %if.end.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i

if.end.be_cmd_page_addrs_prepare.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i:                                       ; preds = %if.end
  %dma1.i = getelementptr inbounds %struct.be_dma_mem, ptr %q_mem, i32 0, i32 1
  %32 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma1.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %35 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pages, align 4
  %hi.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %36 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %hi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %exitcond.not.i = icmp eq i32 %31, 1
  br i1 %exitcond.not.i, label %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.1

for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.1:                                     ; preds = %for.body.i
  %conv.i = zext i32 %33 to i64
  %add12.i = add nuw nsw i64 %conv.i, 4096
  %conv7.i.1 = trunc i64 %add12.i to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.1) #9
  %arrayidx.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.i.1, align 4
  %sh.diff = lshr i64 %add12.i, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %39 = and i32 %tr.sh.diff, 16777216
  %hi.i.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %hi.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %hi.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %exitcond.not.i.1 = icmp eq i32 %31, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.2

for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %add12.i.1 = add nuw nsw i64 %conv.i, 8192
  %conv7.i.2 = trunc i64 %add12.i.1 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.2) #9
  %arrayidx.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx.i.2, align 4
  %sh.diff54 = lshr i64 %add12.i.1, 8
  %tr.sh.diff55 = trunc i64 %sh.diff54 to i32
  %43 = and i32 %tr.sh.diff55, 16777216
  %hi.i.2 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %hi.i.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %hi.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %exitcond.not.i.2 = icmp eq i32 %31, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.3

for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %add12.i.2 = add nuw nsw i64 %conv.i, 12288
  %conv7.i.3 = trunc i64 %add12.i.2 to i32
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.3) #9
  %arrayidx.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i.3, align 4
  %sh.diff56 = lshr i64 %add12.i.2, 8
  %tr.sh.diff57 = trunc i64 %sh.diff56 to i32
  %47 = and i32 %tr.sh.diff57, 16777216
  %hi.i.3 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4
  %48 = ptrtoint ptr %hi.i.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %hi.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %exitcond.not.i.3 = icmp eq i32 %31, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.4

for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %add12.i.3 = add nuw nsw i64 %conv.i, 16384
  %conv7.i.4 = trunc i64 %add12.i.3 to i32
  %49 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.4) #9
  %arrayidx.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx.i.4, align 4
  %sh.diff58 = lshr i64 %add12.i.3, 8
  %tr.sh.diff59 = trunc i64 %sh.diff58 to i32
  %51 = and i32 %tr.sh.diff59, 16777216
  %hi.i.4 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %hi.i.4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %hi.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %exitcond.not.i.4 = icmp eq i32 %31, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.5

for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %add12.i.4 = add nuw nsw i64 %conv.i, 20480
  %conv7.i.5 = trunc i64 %add12.i.4 to i32
  %53 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.5) #9
  %arrayidx.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx.i.5, align 4
  %sh.diff60 = lshr i64 %add12.i.4, 8
  %tr.sh.diff61 = trunc i64 %sh.diff60 to i32
  %55 = and i32 %tr.sh.diff61, 16777216
  %hi.i.5 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %hi.i.5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hi.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %exitcond.not.i.5 = icmp eq i32 %31, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.6

for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %add12.i.5 = add nuw nsw i64 %conv.i, 24576
  %conv7.i.6 = trunc i64 %add12.i.5 to i32
  %57 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.6) #9
  %arrayidx.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 5, i32 2
  %58 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx.i.6, align 4
  %sh.diff62 = lshr i64 %add12.i.5, 8
  %tr.sh.diff63 = trunc i64 %sh.diff62 to i32
  %59 = and i32 %tr.sh.diff63, 16777216
  %hi.i.6 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6
  %60 = ptrtoint ptr %hi.i.6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %hi.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %31)
  %exitcond.not.i.6 = icmp eq i32 %31, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.7

for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %add12.i.6 = add nuw nsw i64 %conv.i, 28672
  %conv7.i.7 = trunc i64 %add12.i.6 to i32
  %61 = tail call i32 @llvm.bswap.i32(i32 %conv7.i.7) #9
  %arrayidx.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.i.7, align 4
  %sh.diff64 = lshr i64 %add12.i.6, 8
  %tr.sh.diff65 = trunc i64 %sh.diff64 to i32
  %63 = and i32 %tr.sh.diff65, 16777216
  %hi.i.7 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 2
  %64 = ptrtoint ptr %hi.i.7 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %hi.i.7, align 4
  br label %be_cmd_page_addrs_prepare.exit

be_cmd_page_addrs_prepare.exit:                   ; preds = %for.body.i.7, %for.body.i.6.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.5.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.4.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.3.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.2.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.1.be_cmd_page_addrs_prepare.exit_crit_edge, %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, %if.end.be_cmd_page_addrs_prepare.exit_crit_edge
  %call12 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %be_cmd_page_addrs_prepare.exit.if.end27_crit_edge

be_cmd_page_addrs_prepare.exit.if.end27_crit_edge: ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then14:                                        ; preds = %be_cmd_page_addrs_prepare.exit
  %65 = ptrtoint ptr %num_pages to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %num_pages, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %id = getelementptr inbounds %struct.be_queue_info, ptr %wrbq, i32 0, i32 3
  %68 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %id, align 4
  %created = getelementptr inbounds %struct.be_queue_info, ptr %wrbq, i32 0, i32 6
  %69 = ptrtoint ptr %created to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %created, align 2
  %cid16 = getelementptr inbounds %struct.hwi_wrb_context, ptr %pwrb_context, i32 0, i32 7
  %70 = ptrtoint ptr %cid16 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %67, ptr %cid16, align 2
  %71 = ptrtoint ptr %dual_ulp_aware to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %dual_ulp_aware, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool19.not = icmp eq i16 %72, 0
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %doorbell_offset = getelementptr inbounds %struct.hwi_wrb_context, ptr %pwrb_context, i32 0, i32 9
  %73 = ptrtoint ptr %doorbell_offset to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 64, ptr %doorbell_offset, align 4
  %ulp_num21 = getelementptr inbounds %struct.hwi_wrb_context, ptr %pwrb_context, i32 0, i32 8
  %74 = ptrtoint ptr %ulp_num21 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %ulp_num21, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %ulp_num22 = getelementptr inbounds %struct.be_wrbq_create_resp, ptr %payload.i, i32 0, i32 3
  %75 = ptrtoint ptr %ulp_num22 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ulp_num22, align 1
  %ulp_num23 = getelementptr inbounds %struct.hwi_wrb_context, ptr %pwrb_context, i32 0, i32 8
  %77 = ptrtoint ptr %ulp_num23 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %ulp_num23, align 4
  %78 = ptrtoint ptr %pages to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %pages, align 1
  %doorbell_offset25 = getelementptr inbounds %struct.hwi_wrb_context, ptr %pwrb_context, i32 0, i32 9
  %80 = ptrtoint ptr %doorbell_offset25 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %doorbell_offset25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then20, %be_cmd_page_addrs_prepare.exit.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @be_cmd_iscsi_post_template_hdr(ptr noundef %ctrl, ptr nocapture noundef readonly %q_mem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1409286144, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1677721600, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %10 = ptrtoint ptr %q_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q_mem, align 4
  %12 = ptrtoint ptr %11 to i32
  %and = and i32 %12, 4095
  %size = getelementptr inbounds %struct.be_dma_mem, ptr %q_mem, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %add = add i32 %14, 4095
  %add2 = add i32 %add, %and
  %shr = lshr i32 %add2, 12
  %conv = trunc i32 %shr to i16
  %num_pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %num_pages to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %num_pages, align 1
  %type = getelementptr inbounds %struct.be_post_template_pages_req, ptr %payload.i, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 1, ptr %type, align 1
  %pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 2
  %17 = load ptr, ptr %q_mem, align 4
  %18 = ptrtoint ptr %17 to i32
  %and.i = and i32 %18, 4095
  %19 = load i32, ptr %size, align 4
  %add.i = add i32 %19, 4095
  %add2.i = add i32 %add.i, %and.i
  %shr.i = lshr i32 %add2.i, 12
  %20 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp423.not.i = icmp eq i32 %20, 0
  br i1 %cmp423.not.i, label %entry.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.preheader.i

entry.be_cmd_page_addrs_prepare.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.preheader.i:                             ; preds = %entry
  %dma1.i = getelementptr inbounds %struct.be_dma_mem, ptr %q_mem, i32 0, i32 1
  %21 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma1.i, align 4
  %conv.i = zext i32 %22 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma.024.i = phi i64 [ %add12.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %conv7.i = trunc i64 %dma.024.i to i32
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv7.i) #9
  %arrayidx.i = getelementptr %struct.phys_addr, ptr %pages, i32 %i.025.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %shr8.i = lshr i64 %dma.024.i, 32
  %conv10.i = trunc i64 %shr8.i to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv10.i) #9
  %hi.i = getelementptr %struct.phys_addr, ptr %pages, i32 %i.025.i, i32 1
  %26 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %hi.i, align 4
  %add12.i = add nuw nsw i64 %dma.024.i, 4096
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %20
  br i1 %exitcond.not.i, label %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

be_cmd_page_addrs_prepare.exit:                   ; preds = %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, %entry.be_cmd_page_addrs_prepare.exit_crit_edge
  %call3 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @be_cmd_iscsi_remove_template_hdr(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 335544320, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 25, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67108864, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %type = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 1, ptr %type, align 1
  %call2 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @be_cmd_iscsi_post_sgl_pages(ptr noundef %ctrl, ptr nocapture noundef %q_mem, i32 noundef %page_offset, i32 noundef %num_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %num_pages)
  %cmp = icmp eq i32 %num_pages, 255
  %spec.store.select = select i1 %cmp, i32 1, i32 %num_pages
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %num_pages4 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %page_offset6 = getelementptr inbounds %struct.be_post_sgl_pages_req, ptr %payload.i, i32 0, i32 2
  %pages = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.be_dma_mem, ptr %q_mem, i32 0, i32 2
  %dma = getelementptr inbounds %struct.be_dma_mem, ptr %q_mem, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  br label %do.body

do.body:                                          ; preds = %do.cond39.do.body_crit_edge, %entry
  %num_pages.addr.0 = phi i32 [ %spec.store.select, %entry ], [ %sub, %do.cond39.do.body_crit_edge ]
  %page_offset.addr.0 = phi i32 [ %page_offset, %entry ], [ %add17, %do.cond39.do.body_crit_edge ]
  %7 = call ptr @memset(ptr %6, i32 0, i32 248)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %1, align 4
  %9 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -335544320, ptr %payload_length.i, align 4
  %10 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %payload.i, align 4
  %11 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %subsystem2.i, align 1
  %12 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -603979776, ptr %request_length.i, align 4
  %13 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %timeout.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %num_pages.addr.0, i32 26)
  %conv = trunc i32 %14 to i16
  %15 = ptrtoint ptr %num_pages4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %num_pages4, align 1
  %conv5 = trunc i32 %page_offset.addr.0 to i16
  %16 = ptrtoint ptr %page_offset6 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %conv5, ptr %page_offset6, align 1
  %17 = ptrtoint ptr %q_mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q_mem, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i = and i32 %19, 4095
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  %add.i = add i32 %21, 4095
  %add2.i = add i32 %add.i, %and.i
  %shr.i = lshr i32 %add2.i, 12
  %22 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp423.not.i = icmp eq i32 %22, 0
  br i1 %cmp423.not.i, label %do.body.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.preheader.i

do.body.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

for.body.preheader.i:                             ; preds = %do.body
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma, align 4
  %conv.i = zext i32 %24 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma.024.i = phi i64 [ %add12.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %conv7.i = trunc i64 %dma.024.i to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv7.i) #9
  %arrayidx.i = getelementptr %struct.phys_addr, ptr %pages, i32 %i.025.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %shr8.i = lshr i64 %dma.024.i, 32
  %conv10.i = trunc i64 %shr8.i to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv10.i) #9
  %hi.i = getelementptr %struct.phys_addr, ptr %pages, i32 %i.025.i, i32 1
  %28 = ptrtoint ptr %hi.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %hi.i, align 4
  %add12.i = add nuw nsw i64 %dma.024.i, 4096
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %be_cmd_page_addrs_prepare.exit

be_cmd_page_addrs_prepare.exit:                   ; preds = %for.body.i.be_cmd_page_addrs_prepare.exit_crit_edge, %do.body.be_cmd_page_addrs_prepare.exit_crit_edge
  %29 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma, align 4
  %31 = ptrtoint ptr %num_pages4 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %num_pages4, align 1
  %conv10 = zext i16 %32 to i32
  %mul = shl nuw nsw i32 %conv10, 12
  %add = add i32 %mul, %30
  store i32 %add, ptr %dma, align 4
  %33 = load i16, ptr %num_pages4, align 1
  %conv13 = zext i16 %33 to i32
  %add17 = add i32 %page_offset.addr.0, %conv13
  %sub = sub i32 %num_pages.addr.0, %conv13
  br i1 %cmp, label %if.then22, label %be_cmd_page_addrs_prepare.exit.if.end25_crit_edge

be_cmd_page_addrs_prepare.exit.if.end25_crit_edge: ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %be_cmd_page_addrs_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %num_pages4 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 255, ptr %num_pages4, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %be_cmd_page_addrs_prepare.exit.if.end25_crit_edge
  %call26 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %do.cond39, label %do.body28

do.body28:                                        ; preds = %if.end25
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 27
  %35 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.34, i32 noundef 1205) #12
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  %37 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbox_mem, align 4
  %payload.i.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 8
  %41 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i.i, align 4
  %attr_log_enable.i = getelementptr inbounds %struct.beiscsi_hba, ptr %42, i32 0, i32 48
  %43 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %attr_log_enable.i, align 4
  %and.i78 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i = icmp eq i32 %and.i78, 0
  br i1 %tobool.not.i, label %do.body28.beiscsi_cmd_q_destroy.exit_crit_edge, label %do.end.i

do.body28.beiscsi_cmd_q_destroy.exit_crit_edge:   ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %beiscsi_cmd_q_destroy.exit

do.end.i:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %42, i32 0, i32 27
  %45 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.32, i32 noundef 911, i32 noundef 6) #12
  br label %beiscsi_cmd_q_destroy.exit

beiscsi_cmd_q_destroy.exit:                       ; preds = %do.end.i, %do.body28.beiscsi_cmd_q_destroy.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %47 = getelementptr inbounds i8, ptr %38, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 248)
  %payload_length.i.i = getelementptr %struct.be_mcc_wrb, ptr %38, i32 0, i32 1
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16777216, ptr %38, align 4
  %50 = ptrtoint ptr %payload_length.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 335544320, ptr %payload_length.i.i, align 4
  %51 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %payload.i.i, align 4
  %subsystem2.i.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %subsystem2.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %subsystem2.i.i, align 1
  %request_length.i.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %38, i32 0, i32 5, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %request_length.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 67108864, ptr %request_length.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %38, i32 0, i32 5, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 100, ptr %timeout.i.i, align 4
  %call21.i = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl) #9
  br label %if.end48

do.cond39:                                        ; preds = %if.end25
  %cmp40.not = icmp eq i32 %sub, 0
  br i1 %cmp40.not, label %do.cond39.if.end48_crit_edge, label %do.cond39.do.body_crit_edge

do.cond39.do.body_crit_edge:                      ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond39.if.end48_crit_edge:                     ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %do.cond39.if.end48_crit_edge, %beiscsi_cmd_q_destroy.exit
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @be_cmd_set_vlan(ptr noundef %phba, i16 noundef zeroext %vlan_tag) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #9
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tag, align 4, !annotation !382
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @alloc_mcc_wrb(ptr noundef %phba, ptr noundef nonnull %tag)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call2, i32 0, i32 5
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call2, align 4
  %or2.i = or i32 %2, 1
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %call2, i32 0, i32 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #9
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call2, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call2, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 134217728, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %call2, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %interface_handle = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 46
  %10 = ptrtoint ptr %interface_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface_handle, align 4
  %interface_hndl = getelementptr inbounds %struct.be_mcc_wrb, ptr %call2, i32 0, i32 5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %interface_hndl to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %interface_hndl, align 1
  %conv = zext i16 %vlan_tag to i32
  %vlan_priority = getelementptr inbounds %struct.be_mcc_wrb, ptr %call2, i32 0, i32 5, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %vlan_priority to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %conv, ptr %vlan_priority, align 1
  %14 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tag, align 4
  %arrayidx.i = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 15, i32 %15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %arrayidx.i) #9
  %id.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 7, i32 0, i32 3
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %17 to i32
  %or2.i21 = or i32 %conv.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  tail call void @arm_heavy_mb() #9
  %db_va.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 4
  %18 = ptrtoint ptr %db_va.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_va.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or2.i21) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #9, !srcloc !378
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %15, %if.end6 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_check_supported_fw(ptr noundef %ctrl, ptr nocapture noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd) #9
  %0 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd, align 4, !annotation !382
  %1 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !382
  %3 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !382
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %5 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbox_mem, align 4
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 556, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #9
  %9 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %nonemb_cmd, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %10 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.36, i32 noundef 1273, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 556, ptr %3, align 4
  %13 = call ptr @memset(ptr %call.i, i32 0, i32 556)
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %14 = getelementptr inbounds i8, ptr %6, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 134217728, ptr %6, align 4
  %17 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 738328576, ptr %payload_length.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %call.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 469893120, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100, ptr %timeout.i, align 4
  %pa_hi = getelementptr inbounds %struct.be_mcc_wrb, ptr %6, i32 0, i32 5, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pa_hi, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %payload.i, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %len = getelementptr inbounds %struct.be_mcc_wrb, ptr %6, i32 0, i32 5, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %len, align 4
  %call17 = call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %do.body64

if.then19:                                        ; preds = %if.end10
  %31 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nonemb_cmd, align 4
  %attr_log_enable23 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %33 = ptrtoint ptr %attr_log_enable23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attr_log_enable23, align 4
  %and24 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then19.if.end35_crit_edge, label %do.end29

if.then19.if.end35_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end29:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %shost30 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %35 = ptrtoint ptr %shost30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %shost30, align 4
  %shost_gendev31 = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 49
  %params = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, ptr %32, i32 0, i32 1
  %firmware_version_string = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, ptr %32, i32 0, i32 1, i32 0, i32 14
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev31, ptr noundef nonnull @.str.39, i32 noundef 1298, ptr noundef %params, ptr noundef %firmware_version_string) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.then19.if.end35_crit_edge
  %iscsi_features = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, ptr %32, i32 0, i32 1, i32 0, i32 33
  %37 = ptrtoint ptr %iscsi_features to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %iscsi_features, align 1
  %conv40 = zext i8 %38 to i16
  %iscsi_features41 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 9
  %39 = ptrtoint ptr %iscsi_features41 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv40, ptr %iscsi_features41, align 4
  %40 = ptrtoint ptr %attr_log_enable23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %attr_log_enable23, align 4
  %and45 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end35.if.end56_crit_edge, label %do.end50

if.end35.if.end56_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end50:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %shost51 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %42 = ptrtoint ptr %shost51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shost51, align 4
  %shost_gendev52 = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 49
  %conv55 = zext i8 %38 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev52, ptr noundef nonnull @.str.42, i32 noundef 1304, i32 noundef %conv55) #12
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.end35.if.end56_crit_edge
  %fw_ver_str = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 42
  %firmware_version_string62 = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, ptr %32, i32 0, i32 1, i32 0, i32 14
  %44 = call ptr @memcpy(ptr %fw_ver_str, ptr %firmware_version_string62, i32 32)
  br label %if.end82

do.body64:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %shost77 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %45 = ptrtoint ptr %shost77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shost77, align 4
  %shost_gendev78 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev78, ptr noundef nonnull @.str.45, i32 noundef 1309) #12
  br label %if.end82

if.end82:                                         ; preds = %do.body64, %if.end56
  call void @mutex_unlock(ptr noundef %mbox_lock) #9
  %47 = ptrtoint ptr %nonemb_cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nonemb_cmd, align 4
  %tobool85.not = icmp eq ptr %48, null
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %if.then86

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %dev88, i32 noundef %52, ptr noundef nonnull %48, i32 noundef %54, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end82.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -12, %do.body ], [ %call17, %if.then86 ], [ %call17, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_get_fw_config(ptr noundef %ctrl, ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1409286144, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 58, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -872415232, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %call2 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %10 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.47, i32 noundef 1349) #12
  br label %fail_init

if.end9:                                          ; preds = %entry
  %phys_port = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %phys_port to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %phys_port, align 1
  %fw_config = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30
  %14 = ptrtoint ptr %fw_config to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fw_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp13 = icmp ugt i32 %13, 3
  br i1 %cmp13, label %do.body16, label %if.end36

do.body16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %shost29 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %15 = ptrtoint ptr %shost29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost29, align 4
  %shost_gendev30 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev30, ptr noundef nonnull @.str.50, i32 noundef 1358, i32 noundef %13) #12
  br label %fail_init

if.end36:                                         ; preds = %if.end9
  %generation = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 45
  %17 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %generation, align 4
  %19 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch = icmp eq i32 %19, 2
  br i1 %switch, label %if.end36.if.end128_crit_edge, label %if.then43

if.end36.if.end128_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then43:                                        ; preds = %if.end36
  %eqid_count = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %eqid_count to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %eqid_count, align 1
  %eqid_count45 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 1
  %22 = ptrtoint ptr %eqid_count45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %eqid_count45, align 4
  %cqid_count = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 12
  %23 = ptrtoint ptr %cqid_count to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %cqid_count, align 1
  %cqid_count47 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 2
  %25 = ptrtoint ptr %cqid_count47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cqid_count47, align 4
  %26 = add i32 %21, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %26)
  %27 = icmp ult i32 %26, -2048
  br i1 %27, label %do.body58, label %if.end78

do.body58:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %shost71 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %28 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shost71, align 4
  %shost_gendev72 = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev72, ptr noundef nonnull @.str.53, i32 noundef 1370, i32 noundef %21) #12
  br label %fail_init

if.end78:                                         ; preds = %if.then43
  %30 = add i32 %24, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %30)
  %31 = icmp ult i32 %30, -4096
  br i1 %31, label %do.body89, label %do.body110

do.body89:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %shost102 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %32 = ptrtoint ptr %shost102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shost102, align 4
  %shost_gendev103 = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev103, ptr noundef nonnull @.str.56, i32 noundef 1377, i32 noundef %24) #12
  br label %fail_init

do.body110:                                       ; preds = %if.end78
  %attr_log_enable112 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %34 = ptrtoint ptr %attr_log_enable112 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %attr_log_enable112, align 4
  %and113 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body110.if.end128_crit_edge, label %do.end118

do.body110.if.end128_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

do.end118:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  %shost119 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %36 = ptrtoint ptr %shost119 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shost119, align 4
  %shost_gendev120 = getelementptr inbounds %struct.Scsi_Host, ptr %37, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev120, ptr noundef nonnull @.str.59, i32 noundef 1383, i32 noundef %21, i32 noundef %24) #12
  br label %if.end128

if.end128:                                        ; preds = %do.end118, %do.body110.if.end128_crit_edge, %if.end36.if.end128_crit_edge
  %ulp_supported = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 11
  %attr_log_enable175 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %shost182 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %arrayidx = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx, align 1
  %and132 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end128.for.inc_crit_edge, label %if.then134

if.end128.for.inc_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then134:                                       ; preds = %if.end128
  tail call void @_set_bit(i32 noundef 0, ptr noundef %ulp_supported) #9
  %sq_base = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %sq_base to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %sq_base, align 1
  %arrayidx142 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 3, i32 0
  %42 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx142, align 4
  %sq_count = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 4
  %43 = ptrtoint ptr %sq_count to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %sq_count, align 1
  %arrayidx148 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 4, i32 0
  %45 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx148, align 4
  %icd_base = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %icd_base to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %icd_base, align 1
  %arrayidx154 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 6, i32 0
  %48 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx154, align 4
  %icd_count158 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %icd_count158 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %icd_count158, align 1
  %arrayidx161 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 5, i32 0
  %51 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx161, align 4
  %arrayidx163 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 13
  %52 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %arrayidx163, align 1
  %arrayidx166 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 7, i32 0
  %54 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx166, align 4
  %chain_count = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 13, i32 1
  %55 = ptrtoint ptr %chain_count to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %chain_count, align 1
  %arrayidx172 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 8, i32 0
  %57 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx172, align 4
  %58 = ptrtoint ptr %attr_log_enable175 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %attr_log_enable175, align 4
  %and176 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.then134.for.inc_crit_edge, label %do.end181

if.then134.for.inc_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end181:                                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %shost182 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shost182, align 4
  %shost_gendev183 = getelementptr inbounds %struct.Scsi_Host, ptr %61, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev183, ptr noundef nonnull @.str.62, i32 noundef 1427, i32 noundef 0, i32 noundef %44, i32 noundef %41, i32 noundef %50, i32 noundef %47) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end181, %if.then134.for.inc_crit_edge, %if.end128.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7
  %62 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %arrayidx.1, align 1
  %and132.1 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.1)
  %tobool133.not.1 = icmp eq i32 %and132.1, 0
  br i1 %tobool133.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then134.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then134.1:                                     ; preds = %for.inc
  tail call void @_set_bit(i32 noundef 1, ptr noundef %ulp_supported) #9
  %sq_base.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 8
  %64 = ptrtoint ptr %sq_base.1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %sq_base.1, align 1
  %arrayidx142.1 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 3, i32 1
  %66 = ptrtoint ptr %arrayidx142.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx142.1, align 4
  %sq_count.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %sq_count.1 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %sq_count.1, align 1
  %arrayidx148.1 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx148.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx148.1, align 4
  %icd_base.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 10, i32 2
  %70 = ptrtoint ptr %icd_base.1 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %icd_base.1, align 1
  %arrayidx154.1 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 6, i32 1
  %72 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx154.1, align 4
  %icd_count158.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 11
  %73 = ptrtoint ptr %icd_count158.1 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %icd_count158.1, align 1
  %arrayidx161.1 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 5, i32 1
  %75 = ptrtoint ptr %arrayidx161.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx161.1, align 4
  %arrayidx163.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 13, i32 2
  %76 = ptrtoint ptr %arrayidx163.1 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %arrayidx163.1, align 1
  %arrayidx166.1 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 7, i32 1
  %78 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx166.1, align 4
  %chain_count.1 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 14
  %79 = ptrtoint ptr %chain_count.1 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %chain_count.1, align 1
  %arrayidx172.1 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 8, i32 1
  %81 = ptrtoint ptr %arrayidx172.1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx172.1, align 4
  %82 = ptrtoint ptr %attr_log_enable175 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %attr_log_enable175, align 4
  %and176.1 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.1)
  %tobool177.not.1 = icmp eq i32 %and176.1, 0
  br i1 %tobool177.not.1, label %if.then134.1.for.inc.1_crit_edge, label %do.end181.1

if.then134.1.for.inc.1_crit_edge:                 ; preds = %if.then134.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

do.end181.1:                                      ; preds = %if.then134.1
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %shost182 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %shost182, align 4
  %shost_gendev183.1 = getelementptr inbounds %struct.Scsi_Host, ptr %85, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev183.1, ptr noundef nonnull @.str.62, i32 noundef 1427, i32 noundef 1, i32 noundef %68, i32 noundef %65, i32 noundef %74, i32 noundef %71) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end181.1, %if.then134.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %86 = ptrtoint ptr %ulp_supported to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ulp_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp207 = icmp eq i32 %87, 0
  br i1 %cmp207, label %do.body210, label %for.body239.preheader

for.body239.preheader:                            ; preds = %for.inc.1
  %88 = ptrtoint ptr %ulp_supported to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %ulp_supported, align 4
  %90 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool244.not = icmp eq i32 %90, 0
  br i1 %tobool244.not, label %for.cond235, label %for.body239.preheader.for.end249_crit_edge

for.body239.preheader.for.end249_crit_edge:       ; preds = %for.body239.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end249

do.body210:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %shost182 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %shost182, align 4
  %shost_gendev224 = getelementptr inbounds %struct.Scsi_Host, ptr %92, i32 0, i32 49
  %ulp225 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %93 = ptrtoint ptr %ulp225 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %ulp225, align 1
  %arrayidx229 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 7
  %95 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %arrayidx229, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev224, ptr noundef nonnull @.str.65, i32 noundef 1435, i32 noundef %94, i32 noundef %96) #12
  br label %fail_init

for.cond235:                                      ; preds = %for.body239.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %ulp_supported to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %ulp_supported, align 4
  %99 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool244.not.1 = icmp eq i32 %99, 0
  %spec.select = select i1 %tobool244.not.1, i32 2, i32 1
  br label %for.end249

for.end249:                                       ; preds = %for.cond235, %for.body239.preheader.for.end249_crit_edge
  %conv236.lcssa = phi i32 [ 0, %for.body239.preheader.for.end249_crit_edge ], [ %spec.select, %for.cond235 ]
  %arrayidx253 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 5, i32 %conv236.lcssa
  %100 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx253, align 4
  %102 = add i32 %101, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %102)
  %103 = icmp ult i32 %102, -65536
  br i1 %103, label %do.body260, label %if.end278

do.body260:                                       ; preds = %for.end249
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %shost182 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %shost182, align 4
  %shost_gendev274 = getelementptr inbounds %struct.Scsi_Host, ptr %105, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev274, ptr noundef nonnull @.str.68, i32 noundef 1448, i32 noundef %101) #12
  br label %fail_init

if.end278:                                        ; preds = %for.end249
  %iscsi_cid_count280 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 4
  %106 = ptrtoint ptr %iscsi_cid_count280 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %iscsi_cid_count280, align 4
  %arrayidx284 = getelementptr %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 4, i32 1
  %108 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx284, align 4
  %add = add i32 %109, %107
  %110 = add i32 %add, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %110)
  %111 = icmp ult i32 %110, -4096
  br i1 %111, label %do.body291, label %if.end309

do.body291:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %shost182 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %shost182, align 4
  %shost_gendev305 = getelementptr inbounds %struct.Scsi_Host, ptr %113, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev305, ptr noundef nonnull @.str.71, i32 noundef 1456, i32 noundef %add) #12
  br label %fail_init

if.end309:                                        ; preds = %if.end278
  %function_mode = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %function_mode to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %function_mode, align 1
  %116 = trunc i32 %115 to i16
  %conv311 = and i16 %116, 2048
  %dual_ulp_aware = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30, i32 10
  %117 = ptrtoint ptr %dual_ulp_aware to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv311, ptr %dual_ulp_aware, align 2
  %118 = ptrtoint ptr %attr_log_enable175 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %attr_log_enable175, align 4
  %and316 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %if.end309.fail_init_crit_edge, label %do.end321

if.end309.fail_init_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_init

do.end321:                                        ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %shost182 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %shost182, align 4
  %shost_gendev323 = getelementptr inbounds %struct.Scsi_Host, ptr %121, i32 0, i32 49
  %conv326 = zext i16 %conv311 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev323, ptr noundef nonnull @.str.74, i32 noundef 1469, i32 noundef %conv326) #12
  br label %fail_init

fail_init:                                        ; preds = %do.end321, %if.end309.fail_init_crit_edge, %do.body291, %do.body260, %do.body210, %do.body89, %do.body58, %do.body16, %do.body
  %status.0 = phi i32 [ -22, %do.body ], [ -22, %do.body16 ], [ -22, %do.body210 ], [ -22, %do.body260 ], [ -22, %do.body291 ], [ -22, %do.body58 ], [ -22, %do.body89 ], [ 0, %do.end321 ], [ 0, %if.end309.fail_init_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_get_port_name(ptr noundef %ctrl, ptr nocapture noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 335544320, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 77, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -872415232, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %call2 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  %port_name = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 40
  %10 = ptrtoint ptr %port_name to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %port_name, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %p = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %p, align 1
  %fw_config = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 30
  %13 = ptrtoint ptr %fw_config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_config, align 4
  %mul = shl i32 %14, 3
  %shr = lshr i32 %12, %mul
  %conv = trunc i32 %shr to i8
  %15 = ptrtoint ptr %port_name to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %port_name, align 1
  br label %if.end11

do.body:                                          ; preds = %entry
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %16 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attr_log_enable, align 4
  %and4 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.if.end11thread-pre-split_crit_edge, label %do.end

do.body.if.end11thread-pre-split_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11thread-pre-split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %18 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  %20 = ptrtoint ptr %timeout.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %timeout.i, align 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev, ptr noundef nonnull @.str.76, i32 noundef 1509, i32 noundef %call2, i32 noundef %21) #12
  br label %if.end11thread-pre-split

if.end11thread-pre-split:                         ; preds = %do.end, %do.body.if.end11thread-pre-split_crit_edge
  %22 = ptrtoint ptr %port_name to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr = load i8, ptr %port_name, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.then
  %23 = phi i8 [ %.pr, %if.end11thread-pre-split ], [ %conv, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  br i1 %cmp, label %if.then15, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %port_name to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 63, ptr %port_name, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_set_host_data(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %generation = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 45
  %0 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl1 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %mbox_mem = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 5
  %3 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mbox_mem, align 4
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 248)
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %4, i32 0, i32 5
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %4, align 4
  %8 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1744830464, ptr %payload_length.i, align 4
  %9 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 93, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %10 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %4, i32 0, i32 5, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -872415232, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %4, i32 0, i32 5, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %timeout.i, align 4
  %param = getelementptr inbounds %struct.be_mcc_wrb, ptr %4, i32 0, i32 5, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %param to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 2, ptr %param, align 1
  %param_data = getelementptr inbounds %struct.be_mcc_wrb, ptr %4, i32 0, i32 5, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %param_data, i32 noundef 128, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79)
  %param_len = getelementptr inbounds %struct.be_mcc_wrb, ptr %4, i32 0, i32 5, i32 0, i32 1, i32 2
  %add10 = add i32 %call6, 4
  %and = and i32 %add10, -4
  %14 = tail call i32 @llvm.umin.i32(i32 %and, i32 48)
  %15 = ptrtoint ptr %param_len to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %param_len, align 1
  %call20 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl1)
  %16 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %call20, label %if.end.if.end39_crit_edge [
    i32 0, label %do.body
    i32 2, label %if.end.do.end35_crit_edge
    i32 116, label %if.end.do.end35_crit_edge65
  ]

if.end.do.end35_crit_edge65:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end.do.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body:                                          ; preds = %if.end
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %17 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr_log_enable, align 4
  %and22 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body.if.end39_crit_edge, label %do.end

do.body.if.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %19 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev, ptr noundef nonnull @.str.80, i32 noundef 1549) #12
  br label %if.end39

do.end35:                                         ; preds = %if.end.do.end35_crit_edge, %if.end.do.end35_crit_edge65
  %shost36 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %21 = ptrtoint ptr %shost36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shost36, align 4
  %shost_gendev37 = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev37, ptr noundef nonnull @.str.83, i32 noundef 1558) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %do.end, %do.body.if.end39_crit_edge, %if.end.if.end39_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end39 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_set_uer_feature(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %mbox_mem = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 248)
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %1, align 4
  %5 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 536870912, ptr %payload_length.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -65, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %7 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -872415232, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %timeout.i, align 4
  %feature = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %feature to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 16, ptr %feature, align 1
  %param_len = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %param_len to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 8, ptr %param_len, align 1
  %param = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %param to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 1, ptr %param, align 1
  %call3 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl1)
  %13 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %call3, label %entry.if.end21_crit_edge [
    i32 0, label %if.then
    i32 2, label %entry.do.end17_crit_edge
    i32 116, label %entry.do.end17_crit_edge40
  ]

entry.do.end17_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  %ue2rp = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %ue2rp to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %ue2rp, align 1
  %conv = zext i16 %15 to i32
  %ue2rp5 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 35
  %16 = ptrtoint ptr %ue2rp5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %ue2rp5, align 4
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state) #9
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %17 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then.if.end21_crit_edge, label %do.end

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %19 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev, ptr noundef nonnull @.str.85, i32 noundef 1589) #12
  br label %if.end21

do.end17:                                         ; preds = %entry.do.end17_crit_edge, %entry.do.end17_crit_edge40
  %shost18 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %21 = ptrtoint ptr %shost18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shost18, align 4
  %shost_gendev19 = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev19, ptr noundef nonnull @.str.88, i32 noundef 1598) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %do.end, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_check_fw_rdy(ptr nocapture noundef readonly %phba) local_unnamed_addr #0 align 64 {
entry:
  %sem.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %generation.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 45
  %pcidev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 6
  %csr_va.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %entry
  %dec18 = phi i32 [ 999, %entry ], [ %dec, %if.end4.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sem.i) #9
  %0 = ptrtoint ptr %sem.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sem.i, align 4, !annotation !382
  %1 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation.i, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i = icmp eq i32 %3, 2
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %csr_va.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_va.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 172
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !383
  %7 = call i32 @llvm.bswap.i32(i32 %6) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  br label %beiscsi_get_post_stage.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev.i, align 4
  %call3.i = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef 148, ptr noundef nonnull %sem.i) #9
  %10 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %sem.i, align 4
  br label %beiscsi_get_post_stage.exit

beiscsi_get_post_stage.exit:                      ; preds = %if.else.i, %if.then.i
  %11 = phi i32 [ %7, %if.then.i ], [ %.pr, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool1.not = icmp sgt i32 %11, -1
  br i1 %tobool1.not, label %if.end, label %beiscsi_get_post_stage.exit.do.end_crit_edge

beiscsi_get_post_stage.exit.do.end_crit_edge:     ; preds = %beiscsi_get_post_stage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %beiscsi_get_post_stage.exit
  %and2 = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and2)
  %cmp = icmp eq i32 %and2, 49152
  br i1 %cmp, label %if.end.if.end7_crit_edge, label %if.end4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end4:                                          ; preds = %if.end
  call void @msleep(i32 noundef 60) #9
  %dec = add nsw i32 %dec18, -1
  %tobool.not = icmp eq i32 %dec18, 0
  br i1 %tobool.not, label %if.end4.do.end_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end4.do.end_crit_edge, %beiscsi_get_post_stage.exit.do.end_crit_edge
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %12 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.90, i32 noundef 1635, i32 noundef %11) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %rdy.016 = phi i32 [ 0, %do.end ], [ 1, %if.end.if.end7_crit_edge ]
  ret i32 %rdy.016
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_cmd_function_reset(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44
  %mbox_mem = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %or2.i = or i32 %3, 1
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %1, align 4
  %6 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -335544320, ptr %payload_length.i, align 4
  %7 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 61, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %8 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -603979776, ptr %request_length.i, align 4
  %timeout.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %timeout.i, align 4
  %call3 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl1)
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_cmd_special_wrb(ptr noundef %ctrl, i32 noundef %load) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mem = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mbox_lock = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %6 = getelementptr inbounds i8, ptr %1, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load)
  %tobool.not = icmp eq i32 %load, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink52 = phi i8 [ -86, %if.else ], [ 18, %entry.if.end_crit_edge ]
  %.sink51 = phi i8 [ -69, %if.else ], [ 52, %entry.if.end_crit_edge ]
  %.sink50 = phi i8 [ -52, %if.else ], [ 86, %entry.if.end_crit_edge ]
  %.sink = phi i8 [ -35, %if.else ], [ 120, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %1, align 1
  %9 = getelementptr i8, ptr %1, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink52, ptr %9, align 1
  %11 = getelementptr i8, ptr %1, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink51, ptr %11, align 1
  %13 = getelementptr i8, ptr %1, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1
  %15 = getelementptr i8, ptr %1, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1
  %17 = getelementptr i8, ptr %1, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink50, ptr %17, align 1
  %19 = getelementptr i8, ptr %1, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %19, align 1
  %21 = getelementptr i8, ptr %1, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %21, align 1
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.body20.i.do.body20.i_crit_edge, %if.end
  %dw.0.i = phi ptr [ %1, %if.end ], [ %incdec.ptr.i, %do.body20.i.do.body20.i_crit_edge ]
  %len.addr.0.i = phi i32 [ 256, %if.end ], [ %sub.i, %do.body20.i.do.body20.i_crit_edge ]
  %23 = ptrtoint ptr %dw.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dw.0.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %dw.0.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dw.0.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %dw.0.i, i32 1
  %sub.i = add nsw i32 %len.addr.0.i, -4
  %tobool22.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool22.not.i, label %swap_dws.exit, label %do.body20.i.do.body20.i_crit_edge

do.body20.i.do.body20.i_crit_edge:                ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20.i

swap_dws.exit:                                    ; preds = %do.body20.i
  %call16 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %swap_dws.exit.if.end25_crit_edge, label %do.body

swap_dws.exit.if.end25_crit_edge:                 ; preds = %swap_dws.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body:                                          ; preds = %swap_dws.exit
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 48
  %27 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body.if.end25_crit_edge, label %do.end

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 27
  %29 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev, ptr noundef nonnull @.str.92, i32 noundef 1697) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end, %do.body.if.end25_crit_edge, %swap_dws.exit.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_init_sliport(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %sem.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %generation.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 45
  %pcidev.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 6
  %csr_va.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %entry
  %dec18.i = phi i32 [ 999, %entry ], [ %dec.i, %if.end4.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sem.i.i) #9
  %0 = ptrtoint ptr %sem.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sem.i.i, align 4, !annotation !382
  %1 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation.i.i, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i.i = icmp eq i32 %3, 2
  br i1 %switch.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %csr_va.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_va.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 172
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !383
  %7 = call i32 @llvm.bswap.i32(i32 %6) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  br label %beiscsi_get_post_stage.exit.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev.i.i, align 4
  %call3.i.i = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef 148, ptr noundef nonnull %sem.i.i) #9
  %10 = ptrtoint ptr %sem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %sem.i.i, align 4
  br label %beiscsi_get_post_stage.exit.i

beiscsi_get_post_stage.exit.i:                    ; preds = %if.else.i.i, %if.then.i.i
  %11 = phi i32 [ %7, %if.then.i.i ], [ %.pr.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sem.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool1.not.i = icmp sgt i32 %11, -1
  br i1 %tobool1.not.i, label %if.end.i, label %beiscsi_get_post_stage.exit.i.beiscsi_check_fw_rdy.exit.thread_crit_edge

beiscsi_get_post_stage.exit.i.beiscsi_check_fw_rdy.exit.thread_crit_edge: ; preds = %beiscsi_get_post_stage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %beiscsi_check_fw_rdy.exit.thread

if.end.i:                                         ; preds = %beiscsi_get_post_stage.exit.i
  %and2.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 49152
  br i1 %cmp.i, label %if.end, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 60) #9
  %dec.i = add nsw i32 %dec18.i, -1
  %tobool.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool.not.i, label %if.end4.i.beiscsi_check_fw_rdy.exit.thread_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end4.i.beiscsi_check_fw_rdy.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %beiscsi_check_fw_rdy.exit.thread

beiscsi_check_fw_rdy.exit.thread:                 ; preds = %if.end4.i.beiscsi_check_fw_rdy.exit.thread_crit_edge, %beiscsi_get_post_stage.exit.i.beiscsi_check_fw_rdy.exit.thread_crit_edge
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %12 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.90, i32 noundef 1635, i32 noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %and2 = and i32 %15, -485
  store i32 %and2, ptr %state, align 4
  %ctrl1.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44
  %mbox_mem.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 5
  %16 = ptrtoint ptr %mbox_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbox_mem.i, align 4
  %mbox_lock.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  call void @mutex_lock_nested(ptr noundef %mbox_lock.i, i32 noundef 0) #9
  %payload.i.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %or2.i.i = or i32 %19, 1
  %payload_length.i.i = getelementptr %struct.be_mcc_wrb, ptr %17, i32 0, i32 1
  %20 = call i32 @llvm.bswap.i32(i32 %or2.i.i) #9
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %17, align 4
  %22 = ptrtoint ptr %payload_length.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -335544320, ptr %payload_length.i.i, align 4
  %23 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 61, ptr %payload.i.i, align 4
  %subsystem2.i.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %subsystem2.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %subsystem2.i.i, align 1
  %request_length.i.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %17, i32 0, i32 5, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %request_length.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -603979776, ptr %request_length.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %17, i32 0, i32 5, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 100, ptr %timeout.i.i, align 4
  %call3.i = call fastcc i32 @be_mbox_notify(ptr noundef %ctrl1.i) #9
  call void @mutex_unlock(ptr noundef %mbox_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %27 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.94, i32 noundef 1724) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 @beiscsi_cmd_special_wrb(ptr noundef %ctrl1.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.body, %beiscsi_check_fw_rdy.exit.thread
  %retval.0 = phi i32 [ %call3.i, %do.body ], [ %call15, %if.end14 ], [ -5, %beiscsi_check_fw_rdy.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_cmd_iscsi_cleanup(ptr noundef %phba, i16 noundef zeroext %ulp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44
  %mbox_lock = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mbox_lock, i32 noundef 0) #9
  %mbox_mem = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 44, i32 5
  %0 = ptrtoint ptr %mbox_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_mem, align 4
  %phwi_ctrlr = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 1
  %2 = ptrtoint ptr %phwi_ctrlr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phwi_ctrlr, align 4
  %idxprom = zext i16 %ulp to i32
  %id = getelementptr %struct.hwi_controller, ptr %3, i32 0, i32 1, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %id5 = getelementptr %struct.hwi_controller, ptr %3, i32 0, i32 2, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id5, align 4
  %generation = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 45
  %8 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation, align 4
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch = icmp eq i32 %10, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %payload.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %or2.i = or i32 %12, 1
  %payload_length.i = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %1, align 4
  %15 = ptrtoint ptr %payload_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 335544320, ptr %payload_length.i, align 4
  %16 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 59, ptr %payload.i, align 4
  %subsystem2.i = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i, i32 0, i32 1
  %17 = ptrtoint ptr %subsystem2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %subsystem2.i, align 1
  %request_length.i = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108864, ptr %request_length.i, align 4
  %conv14 = trunc i32 %5 to i8
  %hdr_ring_id15 = getelementptr inbounds %struct.iscsi_cleanup_req, ptr %payload.i, i32 0, i32 2
  %19 = ptrtoint ptr %hdr_ring_id15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv14, ptr %hdr_ring_id15, align 1
  %conv16 = trunc i32 %7 to i8
  %data_ring_id17 = getelementptr inbounds %struct.iscsi_cleanup_req, ptr %payload.i, i32 0, i32 3
  %20 = ptrtoint ptr %data_ring_id17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %data_ring_id17, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = trunc i32 %7 to i16
  %conv = trunc i32 %5 to i16
  %payload.i64 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %or2.i65 = or i32 %22, 1
  %payload_length.i66 = getelementptr %struct.be_mcc_wrb, ptr %1, i32 0, i32 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %or2.i65) #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %1, align 4
  %25 = ptrtoint ptr %payload_length.i66 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 469762048, ptr %payload_length.i66, align 4
  %26 = ptrtoint ptr %payload.i64 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 59, ptr %payload.i64, align 4
  %subsystem2.i67 = getelementptr inbounds %struct.be_cmd_req_hdr, ptr %payload.i64, i32 0, i32 1
  %27 = ptrtoint ptr %subsystem2.i67 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %subsystem2.i67, align 1
  %request_length.i68 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %request_length.i68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 201326592, ptr %request_length.i68, align 4
  %version = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %version, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %hdr_ring_id25 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %hdr_ring_id25 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %hdr_ring_id25, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %data_ring_id26 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 2
  %33 = ptrtoint ptr %data_ring_id26 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %data_ring_id26, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv23.sink.in = shl nuw i32 1, %idxprom
  %conv23.sink = trunc i32 %conv23.sink.in to i16
  %34 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 100, ptr %34, align 4
  %36 = getelementptr inbounds %struct.be_mcc_wrb, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %conv23.sink, ptr %36, align 1
  %call27 = tail call fastcc i32 @be_mbox_notify(ptr noundef %ctrl1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.end.if.end36_crit_edge, label %do.body

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body:                                          ; preds = %if.end
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 48
  %38 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body.if.end36_crit_edge, label %do.end

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %40 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev, ptr noundef nonnull @.str.96, i32 noundef 1779, ptr noundef nonnull @.str.97, i32 noundef %idxprom) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end, %do.body.if.end36_crit_edge, %if.end.if.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_lock) #9
  ret i32 %call27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_detect_ue(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %ue_mask_hi = alloca i32, align 4
  %ue_mask_lo = alloca i32, align 4
  %ue_hi = alloca i32, align 4
  %ue_lo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ue_mask_hi) #9
  %0 = ptrtoint ptr %ue_mask_hi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ue_mask_hi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ue_mask_lo) #9
  %1 = ptrtoint ptr %ue_mask_lo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ue_mask_lo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ue_hi) #9
  %2 = ptrtoint ptr %ue_hi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ue_hi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ue_lo) #9
  %3 = ptrtoint ptr %ue_lo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ue_lo, align 4
  %pcidev = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 6
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 160, ptr noundef nonnull %ue_lo) #9
  %6 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcidev, align 4
  %call2 = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 168, ptr noundef nonnull %ue_mask_lo) #9
  %8 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcidev, align 4
  %call4 = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef 164, ptr noundef nonnull %ue_hi) #9
  %10 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcidev, align 4
  %call6 = call i32 @pci_read_config_dword(ptr noundef %11, i32 noundef 172, ptr noundef nonnull %ue_mask_hi) #9
  %12 = ptrtoint ptr %ue_lo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ue_lo, align 4
  %14 = ptrtoint ptr %ue_mask_lo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ue_mask_lo, align 4
  %neg = xor i32 %15, -1
  %and = and i32 %13, %neg
  store i32 %and, ptr %ue_lo, align 4
  %16 = ptrtoint ptr %ue_hi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ue_hi, align 4
  %18 = ptrtoint ptr %ue_mask_hi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ue_mask_hi, align 4
  %neg7 = xor i32 %19, -1
  %and8 = and i32 %17, %neg7
  store i32 %and8, ptr %ue_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %tobool.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  call void @_set_bit(i32 noundef 7, ptr noundef %state) #9
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %20 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.98, i32 noundef 1816) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %22 = ptrtoint ptr %ue_lo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ue_lo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not = icmp eq i32 %23, 0
  br i1 %tobool10.not, label %if.end.if.end22_crit_edge, label %for.body.lr.ph

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.body.lr.ph:                                   ; preds = %if.end
  %shost19 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = phi i32 [ %23, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %and13 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %do.end18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %shost19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shost19, align 4
  %shost_gendev20 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 49
  %idxprom = zext i8 %i.056 to i32
  %arrayidx = getelementptr [32 x ptr], ptr @desc_ue_status_low, i32 0, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev20, ptr noundef nonnull @.str.101, i32 noundef 1825, ptr noundef %28) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end18, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %ue_lo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ue_lo, align 4
  %shr = lshr i32 %30, 1
  store i32 %shr, ptr %ue_lo, align 4
  %inc = add i8 %i.056, 1
  %tobool12.not = icmp ult i32 %30, 2
  br i1 %tobool12.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %31 = ptrtoint ptr %ue_hi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ue_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %if.end22.if.end43_crit_edge, label %for.body27.lr.ph

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.body27.lr.ph:                                 ; preds = %if.end22
  %shost34 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  br label %for.body27

for.body27:                                       ; preds = %for.inc39.for.body27_crit_edge, %for.body27.lr.ph
  %i.158 = phi i8 [ 0, %for.body27.lr.ph ], [ %inc41, %for.inc39.for.body27_crit_edge ]
  %33 = phi i32 [ %32, %for.body27.lr.ph ], [ %shr40, %for.inc39.for.body27_crit_edge ]
  %and28 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %for.body27.for.inc39_crit_edge, label %do.end33

for.body27.for.inc39_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39

do.end33:                                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %shost34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shost34, align 4
  %shost_gendev35 = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 0, i32 49
  %idxprom36 = zext i8 %i.158 to i32
  %arrayidx37 = getelementptr [32 x ptr], ptr @desc_ue_status_hi, i32 0, i32 %idxprom36
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx37, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev35, ptr noundef nonnull @.str.104, i32 noundef 1834, ptr noundef %37) #12
  br label %for.inc39

for.inc39:                                        ; preds = %do.end33, %for.body27.for.inc39_crit_edge
  %38 = ptrtoint ptr %ue_hi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ue_hi, align 4
  %shr40 = lshr i32 %39, 1
  store i32 %shr40, ptr %ue_hi, align 4
  %inc41 = add i8 %i.158, 1
  %tobool26.not = icmp ult i32 %39, 2
  br i1 %tobool26.not, label %for.inc39.if.end43_crit_edge, label %for.inc39.for.body27_crit_edge

for.inc39.for.body27_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

for.inc39.if.end43_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %for.inc39.if.end43_crit_edge, %if.end22.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ue_lo) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ue_hi) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ue_mask_lo) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ue_mask_hi) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_detect_tpe(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %sem.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sem.i) #9
  %0 = ptrtoint ptr %sem.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sem.i, align 4, !annotation !382
  %generation.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 45
  %1 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation.i, align 4
  %3 = and i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i = icmp eq i32 %3, 2
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %csr_va.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 3
  %4 = ptrtoint ptr %csr_va.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_va.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 172
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !383
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  %8 = ptrtoint ptr %sem.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sem.i, align 4
  br label %beiscsi_get_post_stage.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pcidev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 6
  %9 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev.i, align 4
  %call3.i = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef 148, ptr noundef nonnull %sem.i) #9
  br label %beiscsi_get_post_stage.exit

beiscsi_get_post_stage.exit:                      ; preds = %if.else.i, %if.then.i
  %11 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sem.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sem.i) #9
  %and1 = and i32 %12, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %and1)
  %cmp = icmp eq i32 %and1, 57344
  br i1 %cmp, label %if.then, label %do.end4

if.then:                                          ; preds = %beiscsi_get_post_stage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 31
  call void @_set_bit(i32 noundef 8, ptr noundef %state) #9
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %13 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev, ptr noundef nonnull @.str.106, i32 noundef 1858, i32 noundef %12) #12
  br label %if.end

do.end4:                                          ; preds = %beiscsi_get_post_stage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shost5 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %15 = ptrtoint ptr %shost5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost5, align 4
  %shost_gendev6 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.19, ptr noundef %shost_gendev6, ptr noundef nonnull @.str.109, i32 noundef 1862, i32 noundef %12) #12
  br label %if.end

if.end:                                           ; preds = %do.end4, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %do.end4 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_for_each_session(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @beiscsi_session_fail(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @be_mbox_db_ready_poll(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %db1 = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %db1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 352
  %pdev = getelementptr inbounds %struct.be_ctrl_info, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 3000
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 31
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %and40 = and i32 %8, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool.not41 = icmp eq i32 %and40, 0
  br i1 %tobool.not41, label %entry.if.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end12.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %do.body16, label %if.end12

if.end12:                                         ; preds = %if.end9
  %call14 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %and = and i32 %13, 480
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12.if.end_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.if.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 27
  %14 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %shost_gendev, ptr noundef nonnull @.str.131, i32 noundef 619) #12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.body16 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end12.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctpop.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 194)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !213, !215, !216, !217, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362}
!llvm.module.flags = !{!364, !365, !366, !367, !368, !369, !370, !371}
!llvm.ident = !{!372}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 97, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @alloc_mcc_wrb._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @alloc_mcc_wrb._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 109, i32 3}
!10 = !{ptr @alloc_mcc_wrb._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @alloc_mcc_wrb._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 199, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__beiscsi_mcc_compl_status._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @__beiscsi_mcc_compl_status._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 208, i32 4}
!20 = !{ptr @__beiscsi_mcc_compl_status._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @__beiscsi_mcc_compl_status._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 242, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @beiscsi_mccq_compl_wait._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @beiscsi_mccq_compl_wait._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 295, i32 3}
!29 = !{ptr @beiscsi_mccq_compl_wait._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @beiscsi_mccq_compl_wait._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 456, i32 14}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 479, i32 2}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @beiscsi_process_async_event._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @beiscsi_process_async_event._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 498, i32 3}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @beiscsi_process_mcc_compl._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @beiscsi_process_mcc_compl._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 508, i32 3}
!45 = !{ptr @beiscsi_process_mcc_compl._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @beiscsi_process_mcc_compl._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 544, i32 4}
!49 = !{ptr @beiscsi_process_mcc_compl._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @beiscsi_process_mcc_compl._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 833, i32 3}
!53 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @beiscsi_cmd_cq_create._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @beiscsi_cmd_cq_create._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 909, i32 2}
!58 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @beiscsi_cmd_q_destroy._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @beiscsi_cmd_q_destroy._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1204, i32 4}
!63 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @be_cmd_iscsi_post_sgl_pages._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @be_cmd_iscsi_post_sgl_pages._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1271, i32 3}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @beiscsi_check_supported_fw._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @beiscsi_check_supported_fw._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1291, i32 3}
!73 = !{ptr @beiscsi_check_supported_fw._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @beiscsi_check_supported_fw._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1302, i32 3}
!77 = !{ptr @beiscsi_check_supported_fw._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @beiscsi_check_supported_fw._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1308, i32 3}
!81 = !{ptr @beiscsi_check_supported_fw._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @beiscsi_check_supported_fw._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1348, i32 3}
!85 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @beiscsi_get_fw_config._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @beiscsi_get_fw_config._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1356, i32 3}
!90 = !{ptr @beiscsi_get_fw_config._entry.49, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @beiscsi_get_fw_config._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1368, i32 4}
!94 = !{ptr @beiscsi_get_fw_config._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @beiscsi_get_fw_config._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1375, i32 4}
!98 = !{ptr @beiscsi_get_fw_config._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @beiscsi_get_fw_config._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1380, i32 3}
!102 = !{ptr @beiscsi_get_fw_config._entry.58, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @beiscsi_get_fw_config._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1413, i32 4}
!106 = !{ptr @beiscsi_get_fw_config._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @beiscsi_get_fw_config._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1432, i32 3}
!110 = !{ptr @beiscsi_get_fw_config._entry.64, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @beiscsi_get_fw_config._entry_ptr.66, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.68, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1447, i32 3}
!114 = !{ptr @beiscsi_get_fw_config._entry.67, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @beiscsi_get_fw_config._entry_ptr.69, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.71, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1455, i32 3}
!118 = !{ptr @beiscsi_get_fw_config._entry.70, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @beiscsi_get_fw_config._entry_ptr.72, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.74, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1467, i32 2}
!122 = !{ptr @beiscsi_get_fw_config._entry.73, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @beiscsi_get_fw_config._entry_ptr.75, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.76, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1507, i32 3}
!126 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @beiscsi_get_port_name._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @beiscsi_get_port_name._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1542, i32 5}
!131 = !{ptr @.str.79, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1542, i32 24}
!133 = !{ptr @.str.80, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1548, i32 3}
!135 = !{ptr @.str.81, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @beiscsi_set_host_data._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @beiscsi_set_host_data._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.83, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1557, i32 4}
!140 = !{ptr @beiscsi_set_host_data._entry.82, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @beiscsi_set_host_data._entry_ptr.84, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.85, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1588, i32 3}
!144 = !{ptr @.str.86, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @beiscsi_set_uer_feature._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @beiscsi_set_uer_feature._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1597, i32 4}
!149 = !{ptr @beiscsi_set_uer_feature._entry.87, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @beiscsi_set_uer_feature._entry_ptr.89, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1634, i32 3}
!153 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @beiscsi_check_fw_rdy._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @beiscsi_check_fw_rdy._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.92, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1696, i32 3}
!158 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @beiscsi_cmd_special_wrb._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @beiscsi_cmd_special_wrb._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.94, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1723, i32 3}
!163 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @beiscsi_init_sliport._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @beiscsi_init_sliport._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.96, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1778, i32 3}
!168 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @beiscsi_cmd_iscsi_cleanup._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @beiscsi_cmd_iscsi_cleanup._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1815, i32 3}
!173 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @beiscsi_detect_ue._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @beiscsi_detect_ue._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.101, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1823, i32 5}
!178 = !{ptr @beiscsi_detect_ue._entry.100, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @beiscsi_detect_ue._entry_ptr.102, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.104, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1832, i32 5}
!182 = !{ptr @beiscsi_detect_ue._entry.103, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @beiscsi_detect_ue._entry_ptr.105, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.106, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1857, i32 3}
!186 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @beiscsi_detect_tpe._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @beiscsi_detect_tpe._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.109, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 1861, i32 3}
!191 = !{ptr @beiscsi_detect_tpe._entry.108, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @beiscsi_detect_tpe._entry_ptr.110, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.111, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/be2iscsi/be.h", i32 42, i32 2}
!195 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 378, i32 3}
!197 = !{ptr @.str.113, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @beiscsi_process_async_link._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @beiscsi_process_async_link._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 383, i32 3}
!202 = !{ptr @beiscsi_process_async_link._entry.114, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @beiscsi_process_async_link._entry_ptr.116, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 426, i32 3}
!206 = !{ptr @.str.118, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @beiscsi_process_async_sli._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @beiscsi_process_async_sli._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 436, i32 5}
!211 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 437, i32 5}
!213 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 447, i32 3}
!215 = !{ptr @beiscsi_process_async_sli._entry.121, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @beiscsi_process_async_sli._entry_ptr.123, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.124, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.125, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 392, i32 2}
!220 = !{ptr @.str.126, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 393, i32 2}
!222 = !{ptr @.str.127, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 394, i32 2}
!224 = !{ptr @.str.128, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 395, i32 2}
!226 = !{ptr @.str.129, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 396, i32 2}
!228 = !{ptr @.str.130, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 397, i32 2}
!230 = !{ptr @beiscsi_port_misconf_event_msg, !231, !"beiscsi_port_misconf_event_msg", i1 false, i1 false}
!231 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 391, i32 14}
!232 = !{ptr @.str.131, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 617, i32 2}
!234 = !{ptr @.str.132, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @be_mbox_db_ready_poll._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @be_mbox_db_ready_poll._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.133, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 333, i32 3}
!239 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @beiscsi_process_mbox_compl._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @beiscsi_process_mbox_compl._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.136, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 356, i32 2}
!244 = !{ptr @beiscsi_process_mbox_compl._entry.135, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @beiscsi_process_mbox_compl._entry_ptr.137, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.138, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 18, i32 2}
!248 = !{ptr @.str.139, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 19, i32 2}
!250 = !{ptr @.str.140, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 20, i32 2}
!252 = !{ptr @.str.141, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 21, i32 2}
!254 = !{ptr @.str.142, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 22, i32 2}
!256 = !{ptr @.str.143, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 23, i32 2}
!258 = !{ptr @.str.144, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 24, i32 2}
!260 = !{ptr @.str.145, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 25, i32 2}
!262 = !{ptr @.str.146, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 26, i32 2}
!264 = !{ptr @.str.147, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 27, i32 2}
!266 = !{ptr @.str.148, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 28, i32 2}
!268 = !{ptr @.str.149, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 29, i32 2}
!270 = !{ptr @.str.150, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 30, i32 2}
!272 = !{ptr @.str.151, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 31, i32 2}
!274 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 32, i32 2}
!276 = !{ptr @.str.153, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 33, i32 2}
!278 = !{ptr @.str.154, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 34, i32 2}
!280 = !{ptr @.str.155, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 35, i32 2}
!282 = !{ptr @.str.156, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 36, i32 2}
!284 = !{ptr @.str.157, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 37, i32 2}
!286 = !{ptr @.str.158, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 38, i32 2}
!288 = !{ptr @.str.159, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 39, i32 2}
!290 = !{ptr @.str.160, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 40, i32 2}
!292 = !{ptr @.str.161, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 41, i32 2}
!294 = !{ptr @.str.162, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 42, i32 2}
!296 = !{ptr @.str.163, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 43, i32 2}
!298 = !{ptr @.str.164, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 44, i32 2}
!300 = !{ptr @.str.165, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 45, i32 2}
!302 = !{ptr @.str.166, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 46, i32 2}
!304 = !{ptr @.str.167, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 47, i32 2}
!306 = !{ptr @.str.168, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 48, i32 2}
!308 = !{ptr @.str.169, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 49, i32 2}
!310 = !{ptr @desc_ue_status_low, !311, !"desc_ue_status_low", i1 false, i1 false}
!311 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 17, i32 27}
!312 = !{ptr @.str.170, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 54, i32 2}
!314 = !{ptr @.str.171, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 55, i32 2}
!316 = !{ptr @.str.172, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 56, i32 2}
!318 = !{ptr @.str.173, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 57, i32 2}
!320 = !{ptr @.str.174, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 58, i32 2}
!322 = !{ptr @.str.175, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 59, i32 2}
!324 = !{ptr @.str.176, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 60, i32 2}
!326 = !{ptr @.str.177, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 61, i32 2}
!328 = !{ptr @.str.178, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 62, i32 2}
!330 = !{ptr @.str.179, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 63, i32 2}
!332 = !{ptr @.str.180, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 64, i32 2}
!334 = !{ptr @.str.181, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 65, i32 2}
!336 = !{ptr @.str.182, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 66, i32 2}
!338 = !{ptr @.str.183, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 67, i32 2}
!340 = !{ptr @.str.184, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 68, i32 2}
!342 = !{ptr @.str.185, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 69, i32 2}
!344 = !{ptr @.str.186, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 70, i32 2}
!346 = !{ptr @.str.187, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 71, i32 2}
!348 = !{ptr @.str.188, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 72, i32 2}
!350 = !{ptr @.str.189, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 73, i32 2}
!352 = !{ptr @.str.190, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 74, i32 2}
!354 = !{ptr @.str.191, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 75, i32 2}
!356 = !{ptr @.str.192, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 76, i32 2}
!358 = !{ptr @.str.193, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 77, i32 2}
!360 = !{ptr @.str.194, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 78, i32 2}
!362 = !{ptr @desc_ue_status_hi, !363, !"desc_ue_status_hi", i1 false, i1 false}
!363 = !{!"../drivers/scsi/be2iscsi/be_cmds.c", i32 53, i32 27}
!364 = !{i32 1, !"wchar_size", i32 2}
!365 = !{i32 1, !"min_enum_size", i32 4}
!366 = !{i32 8, !"branch-target-enforcement", i32 0}
!367 = !{i32 8, !"sign-return-address", i32 0}
!368 = !{i32 8, !"sign-return-address-all", i32 0}
!369 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!370 = !{i32 7, !"uwtable", i32 1}
!371 = !{i32 7, !"frame-pointer", i32 2}
!372 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!373 = !{i16 0, i16 17}
!374 = !{!"branch_weights", i32 2000, i32 1}
!375 = !{i64 2157039499}
!376 = !{i64 2157065560}
!377 = !{i64 2153398895}
!378 = !{i64 5856773}
!379 = !{i32 0, i32 33}
!380 = !{!"branch_weights", i32 1, i32 2000}
!381 = !{i64 2157092948, i64 2157093444, i64 2157092985, i64 2157093041, i64 2157093075, i64 2157093099, i64 2157093140, i64 2157093161, i64 2157093189, i64 2157093223}
!382 = !{!"auto-init"}
!383 = !{i64 5857191}
!384 = !{i64 2153397540}
