; ModuleID = '/llk/IR_all_yes/drivers/scsi/be2iscsi/be_iscsi.c_pt.bc'
source_filename = "../drivers/scsi/be2iscsi/be_iscsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.beiscsi_hba = type { %struct.hba_parameters, ptr, [22 x i32], ptr, ptr, ptr, ptr, i32, i32, [64 x ptr], ptr, i16, i16, i16, ptr, i16, i16, i16, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, [2048 x i16], [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.anon.134, i32, i8, %struct.delayed_work, %struct.timer_list, i32, %struct.delayed_work, %struct.work_struct, i8, [6 x i8], i8, i8, [32 x i8], ptr, %struct.be_ctrl_info, i32, i32, [64 x %struct.be_aic_obj], i32, ptr, %struct.boot_struct, %struct.work_struct }
%struct.hba_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.134 = type { i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i16, i16, i32 }
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
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.112, [0 x i8] }
%union.anon.112 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.133, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.133 = type { ptr }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.beiscsi_conn = type { ptr, ptr, i32, i32, i32, ptr, i16, ptr, ptr, ptr, ptr }
%struct.beiscsi_endpoint = type { ptr, ptr, ptr, i16, [64 x i8], i32, i16, i32, i16, i16 }
%struct.hwi_wrb_context = type { %struct.spinlock, ptr, ptr, ptr, i16, i16, i16, i16, i8, i32 }
%struct.be_cmd_get_def_gateway_resp = type { %struct.be_cmd_req_hdr, %struct.ip_addr_format }
%struct.be_cmd_req_hdr = type { i8, i8, i8, i8, i32, i32, i8, [3 x i8] }
%struct.iscsi_iface = type { %struct.device, ptr, i32, i32, ptr }
%struct.be_cmd_get_if_info_resp = type { %struct.be_cmd_req_hdr, i32, i32, i32, i32, %struct.be_ip_addr_subnet_format }
%struct.be_ip_addr_subnet_format = type { i16, i8, i8, [16 x i8], [16 x i8], i32 }
%struct.be_cmd_get_nic_conf_resp = type { %struct.be_cmd_resp_hdr, i32, i32, i32, i32, i32, i16, [6 x i8] }
%struct.be_cmd_resp_hdr = type { i32, i32, i32, i32 }
%struct.iscsi_cls_host = type { %struct.atomic_t, %struct.mutex, ptr, i32, i32 }
%struct.iscsi_stats = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.iscsi_stats_custom] }
%struct.iscsi_stats_custom = type { [64 x i8], i64 }
%struct.beiscsi_offload_params = type { [6 x i32] }
%struct.ulp_cid_info = type { ptr, i16, i16, i16 }
%struct.tcp_connect_and_offload_out = type { %struct.be_cmd_resp_hdr, i32, i16, i16 }
%struct.hwi_controller = type { ptr, [2 x %struct.be_ring], [2 x %struct.be_ring], ptr }
%struct.be_ring = type { i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, ptr }
%struct.be_eq_obj = type { i32, %struct.be_queue_info, ptr, ptr, %struct.work_struct, %struct.irq_poll }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }

@beiscsi_session_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013beiscsi_session_create: invalid ep\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beiscsi_session_create\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/be2iscsi/be_iscsi.c\00", [63 x i8] zeroinitializer }, align 32
@beiscsi_session_create._entry_ptr = internal global ptr @beiscsi_session_create._entry, section ".printk_index", align 4
@beiscsi_session_create._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BS_%d : HBA in error 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@beiscsi_session_create._entry_ptr.7 = internal global ptr @beiscsi_session_create._entry.3, section ".printk_index", align 4
@beiscsi_session_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BS_%d : In beiscsi_session_create\0A\00", [61 x i8] zeroinitializer }, align 32
@beiscsi_session_create._entry_ptr.10 = internal global ptr @beiscsi_session_create._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@beiscsi_session_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 70, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"BS_%d : Cannot handle %d cmds.Max cmds per session supported is %d. Using %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@beiscsi_session_create._entry_ptr.14 = internal global ptr @beiscsi_session_create._entry.12, section ".printk_index", align 4
@beiscsi_iscsi_transport = external dso_local global %struct.iscsi_transport, align 4
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beiscsi_bhs_pool\00", [47 x i8] zeroinitializer }, align 32
@beiscsi_session_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016In beiscsi_session_destroy\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"beiscsi_session_destroy\00", [40 x i8] zeroinitializer }, align 32
@beiscsi_session_destroy._entry_ptr = internal global ptr @beiscsi_session_destroy._entry, section ".printk_index", align 4
@beiscsi_conn_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"BS_%d : In beiscsi_conn_create ,cidfrom iscsi layer=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beiscsi_conn_create\00", [44 x i8] zeroinitializer }, align 32
@beiscsi_conn_create._entry_ptr = internal global ptr @beiscsi_conn_create._entry, section ".printk_index", align 4
@beiscsi_conn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 201, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"BS_%d : beiscsi_ep->hba=%p not equal to phba=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beiscsi_conn_bind\00", [46 x i8] zeroinitializer }, align 32
@beiscsi_conn_bind._entry_ptr = internal global ptr @beiscsi_conn_bind._entry, section ".printk_index", align 4
@beiscsi_conn_bind._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 214, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"BS_%d : conn_table not empty at %u: cid %u conn %p:%p\0A\00", [41 x i8] zeroinitializer }, align 32
@beiscsi_conn_bind._entry_ptr.24 = internal global ptr @beiscsi_conn_bind._entry.22, section ".printk_index", align 4
@beiscsi_conn_bind._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BS_%d : cid %d phba->conn_table[%u]=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@beiscsi_conn_bind._entry_ptr.27 = internal global ptr @beiscsi_conn_bind._entry.25, section ".printk_index", align 4
@beiscsi_iface_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.28, ptr @.str.2, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"beiscsi_iface_set_param\00", [40 x i8] zeroinitializer }, align 32
@beiscsi_iface_set_param._entry_ptr = internal global ptr @beiscsi_iface_set_param._entry, section ".printk_index", align 4
@beiscsi_iface_set_param._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 448, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BS_%d : Getting Interface Handle Failed\0A\00", [55 x i8] zeroinitializer }, align 32
@beiscsi_iface_set_param._entry_ptr.31 = internal global ptr @beiscsi_iface_set_param._entry.29, section ".printk_index", align 4
@beiscsi_iface_set_param._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 465, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"BS_%d : Invalid iface_num %d.Only iface_num 0 is supported.\0A\00", [35 x i8] zeroinitializer }, align 32
@beiscsi_iface_set_param._entry_ptr.34 = internal global ptr @beiscsi_iface_set_param._entry.32, section ".printk_index", align 4
@beiscsi_iface_set_param._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BS_%d : %s.0 set param %d\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_iface_set_param._entry_ptr.37 = internal global ptr @beiscsi_iface_set_param._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv4\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@beiscsi_iface_set_param._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.28, ptr @.str.2, i32 501, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BS_%d : %s.0 set param %d not permitted\00", [56 x i8] zeroinitializer }, align 32
@beiscsi_iface_set_param._entry_ptr.42 = internal global ptr @beiscsi_iface_set_param._entry.40, section ".printk_index", align 4
@beiscsi_iface_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.43, ptr @.str.2, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"beiscsi_iface_get_param\00", [40 x i8] zeroinitializer }, align 32
@beiscsi_iface_get_param._entry_ptr = internal global ptr @beiscsi_iface_get_param._entry, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4\0A\00", [26 x i8] zeroinitializer }, align 32
@beiscsi_ep_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 633, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BS_%d : In beiscsi_ep_get_param, param= %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"beiscsi_ep_get_param\00", [43 x i8] zeroinitializer }, align 32
@beiscsi_ep_get_param._entry_ptr = internal global ptr @beiscsi_ep_get_param._entry, section ".printk_index", align 4
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6\0A\00", [26 x i8] zeroinitializer }, align 32
@beiscsi_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"BS_%d : In beiscsi_conn_set_param, param= %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beiscsi_set_param\00", [46 x i8] zeroinitializer }, align 32
@beiscsi_set_param._entry_ptr = internal global ptr @beiscsi_set_param._entry, section ".printk_index", align 4
@beiscsi_get_host_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.54, ptr @.str.2, i32 758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beiscsi_get_host_param\00", [41 x i8] zeroinitializer }, align 32
@beiscsi_get_host_param._entry_ptr = internal global ptr @beiscsi_get_host_param._entry, section ".printk_index", align 4
@beiscsi_get_host_param._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BS_%d : In beiscsi_get_host_param, param = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@beiscsi_get_host_param._entry_ptr.57 = internal global ptr @beiscsi_get_host_param._entry.55, section ".printk_index", align 4
@beiscsi_get_host_param._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 769, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BS_%d : beiscsi_get_macaddr Failed\0A\00", [60 x i8] zeroinitializer }, align 32
@beiscsi_get_host_param._entry_ptr.60 = internal global ptr @beiscsi_get_host_param._entry.58, section ".printk_index", align 4
@beiscsi_get_host_param._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 780, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BS_%d : Retrieving Initiator Name Failed\0A\00", [54 x i8] zeroinitializer }, align 32
@beiscsi_get_host_param._entry_ptr.63 = internal global ptr @beiscsi_get_host_param._entry.61, section ".printk_index", align 4
@beiscsi_conn_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 832, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BS_%d : In beiscsi_conn_get_stats\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beiscsi_conn_get_stats\00", [41 x i8] zeroinitializer }, align 32
@beiscsi_conn_get_stats._entry_ptr = internal global ptr @beiscsi_conn_get_stats._entry, section ".printk_index", align 4
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eh_abort_cnt\00", [19 x i8] zeroinitializer }, align 32
@beiscsi_conn_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.67, ptr @.str.2, i32 910, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"beiscsi_conn_start\00", [45 x i8] zeroinitializer }, align 32
@beiscsi_conn_start._entry_ptr = internal global ptr @beiscsi_conn_start._entry, section ".printk_index", align 4
@beiscsi_conn_start._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 914, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BS_%d : In beiscsi_conn_start\0A\00", [33 x i8] zeroinitializer }, align 32
@beiscsi_conn_start._entry_ptr.70 = internal global ptr @beiscsi_conn_start._entry.68, section ".printk_index", align 4
@beiscsi_conn_start._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 921, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BS_%d : In beiscsi_conn_start , no beiscsi_ep\0A\00", [49 x i8] zeroinitializer }, align 32
@beiscsi_conn_start._entry_ptr.73 = internal global ptr @beiscsi_conn_start._entry.71, section ".printk_index", align 4
@beiscsi_ep_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013beiscsi_ep_connect shost is NULL\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"beiscsi_ep_connect\00", [45 x i8] zeroinitializer }, align 32
@beiscsi_ep_connect._entry_ptr = internal global ptr @beiscsi_ep_connect._entry, section ".printk_index", align 4
@beiscsi_ep_connect._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.75, ptr @.str.2, i32 1161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@beiscsi_ep_connect._entry_ptr.77 = internal global ptr @beiscsi_ep_connect._entry.76, section ".printk_index", align 4
@beiscsi_ep_connect._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.75, ptr @.str.2, i32 1167, ptr @.str.80, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"BS_%d : The Adapter Port state is Down!!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@beiscsi_ep_connect._entry_ptr.81 = internal global ptr @beiscsi_ep_connect._entry.78, section ".printk_index", align 4
@beiscsi_ep_connect._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 1183, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BS_%d : Failed in beiscsi_open_conn\0A\00", [59 x i8] zeroinitializer }, align 32
@beiscsi_ep_connect._entry_ptr.84 = internal global ptr @beiscsi_ep_connect._entry.82, section ".printk_index", align 4
@beiscsi_ep_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 1206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BS_%d : In  beiscsi_ep_poll\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beiscsi_ep_poll\00", [16 x i8] zeroinitializer }, align 32
@beiscsi_ep_poll._entry_ptr = internal global ptr @beiscsi_ep_poll._entry, section ".printk_index", align 4
@beiscsi_ep_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 1310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BS_%d : In beiscsi_ep_disconnect for ep_cid = %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beiscsi_ep_disconnect\00", [42 x i8] zeroinitializer }, align 32
@beiscsi_ep_disconnect._entry_ptr = internal global ptr @beiscsi_ep_disconnect._entry, section ".printk_index", align 4
@beiscsi_ep_disconnect._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 1317, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BS_%d : ep_array at %u cid %u empty\0A\00", [59 x i8] zeroinitializer }, align 32
@beiscsi_ep_disconnect._entry_ptr.91 = internal global ptr @beiscsi_ep_disconnect._entry.89, section ".printk_index", align 4
@beiscsi_ep_disconnect._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.88, ptr @.str.2, i32 1323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@beiscsi_ep_disconnect._entry_ptr.93 = internal global ptr @beiscsi_ep_disconnect._entry.92, section ".printk_index", align 4
@beiscsi_ep_disconnect._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.88, ptr @.str.2, i32 1332, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BS_%d : close conn failed cid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@beiscsi_ep_disconnect._entry_ptr.96 = internal global ptr @beiscsi_ep_disconnect._entry.94, section ".printk_index", align 4
@beiscsi_ep_disconnect._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.88, ptr @.str.2, i32 1339, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BS_%d : conn_table empty at %u: cid %u\0A\00", [56 x i8] zeroinitializer }, align 32
@beiscsi_ep_disconnect._entry_ptr.99 = internal global ptr @beiscsi_ep_disconnect._entry.97, section ".printk_index", align 4
@beiscsi_iface_create_ipv4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 251, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"BS_%d : Could not create default IPv4 address.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"beiscsi_iface_create_ipv4\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_iface_create_ipv4._entry_ptr = internal global ptr @beiscsi_iface_create_ipv4._entry, section ".printk_index", align 4
@beiscsi_iface_create_ipv6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 270, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"BS_%d : Could not create default IPv6 address.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"beiscsi_iface_create_ipv6\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_iface_create_ipv6._entry_ptr = internal global ptr @beiscsi_iface_create_ipv6._entry, section ".printk_index", align 4
@beiscsi_iface_config_ipv4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 372, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BS_%d : Invalid BOOTPROTO: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"beiscsi_iface_config_ipv4\00", [38 x i8] zeroinitializer }, align 32
@beiscsi_iface_config_ipv4._entry_ptr = internal global ptr @beiscsi_iface_config_ipv4._entry, section ".printk_index", align 4
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dhcp\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1058, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BS_%d : In beiscsi_open_conn\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beiscsi_open_conn\00", [46 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry_ptr = internal global ptr @beiscsi_open_conn._entry, section ".printk_index", align 4
@beiscsi_open_conn._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 1063, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BS_%d : No free cid available\0A\00", [33 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry_ptr.113 = internal global ptr @beiscsi_open_conn._entry.111, section ".printk_index", align 4
@beiscsi_open_conn._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.2, i32 1069, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BS_%d : In beiscsi_open_conn, ep_cid=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry_ptr.116 = internal global ptr @beiscsi_open_conn._entry.114, section ".printk_index", align 4
@beiscsi_open_conn._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.110, ptr @.str.2, i32 1088, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"BS_%d : Failed to allocate memory for mgmt_open_connection\0A\00", [36 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry_ptr.119 = internal global ptr @beiscsi_open_conn._entry.117, section ".printk_index", align 4
@beiscsi_open_conn._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.110, ptr @.str.2, i32 1099, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"BS_%d : mgmt_open_connection Failed for cid=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry_ptr.122 = internal global ptr @beiscsi_open_conn._entry.120, section ".printk_index", align 4
@beiscsi_open_conn._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.110, ptr @.str.2, i32 1111, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BS_%d : mgmt_open_connection Failed\00", [60 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry_ptr.125 = internal global ptr @beiscsi_open_conn._entry.123, section ".printk_index", align 4
@beiscsi_open_conn._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.110, ptr @.str.2, i32 1127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BS_%d : mgmt_open_connection Success\0A\00", [58 x i8] zeroinitializer }, align 32
@beiscsi_open_conn._entry_ptr.128 = internal global ptr @beiscsi_open_conn._entry.126, section ".printk_index", align 4
@beiscsi_get_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 960, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"BS_%d : failed to get cid: available %u:%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beiscsi_get_cid\00", [16 x i8] zeroinitializer }, align 32
@beiscsi_get_cid._entry_ptr = internal global ptr @beiscsi_get_cid._entry, section ".printk_index", align 4
@beiscsi_conn_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 1264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BS_%d : invalidate conn failed cid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"beiscsi_conn_close\00", [45 x i8] zeroinitializer }, align 32
@beiscsi_conn_close._entry_ptr = internal global ptr @beiscsi_conn_close._entry, section ".printk_index", align 4
@beiscsi_conn_close._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 1285, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BS_%d : upload conn failed cid %d\0A\00", [61 x i8] zeroinitializer }, align 32
@beiscsi_conn_close._entry_ptr.135 = internal global ptr @beiscsi_conn_close._entry.133, section ".printk_index", align 4
@beiscsi_put_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 993, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"BS_%d : failed to put cid %u: available %u:%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"beiscsi_put_cid\00", [16 x i8] zeroinitializer }, align 32
@beiscsi_put_cid._entry_ptr = internal global ptr @beiscsi_put_cid._entry, section ".printk_index", align 4
@switch.table.beiscsi_get_host_param = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 4, i32 8, i32 16, i32 1, i32 32, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.beiscsi_attr_is_visible = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 292, i16 292, i16 292, i16 292, i16 0, i16 0, i16 292, i16 0, i16 0, i16 0, i16 0, i16 292, i16 292, i16 292, i16 292], [34 x i8] zeroinitializer }, align 32
@switch.table.beiscsi_attr_is_visible.138 = internal constant { [35 x i16], [58 x i8] } { [35 x i16] [i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 0, i16 292], [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 15, i64 16]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 16, i64 7, i64 12]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.144 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.145 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 7, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 21]
@__sancov_gen_cov_switch_values.148 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.149 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 50, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 57, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 62, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 65, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 85, i32 44 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 110, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 144, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 199, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 209, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 229, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 439, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 447, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 462, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 470, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 497, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 582, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 599, i32 23 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 600, i32 30 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 600, i32 41 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 609, i32 23 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 630, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 637, i32 22 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 643, i32 23 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 660, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 757, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 761, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 768, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 779, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 831, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 846, i32 32 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 909, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 913, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 919, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1153, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1160, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1166, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1182, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1205, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1308, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1314, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1322, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1330, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1337, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 249, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 268, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 370, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 536, i32 23 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 550, i32 23 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1057, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1062, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1067, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1086, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1097, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1109, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1126, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 958, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1262, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 1283, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.539 = private constant [36 x i8] c"../drivers/scsi/be2iscsi/be_iscsi.c\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.539, i32 991, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant [36 x i8] c"switch.table.beiscsi_get_host_param\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [37 x i8] c"switch.table.beiscsi_attr_is_visible\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [41 x i8] c"switch.table.beiscsi_attr_is_visible.138\00", align 1
@llvm.compiler.used = appending global [182 x ptr] [ptr @beiscsi_conn_bind._entry, ptr @beiscsi_conn_bind._entry.22, ptr @beiscsi_conn_bind._entry.25, ptr @beiscsi_conn_bind._entry_ptr, ptr @beiscsi_conn_bind._entry_ptr.24, ptr @beiscsi_conn_bind._entry_ptr.27, ptr @beiscsi_conn_close._entry, ptr @beiscsi_conn_close._entry.133, ptr @beiscsi_conn_close._entry_ptr, ptr @beiscsi_conn_close._entry_ptr.135, ptr @beiscsi_conn_create._entry, ptr @beiscsi_conn_create._entry_ptr, ptr @beiscsi_conn_get_stats._entry, ptr @beiscsi_conn_get_stats._entry_ptr, ptr @beiscsi_conn_start._entry, ptr @beiscsi_conn_start._entry.68, ptr @beiscsi_conn_start._entry.71, ptr @beiscsi_conn_start._entry_ptr, ptr @beiscsi_conn_start._entry_ptr.70, ptr @beiscsi_conn_start._entry_ptr.73, ptr @beiscsi_ep_connect._entry, ptr @beiscsi_ep_connect._entry.76, ptr @beiscsi_ep_connect._entry.78, ptr @beiscsi_ep_connect._entry.82, ptr @beiscsi_ep_connect._entry_ptr, ptr @beiscsi_ep_connect._entry_ptr.77, ptr @beiscsi_ep_connect._entry_ptr.81, ptr @beiscsi_ep_connect._entry_ptr.84, ptr @beiscsi_ep_disconnect._entry, ptr @beiscsi_ep_disconnect._entry.89, ptr @beiscsi_ep_disconnect._entry.92, ptr @beiscsi_ep_disconnect._entry.94, ptr @beiscsi_ep_disconnect._entry.97, ptr @beiscsi_ep_disconnect._entry_ptr, ptr @beiscsi_ep_disconnect._entry_ptr.91, ptr @beiscsi_ep_disconnect._entry_ptr.93, ptr @beiscsi_ep_disconnect._entry_ptr.96, ptr @beiscsi_ep_disconnect._entry_ptr.99, ptr @beiscsi_ep_get_param._entry, ptr @beiscsi_ep_get_param._entry_ptr, ptr @beiscsi_ep_poll._entry, ptr @beiscsi_ep_poll._entry_ptr, ptr @beiscsi_get_cid._entry, ptr @beiscsi_get_cid._entry_ptr, ptr @beiscsi_get_host_param._entry, ptr @beiscsi_get_host_param._entry.55, ptr @beiscsi_get_host_param._entry.58, ptr @beiscsi_get_host_param._entry.61, ptr @beiscsi_get_host_param._entry_ptr, ptr @beiscsi_get_host_param._entry_ptr.57, ptr @beiscsi_get_host_param._entry_ptr.60, ptr @beiscsi_get_host_param._entry_ptr.63, ptr @beiscsi_iface_config_ipv4._entry, ptr @beiscsi_iface_config_ipv4._entry_ptr, ptr @beiscsi_iface_create_ipv4._entry, ptr @beiscsi_iface_create_ipv4._entry_ptr, ptr @beiscsi_iface_create_ipv6._entry, ptr @beiscsi_iface_create_ipv6._entry_ptr, ptr @beiscsi_iface_get_param._entry, ptr @beiscsi_iface_get_param._entry_ptr, ptr @beiscsi_iface_set_param._entry, ptr @beiscsi_iface_set_param._entry.29, ptr @beiscsi_iface_set_param._entry.32, ptr @beiscsi_iface_set_param._entry.35, ptr @beiscsi_iface_set_param._entry.40, ptr @beiscsi_iface_set_param._entry_ptr, ptr @beiscsi_iface_set_param._entry_ptr.31, ptr @beiscsi_iface_set_param._entry_ptr.34, ptr @beiscsi_iface_set_param._entry_ptr.37, ptr @beiscsi_iface_set_param._entry_ptr.42, ptr @beiscsi_open_conn._entry, ptr @beiscsi_open_conn._entry.111, ptr @beiscsi_open_conn._entry.114, ptr @beiscsi_open_conn._entry.117, ptr @beiscsi_open_conn._entry.120, ptr @beiscsi_open_conn._entry.123, ptr @beiscsi_open_conn._entry.126, ptr @beiscsi_open_conn._entry_ptr, ptr @beiscsi_open_conn._entry_ptr.113, ptr @beiscsi_open_conn._entry_ptr.116, ptr @beiscsi_open_conn._entry_ptr.119, ptr @beiscsi_open_conn._entry_ptr.122, ptr @beiscsi_open_conn._entry_ptr.125, ptr @beiscsi_open_conn._entry_ptr.128, ptr @beiscsi_put_cid._entry, ptr @beiscsi_put_cid._entry_ptr, ptr @beiscsi_session_create._entry, ptr @beiscsi_session_create._entry.12, ptr @beiscsi_session_create._entry.3, ptr @beiscsi_session_create._entry.8, ptr @beiscsi_session_create._entry_ptr, ptr @beiscsi_session_create._entry_ptr.10, ptr @beiscsi_session_create._entry_ptr.14, ptr @beiscsi_session_create._entry_ptr.7, ptr @beiscsi_session_destroy._entry, ptr @beiscsi_session_destroy._entry_ptr, ptr @beiscsi_set_param._entry, ptr @beiscsi_set_param._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @switch.table.beiscsi_get_host_param, ptr @switch.table.beiscsi_attr_is_visible, ptr @switch.table.beiscsi_attr_is_visible.138], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_session_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_session_create._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_session_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_session_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_session_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_bind._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_bind._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_set_param._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_set_param._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_set_param._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_set_param._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_host_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_host_param._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_host_param._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_host_param._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_start._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_start._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_connect._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_connect._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_connect._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_disconnect._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_disconnect._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_disconnect._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_ep_disconnect._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_create_ipv4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_create_ipv6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_iface_config_ipv4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_open_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_open_conn._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_open_conn._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_open_conn._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_open_conn._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_open_conn._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_open_conn._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_get_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_conn_close._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beiscsi_put_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.beiscsi_get_host_param to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.beiscsi_attr_is_visible to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.beiscsi_attr_is_visible.138 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @beiscsi_session_create(ptr noundef readonly %ep, i16 noundef zeroext %cmds_max, i16 noundef zeroext %qdepth, i32 noundef %initial_cmdsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %land.lhs.true.do.body7_crit_edge, label %do.body20

land.lhs.true.do.body7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.body7:                                         ; preds = %land.lhs.true.do.body7_crit_edge, %if.end.do.body7_crit_edge
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 48
  %8 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr_log_enable, align 4
  %and8 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.end13

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %shost14 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %10 = ptrtoint ptr %shost14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost14, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.4, i32 noundef 58, i32 noundef %5) #9
  br label %cleanup

do.body20:                                        ; preds = %land.lhs.true
  %attr_log_enable22 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 48
  %12 = ptrtoint ptr %attr_log_enable22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr_log_enable22, align 4
  %and23 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body20.if.end31_crit_edge, label %do.end28

do.body20.if.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end28:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %shost29 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %14 = ptrtoint ptr %shost29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost29, align 4
  %shost_gendev30 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev30, ptr noundef nonnull @.str.9, i32 noundef 63) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %do.body20.if.end31_crit_edge
  %conv = zext i16 %cmds_max to i32
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %wrbs_per_cxn = getelementptr inbounds %struct.hba_parameters, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %wrbs_per_cxn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wrbs_per_cxn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp = icmp ult i32 %19, %conv
  br i1 %cmp, label %do.body37, label %if.end31.if.end65_crit_edge

if.end31.if.end65_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.body37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %shost49 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %20 = ptrtoint ptr %shost49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost49, align 4
  %shost_gendev50 = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev50, ptr noundef nonnull @.str.13, i32 noundef 70, i32 noundef %conv, i32 noundef %19, i32 noundef %19) #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %wrbs_per_cxn63 = getelementptr inbounds %struct.hba_parameters, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %wrbs_per_cxn63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wrbs_per_cxn63, align 4
  %conv64 = trunc i32 %25 to i16
  br label %if.end65

if.end65:                                         ; preds = %do.body37, %if.end31.if.end65_crit_edge
  %cmds_max.addr.0 = phi i16 [ %conv64, %do.body37 ], [ %cmds_max, %if.end31.if.end65_crit_edge ]
  %shost66 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %26 = ptrtoint ptr %shost66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost66, align 4
  %call67 = tail call ptr @iscsi_session_setup(ptr noundef nonnull @beiscsi_iscsi_transport, ptr noundef %27, i16 noundef zeroext %cmds_max.addr.0, i32 noundef 4, i32 noundef 56, i32 noundef %initial_cmdsn, i32 noundef -1) #6
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %if.end70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %dd_data71 = getelementptr inbounds %struct.iscsi_cls_session, ptr %call67, i32 0, i32 16
  %28 = ptrtoint ptr %dd_data71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dd_data71, align 4
  %dd_data72 = getelementptr inbounds %struct.iscsi_session, ptr %29, i32 0, i32 60
  %30 = ptrtoint ptr %dd_data72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dd_data72, align 4
  %pcidev = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcidev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %call73 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.15, ptr noundef %dev, i32 noundef 324, i32 noundef 64, i32 noundef 0) #6
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call73, ptr %31, align 4
  %tobool75.not = icmp eq ptr %call73, null
  br i1 %tobool75.not, label %destroy_sess, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

destroy_sess:                                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iscsi_session_teardown(ptr noundef nonnull %call67) #6
  br label %cleanup

cleanup:                                          ; preds = %destroy_sess, %if.end70.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end13, %do.body7.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %destroy_sess ], [ null, %do.end ], [ null, %do.end13 ], [ null, %do.body7.cleanup_crit_edge ], [ null, %if.end65.cleanup_crit_edge ], [ %call67, %if.end70.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_session_setup(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_teardown(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beiscsi_session_destroy(ptr noundef %cls_session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @dma_pool_destroy(ptr noundef %5) #6
  tail call void @iscsi_session_teardown(ptr noundef %cls_session) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beiscsi_session_fail(ptr nocapture noundef readonly %cls_session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  tail call void @iscsi_session_failure(ptr noundef %1, i32 noundef 1011) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_failure(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @beiscsi_conn_create(ptr noundef %cls_session, i32 noundef %cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %attr_log_enable = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 4, i32 13, i32 3
  %4 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %dev_to_shost.exit.if.end_crit_edge, label %do.end

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shost3 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %shost3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost3, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.18, i32 noundef 146, i32 noundef %cid) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_to_shost.exit.if.end_crit_edge
  %call6 = tail call ptr @iscsi_conn_setup(ptr noundef %cls_session, i32 noundef 44, i32 noundef %cid) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data, align 8
  %dd_data10 = getelementptr inbounds %struct.iscsi_conn, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dd_data10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dd_data10, align 4
  %ep = getelementptr inbounds %struct.beiscsi_conn, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ep, align 4
  %phba11 = getelementptr inbounds %struct.beiscsi_conn, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %phba11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %phba11, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %11, align 4
  %dd_data13 = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 16
  %15 = ptrtoint ptr %dd_data13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dd_data13, align 4
  %dd_data14 = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 60
  %17 = ptrtoint ptr %dd_data14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dd_data14, align 4
  %beiscsi_sess15 = getelementptr inbounds %struct.beiscsi_conn, ptr %11, i32 0, i32 9
  %19 = ptrtoint ptr %beiscsi_sess15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %beiscsi_sess15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge
  ret ptr %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_conn_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i64 noundef %transport_fd, i32 noundef %is_leading) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %5, %entry ], [ %7, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %phwi_ctrlr3 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 8
  %8 = ptrtoint ptr %phwi_ctrlr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phwi_ctrlr3, align 4
  %call4 = tail call ptr @iscsi_lookup_endpoint(i64 noundef %transport_fd) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call4, align 8
  %call6 = tail call i32 @iscsi_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i32 noundef %is_leading) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.put_ep_crit_edge

if.end.put_ep_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_ep

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp.not = icmp eq ptr %13, %add.ptr
  br i1 %cmp.not, label %if.end22, label %do.body

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %shost17 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %shost17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost17, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev, ptr noundef nonnull @.str.20, i32 noundef 201, ptr noundef %13, ptr noundef %add.ptr) #9
  br label %put_ep

if.end22:                                         ; preds = %if.end9
  %cid_to_cri_map = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 1
  %ep_cid = getelementptr inbounds %struct.beiscsi_endpoint, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ep_cid, align 4
  %idxprom = zext i16 %17 to i32
  %arrayidx = getelementptr [2048 x i16], ptr %cid_to_cri_map, i32 0, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conn_table = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %conn_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn_table, align 4
  %idxprom23 = zext i16 %19 to i32
  %arrayidx24 = getelementptr ptr, ptr %21, i32 %idxprom23
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %23, null
  br i1 %tobool25.not, label %if.end22.if.end52_crit_edge, label %if.then26

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then26:                                        ; preds = %if.end22
  %cmp30.not = icmp eq ptr %3, %23
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.then26.do.end42_crit_edge

if.then26.do.end42_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

lor.lhs.false32:                                  ; preds = %if.then26
  %ep36 = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %ep36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep36, align 4
  %cmp37.not = icmp eq ptr %11, %25
  br i1 %cmp37.not, label %lor.lhs.false32.if.end52_crit_edge, label %lor.lhs.false32.do.end42_crit_edge

lor.lhs.false32.do.end42_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

lor.lhs.false32.if.end52_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end42:                                         ; preds = %lor.lhs.false32.do.end42_crit_edge, %if.then26.do.end42_crit_edge
  %shost43 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %shost43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost43, align 4
  %shost_gendev44 = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev44, ptr noundef nonnull @.str.23, i32 noundef 214, i32 noundef %idxprom23, i32 noundef %idxprom, ptr noundef %3, ptr noundef nonnull %23) #9
  br label %put_ep

if.end52:                                         ; preds = %lor.lhs.false32.if.end52_crit_edge, %if.end22.if.end52_crit_edge
  %beiscsi_conn_cid = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %beiscsi_conn_cid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %idxprom, ptr %beiscsi_conn_cid, align 4
  %ep55 = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %ep55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %11, ptr %ep55, align 4
  %conn56 = getelementptr inbounds %struct.beiscsi_endpoint, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %conn56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %conn56, align 4
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %9, align 4
  %doorbell_offset = getelementptr %struct.hwi_wrb_context, ptr %32, i32 %idxprom23, i32 9
  %33 = ptrtoint ptr %doorbell_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %doorbell_offset, align 4
  %doorbell_offset59 = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %doorbell_offset59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %doorbell_offset59, align 4
  %attr_log_enable62 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 4, i32 13, i32 3
  %36 = ptrtoint ptr %attr_log_enable62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attr_log_enable62, align 4
  %and63 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end52.if.end74_crit_edge, label %do.end68

if.end52.if.end74_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

do.end68:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %shost69 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %38 = ptrtoint ptr %shost69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shost69, align 4
  %shost_gendev70 = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  %40 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ep_cid, align 4
  %conv72 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev70, ptr noundef nonnull @.str.26, i32 noundef 231, i32 noundef %conv72, i32 noundef %idxprom23, ptr noundef %3) #9
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end52.if.end74_crit_edge
  %42 = ptrtoint ptr %conn_table to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conn_table, align 4
  %arrayidx79 = getelementptr ptr, ptr %43, i32 %idxprom23
  %44 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %3, ptr %arrayidx79, align 4
  br label %put_ep

put_ep:                                           ; preds = %if.end74, %do.end42, %do.body, %if.end.put_ep_crit_edge
  %rc.0 = phi i32 [ -17, %do.body ], [ -22, %do.end42 ], [ 0, %if.end74 ], [ -22, %if.end.put_ep_crit_edge ]
  tail call void @iscsi_put_endpoint(ptr noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %put_ep, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %put_ep ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_lookup_endpoint(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_put_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beiscsi_iface_create_default(ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %if_info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_info) #6
  %0 = ptrtoint ptr %if_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %if_info, align 4, !annotation !249
  %call = call i32 @beiscsi_if_get_info(ptr noundef %phba, i32 noundef 1, ptr noundef nonnull %if_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ipv4_iface.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 28
  %1 = ptrtoint ptr %ipv4_iface.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ipv4_iface.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.beiscsi_iface_create_ipv4.exit_crit_edge

if.then.beiscsi_iface_create_ipv4.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_iface_create_ipv4.exit

if.end.i:                                         ; preds = %if.then
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %3 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shost.i, align 4
  %call.i = call ptr @iscsi_create_iface(ptr noundef %4, ptr noundef nonnull @beiscsi_iscsi_transport, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %5 = ptrtoint ptr %ipv4_iface.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %ipv4_iface.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.beiscsi_iface_create_ipv4.exit_crit_edge

if.end.i.beiscsi_iface_create_ipv4.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_iface_create_ipv4.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.100, i32 noundef 251) #9
  br label %beiscsi_iface_create_ipv4.exit

beiscsi_iface_create_ipv4.exit:                   ; preds = %do.body.i, %if.end.i.beiscsi_iface_create_ipv4.exit_crit_edge, %if.then.beiscsi_iface_create_ipv4.exit_crit_edge
  %8 = ptrtoint ptr %if_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %if_info, align 4
  call void @kfree(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %beiscsi_iface_create_ipv4.exit, %entry.if.end_crit_edge
  %call2 = call i32 @beiscsi_if_get_info(ptr noundef %phba, i32 noundef 16, ptr noundef nonnull %if_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %ipv6_iface.i = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 29
  %10 = ptrtoint ptr %ipv6_iface.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipv6_iface.i, align 4
  %tobool.not.i10 = icmp eq ptr %11, null
  br i1 %tobool.not.i10, label %if.end.i14, label %if.then4.beiscsi_iface_create_ipv6.exit_crit_edge

if.then4.beiscsi_iface_create_ipv6.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_iface_create_ipv6.exit

if.end.i14:                                       ; preds = %if.then4
  %shost.i11 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 27
  %12 = ptrtoint ptr %shost.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost.i11, align 4
  %call.i12 = call ptr @iscsi_create_iface(ptr noundef %13, ptr noundef nonnull @beiscsi_iscsi_transport, i32 noundef 2, i32 noundef 0, i32 noundef 0) #6
  %14 = ptrtoint ptr %ipv6_iface.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i12, ptr %ipv6_iface.i, align 4
  %tobool3.not.i13 = icmp eq ptr %call.i12, null
  br i1 %tobool3.not.i13, label %do.body.i16, label %if.end.i14.beiscsi_iface_create_ipv6.exit_crit_edge

if.end.i14.beiscsi_iface_create_ipv6.exit_crit_edge: ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_iface_create_ipv6.exit

do.body.i16:                                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %shost.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost.i11, align 4
  %shost_gendev.i15 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i15, ptr noundef nonnull @.str.102, i32 noundef 270) #9
  br label %beiscsi_iface_create_ipv6.exit

beiscsi_iface_create_ipv6.exit:                   ; preds = %do.body.i16, %if.end.i14.beiscsi_iface_create_ipv6.exit_crit_edge, %if.then4.beiscsi_iface_create_ipv6.exit_crit_edge
  %17 = ptrtoint ptr %if_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %if_info, align 4
  call void @kfree(ptr noundef %18) #6
  br label %if.end6

if.end6:                                          ; preds = %beiscsi_iface_create_ipv6.exit, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_info) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_if_get_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beiscsi_iface_destroy_default(ptr nocapture noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipv6_iface = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 29
  %0 = ptrtoint ptr %ipv6_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipv6_iface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iscsi_destroy_iface(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %ipv6_iface to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ipv6_iface, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ipv4_iface = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 28
  %3 = ptrtoint ptr %ipv4_iface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipv4_iface, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iscsi_destroy_iface(ptr noundef nonnull %4) #6
  %5 = ptrtoint ptr %ipv4_iface to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ipv4_iface, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_destroy_iface(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_iface_set_param(ptr noundef %shost, ptr noundef %data, i32 noundef %dt_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %state = getelementptr %struct.Scsi_Host, ptr %shost, i32 3, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %land.lhs.true.do.body_crit_edge, label %if.end12

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %attr_log_enable = getelementptr %struct.Scsi_Host, ptr %shost, i32 4, i32 13, i32 3
  %4 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_log_enable, align 4
  %and4 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %shost8 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %shost8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost8, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.4, i32 noundef 440, i32 noundef %1) #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true
  %call13 = tail call i32 @beiscsi_if_get_handle(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond.preheader, label %do.body16

for.cond.preheader:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dt_len)
  %cmp.i197 = icmp sgt i32 %dt_len, 3
  br i1 %cmp.i197, label %land.lhs.true.i.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.lr.ph:                            ; preds = %for.cond.preheader
  %attr_log_enable64 = getelementptr %struct.Scsi_Host, ptr %shost, i32 4, i32 13, i32 3
  %shost71 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %ipv6_iface.i.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 3
  %ipv4_iface.i.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 2
  br label %land.lhs.true.i

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %shost26 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost26, align 4
  %shost_gendev27 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev27, ptr noundef nonnull @.str.30, i32 noundef 448) #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attrib.0199 = phi ptr [ %data, %land.lhs.true.i.lr.ph ], [ %add.ptr.i177, %for.inc.land.lhs.true.i_crit_edge ]
  %rm_len.0198 = phi i32 [ %dt_len, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %10 = ptrtoint ptr %attrib.0199 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attrib.0199, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp1.i = icmp ult i16 %11, 4
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rm_len.0198, i32 %conv.i)
  %cmp5.i.not = icmp ult i32 %rm_len.0198, %conv.i
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %for.body

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %land.lhs.true.i
  %param_type = getelementptr i8, ptr %attrib.0199, i32 15
  %12 = ptrtoint ptr %param_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %param_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp36.not = icmp eq i8 %13, 2
  br i1 %cmp36.not, label %if.end39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end39:                                         ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %attrib.0199, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool40.not = icmp eq i32 %15, 0
  br i1 %tobool40.not, label %do.body62, label %do.body42

do.body42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shost71, align 4
  %shost_gendev56 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev56, ptr noundef nonnull @.str.33, i32 noundef 465, i32 noundef %15) #9
  br label %cleanup

do.body62:                                        ; preds = %if.end39
  %18 = ptrtoint ptr %attr_log_enable64 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attr_log_enable64, align 4
  %and65 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body62.if.end77_crit_edge, label %do.end70

do.body62.if.end77_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

do.end70:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost71, align 4
  %shost_gendev72 = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  %iface_type = getelementptr i8, ptr %attrib.0199, i32 14
  %22 = ptrtoint ptr %iface_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iface_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp74 = icmp eq i8 %23, 1
  %cond = select i1 %cmp74, ptr @.str.38, ptr @.str.39
  %param = getelementptr i8, ptr %attrib.0199, i32 12
  %24 = ptrtoint ptr %param to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %param, align 1
  %conv76 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev72, ptr noundef nonnull @.str.36, i32 noundef 473, ptr noundef nonnull %cond, i32 noundef %conv76) #9
  br label %if.end77

if.end77:                                         ; preds = %do.end70, %do.body62.if.end77_crit_edge
  %param80 = getelementptr i8, ptr %attrib.0199, i32 12
  %26 = ptrtoint ptr %param80 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %param80, align 1
  %.off = add i16 %27, -15
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end77
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i16 %27, label %sw.bb.if.end105.thread_crit_edge [
    i16 15, label %sw.bb.i
    i16 16, label %sw.bb4.i
  ]

sw.bb.if.end105.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.thread

sw.bb.i:                                          ; preds = %sw.bb
  %value.i = getelementptr i8, ptr %attrib.0199, i32 16
  %29 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp.not.i = icmp eq i8 %30, 2
  br i1 %cmp.not.i, label %sw.bb.i.for.inc_crit_edge, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb4.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %value5.i = getelementptr i8, ptr %attrib.0199, i32 16
  %31 = ptrtoint ptr %value5.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %value5.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb4.i, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ %32, %sw.bb4.i ], [ -1, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ]
  %call3.i = tail call i32 @beiscsi_if_set_vlan(ptr noundef %add.ptr, i16 noundef zeroext %.sink.i) #6
  br label %sw.epilog89

sw.default:                                       ; preds = %if.end77
  %iface_type83 = getelementptr i8, ptr %attrib.0199, i32 14
  %33 = ptrtoint ptr %iface_type83 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iface_type83, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %34, label %sw.default.if.end105.thread_crit_edge [
    i8 1, label %sw.bb85
    i8 2, label %sw.bb87
  ]

sw.default.if.end105.thread_crit_edge:            ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.thread

sw.bb85:                                          ; preds = %sw.default
  %36 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.140)
  switch i16 %27, label %sw.bb85.if.end105.thread_crit_edge [
    i16 12, label %sw.bb.i156
    i16 3, label %sw.bb5.i
    i16 4, label %sw.bb8.i
    i16 1, label %sw.bb39.i
    i16 2, label %sw.bb50.i
  ]

sw.bb85.if.end105.thread_crit_edge:               ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.thread

sw.bb.i156:                                       ; preds = %sw.bb85
  %value.i154 = getelementptr i8, ptr %attrib.0199, i32 16
  %37 = ptrtoint ptr %value.i154 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %value.i154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp.i155 = icmp eq i8 %38, 2
  %39 = ptrtoint ptr %ipv4_iface.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ipv4_iface.i.i, align 4
  br i1 %cmp.i155, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i156
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.for.inc_crit_edge

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then.i
  %41 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %shost71, align 4
  %call.i.i = tail call ptr @iscsi_create_iface(ptr noundef %42, ptr noundef nonnull @beiscsi_iscsi_transport, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %43 = ptrtoint ptr %ipv4_iface.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %ipv4_iface.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i.i, label %do.body.i.i, label %if.end.i.i.for.inc_crit_edge

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shost71, align 4
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.100, i32 noundef 251) #9
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb.i156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iscsi_destroy_iface(ptr noundef %40) #6
  %46 = ptrtoint ptr %ipv4_iface.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ipv4_iface.i.i, align 4
  br label %if.end105.thread

sw.bb5.i:                                         ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  %value6.i = getelementptr i8, ptr %attrib.0199, i32 16
  %call7.i = tail call i32 @beiscsi_if_set_gw(ptr noundef %add.ptr, i32 noundef 1, ptr noundef %value6.i) #6
  br label %sw.epilog89

sw.bb8.i:                                         ; preds = %sw.bb85
  %value9.i = getelementptr i8, ptr %attrib.0199, i32 16
  %47 = ptrtoint ptr %value9.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %value9.i, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %48, label %do.body.i [
    i8 2, label %if.then14.i
    i8 1, label %if.then22.i
  ]

if.then14.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = tail call i32 @beiscsi_if_en_dhcp(ptr noundef %add.ptr, i32 noundef 1) #6
  br label %sw.epilog89

if.then22.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = tail call i32 @beiscsi_if_en_static(ptr noundef %add.ptr, i32 noundef 1, ptr noundef null, ptr noundef null) #6
  br label %sw.epilog89

do.body.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shost71, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 49
  %conv33.i = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.104, i32 noundef 372, i32 noundef %conv33.i) #9
  br label %if.end105.thread

sw.bb39.i:                                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  %value40.i = getelementptr i8, ptr %attrib.0199, i32 16
  %call42.i = tail call ptr @nla_find(ptr noundef %data, i32 noundef %dt_len, i32 noundef 2) #6
  %tobool43.not.i = icmp eq ptr %call42.i, null
  %value46.i = getelementptr i8, ptr %call42.i, i32 16
  %subnet.0.i = select i1 %tobool43.not.i, ptr null, ptr %value46.i
  %call49.i = tail call i32 @beiscsi_if_en_static(ptr noundef %add.ptr, i32 noundef 1, ptr noundef %value40.i, ptr noundef %subnet.0.i) #6
  br label %sw.epilog89

sw.bb50.i:                                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  %value51.i = getelementptr i8, ptr %attrib.0199, i32 16
  %call53.i = tail call ptr @nla_find(ptr noundef %data, i32 noundef %dt_len, i32 noundef 1) #6
  %tobool54.not.i = icmp eq ptr %call53.i, null
  %value57.i = getelementptr i8, ptr %call53.i, i32 16
  %ip.0.i = select i1 %tobool54.not.i, ptr null, ptr %value57.i
  %call60.i = tail call i32 @beiscsi_if_en_static(ptr noundef %add.ptr, i32 noundef 1, ptr noundef %ip.0.i, ptr noundef %value51.i) #6
  br label %sw.epilog89

sw.bb87:                                          ; preds = %sw.default
  %52 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.142)
  switch i16 %27, label %sw.bb87.if.end105.thread_crit_edge [
    i16 12, label %sw.bb.i161
    i16 7, label %sw.bb5.i174
  ]

sw.bb87.if.end105.thread_crit_edge:               ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.thread

sw.bb.i161:                                       ; preds = %sw.bb87
  %value.i159 = getelementptr i8, ptr %attrib.0199, i32 16
  %53 = ptrtoint ptr %value.i159 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %value.i159, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp.i160 = icmp eq i8 %54, 2
  %55 = ptrtoint ptr %ipv6_iface.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ipv6_iface.i.i, align 4
  br i1 %cmp.i160, label %if.then.i163, label %if.else.i170

if.then.i163:                                     ; preds = %sw.bb.i161
  %tobool.not.i.i162 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i162, label %if.end.i.i167, label %if.then.i163.for.inc_crit_edge

if.then.i163.for.inc_crit_edge:                   ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i167:                                    ; preds = %if.then.i163
  %57 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %shost71, align 4
  %call.i.i165 = tail call ptr @iscsi_create_iface(ptr noundef %58, ptr noundef nonnull @beiscsi_iscsi_transport, i32 noundef 2, i32 noundef 0, i32 noundef 0) #6
  %59 = ptrtoint ptr %ipv6_iface.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i165, ptr %ipv6_iface.i.i, align 4
  %tobool3.not.i.i166 = icmp eq ptr %call.i.i165, null
  br i1 %tobool3.not.i.i166, label %do.body.i.i169, label %if.end.i.i167.for.inc_crit_edge

if.end.i.i167.for.inc_crit_edge:                  ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body.i.i169:                                   ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %shost71, align 4
  %shost_gendev.i.i168 = getelementptr inbounds %struct.Scsi_Host, ptr %61, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i.i168, ptr noundef nonnull @.str.102, i32 noundef 270) #9
  br label %cleanup

if.else.i170:                                     ; preds = %sw.bb.i161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iscsi_destroy_iface(ptr noundef %56) #6
  %62 = ptrtoint ptr %ipv6_iface.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %ipv6_iface.i.i, align 4
  br label %if.end105.thread

sw.bb5.i174:                                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #8
  %value6.i172 = getelementptr i8, ptr %attrib.0199, i32 16
  %call7.i173 = tail call i32 @beiscsi_if_en_static(ptr noundef %add.ptr, i32 noundef 16, ptr noundef %value6.i172, ptr noundef null) #6
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %sw.bb5.i174, %sw.bb50.i, %sw.bb39.i, %if.then22.i, %if.then14.i, %sw.bb5.i, %sw.epilog.sink.split.i
  %ret.1 = phi i32 [ %call3.i, %sw.epilog.sink.split.i ], [ %call60.i, %sw.bb50.i ], [ %call49.i, %sw.bb39.i ], [ %call15.i, %if.then14.i ], [ %call23.i, %if.then22.i ], [ %call7.i, %sw.bb5.i ], [ %call7.i173, %sw.bb5.i174 ]
  %63 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %ret.1, label %sw.epilog89.cleanup_crit_edge [
    i32 -1, label %sw.epilog89.if.end105.thread_crit_edge
    i32 0, label %sw.epilog89.for.inc_crit_edge
  ]

sw.epilog89.for.inc_crit_edge:                    ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.epilog89.if.end105.thread_crit_edge:           ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.thread

sw.epilog89.cleanup_crit_edge:                    ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end105.thread:                                 ; preds = %sw.epilog89.if.end105.thread_crit_edge, %if.else.i170, %sw.bb87.if.end105.thread_crit_edge, %do.body.i, %if.else.i, %sw.bb85.if.end105.thread_crit_edge, %sw.default.if.end105.thread_crit_edge, %sw.bb.if.end105.thread_crit_edge
  %64 = ptrtoint ptr %shost71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shost71, align 4
  %shost_gendev97 = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 49
  %iface_type98 = getelementptr i8, ptr %attrib.0199, i32 14
  %66 = ptrtoint ptr %iface_type98 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %iface_type98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp100 = icmp eq i8 %67, 1
  %cond102 = select i1 %cmp100, ptr @.str.38, ptr @.str.39
  %68 = ptrtoint ptr %param80 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %param80, align 1
  %conv104 = zext i16 %69 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev97, ptr noundef nonnull @.str.41, i32 noundef 501, ptr noundef nonnull %cond102, i32 noundef %conv104) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end105.thread, %sw.epilog89.for.inc_crit_edge, %if.end.i.i167.for.inc_crit_edge, %if.then.i163.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %sw.bb.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %70 = ptrtoint ptr %attrib.0199 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %attrib.0199, align 2
  %conv.i176 = zext i16 %71 to i32
  %sub.i = add nuw nsw i32 %conv.i176, 3
  %and.i = and i32 %sub.i, 131068
  %sub1.i = sub nsw i32 %rm_len.0198, %and.i
  %add.ptr.i177 = getelementptr i8, ptr %attrib.0199, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog89.cleanup_crit_edge, %do.body.i.i169, %do.body.i.i, %do.body42, %land.lhs.true.i.cleanup_crit_edge, %do.body16, %for.cond.preheader.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.body16 ], [ -22, %do.body42 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -19, %do.body.i.i169 ], [ -19, %do.body.i.i ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %ret.1, %sw.epilog89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_if_get_handle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_iface_get_param(ptr nocapture noundef readonly %iface, i32 noundef %param_type, i32 noundef %param, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  %if_info.i = alloca ptr, align 4
  %gateway = alloca %struct.be_cmd_get_def_gateway_resp, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %iface, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gateway) #6
  %4 = call ptr @memset(ptr %gateway, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %param_type)
  %cmp.not = icmp eq i32 %param_type, 2
  br i1 %cmp.not, label %if.end, label %dev_to_shost.exit.cleanup_crit_edge

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %state = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 3, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %and = and i32 %6, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %land.lhs.true.do.body_crit_edge, label %if.end15

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %attr_log_enable = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 4, i32 13, i32 3
  %9 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr_log_enable, align 4
  %and6 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %shost10 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %shost10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost10, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.4, i32 noundef 583, i32 noundef %6) #9
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true
  %13 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %param, label %if.end15.cleanup_crit_edge [
    i32 1, label %if.end15.sw.bb_crit_edge
    i32 2, label %if.end15.sw.bb_crit_edge64
    i32 4, label %if.end15.sw.bb_crit_edge65
    i32 7, label %if.end15.sw.bb_crit_edge66
    i32 15, label %if.end15.sw.bb_crit_edge67
    i32 13, label %if.end15.sw.bb_crit_edge68
    i32 14, label %if.end15.sw.bb_crit_edge69
    i32 12, label %sw.bb17
    i32 3, label %sw.bb30
  ]

if.end15.sw.bb_crit_edge69:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.sw.bb_crit_edge68:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.sw.bb_crit_edge67:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.sw.bb_crit_edge66:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.sw.bb_crit_edge65:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.sw.bb_crit_edge64:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge64, %if.end15.sw.bb_crit_edge65, %if.end15.sw.bb_crit_edge66, %if.end15.sw.bb_crit_edge67, %if.end15.sw.bb_crit_edge68, %if.end15.sw.bb_crit_edge69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_info.i) #6
  %14 = ptrtoint ptr %if_info.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %if_info.i, align 4, !annotation !249
  %iface_type.i = getelementptr inbounds %struct.iscsi_iface, ptr %iface, i32 0, i32 2
  %15 = ptrtoint ptr %iface_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iface_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.i = icmp eq i32 %16, 2
  %spec.store.select.i = select i1 %cmp.i, i32 16, i32 1
  %call.i55 = call i32 @beiscsi_if_get_info(ptr noundef %add.ptr, i32 noundef %spec.store.select.i, ptr noundef nonnull %if_info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end2.i, label %sw.bb.__beiscsi_iface_get_param.exit_crit_edge

sw.bb.__beiscsi_iface_get_param.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %__beiscsi_iface_get_param.exit

if.end2.i:                                        ; preds = %sw.bb
  %17 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %param, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 7, label %sw.bb4.i
    i32 4, label %sw.bb9.i
    i32 2, label %sw.bb15.i
    i32 15, label %sw.bb19.i
    i32 13, label %sw.bb22.i
    i32 14, label %sw.bb30.i
  ]

sw.bb.i:                                          ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %if_info.i, align 4
  %addr.i = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %19, i32 0, i32 5, i32 3
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, ptr noundef %addr.i) #6
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %if_info.i, align 4
  %addr6.i = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %21, i32 0, i32 5, i32 3
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, ptr noundef %addr6.i) #6
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end2.i
  %22 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %if_info.i, align 4
  %dhcp_state.i = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %dhcp_state.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %dhcp_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not.i = icmp eq i32 %25, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 8319381564272347648, ptr %buf, align 1
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call ptr @memcpy(ptr %buf, ptr @.str.107, i32 6)
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %if_info.i, align 4
  %subnet_mask.i = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %29, i32 0, i32 5, i32 4
  %call18.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, ptr noundef %subnet_mask.i) #6
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %if_info.i, align 4
  %vlan_priority.i = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %vlan_priority.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %vlan_priority.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %33)
  %cmp20.i = icmp eq i32 %33, 65535
  %cond.i = select i1 %cmp20.i, ptr @.str.46, ptr @.str.45
  %call21.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond.i) #6
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end2.i
  %34 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %if_info.i, align 4
  %vlan_priority23.i = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %vlan_priority23.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %vlan_priority23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %37)
  %cmp24.i = icmp eq i32 %37, 65535
  br i1 %cmp24.i, label %sw.bb22.i.sw.epilog.i_crit_edge, label %if.else26.i

sw.bb22.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else26.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %37, 4095
  %call28.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.108, i32 noundef %and.i) #6
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end2.i
  %38 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %if_info.i, align 4
  %vlan_priority31.i = getelementptr inbounds %struct.be_cmd_get_if_info_resp, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %vlan_priority31.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %vlan_priority31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %41)
  %cmp32.i = icmp eq i32 %41, 65535
  br i1 %cmp32.i, label %sw.bb30.i.sw.epilog.i_crit_edge, label %if.else34.i

sw.bb30.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else34.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %41, 13
  %and36.i = and i32 %shr.i, 7
  %call37.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.108, i32 noundef %and36.i) #6
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 563, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %if.else34.i, %sw.bb30.i.sw.epilog.i_crit_edge, %if.else26.i, %sw.bb22.i.sw.epilog.i_crit_edge, %sw.bb19.i, %sw.bb15.i, %if.else.i, %if.then11.i, %sw.bb4.i, %sw.bb.i
  %len.0.i = phi i32 [ 0, %do.end.i ], [ %call37.i, %if.else34.i ], [ %call28.i, %if.else26.i ], [ %call21.i, %sw.bb19.i ], [ %call18.i, %sw.bb15.i ], [ 5, %if.else.i ], [ 7, %if.then11.i ], [ %call8.i, %sw.bb4.i ], [ %call3.i, %sw.bb.i ], [ -22, %sw.bb22.i.sw.epilog.i_crit_edge ], [ -22, %sw.bb30.i.sw.epilog.i_crit_edge ]
  %42 = ptrtoint ptr %if_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %if_info.i, align 4
  call void @kfree(ptr noundef %43) #6
  br label %__beiscsi_iface_get_param.exit

__beiscsi_iface_get_param.exit:                   ; preds = %sw.epilog.i, %sw.bb.__beiscsi_iface_get_param.exit_crit_edge
  %retval.0.i57 = phi i32 [ %len.0.i, %sw.epilog.i ], [ %call.i55, %sw.bb.__beiscsi_iface_get_param.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_info.i) #6
  br label %cleanup

sw.bb17:                                          ; preds = %if.end15
  %iface_type = getelementptr inbounds %struct.iscsi_iface, ptr %iface, i32 0, i32 2
  %44 = ptrtoint ptr %iface_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iface_type, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %45, label %sw.bb17.cleanup_crit_edge [
    i32 1, label %if.then19
    i32 2, label %if.then24
  ]

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %ipv4_iface = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %ipv4_iface to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ipv4_iface, align 4
  %tobool20.not = icmp eq ptr %48, null
  %cond = select i1 %tobool20.not, ptr @.str.46, ptr @.str.45
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond)
  br label %cleanup

if.then24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %ipv6_iface = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %ipv6_iface to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ipv6_iface, align 4
  %tobool25.not = icmp eq ptr %50, null
  %cond26 = select i1 %tobool25.not, ptr @.str.46, ptr @.str.45
  %call27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond26)
  br label %cleanup

sw.bb30:                                          ; preds = %if.end15
  %51 = call ptr @memset(ptr %gateway, i32 0, i32 40)
  %call31 = call i32 @beiscsi_if_get_gw(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %gateway) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, ptr %gateway, i32 0, i32 1, i32 3
  %call34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, ptr noundef %addr)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %sw.bb30.cleanup_crit_edge, %if.then24, %if.then19, %sw.bb17.cleanup_crit_edge, %__beiscsi_iface_get_param.exit, %if.end15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_to_shost.exit.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ], [ %call31, %sw.bb30.cleanup_crit_edge ], [ %call34, %if.then33 ], [ %call21, %if.then19 ], [ %call27, %if.then24 ], [ %retval.0.i57, %__beiscsi_iface_get_param.exit ], [ -1, %sw.bb17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gateway) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_if_get_gw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_ep_get_param(ptr nocapture noundef readonly %ep, i32 noundef %param, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.48, i32 noundef 633, i32 noundef %param) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %param, label %if.end.sw.epilog_crit_edge [
    i32 20, label %sw.bb
    i32 21, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dst_tcpport = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %dst_tcpport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dst_tcpport, align 4
  %conv = zext i16 %10 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.50, i32 noundef %conv)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %ip_type = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ip_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp = icmp eq i16 %12, 1
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %dst_addr = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 5
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, ptr noundef %dst_addr)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %dst6_addr = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 4
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, ptr noundef %dst6_addr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then8, %sw.bb, %if.end.sw.epilog_crit_edge
  %len.0 = phi i32 [ %call9, %if.then8 ], [ %call10, %if.else ], [ %call, %sw.bb ], [ -1, %if.end.sw.epilog_crit_edge ]
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_set_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %session1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %session1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session1, align 8
  %dd_data2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data2, align 4
  %phba3 = getelementptr inbounds %struct.beiscsi_conn, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %phba3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phba3, align 4
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %7, i32 0, i32 27
  %10 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.52, i32 noundef 662, i32 noundef %param) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i32 @iscsi_set_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf, i32 noundef %buflen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %param, label %if.end9.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 0, label %sw.bb13
    i32 8, label %sw.bb18
    i32 1, label %sw.bb23
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %first_burst = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %first_burst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %14)
  %cmp = icmp ugt i32 %14, 8192
  br i1 %cmp, label %if.then10, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %first_burst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %first_burst, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end9
  %max_recv_dlength = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 23
  %16 = ptrtoint ptr %max_recv_dlength to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_recv_dlength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %cmp14 = icmp ugt i32 %17, 65536
  br i1 %cmp14, label %if.then15, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %max_recv_dlength to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65536, ptr %max_recv_dlength, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end9
  %max_burst = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %20)
  %cmp19 = icmp ugt i32 %20, 262144
  br i1 %cmp19, label %if.then20, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262144, ptr %max_burst, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end9
  %max_xmit_dlength = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 24
  %22 = ptrtoint ptr %max_xmit_dlength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_xmit_dlength, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %23)
  %cmp24 = icmp ugt i32 %23, 65536
  br i1 %cmp24, label %if.then25, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %max_xmit_dlength to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %max_xmit_dlength, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %sw.bb23.cleanup_crit_edge, %if.then20, %sw.bb18.cleanup_crit_edge, %if.then15, %sw.bb13.cleanup_crit_edge, %if.then10, %sw.bb.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_set_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_get_host_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.be_cmd_get_nic_conf_resp, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %state = getelementptr %struct.Scsi_Host, ptr %shost, i32 3, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %land.lhs.true.do.body_crit_edge, label %do.body13

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %attr_log_enable = getelementptr %struct.Scsi_Host, ptr %shost, i32 4, i32 13, i32 3
  %4 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_log_enable, align 4
  %and4 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %shost8 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %shost8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost8, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.4, i32 noundef 758, i32 noundef %1) #9
  br label %cleanup

do.body13:                                        ; preds = %land.lhs.true
  %attr_log_enable15 = getelementptr %struct.Scsi_Host, ptr %shost, i32 4, i32 13, i32 3
  %8 = ptrtoint ptr %attr_log_enable15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr_log_enable15, align 4
  %and16 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body13.if.end24_crit_edge, label %do.end21

do.body13.if.end24_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end21:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %shost22 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %shost22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost22, align 4
  %shost_gendev23 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev23, ptr noundef nonnull @.str.56, i32 noundef 762, i32 noundef %param) #9
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %do.body13.if.end24_crit_edge
  %12 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %param, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
    i32 4, label %sw.bb75
    i32 5, label %sw.bb78
  ]

sw.bb:                                            ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %resp.i) #6
  %mac_addr_set.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 3, i32 13, i32 10
  %13 = ptrtoint ptr %mac_addr_set.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mac_addr_set.i, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %mac_address.i = getelementptr inbounds %struct.beiscsi_hba, ptr %add.ptr, i32 0, i32 39
  %call.i = tail call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %mac_address.i, i32 noundef 6) #6
  br label %beiscsi_get_macaddr.exit

if.end.i:                                         ; preds = %sw.bb
  %15 = call ptr @memset(ptr %resp.i, i32 0, i32 44)
  %call1.i = call i32 @mgmt_get_nic_conf(ptr noundef %add.ptr, ptr noundef nonnull %resp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.beiscsi_get_macaddr.exit_crit_edge

if.end.i.beiscsi_get_macaddr.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_get_macaddr.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %mac_addr_set.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %mac_addr_set.i, align 4
  %mac_address6.i = getelementptr inbounds %struct.beiscsi_hba, ptr %add.ptr, i32 0, i32 39
  %mac_address8.i = getelementptr inbounds %struct.be_cmd_get_nic_conf_resp, ptr %resp.i, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %mac_address6.i, ptr %mac_address8.i, i32 6)
  %call12.i = call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %mac_address6.i, i32 noundef 6) #6
  br label %beiscsi_get_macaddr.exit

beiscsi_get_macaddr.exit:                         ; preds = %if.end4.i, %if.end.i.beiscsi_get_macaddr.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call12.i, %if.end4.i ], [ %call1.i, %if.end.i.beiscsi_get_macaddr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %resp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.body29, label %beiscsi_get_macaddr.exit.cleanup_crit_edge

beiscsi_get_macaddr.exit.cleanup_crit_edge:       ; preds = %beiscsi_get_macaddr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body29:                                        ; preds = %beiscsi_get_macaddr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shost40 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %shost40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost40, align 4
  %shost_gendev41 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev41, ptr noundef nonnull @.str.59, i32 noundef 769) #9
  br label %cleanup

sw.bb46:                                          ; preds = %if.end24
  %call47 = tail call i32 @beiscsi_get_initiator_name(ptr noundef %add.ptr, ptr noundef %buf, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %sw.bb46.cleanup_crit_edge

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50:                                        ; preds = %sw.bb46
  %call51 = tail call i32 @beiscsi_get_initiator_name(ptr noundef %add.ptr, ptr noundef %buf, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.body55, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %shost68 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %shost68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost68, align 4
  %shost_gendev69 = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev69, ptr noundef nonnull @.str.62, i32 noundef 780) #9
  br label %cleanup

sw.bb75:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %shost_data.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %22 = ptrtoint ptr %shost_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost_data.i, align 8
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i111 = icmp eq i32 %26, 0
  %cond.i = select i1 %tobool.not.i111, i32 1, i32 2
  %port_state.i = getelementptr inbounds %struct.iscsi_cls_host, ptr %23, i32 0, i32 4
  %27 = ptrtoint ptr %port_state.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i, ptr %port_state.i, align 4
  %call76 = tail call ptr @iscsi_get_port_state_name(ptr noundef %shost) #6
  %call77 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %call76)
  br label %cleanup

sw.bb78:                                          ; preds = %if.end24
  %shost_data.i112 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %28 = ptrtoint ptr %shost_data.i112 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shost_data.i112, align 8
  %port_speed.i = getelementptr %struct.Scsi_Host, ptr %shost, i32 3, i32 13, i32 12
  %30 = ptrtoint ptr %port_speed.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_speed.i, align 4
  %switch.tableidx = add i8 %31, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %32 = icmp ult i8 %switch.tableidx, 7
  br i1 %32, label %switch.lookup, label %sw.bb78.beiscsi_get_port_speed.exit_crit_edge

sw.bb78.beiscsi_get_port_speed.exit_crit_edge:    ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_get_port_speed.exit

switch.lookup:                                    ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #8
  %33 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.beiscsi_get_host_param, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %beiscsi_get_port_speed.exit

beiscsi_get_port_speed.exit:                      ; preds = %switch.lookup, %sw.bb78.beiscsi_get_port_speed.exit_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 1, %sw.bb78.beiscsi_get_port_speed.exit_crit_edge ]
  %port_speed12.i = getelementptr inbounds %struct.iscsi_cls_host, ptr %29, i32 0, i32 3
  %35 = ptrtoint ptr %port_speed12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %port_speed12.i, align 4
  %call79 = tail call ptr @iscsi_get_port_speed_name(ptr noundef %shost) #6
  %call80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %call79)
  br label %cleanup

sw.default:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = tail call i32 @iscsi_host_get_param(ptr noundef %shost, i32 noundef %param, ptr noundef %buf) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %beiscsi_get_port_speed.exit, %sw.bb75, %do.body55, %if.then50.cleanup_crit_edge, %sw.bb46.cleanup_crit_edge, %do.body29, %beiscsi_get_macaddr.exit.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %sw.default ], [ 0, %do.body29 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call80, %beiscsi_get_port_speed.exit ], [ %call77, %sw.bb75 ], [ 0, %do.body55 ], [ %call51, %if.then50.cleanup_crit_edge ], [ %call47, %sw.bb46.cleanup_crit_edge ], [ %retval.0.i, %beiscsi_get_macaddr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_get_macaddr(ptr noundef %buf, ptr noundef %phba) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.be_cmd_get_nic_conf_resp, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %resp) #6
  %mac_addr_set = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 38
  %0 = ptrtoint ptr %mac_addr_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_addr_set, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mac_address = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 39
  %call = tail call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %mac_address, i32 noundef 6) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %resp, i32 0, i32 44)
  %call1 = call i32 @mgmt_get_nic_conf(ptr noundef %phba, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %mac_addr_set to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %mac_addr_set, align 4
  %mac_address6 = getelementptr inbounds %struct.beiscsi_hba, ptr %phba, i32 0, i32 39
  %mac_address8 = getelementptr inbounds %struct.be_cmd_get_nic_conf_resp, ptr %resp, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %mac_address6, ptr %mac_address8, i32 6)
  %call12 = call i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %mac_address6, i32 noundef 6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call12, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_get_initiator_name(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_get_port_state_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_get_port_speed_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_format_mac(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_get_nic_conf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beiscsi_conn_get_stats(ptr nocapture noundef readonly %cls_conn, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %phba2 = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %phba2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phba2, align 4
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %5, i32 0, i32 27
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.64, i32 noundef 832) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %txdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 47
  %10 = ptrtoint ptr %txdata_octets to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %txdata_octets, align 8
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %stats, align 8
  %rxdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 48
  %13 = ptrtoint ptr %rxdata_octets to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rxdata_octets, align 8
  %rxdata_octets7 = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 1
  %15 = ptrtoint ptr %rxdata_octets7 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %rxdata_octets7, align 8
  %dataout_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 50
  %16 = ptrtoint ptr %dataout_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dataout_pdus_cnt, align 4
  %dataout_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 7
  %18 = ptrtoint ptr %dataout_pdus to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dataout_pdus, align 4
  %scsirsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 51
  %19 = ptrtoint ptr %scsirsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %scsirsp_pdus_cnt, align 8
  %scsirsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 11
  %21 = ptrtoint ptr %scsirsp_pdus to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %scsirsp_pdus, align 4
  %scsicmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 49
  %22 = ptrtoint ptr %scsicmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scsicmd_pdus_cnt, align 8
  %scsicmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 3
  %24 = ptrtoint ptr %scsicmd_pdus to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %scsicmd_pdus, align 4
  %datain_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 52
  %25 = ptrtoint ptr %datain_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %datain_pdus_cnt, align 4
  %datain_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 14
  %27 = ptrtoint ptr %datain_pdus to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %datain_pdus, align 8
  %tmfrsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 55
  %28 = ptrtoint ptr %tmfrsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmfrsp_pdus_cnt, align 8
  %tmfrsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 12
  %30 = ptrtoint ptr %tmfrsp_pdus to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmfrsp_pdus, align 8
  %tmfcmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 54
  %31 = ptrtoint ptr %tmfcmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tmfcmd_pdus_cnt, align 4
  %tmfcmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 4
  %33 = ptrtoint ptr %tmfcmd_pdus to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmfcmd_pdus, align 8
  %r2t_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 53
  %34 = ptrtoint ptr %r2t_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %r2t_pdus_cnt, align 8
  %r2t_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 16
  %36 = ptrtoint ptr %r2t_pdus to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %r2t_pdus, align 8
  %digest_err = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 19
  %37 = ptrtoint ptr %digest_err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %digest_err, align 4
  %timeout_err = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 20
  %38 = ptrtoint ptr %timeout_err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %timeout_err, align 8
  %custom_length = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 21
  %39 = ptrtoint ptr %custom_length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %custom_length, align 4
  %custom = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 22
  %40 = call ptr @memcpy(ptr %custom, ptr @.str.66, i32 13)
  %eh_abort_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 56
  %41 = ptrtoint ptr %eh_abort_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eh_abort_cnt, align 4
  %conv = zext i32 %42 to i64
  %value = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 1, i32 14
  %43 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv, ptr %value, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_conn_start(ptr noundef %cls_conn) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.beiscsi_offload_params, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #6
  %4 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i32], ptr %params, i32 0, i32 5
  %9 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dd_data1, align 4
  %phba3 = getelementptr inbounds %struct.beiscsi_conn, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %phba3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phba3, align 4
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %12, i32 0, i32 31
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %and = and i32 %14, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %land.lhs.true.do.body_crit_edge, label %do.body14

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %12, i32 0, i32 48
  %17 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr_log_enable, align 4
  %and6 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %12, i32 0, i32 27
  %19 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.4, i32 noundef 910, i32 noundef %14) #9
  br label %cleanup

do.body14:                                        ; preds = %land.lhs.true
  %phba16 = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %phba16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phba16, align 4
  %attr_log_enable17 = getelementptr inbounds %struct.beiscsi_hba, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %attr_log_enable17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %attr_log_enable17, align 4
  %and18 = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body14.if.end27_crit_edge, label %do.end23

do.body14.if.end27_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end23:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %shost25 = getelementptr inbounds %struct.beiscsi_hba, ptr %22, i32 0, i32 27
  %25 = ptrtoint ptr %shost25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shost25, align 4
  %shost_gendev26 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev26, ptr noundef nonnull @.str.69, i32 noundef 914) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %do.body14.if.end27_crit_edge
  %27 = getelementptr inbounds i8, ptr %params, i32 12
  %28 = call ptr @memset(ptr %27, i32 0, i32 12)
  %ep = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep, align 4
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %do.body32, label %if.end27.if.end49_crit_edge

if.end27.if.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.body32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %phba16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phba16, align 4
  %shost44 = getelementptr inbounds %struct.beiscsi_hba, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %shost44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shost44, align 4
  %shost_gendev45 = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev45, ptr noundef nonnull @.str.72, i32 noundef 921) #9
  br label %if.end49

if.end49:                                         ; preds = %do.body32, %if.end27.if.end49_crit_edge
  %login_in_progress = getelementptr inbounds %struct.beiscsi_conn, ptr %3, i32 0, i32 6
  %35 = ptrtoint ptr %login_in_progress to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %login_in_progress, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %session2.i = getelementptr inbounds %struct.iscsi_conn, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %session2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %session2.i, align 8
  %max_burst.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %max_burst.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_burst.i, align 4
  %42 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %params, align 4
  %max_xmit_dlength.i = getelementptr inbounds %struct.iscsi_conn, ptr %37, i32 0, i32 24
  %43 = ptrtoint ptr %max_xmit_dlength.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_xmit_dlength.i, align 8
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %4, align 4
  %first_burst.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 17
  %46 = ptrtoint ptr %first_burst.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %first_burst.i, align 4
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %5, align 4
  %erl.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 23
  %49 = ptrtoint ptr %erl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %erl.i, align 4
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %6, align 4
  %and.i.i = and i32 %52, -16777216
  %and1.i.i = and i32 %50, 3
  %or.i.i = or i32 %and.i.i, %and1.i.i
  %datadgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %37, i32 0, i32 26
  %53 = ptrtoint ptr %datadgst_en.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %datadgst_en.i, align 8
  %and1.i43.i = shl i32 %54, 2
  %shl2.i.i = and i32 %and1.i43.i, 4
  %or.i44.i = or i32 %shl2.i.i, %or.i.i
  %hdrdgst_en.i = getelementptr inbounds %struct.iscsi_conn, ptr %37, i32 0, i32 25
  %55 = ptrtoint ptr %hdrdgst_en.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hdrdgst_en.i, align 4
  %and1.i47.i = shl i32 %56, 3
  %shl2.i48.i = and i32 %and1.i47.i, 8
  %or.i49.i = or i32 %or.i44.i, %shl2.i48.i
  %initial_r2t_en.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 14
  %57 = ptrtoint ptr %initial_r2t_en.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %initial_r2t_en.i, align 4
  %and1.i52.i = shl i32 %58, 4
  %shl2.i53.i = and i32 %and1.i52.i, 16
  %or.i54.i = or i32 %or.i49.i, %shl2.i53.i
  %imm_data_en.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 16
  %59 = ptrtoint ptr %imm_data_en.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %imm_data_en.i, align 4
  %and1.i57.i = shl i32 %60, 5
  %shl2.i58.i = and i32 %and1.i57.i, 32
  %dataseq_inorder_en.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 22
  %61 = ptrtoint ptr %dataseq_inorder_en.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dataseq_inorder_en.i, align 4
  %and1.i62.i = shl i32 %62, 6
  %shl2.i63.i = and i32 %and1.i62.i, 64
  %pdu_inorder_en.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 21
  %63 = ptrtoint ptr %pdu_inorder_en.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pdu_inorder_en.i, align 4
  %and1.i67.i = shl i32 %64, 7
  %shl2.i68.i = and i32 %and1.i67.i, 128
  %max_r2t.i = getelementptr inbounds %struct.iscsi_session, ptr %39, i32 0, i32 15
  %65 = ptrtoint ptr %max_r2t.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %max_r2t.i, align 4
  %conv.i = zext i16 %66 to i32
  %and.i61.i.masked.masked = or i32 %or.i54.i, %shl2.i58.i
  %and.i66.i.masked = or i32 %and.i61.i.masked.masked, %shl2.i63.i
  %and.i71.i = or i32 %and.i66.i.masked, %shl2.i68.i
  %shl2.i73.i = shl nuw nsw i32 %conv.i, 8
  %or.i74.i = or i32 %and.i71.i, %shl2.i73.i
  store i32 %or.i74.i, ptr %6, align 4
  %exp_statsn.i = getelementptr inbounds %struct.iscsi_conn, ptr %37, i32 0, i32 10
  %67 = ptrtoint ptr %exp_statsn.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %exp_statsn.i, align 4
  %sub.i = add i32 %68, -1
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub.i, ptr %7, align 4
  %max_recv_dlength.i = getelementptr inbounds %struct.iscsi_conn, ptr %37, i32 0, i32 23
  %70 = ptrtoint ptr %max_recv_dlength.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_recv_dlength.i, align 4
  %72 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %8, align 4
  call void @beiscsi_offload_connection(ptr noundef %3, ptr noundef nonnull %params) #6
  %call50 = call i32 @iscsi_conn_start(ptr noundef %cls_conn) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @beiscsi_offload_connection(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @beiscsi_ep_connect(ptr noundef %shost, ptr noundef %dst_addr, i32 noundef %non_blocking) local_unnamed_addr #0 align 64 {
entry:
  %nonemb_cmd.i = alloca %struct.be_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %shost, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %state = getelementptr %struct.Scsi_Host, ptr %shost, i32 3, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %land.lhs.true.if.then7_crit_edge, label %if.end21

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %attr_log_enable = getelementptr %struct.Scsi_Host, ptr %shost, i32 4, i32 13, i32 3
  %4 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_log_enable, align 4
  %and9 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %do.end14

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %shost15 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %shost15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost15, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.4, i32 noundef 1161, i32 noundef %1) #9
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not = icmp eq i32 %10, 0
  br i1 %tobool24.not, label %if.then25, label %if.end41

if.then25:                                        ; preds = %if.end21
  %attr_log_enable28 = getelementptr %struct.Scsi_Host, ptr %shost, i32 4, i32 13, i32 3
  %11 = ptrtoint ptr %attr_log_enable28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr_log_enable28, align 4
  %and29 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then25.cleanup_crit_edge, label %do.end34

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %shost35 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %shost35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost35, align 4
  %shost_gendev36 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.80, ptr noundef %shost_gendev36, ptr noundef nonnull @.str.79, i32 noundef 1167) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end21
  %call42 = tail call ptr @iscsi_create_endpoint(i32 noundef 96) #6
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %15 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call42, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %16, align 4
  %openiscsi_ep = getelementptr inbounds %struct.beiscsi_endpoint, ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %openiscsi_ep to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call42, ptr %openiscsi_ep, align 4
  %19 = load ptr, ptr %call42, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nonemb_cmd.i) #6
  %22 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %nonemb_cmd.i, align 4, !annotation !249
  %23 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !249
  %25 = getelementptr inbounds %struct.be_dma_mem, ptr %nonemb_cmd.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4, !annotation !249
  %attr_log_enable.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 48
  %27 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %attr_log_enable.i, align 4
  %and.i = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end46.if.end.i_crit_edge, label %do.end.i

if.end46.if.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %29 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.109, i32 noundef 1058) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end46.if.end.i_crit_edge
  %cid_array_info.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 24
  %31 = ptrtoint ptr %cid_array_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cid_array_info.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.i.cond.end.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %avlbl_cids.i.i = getelementptr inbounds %struct.ulp_cid_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %avlbl_cids.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %avlbl_cids.i.i, align 4
  %phi.cast.i.i = zext i16 %34 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i.i, %cond.true.i.i ], [ 0, %if.end.i.cond.end.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.beiscsi_hba, ptr %21, i32 0, i32 24, i32 1
  %35 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %36, null
  br i1 %tobool6.not.i.i, label %cond.end.i.i.cond.end13.i.i_crit_edge, label %cond.true7.i.i

cond.end.i.i.cond.end13.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end13.i.i

cond.true7.i.i:                                   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %avlbl_cids10.i.i = getelementptr inbounds %struct.ulp_cid_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %avlbl_cids10.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %avlbl_cids10.i.i, align 4
  %phi.cast77.i.i = zext i16 %38 to i32
  br label %cond.end13.i.i

cond.end13.i.i:                                   ; preds = %cond.true7.i.i, %cond.end.i.i.cond.end13.i.i_crit_edge
  %cond14.i.i = phi i32 [ %phi.cast77.i.i, %cond.true7.i.i ], [ 0, %cond.end.i.i.cond.end13.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond14.i.i)
  %cmp.i.i = icmp ule i32 %cond.i.i, %cond14.i.i
  %conv21.i.i = zext i1 %cmp.i.i to i32
  %ulp_supported.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 30, i32 11
  %39 = ptrtoint ptr %ulp_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %ulp_supported.i.i, align 4
  %41 = shl nuw nsw i32 1, %conv21.i.i
  %42 = and i32 %41, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool22.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool22.not.i.i, label %cond.end13.i.i.do.body9.i_crit_edge, label %if.end.i.i

cond.end13.i.i.do.body9.i_crit_edge:              ; preds = %cond.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i

if.end.i.i:                                       ; preds = %cond.end13.i.i
  %arrayidx24.i.i = getelementptr %struct.beiscsi_hba, ptr %21, i32 0, i32 24, i32 %conv21.i.i
  %43 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx24.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %cid_alloc.i.i = getelementptr inbounds %struct.ulp_cid_info, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %cid_alloc.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cid_alloc.i.i, align 2
  %idxprom25.i.i = zext i16 %48 to i32
  %arrayidx26.i.i = getelementptr i16, ptr %46, i32 %idxprom25.i.i
  %avlbl_cids27.i.i = getelementptr inbounds %struct.ulp_cid_info, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %avlbl_cids27.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %avlbl_cids27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool28.not.i.i = icmp eq i16 %50, 0
  br i1 %tobool28.not.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %51 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx26.i.i, align 2
  %conv29.i.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp30.i.i = icmp eq i16 %52, -1
  br i1 %cmp30.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge, label %if.end36.i.i

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  %shost.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %53 = ptrtoint ptr %shost.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shost.i.i, align 4
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 49
  %conv34.i.i = zext i16 %50 to i32
  %cid_free.i.i = getelementptr inbounds %struct.ulp_cid_info, ptr %44, i32 0, i32 3
  %55 = ptrtoint ptr %cid_free.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cid_free.i.i, align 4
  %conv35.i.i = zext i16 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.129, i32 noundef 960, i32 noundef %conv34.i.i, i32 noundef %conv35.i.i) #9
  br label %do.body9.i

if.end36.i.i:                                     ; preds = %lor.lhs.false.i.i
  %inc.i.i = add i16 %48, 1
  %57 = ptrtoint ptr %cid_alloc.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %inc.i.i, ptr %cid_alloc.i.i, align 2
  %58 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %arrayidx26.i.i, align 2
  %59 = load i16, ptr %cid_alloc.i.i, align 2
  %conv42.i.i = zext i16 %59 to i32
  %arrayidx45.i.i = getelementptr %struct.beiscsi_hba, ptr %21, i32 0, i32 30, i32 4, i32 %conv21.i.i
  %60 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx45.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv42.i.i)
  %cmp46.i.i = icmp eq i32 %61, %conv42.i.i
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.end36.i.i.do.body27.i_crit_edge

if.end36.i.i.do.body27.i_crit_edge:               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27.i

if.then48.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %cid_alloc.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %cid_alloc.i.i, align 2
  br label %do.body27.i

do.body9.i:                                       ; preds = %do.end.i.i, %cond.end13.i.i.do.body9.i_crit_edge
  %ep_cid3.i = getelementptr inbounds %struct.beiscsi_endpoint, ptr %19, i32 0, i32 6
  %63 = ptrtoint ptr %ep_cid3.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %ep_cid3.i, align 4
  %shost21.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %64 = ptrtoint ptr %shost21.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shost21.i, align 4
  %shost_gendev22.i = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev22.i, ptr noundef nonnull @.str.112, i32 noundef 1063) #9
  br label %do.body51

do.body27.i:                                      ; preds = %if.then48.i.i, %if.end36.i.i.do.body27.i_crit_edge
  %66 = ptrtoint ptr %avlbl_cids27.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %avlbl_cids27.i.i, align 4
  %dec.i.i = add i16 %67, -1
  store i16 %dec.i.i, ptr %avlbl_cids27.i.i, align 4
  %ep_cid.i = getelementptr inbounds %struct.beiscsi_endpoint, ptr %19, i32 0, i32 6
  %68 = ptrtoint ptr %ep_cid.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %52, ptr %ep_cid.i, align 4
  %69 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %attr_log_enable.i, align 4
  %and30.i = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %do.body27.i.if.end40.i_crit_edge, label %do.end35.i

do.body27.i.if.end40.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

do.end35.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  %shost36.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %71 = ptrtoint ptr %shost36.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %shost36.i, align 4
  %shost_gendev37.i = getelementptr inbounds %struct.Scsi_Host, ptr %72, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev37.i, ptr noundef nonnull @.str.115, i32 noundef 1069, i32 noundef %conv29.i.i) #9
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end35.i, %do.body27.i.if.end40.i_crit_edge
  %ep_array.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 25
  %73 = ptrtoint ptr %ep_array.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ep_array.i, align 4
  %75 = ptrtoint ptr %ep_cid.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ep_cid.i, align 4
  %idxprom.i = zext i16 %76 to i32
  %arrayidx.i = getelementptr %struct.beiscsi_hba, ptr %21, i32 0, i32 23, i32 %idxprom.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.i, align 2
  %idxprom44.i = zext i16 %78 to i32
  %arrayidx45.i = getelementptr ptr, ptr %74, i32 %idxprom44.i
  %79 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call42, ptr %arrayidx45.i, align 4
  %cid_vld.i = getelementptr inbounds %struct.beiscsi_endpoint, ptr %19, i32 0, i32 9
  %80 = ptrtoint ptr %cid_vld.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %cid_vld.i, align 2
  %generation.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 45
  %81 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %generation.i, align 4
  %83 = and i32 %82, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %switch.i = icmp eq i32 %83, 2
  %spec.select.i = select i1 %switch.i, i32 64, i32 72
  %pdev.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 44, i32 3
  %84 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %spec.select.i, ptr noundef %23, i32 noundef 3264, i32 noundef 0) #6
  %86 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i.i, ptr %nonemb_cmd.i, align 4
  %cmp56.i = icmp eq ptr %call.i.i, null
  br i1 %cmp56.i, label %do.body59.i, label %if.end77.i

do.body59.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %shost72.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %87 = ptrtoint ptr %shost72.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %shost72.i, align 4
  %shost_gendev73.i = getelementptr inbounds %struct.Scsi_Host, ptr %88, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev73.i, ptr noundef nonnull @.str.118, i32 noundef 1088) #9
  call fastcc void @beiscsi_free_ep(ptr noundef %19) #6
  br label %do.body51

if.end77.i:                                       ; preds = %if.end40.i
  %89 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select.i, ptr %25, align 4
  %90 = call ptr @memset(ptr %call.i.i, i32 0, i32 %spec.select.i)
  %call80.i = call i32 @mgmt_open_connection(ptr noundef %21, ptr noundef %dst_addr, ptr noundef %19, ptr noundef nonnull %nonemb_cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %do.body83.i, label %if.end109.i

do.body83.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  %shost96.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %91 = ptrtoint ptr %shost96.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %shost96.i, align 4
  %shost_gendev97.i = getelementptr inbounds %struct.Scsi_Host, ptr %92, i32 0, i32 49
  %93 = ptrtoint ptr %ep_cid.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %ep_cid.i, align 4
  %conv99.i = zext i16 %94 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev97.i, ptr noundef nonnull @.str.121, i32 noundef 1099, i32 noundef %conv99.i) #9
  %95 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev.i, align 4
  %dev105.i = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  %97 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %25, align 4
  %99 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nonemb_cmd.i, align 4
  %101 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %23, align 4
  call void @dma_free_attrs(ptr noundef %dev105.i, i32 noundef %98, ptr noundef %100, i32 noundef %102, i32 noundef 0) #6
  call fastcc void @beiscsi_free_ep(ptr noundef %19) #6
  br label %do.body51

if.end109.i:                                      ; preds = %if.end77.i
  %call110.i = call i32 @beiscsi_mccq_compl_wait(ptr noundef %21, i32 noundef %call80.i, ptr noundef null, ptr noundef nonnull %nonemb_cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end141.i, label %do.body113.i

do.body113.i:                                     ; preds = %if.end109.i
  %shost126.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %103 = ptrtoint ptr %shost126.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %shost126.i, align 4
  %shost_gendev127.i = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev127.i, ptr noundef nonnull @.str.124, i32 noundef 1111) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call110.i)
  %cmp131.not.i = icmp eq i32 %call110.i, -16
  br i1 %cmp131.not.i, label %do.body113.i.if.end140.i_crit_edge, label %if.then133.i

do.body113.i.if.end140.i_crit_edge:               ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140.i

if.then133.i:                                     ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i, align 4
  %dev136.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %107 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %25, align 4
  %109 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %nonemb_cmd.i, align 4
  %111 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %23, align 4
  call void @dma_free_attrs(ptr noundef %dev136.i, i32 noundef %108, ptr noundef %110, i32 noundef %112, i32 noundef 0) #6
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.then133.i, %do.body113.i.if.end140.i_crit_edge
  call fastcc void @beiscsi_free_ep(ptr noundef %19) #6
  %phi.cast = inttoptr i32 %call110.i to ptr
  br label %do.body51

if.end141.i:                                      ; preds = %if.end109.i
  %113 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %nonemb_cmd.i, align 4
  %115 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call42, align 8
  %connection_handle.i = getelementptr inbounds %struct.tcp_connect_and_offload_out, ptr %114, i32 0, i32 1
  %117 = ptrtoint ptr %connection_handle.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %connection_handle.i, align 1
  %fw_handle.i = getelementptr inbounds %struct.beiscsi_endpoint, ptr %116, i32 0, i32 7
  %119 = ptrtoint ptr %fw_handle.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %fw_handle.i, align 4
  %cid_vld144.i = getelementptr inbounds %struct.beiscsi_endpoint, ptr %116, i32 0, i32 9
  %120 = ptrtoint ptr %cid_vld144.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %cid_vld144.i, align 2
  %121 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %attr_log_enable.i, align 4
  %and148.i = and i32 %122, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %if.end141.i.beiscsi_open_conn.exit_crit_edge, label %do.end153.i

if.end141.i.beiscsi_open_conn.exit_crit_edge:     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_open_conn.exit

do.end153.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  %shost154.i = getelementptr inbounds %struct.beiscsi_hba, ptr %21, i32 0, i32 27
  %123 = ptrtoint ptr %shost154.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %shost154.i, align 4
  %shost_gendev155.i = getelementptr inbounds %struct.Scsi_Host, ptr %124, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev155.i, ptr noundef nonnull @.str.127, i32 noundef 1127) #9
  br label %beiscsi_open_conn.exit

beiscsi_open_conn.exit:                           ; preds = %do.end153.i, %if.end141.i.beiscsi_open_conn.exit_crit_edge
  %125 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev.i, align 4
  %dev161.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  %127 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %25, align 4
  %129 = ptrtoint ptr %nonemb_cmd.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %nonemb_cmd.i, align 4
  %131 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %23, align 4
  call void @dma_free_attrs(ptr noundef %dev161.i, i32 noundef %128, ptr noundef %130, i32 noundef %132, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd.i) #6
  br label %cleanup

do.body51:                                        ; preds = %if.end140.i, %do.body83.i, %do.body59.i, %do.body9.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -11 to ptr), %do.body83.i ], [ %phi.cast, %if.end140.i ], [ inttoptr (i32 -12 to ptr), %do.body59.i ], [ inttoptr (i32 -12 to ptr), %do.body9.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nonemb_cmd.i) #6
  %shost61 = getelementptr %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 31, i32 0, i32 0, i32 4, i32 1, i32 1
  %133 = ptrtoint ptr %shost61 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %shost61, align 4
  %shost_gendev62 = getelementptr inbounds %struct.Scsi_Host, ptr %134, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev62, ptr noundef nonnull @.str.83, i32 noundef 1183) #9
  call void @iscsi_destroy_endpoint(ptr noundef nonnull %call42) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %beiscsi_open_conn.exit, %if.end41.cleanup_crit_edge, %do.end34, %if.then25.cleanup_crit_edge, %do.end14, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %retval.0.i.ph, %do.body51 ], [ inttoptr (i32 -6 to ptr), %if.then ], [ %call42, %beiscsi_open_conn.exit ], [ inttoptr (i32 -5 to ptr), %do.end14 ], [ inttoptr (i32 -5 to ptr), %if.then7.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.end34 ], [ inttoptr (i32 -16 to ptr), %if.then25.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end41.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_create_endpoint(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_destroy_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @beiscsi_ep_poll(ptr nocapture noundef readonly %ep, i32 noundef %timeout_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.85, i32 noundef 1206) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cid_vld = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %cid_vld to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cid_vld, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp eq i16 %9, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @beiscsi_ep_disconnect(ptr nocapture noundef readonly %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %attr_log_enable = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_log_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  %ep_cid = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ep_cid, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev, ptr noundef nonnull @.str.87, i32 noundef 1310, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ep_cid5 = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ep_cid5, align 4
  %idxprom = zext i16 %11 to i32
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %3, i32 0, i32 23, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %ep_array = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 25
  %14 = ptrtoint ptr %ep_array to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_array, align 4
  %idxprom6 = zext i16 %13 to i32
  %arrayidx7 = getelementptr ptr, ptr %15, i32 %idxprom6
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %do.end12, label %if.end18

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %shost13 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %18 = ptrtoint ptr %shost13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost13, align 4
  %shost_gendev14 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev14, ptr noundef nonnull @.str.90, i32 noundef 1317, i32 noundef %idxprom6, i32 noundef %idxprom) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 31
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  %and19 = and i32 %21, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end18.do.body24_crit_edge

if.end18.do.body24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

land.lhs.true:                                    ; preds = %if.end18
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool22.not = icmp eq i32 %and1.i, 0
  br i1 %tobool22.not, label %land.lhs.true.do.body24_crit_edge, label %if.else

land.lhs.true.do.body24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.body24:                                        ; preds = %land.lhs.true.do.body24_crit_edge, %if.end18.do.body24_crit_edge
  %24 = ptrtoint ptr %attr_log_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attr_log_enable, align 4
  %and27 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body24.if.end50_crit_edge, label %do.end32

do.body24.if.end50_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end32:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %shost33 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %26 = ptrtoint ptr %shost33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost33, align 4
  %shost_gendev34 = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev34, ptr noundef nonnull @.str.4, i32 noundef 1323, i32 noundef %21) #9
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %attr_log_enable.i = getelementptr inbounds %struct.beiscsi_hba, ptr %29, i32 0, i32 48
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %29, i32 0, i32 27
  %call.i = tail call i32 @beiscsi_invalidate_cxn(ptr noundef %29, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.if.end11.i_crit_edge, label %if.then.i

if.else.if.end11.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then.i:                                        ; preds = %if.else
  %call2.i = tail call i32 @beiscsi_mccq_compl_wait(ptr noundef %29, i32 noundef %call.i, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.while.end.i_crit_edge, label %do.body.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.body.i:                                        ; preds = %if.then.i
  %30 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %attr_log_enable.i, align 4
  %and.i = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.if.end11.i_crit_edge, label %do.end.i

do.body.i.if.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 49
  %34 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ep_cid5, align 4
  %conv.i = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.131, i32 noundef 1264, i32 noundef %conv.i) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %do.body.i.if.end11.i_crit_edge, %if.else.if.end11.i_crit_edge
  %call.1.i = tail call i32 @beiscsi_invalidate_cxn(ptr noundef %29, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end11.i.if.end11.1.i_crit_edge, label %if.then.1.i

if.end11.i.if.end11.1.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.1.i

if.then.1.i:                                      ; preds = %if.end11.i
  %call2.1.i = tail call i32 @beiscsi_mccq_compl_wait(ptr noundef %29, i32 noundef %call.1.i, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool3.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool3.not.1.i, label %if.then.1.i.while.end.i_crit_edge, label %do.body.1.i

if.then.1.i.while.end.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.body.1.i:                                      ; preds = %if.then.1.i
  %36 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attr_log_enable.i, align 4
  %and.1.i = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool5.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool5.not.1.i, label %do.body.1.i.if.end11.1.i_crit_edge, label %do.end.1.i

do.body.1.i.if.end11.1.i_crit_edge:               ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.1.i

do.end.1.i:                                       ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shost.i, align 4
  %shost_gendev.1.i = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  %40 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ep_cid5, align 4
  %conv.1.i = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.1.i, ptr noundef nonnull @.str.131, i32 noundef 1264, i32 noundef %conv.1.i) #9
  br label %if.end11.1.i

if.end11.1.i:                                     ; preds = %do.end.1.i, %do.body.1.i.if.end11.1.i_crit_edge, %if.end11.i.if.end11.1.i_crit_edge
  %call.2.i = tail call i32 @beiscsi_invalidate_cxn(ptr noundef %29, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end11.1.i.while.end.i_crit_edge, label %if.then.2.i

if.end11.1.i.while.end.i_crit_edge:               ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.then.2.i:                                      ; preds = %if.end11.1.i
  %call2.2.i = tail call i32 @beiscsi_mccq_compl_wait(ptr noundef %29, i32 noundef %call.2.i, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2.i)
  %tobool3.not.2.i = icmp eq i32 %call2.2.i, 0
  br i1 %tobool3.not.2.i, label %if.then.2.i.while.end.i_crit_edge, label %do.body.2.i

if.then.2.i.while.end.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.body.2.i:                                      ; preds = %if.then.2.i
  %42 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attr_log_enable.i, align 4
  %and.2.i = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool5.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool5.not.2.i, label %do.body.2.i.while.end.i_crit_edge, label %do.end.2.i

do.body.2.i.while.end.i_crit_edge:                ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.2.i:                                       ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shost.i, align 4
  %shost_gendev.2.i = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 49
  %46 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ep_cid5, align 4
  %conv.2.i = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev.2.i, ptr noundef nonnull @.str.131, i32 noundef 1264, i32 noundef %conv.2.i) #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.2.i, %do.body.2.i.while.end.i_crit_edge, %if.then.2.i.while.end.i_crit_edge, %if.end11.1.i.while.end.i_crit_edge, %if.then.1.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %cmp12.i = phi i1 [ false, %if.then.2.i.while.end.i_crit_edge ], [ false, %if.then.1.i.while.end.i_crit_edge ], [ false, %if.then.i.while.end.i_crit_edge ], [ true, %do.end.2.i ], [ true, %do.body.2.i.while.end.i_crit_edge ], [ true, %if.end11.1.i.while.end.i_crit_edge ]
  tail call void @msleep(i32 noundef 250) #6
  %phwi_ctrlr1.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %29, i32 0, i32 1
  %48 = ptrtoint ptr %phwi_ctrlr1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phwi_ctrlr1.i.i, align 4
  %phwi_ctxt.i.i = getelementptr inbounds %struct.hwi_controller, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %phwi_ctxt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phwi_ctxt.i.i, align 4
  %num_cpus.i.i = getelementptr inbounds %struct.beiscsi_hba, ptr %29, i32 0, i32 7
  %52 = ptrtoint ptr %num_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_cpus.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp9.not.i.i = icmp eq i32 %53, 0
  br i1 %cmp9.not.i.i, label %while.end.i.beiscsi_flush_cq.exit.i_crit_edge, label %while.end.i.for.body.i.i_crit_edge

while.end.i.for.body.i.i_crit_edge:               ; preds = %while.end.i
  br label %for.body.i.i

while.end.i.beiscsi_flush_cq.exit.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_flush_cq.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.end.i.for.body.i.i_crit_edge
  %conv11.i.i = phi i32 [ %conv.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.end.i.for.body.i.i_crit_edge ]
  %i.010.i.i = phi i16 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x %struct.be_eq_obj], ptr %51, i32 0, i32 %conv11.i.i
  %iopoll.i.i = getelementptr [64 x %struct.be_eq_obj], ptr %51, i32 0, i32 %conv11.i.i, i32 5
  tail call void @irq_poll_disable(ptr noundef %iopoll.i.i) #6
  %call.i.i = tail call i32 @beiscsi_process_cq(ptr noundef %arrayidx.i.i, i32 noundef 512) #6
  tail call void @irq_poll_enable(ptr noundef %iopoll.i.i) #6
  %inc.i.i = add i16 %i.010.i.i, 1
  %conv.i.i = zext i16 %inc.i.i to i32
  %54 = ptrtoint ptr %num_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_cpus.i.i, align 4
  %cmp.i.i = icmp ugt i32 %55, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.beiscsi_flush_cq.exit.i_crit_edge

for.body.i.i.beiscsi_flush_cq.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %beiscsi_flush_cq.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

beiscsi_flush_cq.exit.i:                          ; preds = %for.body.i.i.beiscsi_flush_cq.exit.i_crit_edge, %while.end.i.beiscsi_flush_cq.exit.i_crit_edge
  br i1 %cmp12.i, label %beiscsi_flush_cq.exit.i.do.end44_crit_edge, label %while.cond16.preheader.i

beiscsi_flush_cq.exit.i.do.end44_crit_edge:       ; preds = %beiscsi_flush_cq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

while.cond16.preheader.i:                         ; preds = %beiscsi_flush_cq.exit.i
  %call21.i = tail call i32 @beiscsi_upload_cxn(ptr noundef %29, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %while.cond16.preheader.i.if.end44.i_crit_edge, label %if.then23.i

while.cond16.preheader.i.if.end44.i_crit_edge:    ; preds = %while.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then23.i:                                      ; preds = %while.cond16.preheader.i
  %call24.i = tail call i32 @beiscsi_mccq_compl_wait(ptr noundef %29, i32 noundef %call21.i, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then23.i.if.end50_crit_edge, label %do.body28.i

if.then23.i.if.end50_crit_edge:                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body28.i:                                      ; preds = %if.then23.i
  %56 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %attr_log_enable.i, align 4
  %and31.i = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body28.i.if.end44.i_crit_edge, label %do.end36.i

do.body28.i.if.end44.i_crit_edge:                 ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end36.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shost.i, align 4
  %shost_gendev38.i = getelementptr inbounds %struct.Scsi_Host, ptr %59, i32 0, i32 49
  %60 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ep_cid5, align 4
  %conv40.i = zext i16 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev38.i, ptr noundef nonnull @.str.134, i32 noundef 1285, i32 noundef %conv40.i) #9
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end36.i, %do.body28.i.if.end44.i_crit_edge, %while.cond16.preheader.i.if.end44.i_crit_edge
  %call21.1.i = tail call i32 @beiscsi_upload_cxn(ptr noundef %29, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1.i)
  %tobool22.not.1.i = icmp eq i32 %call21.1.i, 0
  br i1 %tobool22.not.1.i, label %if.end44.i.if.end44.1.i_crit_edge, label %if.then23.1.i

if.end44.i.if.end44.1.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.1.i

if.then23.1.i:                                    ; preds = %if.end44.i
  %call24.1.i = tail call i32 @beiscsi_mccq_compl_wait(ptr noundef %29, i32 noundef %call21.1.i, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1.i)
  %tobool25.not.1.i = icmp eq i32 %call24.1.i, 0
  br i1 %tobool25.not.1.i, label %if.then23.1.i.if.end50_crit_edge, label %do.body28.1.i

if.then23.1.i.if.end50_crit_edge:                 ; preds = %if.then23.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body28.1.i:                                    ; preds = %if.then23.1.i
  %62 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %attr_log_enable.i, align 4
  %and31.1.i = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.1.i)
  %tobool32.not.1.i = icmp eq i32 %and31.1.i, 0
  br i1 %tobool32.not.1.i, label %do.body28.1.i.if.end44.1.i_crit_edge, label %do.end36.1.i

do.body28.1.i.if.end44.1.i_crit_edge:             ; preds = %do.body28.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.1.i

do.end36.1.i:                                     ; preds = %do.body28.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shost.i, align 4
  %shost_gendev38.1.i = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 49
  %66 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ep_cid5, align 4
  %conv40.1.i = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev38.1.i, ptr noundef nonnull @.str.134, i32 noundef 1285, i32 noundef %conv40.1.i) #9
  br label %if.end44.1.i

if.end44.1.i:                                     ; preds = %do.end36.1.i, %do.body28.1.i.if.end44.1.i_crit_edge, %if.end44.i.if.end44.1.i_crit_edge
  %call21.2.i = tail call i32 @beiscsi_upload_cxn(ptr noundef %29, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2.i)
  %tobool22.not.2.i = icmp eq i32 %call21.2.i, 0
  br i1 %tobool22.not.2.i, label %if.end44.1.i.do.end44_crit_edge, label %if.then23.2.i

if.end44.1.i.do.end44_crit_edge:                  ; preds = %if.end44.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.then23.2.i:                                    ; preds = %if.end44.1.i
  %call24.2.i = tail call i32 @beiscsi_mccq_compl_wait(ptr noundef %29, i32 noundef %call21.2.i, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2.i)
  %tobool25.not.2.i = icmp eq i32 %call24.2.i, 0
  br i1 %tobool25.not.2.i, label %if.then23.2.i.if.end50_crit_edge, label %do.body28.2.i

if.then23.2.i.if.end50_crit_edge:                 ; preds = %if.then23.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body28.2.i:                                    ; preds = %if.then23.2.i
  %68 = ptrtoint ptr %attr_log_enable.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %attr_log_enable.i, align 4
  %and31.2.i = and i32 %69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.2.i)
  %tobool32.not.2.i = icmp eq i32 %and31.2.i, 0
  br i1 %tobool32.not.2.i, label %do.body28.2.i.do.end44_crit_edge, label %do.end36.2.i

do.body28.2.i.do.end44_crit_edge:                 ; preds = %do.body28.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end36.2.i:                                     ; preds = %do.body28.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shost.i, align 4
  %shost_gendev38.2.i = getelementptr inbounds %struct.Scsi_Host, ptr %71, i32 0, i32 49
  %72 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ep_cid5, align 4
  %conv40.2.i = zext i16 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.5, ptr noundef %shost_gendev38.2.i, ptr noundef nonnull @.str.134, i32 noundef 1285, i32 noundef %conv40.2.i) #9
  br label %do.end44

do.end44:                                         ; preds = %do.end36.2.i, %do.body28.2.i.do.end44_crit_edge, %if.end44.1.i.do.end44_crit_edge, %beiscsi_flush_cq.exit.i.do.end44_crit_edge
  %shost45 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %74 = ptrtoint ptr %shost45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shost45, align 4
  %shost_gendev46 = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 49
  %76 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ep_cid5, align 4
  %conv48 = zext i16 %77 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev46, ptr noundef nonnull @.str.95, i32 noundef 1332, i32 noundef %conv48) #9
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.then23.2.i.if.end50_crit_edge, %if.then23.1.i.if.end50_crit_edge, %if.then23.i.if.end50_crit_edge, %do.end32, %do.body24.if.end50_crit_edge
  tail call fastcc void @beiscsi_free_ep(ptr noundef %1)
  %conn_table = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 26
  %78 = ptrtoint ptr %conn_table to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %conn_table, align 4
  %arrayidx52 = getelementptr ptr, ptr %79, i32 %idxprom6
  %80 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %81, null
  br i1 %tobool53.not, label %do.end57, label %if.end50.if.end63_crit_edge

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %shost58 = getelementptr inbounds %struct.beiscsi_hba, ptr %3, i32 0, i32 27
  %82 = ptrtoint ptr %shost58 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %shost58, align 4
  %shost_gendev59 = getelementptr inbounds %struct.Scsi_Host, ptr %83, i32 0, i32 49
  %84 = ptrtoint ptr %ep_cid5 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ep_cid5, align 4
  %conv62 = zext i16 %85 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev59, ptr noundef nonnull @.str.98, i32 noundef 1339, i32 noundef %idxprom6, i32 noundef %conv62) #9
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %if.end50.if.end63_crit_edge
  %86 = ptrtoint ptr %conn_table to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %conn_table, align 4
  %arrayidx66 = getelementptr ptr, ptr %87, i32 %idxprom6
  %88 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx66, align 4
  %openiscsi_ep = getelementptr inbounds %struct.beiscsi_endpoint, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %openiscsi_ep to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %openiscsi_ep, align 4
  tail call void @iscsi_destroy_endpoint(ptr noundef %90) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @beiscsi_free_ep(ptr nocapture noundef %beiscsi_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %beiscsi_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %beiscsi_ep, align 4
  %ep_cid = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 6
  %2 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ep_cid, align 4
  %idxprom.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.beiscsi_hba, ptr %1, i32 0, i32 23, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %phwi_ctrlr1.i = getelementptr inbounds %struct.beiscsi_hba, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phwi_ctrlr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phwi_ctrlr1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %idxprom2.i = zext i16 %5 to i32
  %ulp_num.i = getelementptr %struct.hwi_wrb_context, ptr %9, i32 %idxprom2.i, i32 8
  %10 = ptrtoint ptr %ulp_num.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ulp_num.i, align 4
  %idxprom4.i = zext i8 %11 to i32
  %arrayidx5.i = getelementptr %struct.beiscsi_hba, ptr %1, i32 0, i32 24, i32 %idxprom4.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cid_free.i = getelementptr inbounds %struct.ulp_cid_info, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %cid_free.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cid_free.i, align 4
  %idxprom6.i = zext i16 %17 to i32
  %arrayidx7.i = getelementptr i16, ptr %15, i32 %idxprom6.i
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp.not.i = icmp eq i16 %19, -1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shost.i = getelementptr inbounds %struct.beiscsi_hba, ptr %1, i32 0, i32 27
  %20 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost.i, align 4
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  %avlbl_cids.i = getelementptr inbounds %struct.ulp_cid_info, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %avlbl_cids.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %avlbl_cids.i, align 4
  %conv11.i = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.11, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.136, i32 noundef 993, i32 noundef %idxprom.i, i32 noundef %conv11.i, i32 noundef %idxprom6.i) #9
  br label %beiscsi_put_cid.exit

if.end.i:                                         ; preds = %entry
  %inc.i = add i16 %17, 1
  %24 = ptrtoint ptr %cid_free.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %inc.i, ptr %cid_free.i, align 4
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %3, ptr %arrayidx7.i, align 2
  %26 = load i16, ptr %cid_free.i, align 4
  %conv19.i = zext i16 %26 to i32
  %arrayidx21.i = getelementptr %struct.beiscsi_hba, ptr %1, i32 0, i32 30, i32 4, i32 %idxprom4.i
  %27 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv19.i)
  %cmp22.i = icmp eq i32 %28, %conv19.i
  br i1 %cmp22.i, label %if.then24.i, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %cid_free.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %cid_free.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end.i.if.end26.i_crit_edge
  %avlbl_cids27.i = getelementptr inbounds %struct.ulp_cid_info, ptr %13, i32 0, i32 1
  %30 = ptrtoint ptr %avlbl_cids27.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %avlbl_cids27.i, align 4
  %inc28.i = add i16 %31, 1
  store i16 %inc28.i, ptr %avlbl_cids27.i, align 4
  br label %beiscsi_put_cid.exit

beiscsi_put_cid.exit:                             ; preds = %if.end26.i, %do.end.i
  %32 = ptrtoint ptr %beiscsi_ep to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %beiscsi_ep, align 4
  %ep_array = getelementptr inbounds %struct.beiscsi_hba, ptr %1, i32 0, i32 25
  %33 = ptrtoint ptr %ep_array to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep_array, align 4
  %35 = ptrtoint ptr %ep_cid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ep_cid, align 4
  %idxprom = zext i16 %36 to i32
  %arrayidx = getelementptr %struct.beiscsi_hba, ptr %1, i32 0, i32 23, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx, align 2
  %idxprom4 = zext i16 %38 to i32
  %arrayidx5 = getelementptr ptr, ptr %34, i32 %idxprom4
  %39 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx5, align 4
  %conn = getelementptr inbounds %struct.beiscsi_endpoint, ptr %beiscsi_ep, i32 0, i32 1
  %40 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %conn, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %beiscsi_put_cid.exit.cleanup_crit_edge, label %if.end

beiscsi_put_cid.exit.cleanup_crit_edge:           ; preds = %beiscsi_put_cid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %beiscsi_put_cid.exit
  %42 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %conn, align 4
  %login_in_progress = getelementptr inbounds %struct.beiscsi_conn, ptr %41, i32 0, i32 6
  %43 = ptrtoint ptr %login_in_progress to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %login_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool8.not = icmp eq i16 %44, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %task = getelementptr inbounds %struct.beiscsi_conn, ptr %41, i32 0, i32 10
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 4
  tail call void @beiscsi_free_mgmt_task_handles(ptr noundef nonnull %41, ptr noundef %46) #6
  %47 = ptrtoint ptr %login_in_progress to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %login_in_progress, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %beiscsi_put_cid.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @beiscsi_attr_is_visible(i32 noundef %param_type, i32 noundef %param) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %param_type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 0, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %switch.tableidx = add i32 %param, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 15
  br i1 %1, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.and = and i32 %param, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %2 = select i1 %switch.selectcmp, i16 292, i16 0
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %param)
  %3 = icmp ult i32 %param, 35
  br i1 %3, label %switch.lookup10, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [15 x i16], ptr @switch.table.beiscsi_attr_is_visible, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

switch.lookup10:                                  ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep11 = getelementptr inbounds [35 x i16], ptr @switch.table.beiscsi_attr_is_visible.138, i32 0, i32 %param
  %5 = ptrtoint ptr %switch.gep11 to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load12 = load i16, ptr %switch.gep11, align 2
  br label %return

return:                                           ; preds = %switch.lookup10, %switch.lookup, %sw.bb5.return_crit_edge, %sw.bb2, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ %2, %sw.bb2 ], [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %sw.bb.return_crit_edge ], [ %switch.load12, %switch.lookup10 ], [ 0, %sw.bb5.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_create_iface(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_if_set_vlan(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_if_set_gw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_if_en_dhcp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_if_en_static(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_open_connection(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_mccq_compl_wait(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_invalidate_cxn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_upload_cxn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_poll_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @beiscsi_process_cq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_poll_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @beiscsi_free_mgmt_task_handles(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 50, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @beiscsi_session_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @beiscsi_session_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 57, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @beiscsi_session_create._entry.3, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @beiscsi_session_create._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 62, i32 2}
!14 = !{ptr @beiscsi_session_create._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @beiscsi_session_create._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 65, i32 3}
!18 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @beiscsi_session_create._entry.12, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @beiscsi_session_create._entry_ptr.14, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 85, i32 44}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 110, i32 2}
!25 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @beiscsi_session_destroy._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @beiscsi_session_destroy._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 144, i32 2}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @beiscsi_conn_create._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @beiscsi_conn_create._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 199, i32 3}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @beiscsi_conn_bind._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @beiscsi_conn_bind._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 209, i32 4}
!40 = !{ptr @beiscsi_conn_bind._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @beiscsi_conn_bind._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 229, i32 2}
!44 = !{ptr @beiscsi_conn_bind._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @beiscsi_conn_bind._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 439, i32 3}
!48 = !{ptr @beiscsi_iface_set_param._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @beiscsi_iface_set_param._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 447, i32 3}
!52 = !{ptr @beiscsi_iface_set_param._entry.29, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @beiscsi_iface_set_param._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 462, i32 4}
!56 = !{ptr @beiscsi_iface_set_param._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @beiscsi_iface_set_param._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 470, i32 3}
!60 = !{ptr @beiscsi_iface_set_param._entry.35, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @beiscsi_iface_set_param._entry_ptr.37, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 497, i32 4}
!66 = !{ptr @beiscsi_iface_set_param._entry.40, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @beiscsi_iface_set_param._entry_ptr.42, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 582, i32 3}
!70 = !{ptr @beiscsi_iface_get_param._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @beiscsi_iface_get_param._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 599, i32 23}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 600, i32 30}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 600, i32 41}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 609, i32 23}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 630, i32 2}
!82 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @beiscsi_ep_get_param._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @beiscsi_ep_get_param._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 637, i32 22}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 643, i32 23}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 660, i32 2}
!91 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @beiscsi_set_param._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @beiscsi_set_param._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 757, i32 3}
!96 = !{ptr @beiscsi_get_host_param._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @beiscsi_get_host_param._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 761, i32 2}
!100 = !{ptr @beiscsi_get_host_param._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @beiscsi_get_host_param._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 768, i32 4}
!104 = !{ptr @beiscsi_get_host_param._entry.58, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @beiscsi_get_host_param._entry_ptr.60, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 779, i32 5}
!108 = !{ptr @beiscsi_get_host_param._entry.61, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @beiscsi_get_host_param._entry_ptr.63, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 831, i32 2}
!112 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @beiscsi_conn_get_stats._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @beiscsi_conn_get_stats._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 846, i32 32}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 909, i32 3}
!119 = !{ptr @beiscsi_conn_start._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @beiscsi_conn_start._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 913, i32 2}
!123 = !{ptr @beiscsi_conn_start._entry.68, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @beiscsi_conn_start._entry_ptr.70, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.72, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 919, i32 3}
!127 = !{ptr @beiscsi_conn_start._entry.71, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @beiscsi_conn_start._entry_ptr.73, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1153, i32 3}
!131 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @beiscsi_ep_connect._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @beiscsi_ep_connect._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @beiscsi_ep_connect._entry.76, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1160, i32 3}
!136 = !{ptr @beiscsi_ep_connect._entry_ptr.77, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1166, i32 3}
!139 = !{ptr @.str.80, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @beiscsi_ep_connect._entry.78, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @beiscsi_ep_connect._entry_ptr.81, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1182, i32 3}
!144 = !{ptr @beiscsi_ep_connect._entry.82, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @beiscsi_ep_connect._entry_ptr.84, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.85, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1205, i32 2}
!148 = !{ptr @.str.86, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @beiscsi_ep_poll._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @beiscsi_ep_poll._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1308, i32 2}
!153 = !{ptr @.str.88, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @beiscsi_ep_disconnect._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @beiscsi_ep_disconnect._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.90, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1314, i32 3}
!158 = !{ptr @beiscsi_ep_disconnect._entry.89, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @beiscsi_ep_disconnect._entry_ptr.91, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @beiscsi_ep_disconnect._entry.92, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1322, i32 3}
!162 = !{ptr @beiscsi_ep_disconnect._entry_ptr.93, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.95, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1330, i32 4}
!165 = !{ptr @beiscsi_ep_disconnect._entry.94, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @beiscsi_ep_disconnect._entry_ptr.96, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.98, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1337, i32 3}
!169 = !{ptr @beiscsi_ep_disconnect._entry.97, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @beiscsi_ep_disconnect._entry_ptr.99, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.100, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 249, i32 3}
!173 = !{ptr @.str.101, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @beiscsi_iface_create_ipv4._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @beiscsi_iface_create_ipv4._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 268, i32 3}
!178 = !{ptr @.str.103, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @beiscsi_iface_create_ipv6._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @beiscsi_iface_create_ipv6._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.104, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 370, i32 4}
!183 = !{ptr @.str.105, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @beiscsi_iface_config_ipv4._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @beiscsi_iface_config_ipv4._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 534, i32 23}
!188 = !{ptr @.str.107, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 536, i32 23}
!190 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 550, i32 23}
!192 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1057, i32 2}
!194 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @beiscsi_open_conn._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @beiscsi_open_conn._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1062, i32 3}
!199 = !{ptr @beiscsi_open_conn._entry.111, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @beiscsi_open_conn._entry_ptr.113, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1067, i32 2}
!203 = !{ptr @beiscsi_open_conn._entry.114, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @beiscsi_open_conn._entry_ptr.116, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.118, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1086, i32 3}
!207 = !{ptr @beiscsi_open_conn._entry.117, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @beiscsi_open_conn._entry_ptr.119, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1097, i32 3}
!211 = !{ptr @beiscsi_open_conn._entry.120, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @beiscsi_open_conn._entry_ptr.122, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.124, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1109, i32 3}
!215 = !{ptr @beiscsi_open_conn._entry.123, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @beiscsi_open_conn._entry_ptr.125, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.127, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1126, i32 2}
!219 = !{ptr @beiscsi_open_conn._entry.126, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @beiscsi_open_conn._entry_ptr.128, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.129, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 958, i32 3}
!223 = !{ptr @.str.130, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @beiscsi_get_cid._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @beiscsi_get_cid._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.131, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1262, i32 4}
!228 = !{ptr @.str.132, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @beiscsi_conn_close._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @beiscsi_conn_close._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.134, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 1283, i32 4}
!233 = !{ptr @beiscsi_conn_close._entry.133, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @beiscsi_conn_close._entry_ptr.135, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.136, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/be2iscsi/be_iscsi.c", i32 991, i32 3}
!237 = !{ptr @.str.137, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @beiscsi_put_cid._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @beiscsi_put_cid._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{!"auto-init"}
!250 = !{i8 0, i8 2}
